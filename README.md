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

Provide a `help` argument to get CLI program help.

```sh
$ tg_fib help

    tg_fib              Compute fibonacci numbers

    Usage:
    tg_fib help         Show this help menu
    tg_fib [number]     Compute the fibonacci number
    tg_fib              Enter interactive mode
```

Provide a non-negative integer to compute the fibonacci sequence for that number.

```sh
$ tg_fib 5

fib(5) = 1, 1, 2, 3, 5, 8
```

Provide no arguments to enter interactive mode.

```sh
$ tg_fib

Please enter a non-negative integer: (h)elp, (q)uit
> 5
fib(5) = 1, 1, 2, 3, 5, 8

Please enter a non-negative integer: (h)elp, (q)uit
> 3
fib(3) = 1, 1, 2, 3

> help
    Interactive help:

    Commands:
    (h)elp      Show this help menu
    (q)uit      Quit the program

    Usage:
    Enter a non-negative integer to compute that fibonacci number.

    Example:
    > 5
    # => fib(5) = 1, 1, 2, 3, 5, 8

Please enter a non-negative integer: (h)elp, (q)uit
> quit
```