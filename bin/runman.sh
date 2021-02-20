#!/bin/bash

function usage() {
    echo "usage: $0 [-c connection_method] [host] /path/to/app"
}

function get_app_info() {
    app_path=$(realpath "$1")
    app_dir=$(basename "$1")
    echo Application path: $app_path

    if [[ ! -f $app_path/__main__ ]]; then
        echo "Could not find __main__ executable in $app_path"
        exit 1
    fi
}


connection_method='local'

while getopts c: param; do
    case $param in
        c)
            connection_method="$OPTARG";;
        *)
            echo "Invalid option"
            usage
            exit 1
    esac
done
shift $(($OPTIND - 1))

if [[ $# -eq 0 ]]; then
    usage
    exit 1
fi


echo Connection method: $connection_method
case $connection_method in
    'local')
        get_app_info $1
        cd $app_path
        ./__main__
        ;;
    'ssh')
        get_app_info $2
        host=$1
        scp -r $app_path $host:
        ssh -t $host "$app_dir/__main__; rm -r $app_dir"
        ;;
    'machinectl')
        get_app_info $2
        host=$1
        machinectl copy-to $host $app_path /root/$app_dir
        machinectl shell $host /bin/bash -c "cd /root/$app_dir; ./__main__; rm -r /root/$app_dir"
        # machinectl shell $host "/usr/bin/rm -r /root/$app_dir"
        ;;
    *)
        echo "Unrecognized connection method: $connection_method"
        exit 1
esac
