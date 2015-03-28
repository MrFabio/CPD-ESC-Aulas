#!/bin/bash


module add gnu/openmpi_eth/1.8.2

# MPI

#exec > "t_MPI.txt"

echo "MPI A"
for th in 2 4 8 #16
do
echo  $th "       MPI       ep.A.$th"
mpirun -np "$th" "./A/ep.A.$th"
sleep 4

echo  $th "       MPI       ft.A.$th"
mpirun -np "$th" "./A/ft.A.$th"
sleep 6

echo  $th "       MPI       is.A.$th"
mpirun -np "$th" "./A/is.A.$th"
sleep 7

done
: '
for th in 4 9 16
do
echo  $th "       MPI       sp.A.$th"
mpirun -np "$th" "./A/sp.A.$th"
sleep 3

done

sleep 2

echo "MPI B"
for th in 2 4 8 16
do
echo  $th "       MPI       ep.B.$th"
mpirun -np "$th" "./B/ep.B.$th"
sleep 3

echo  $th "       MPI       ft.B.$th"
mpirun -np "$th" "./B/ft.B.$th"
sleep 3

echo  $th "       MPI       is.B.$th"
mpirun -np "$th" "./B/is.B.$th"
sleep 6

done


for th in 4 9 16
do
echo  $th "       MPI       sp.B.$th"
mpirun -np "$th" "./B/sp.B.$th"
sleep 3

done


'




















