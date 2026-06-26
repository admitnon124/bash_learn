#!/bin/bash

echo "Отчет сгенерирован по пути: ~/github_learn/df.txt"

echo "--> Проверка места на диске <--" > ~/github_learn/df.txt 
date >> ~/github_learn/df.txt
echo "---" >> ~/github_learn/df.txt
df -h >> ~/github_learn/df.txt

if command -v df &> /dev/null; then
	df -h >> ~/github_learn/df.txt
else
	echo "Ошибка: df не найден" >> ~/github_learn/df.txt
fi
