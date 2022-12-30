#!/bin/bash

cat kitty_ipsum_1.txt
cat kitty_ipsum_2.txt

echo "~~ kitty_ipsum_1.txt info ~~" > kitty_info.txt

echo -e "\nNumber of lines:" >> kitty_info.txt
cat kitty_ipsum_1.txt | wc -l >> kitty_info.txt

echo -e "\nNumber of words:" >> kitty_info.txt
cat kitty_ipsum_1.txt | wc -w >> kitty_info.txt

echo -e "\nNumber of characters:" >> kitty_info.txt
wc -m < kitty_ipsum_1.txt >> kitty_info.txt

grep --color -n 'meow[a-z]*' kitty_ipsum_1.txt

echo -e "\nNumber of times meow or meowzer appears:" >> kitty_info.txt
grep -o 'meow[a-z]*' kitty_ipsum_1.txt | wc -l >> kitty_info.txt

echo -e "\nLines that they appear on:" >> kitty_info.txt
grep -n 'meow[a-z]*' kitty_ipsum_1.txt | sed -E 's/([0-9]+).*/\1/' >> kitty_info.txt

echo -e "\nNumber of times cat, cats, or catnip appears:" >> kitty_info.txt
grep -o 'cat[a-z]*' kitty_ipsum_1.txt | wc -l >> kitty_info.txt

echo -e "\nLines that they appear on:" >> kitty_info.txt
grep -n 'cat[a-z]*' kitty_ipsum_1.txt | sed -E 's/([0-9]+).*/\1/' >> kitty_info.txt

grep --color -n 'meow[a-z]*' kitty_ipsum_2.txt

echo -e "\n\n~~ kitty_ipsum_2.txt info ~~" >> kitty_info.txt

echo -e "\nNumber of lines:" >> kitty_info.txt
cat kitty_ipsum_2.txt | wc -l >> kitty_info.txt

echo -e "\nNumber of words:" >> kitty_info.txt
wc -w < kitty_ipsum_2.txt >> kitty_info.txt

echo -e "\nNumber of characters:" >> kitty_info.txt
wc -m < kitty_ipsum_2.txt >> kitty_info.txt

echo -e "\nNumber of times meow or meowzer appears:" >> kitty_info.txt
grep -o 'meow[a-z]*' kitty_ipsum_2.txt | wc -l >> kitty_info.txt

echo -e "\nLines that they appear on:" >> kitty_info.txt
grep -n 'meow[a-z]*' kitty_ipsum_2.txt | sed -E 's/([0-9]+).*/\1/' >> kitty_info.txt

echo -e "\nNumber of times cat, cats, or catnip appears:" >> kitty_info.txt
grep -o 'cat[a-z]*' kitty_ipsum_2.txt | wc -l >> kitty_info.txt

echo -e "\nLines that they appear on:" >> kitty_info.txt
grep -n 'cat[a-z]*' kitty_ipsum_2.txt | sed -E 's/([0-9]+).*/\1/' >> kitty_info.txt

./translate.sh kitty_ipsum_1.txt > doggy_ipsum_1.txt
diff --color kitty_ipsum_1.txt doggy_ipsum_1.txt

./translate.sh kitty_ipsum_2.txt > doggy_ipsum_2.txt
diff --color kitty_ipsum_2.txt doggy_ipsum_2.txt
