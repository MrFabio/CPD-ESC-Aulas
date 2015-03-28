#!/bin/bash


# THREADS

exec > "t_OMP.txt"


cd A/
for th in 2 10 30
do 
export OMP_NUM_THREADS=$th
echo  $th "\t./ep.A.x"
./ep.A.x

echo  $th "\t./ft.A.x"
./ft.A.x

echo  $th "\t./is.A.x"
./is.A.x

echo  $th "\t./sp.A.x"
./sp.A.x

done
cd ..

cd B/
for th in 2 10 30
do 
export OMP_NUM_THREADS=$th
echo  $th "\t./ep.B.x"
./ep.B.x

echo  $th "\t./ft.B.x"
./ft.B.x

echo  $th "\t./is.B.x"
./is.B.x

echo  $th "\t./sp.B.x"
./sp.B.x

done























