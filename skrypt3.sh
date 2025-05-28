#!/bin/bash

case "$1" in
    --date|-d)
        date
        ;;
    --logs|-l)
        count=100
        [[ "$2" =~ ^[0-9]+$ ]] && count=$2
        for i in $(seq 1 $count); do
            echo -e "Plik: log$i.txt\nSkrypt: $0\nData: $(date)" > "log$i.txt"
        done
        ;;
    --help|-h)
        echo "Dostępne opcje:"
        echo "--date, -d     - wyświetla datę"
        echo "--logs [N], -l N - tworzy N (domyślnie 100) plików logx.txt"
        echo "--help, -h     - wyświetla pomoc"
        ;;
    *)
        echo "Nieznana opcja: $1"
        ;;
esac
