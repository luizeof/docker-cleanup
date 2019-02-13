#!/bin/sh

while true; do

    for parametro in $@; do
        echo ">>> docker $parametro prune <<<"
        docker $parametro prune -f
        echo
    done

    if [ -n "$SLEEP" ]; then
        echo "Sleeping for $SLEEP seconds..."
        sleep "$SLEEP"
        echo
    else
        exit 0
    fi

done
