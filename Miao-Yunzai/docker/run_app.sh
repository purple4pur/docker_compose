#!/bin/bash

counter=0
while [[ ! -e $HOME/.ovo/.startup.ok ]]; do
    if [[ $counter -eq 20 ]]; then
        echo "timeout!"
        exit 1
    fi
    ((counter++))
    echo "waiting for startup... #$counter"
    sleep 10
done

if [[ "$(ps -aux | grep 'npm run app' | grep -v grep)" != "" ]]; then
    echo "app is already running! will not start a 2nd one."
    exit 1
fi

echo "> git checkout . && git pull --rebase"
(git checkout . && git pull --rebase) || exit 1

echo "> yes | pnpm i"
(yes | pnpm i) || exit 1

echo "> npm run app"
(npm run app) || exit 1
