#!/bin/bash

var1=10
var2=20
var3=siva

echo "$(($var1+$var1+$var3))"

declare -i count=10

count=count+25

echo "total count is"$count

fruits=("apple", "orange" ,"kiwi")

echo "first fruit:${fruits[1]}"

echo "all fruits:${fruits[@]}"

name="Reddi Eswar Prasad"

eco "${name}N"