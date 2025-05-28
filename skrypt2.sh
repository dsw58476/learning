#!/bin/bash

if [[ "$1" == "--date" ]]; then
    date
elif [[ "$1" == "--logs" ]]; then
    count=100
    [[ "$2" =~ ^[0-9]+$ ]] && count=$2
    for i in $(seq 1 $count); do
        filename="log$i.txt"
        echo -e "Plik: $filename\nSkrypt: $0\nData: $(date)" > "$filename"
    done#!/bin/bash

if [[ "$1" == "--date" ]]; then
    date

elif [[ "$1" == "--logs" ]]; then
    count=100
    [[ "$2" =~ ^[0-9]+$ ]] && count=$2
    for i in $(seq 1 $count); do
        filename="log$i.txt"
        echo -e "Plik: $filename\nSkrypt: $0\nData: $(date)" > "$filename"
    done

elif [[ "$1" == "--help" ]]; then
    echo "Dostępne opcje:"
    echo "--date       - wyświetla datę"
    echo "--logs [N]   - tworzy N (domyślnie 100) plików logx.txt"
    echo "--help       - wyświetla dostępne opcje"

else
    echo "Nieznana opcja: $1"
    echo "Użyj --help, aby zobaczyć dostępne opcje."
fi
fi

elif [[ "$1" == "--help" ]]; then
    echo "Dostępne opcje:"
    echo "--date       - wyświetla datę"
    echo "--logs [N]   - tworzy N (domyślnie 100) plików logx.txt"
    echo "--help       - wyświetla dostępne opcje"
fi
