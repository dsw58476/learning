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

    --error|-e)
        count=100
        [[ "$2" =~ ^[0-9]+$ ]] && count=$2
        mkdir -p errorx
        for i in $(seq 1 $count); do
            echo -e "Błąd numer $i\nSkrypt: $0\nData: $(date)" > "errorx/error$i.txt"
        done
        ;;

    --init)
        repo_url="https://github.com/dsw58476/learning.git"
        target_dir="$(pwd)/learning"
        git clone "$repo_url" "$target_dir"
        if ! grep -q "$target_dir" ~/.bashrc; then
            echo "export PATH=\$PATH:$target_dir" >> ~/.bashrc
            echo "Dodano $target_dir do PATH w ~/.bashrc"
        fi
        echo "Repozytorium sklonowane do $target_dir"
        ;;

    --help|-h)
        echo "Dostępne opcje:"
        echo "--date, -d          - wyświetla datę"
        echo "--logs [N], -l N    - tworzy N (domyślnie 100) plików logx.txt"
        echo "--error [N], -e N   - tworzy N (domyślnie 100) plików errorx/errorX.txt"
        echo "--init              - klonuje repo https://github.com/dsw58476/learning.git i dodaje je do PATH"
        echo "--help, -h          - wyświetla tę pomoc"
        ;;

     --error|-e)
        count=100
        [[ "$2" =~ ^[0-9]+$ ]] && count=$2
        mkdir -p errorx
        for i in $(seq 1 $count); do
            echo -e "Błąd numer $i\nSkrypt: $0\nData: $(date)" > "errorx/error$i.txt"
        done
        ;;

    *)
        echo "Nieznana opcja: $1"
        ;;
esac
