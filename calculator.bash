#!/bin/bash

# Function to add two numbers
function add() {
  echo $(($1 + $2))
}

# Function to subtract two numbers
function subtract() {
  echo $(($1 - $2))
}

# Function to multiply two numbers
function multiply() {
  echo $(($1 * $2))
}

# Function to divide two numbers
function divide() {
  echo $(($1 / $2))
}

# Function to find the modulus of two numbers
function modulus() {
  echo $(($1 % $2))
}

# Function to find the exponent of two numbers
function exponent() {
  echo $(($1 ** $2))
}

# Main function to perform operation based on input arguments
function main() {
  case "$2" in
    "+")
      add "$1" "$3"
      ;;
    "-")
      subtract "$1" "$3"
      ;;
    "*")
      multiply "$1" "$3"
      ;;
    "/")
      divide "$1" "$3"
      ;;
    "%")
      modulus "$1" "$3"
      ;;
    "^")
      exponent "$1" "$3"
      ;;
    *)
      echo "operation is not valid: $2"
      exit 1
      ;;
  esac
}

# Calling main
main "$1" "$2" "$3"
