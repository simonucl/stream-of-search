#!/bin/bash

# conda activate sos

cd src

# python eval_neo.py --ckpt checkpoint-500 -n 1000 -o 0 -d val1_b4_t100_n500000_random.json --temperature 0. --batch_size 64 --data_dir "" --gens 1

python eval_neo_attention.py --ckpt simonycl/sos-sft-base -n 64 -o 0 -d val1_b4_t100_n500000_random.json --temperature 0. --batch_size 64 --data_dir "data/b4_3_random" --gens 1 --ctx 500
