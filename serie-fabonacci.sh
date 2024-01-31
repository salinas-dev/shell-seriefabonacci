#!/bin/bash

# Función para calcular el término N de la serie de Fibonacci
fibonacci() {
  if [ $1 -le 0 ]; then
    echo 0
  elif [ $1 -eq 1 ]; then
    echo 1
  else
    a=0
    b=1
    for ((i=2; i<=$1; i++)); do
      c=$((a + b))
      a=$b
      b=$c
    done
    echo $b
  fi
}

# Número de términos de la serie que deseas generar
N=10

# Imprimir los primeros N términos de la serie de Fibonacci
for ((i=0; i<N; i++)); do
  result=$(fibonacci $i)
  echo "Fibonacci($i) = $result"
done
