#!/bin/bash

echo "Bem-vindo Mentor/Aluno ao Desenvolve 2022"

echo "O Seu IP segundo o site ifconfig.me é ...."
ip=`curl ifconfig.me`

echo
echo $ip
echo


if ! ping -c 3 $ip ; then

echo
echo "Este endereço não responde a ping, ou por restrições ou por inatividade"
echo

else

echo
echo "Parabéns este IP  está respondendo a ping"
echo

fi

exit



