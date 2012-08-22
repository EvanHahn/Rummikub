#!/bin/bash
gcc run_specs.c
if [ -e "a.out" ]; then
	./a.out
	rm a.out
fi
