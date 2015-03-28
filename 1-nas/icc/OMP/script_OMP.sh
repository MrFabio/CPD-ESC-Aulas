#!/bin/bash


# THREADS

exec > "t_OMP.txt"


cd A/
for th in 2 10 20 30
do 
export OMP_NUM_THREADS=$th
echo  $th "\t./ep.A.x"
./ep.A.x
sleep 3
echo  $th "\t./ft.A.x"
./ft.A.x
sleep 3
echo  $th "\t./is.A.x"
./is.A.x
sleep 3
echo  $th "\t./sp.A.x"
./sp.A.x
sleep 3
done
cd ..

sleep 6
cd B/
for th in 2 10 20 30
do 
export OMP_NUM_THREADS=$th
echo  $th "\t./ep.B.x"
./ep.B.x
sleep 3
echo  $th "\t./ft.B.x"
./ft.B.x
sleep 3
echo  $th "\t./is.B.x"
./is.B.x
sleep 3
echo  $th "\t./sp.B.x"
./sp.B.x
sleep 3
done























