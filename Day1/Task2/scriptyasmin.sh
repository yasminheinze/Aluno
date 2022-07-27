#!/bin/bash

echo "Bem-vindo Mentor/Aluno ao Desenvolve 2022"

echo "O Seu IP segundo o site ifconfig.me é ...."
curl ifconfig.me
echo

if ! ping -c 3 ifconfig.me ; then

echo
echo "Você não pode acessar o site ifconfig.me, este site não responde a ping"
echo

else

echo
echo "Parabéns você pode acessar ifconfig.me este site está respondendo a ping"
echo

fi

exit



