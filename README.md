# TG Fibonacci

[![Build Status](https://travis-ci.com/tacoda/tg_fibonacci.svg?branch=master)](https://travis-ci.com/tacoda/tg_fibonacci)

## Problem

Enter a number and have the program generate the Fibonacci sequence to that number or to the `n`th number.

## Installation

Install using RubyGems.

```sh
gem install tg_fibonacci
```

## Usage

Provide a non-negative integer to compute the fibonacci sequence for that number.

```sh
$ tg_fib 5

fib(5) = 1, 1, 2, 3, 5, 8
```

Provide no arguments to enter an interactive mode.

```sh
$ tg_fib

Please enter your n to get fib(n) ('quit' to exit)
> 5
fib(5) = 1, 1, 2, 3, 5, 8

Please enter your n to get fib(n) ('quit' to exit)
> 3
fib(3) = 1, 1, 2, 3

Please enter your n to get fib(n) ('quit' to exit)
> quit
```

TODO: Help