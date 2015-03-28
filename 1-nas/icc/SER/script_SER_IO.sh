#!/bin/bash



# SER

#exec > "t_SER.txt"

echo "SER A"

echo  "        SER   ep.A.x"
./A/ep.A.x
sleep 3

echo  "        SER   ft.A.x"
./A/ft.A.x
sleep 3
echo  "        SER   is.A.x"
./A/is.A.x
sleep 3
echo  "        SER   sp.A.x"
./A/sp.A.x
sleep 3

echo "SER B"

echo  "        SER   ep.B.x"
./B/ep.B.x
sleep 3
echo  "        SER   ft.B.x"
./B/ft.B.x
sleep 3
echo  "        SER   is.B.x"
./B/is.B.x
sleep 3
echo  "        SER   sp.B.x"
./B/sp.B.x

echo "_-----------------_ FIM _-------------------_"

























