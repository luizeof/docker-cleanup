#!/bin/sh

while true; do

    for parametro in $@; do
        echo ">>> Starting docker $parametro prune <<<"
        docker $parametro prune -f
        echo ">>> End docker $parametro prune <<<"
    done

    if [ -n "$PRUNE_DELAY" ]; then
        echo "Waiting for $PRUNE_DELAY seconds..."
        sleep "$PRUNE_DELAY"
        echo
    else
        exit 0
    fi

done
