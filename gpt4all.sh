#! /bin/bash

sudo git clone https://github.com/joshMGen/gpt4all_reference /home/ubuntu/gpt4all

sudo chmod -R 777 /home/ubuntu/gpt4all

sudo pip install typing-extensions
sudo pip install typer
sudo pip install gpt4all

python3 app.py repl --model gpt4all-falcon-newbpe-q4_0.gguf

python3 app.py repl --model gpt4all-falcon-newbpe-q4_0.gguf & 
pid=$!
sleep 15s
cpid = $(pgrep -P $ppid)
kill -INT $cpid