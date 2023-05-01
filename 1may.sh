#!/bin/bash

function makedirs() {
echo "1. creta dirs and files in 1 command"
cd ~
pip3 install --user advance-touch
ad BIG/{clothes/{mango,zara/{zaraf.txt,zaraf2.txt},scara},cosmetics/{flomar/flomarf.txt,shilav}}

echo "2. display list of all dirs"
tree ~/big

echo "3.1 rename shilav to jade"
mv $HOME/BIG/cosmetics/shilav $HOME/BIG/cosmetics/jade

echo "3.2 go to scara"
cd ~/BIG/clothes/scara

echo "3.3 move scara tocosmetics in relative"
mv ../scara ../../cosmetics/

echo "4. add text to zaraf.txt"
echo "Mango, is a Spanish clothing design and manufacturing company, Mango is
founded in Barcelona, mango is located in Spain by brothers Isak Andic and
Nahman Andic. mango designs, manufactures and markets women's and men's
clothing and accessories." > ~/BIG/clothes/zara/zaraf.txt

echo "5. copy czaraf to flormar.txt"
tee ~/BIG/cosmetics/flomar/flomar.txt < ~/BIG/clothes/zara/zaraf.txt

echo "6. replace all mango and Mango by flomar"
sed -i 's/mango/flomar/gI'   ~/BIG/cosmetics/flomar/flomar.txt

echo "7. replace all spain and spanish to zanzibar"
sed -i 's/Spain/zanzibar/g;s/Spanish/zanzibar/g'  ~/BIG/cosmetics/flomar/flomar.txt

echo "8. remove BIG dir"
rm -rvf ~/BIG
}

makedirs

function createDateDir() {
mkdir $(date +"%d-%m-%Y")
}

createDateDir
