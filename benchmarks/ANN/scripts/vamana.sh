#!/bin/bash
cd ~/pbbsbench/benchmarks/ANN/vamana
make clean all

P=/ssd1/data
G=/ssd1/results
# BIGANN: two settings
BP=$P/bigann
BG=$G/bigann
./neighbors -R 64 -L 128 -o $BG/1M_vamana_64_128 -q $BP/query.public.10K.u8bin -c $BP/bigann-1M -res $BG/vamana_res.csv -f bin -t uint8 $BP/base.1B.u8bin.crop_nb_1000000
./neighbors -R 64 -L 128 -o $BG/10M_vamana_64_128 -q $BP/query.public.10K.u8bin -c $BP/bigann-10M -res $BG/vamana_res.csv -f bin -t uint8 $BP/base.1B.u8bin.crop_nb_10000000
./neighbors -R 64 -L 128 -o $BG/100M_vamana_64_128 -q $BP/query.public.10K.u8bin -c $BP/bigann-100M -res $BG/vamana_res.csv -f bin -t uint8 $BP/base.1B.u8bin.crop_nb_100000000
./neighbors -R 64 -L 128 -o $BG/1B_vamana_64_128 -q $BP/query.public.10K.u8bin -c $BP/bigann-1B -res $BG/vamana_res.csv -f bin -t uint8 $BP/base.1B.u8bin

./neighbors -R 100 -L 200 -o $BG/1M_vamana_100_200 -q $BP/query.public.10K.u8bin -c $BP/bigann-1M -res $BG/vamana_res.csv -f bin -t uint8 $BP/base.1B.u8bin.crop_nb_1000000
./neighbors -R 100 -L 200 -o $BG/10M_vamana_100_200 -q $BP/query.public.10K.u8bin -c $BP/bigann-10M -res $BG/vamana_res.csv -f bin -t uint8 $BP/base.1B.u8bin.crop_nb_10000000
./neighbors -R 100 -L 200 -o $BG/100M_vamana_100_200 -q $BP/query.public.10K.u8bin -c $BP/bigann-100M -res $BG/vamana_res.csv -f bin -t uint8 $BP/base.1B.u8bin.crop_nb_100000000
./neighbors -R 100 -L 200 -o $BG/1B_vamana_100_200 -q $BP/query.public.10K.u8bin -c $BP/bigann-1B -res $BG/vamana_res.csv -f bin -t uint8 $BP/base.1B.u8bin

#MSSPACEV: two settings
SP=$P/MSSPACEV1B
SG=$G/MSSPACEV1B
./neighbors -R 64 -L 128 -o $SG/1M_vamana_64_128 -q $SP/query.i8bin -c $SP/msspacev-1M -res $SG/vamana_res.csv -f bin -t int8 $SP/spacev1b_base.i8bin.crop_nb_1000000
./neighbors -R 64 -L 128 -o $SG/10M_vamana_64_128 -q $SP/query.i8bin -c $SP/msspacev-10M -res $SG/vamana_res.csv -f bin -t int8 $SP/spacev1b_base.i8bin.crop_nb_10000000
./neighbors -R 64 -L 128 -o $SG/100M_vamana_64_128 -q $SP/query.i8bin -c $SP/msspacev-100M -res $SG/vamana_res.csv -f bin -t int8 $SP/spacev1b_base.i8bin.crop_nb_100000000
./neighbors -R 64 -L 128 -o $SG/1B_vamana_64_128 -q $SP/query.i8bin -c $SP/msspacev-1B -res $SG/vamana_res.csv -f bin -t int8 $SP/spacev1b_base.i8bin


./neighbors -R 128 -L 400 -o $SG/1M_vamana_128_400 -q $SP/query.i8bin -c $SP/msspacev-1M -res $SG/vamana_res.csv -f bin -t int8 $SP/spacev1b_base.i8bin.crop_nb_1000000
./neighbors -R 128 -L 400 -o $SG/10M_vamana_128_400 -q $SP/query.i8bin -c $SP/msspacev-10M -res $SG/vamana_res.csv -f bin -t int8 $SP/spacev1b_base.i8bin.crop_nb_10000000
./neighbors -R 128 -L 400 -o $SG/100M_vamana_128_400 -q $SP/query.i8bin -c $SP/msspacev-100M -res $SG/vamana_res.csv -f bin -t int8 $SP/spacev1b_base.i8bin.crop_nb_100000000
./neighbors -R 128 -L 400 -o $SG/1B_vamana_128_400 -q $SP/query.i8bin -c $SP/msspacev-1B -res $SG/vamana_res.csv -f bin -t int8 $SP/spacev1b_base.i8bin

#TEXT2IMAGE: two settings
TP=$P/text2image1B
TG=$G/text2image1B
./neighbors -R 64 -L 128 -o $TG/1M_vamana_64_128 -q $TP/query.public.100K.fbin -c $TP/text2image-1M -res $TG/vamana_res.csv -f bin -t float $TP/base.1B.fbin.crop_nb_1000000
./neighbors -R 64 -L 128 -o $TG/10M_vamana_64_128 -q $TP/query.public.100K.fbin -c $TP/text2image-10M -res $TG/vamana_res.csv -f bin -t float $TP/base.1B.fbin.crop_nb_10000000
./neighbors -R 64 -L 128 -o $TG/100M_vamana_64_128 -q $TP/query.public.100K.fbin -c $TP/text2image-100M -res $TG/vamana_res.csv -f bin -t float $TP/base.1B.fbin.crop_nb_100000000
./neighbors -R 64 -L 128 -o $TG/1B_vamana_64_128 -q $TP/query.public.100K.fbin -c $TP/text2image-1B -res $TG/vamana_res.csv -f bin -t float $TP/base.1B.fbin


./neighbors -R 128 -L 400 -o $TG/1M_vamana_128_400 -q $TP/query.public.100K.fbin -c $TP/text2image-1M -res $TG/vamana_res.csv -f bin -t float $TP/base.1B.fbin.crop_nb_1000000
./neighbors -R 128 -L 400 -o $TG/10M_vamana_128_400 -q $TP/query.public.100K.fbin -c $TP/text2image-10M -res $TG/vamana_res.csv -f bin -t float $TP/base.1B.fbin.crop_nb_10000000
./neighbors -R 128 -L 400 -o $TG/100M_vamana_128_400 -q $TP/query.public.100K.fbin -c $TP/text2image-100M -res $TG/vamana_res.csv -f bin -t float $TP/base.1B.fbin.crop_nb_100000000
./neighbors -R 128 -L 400 -o $TG/1B_vamana_128_400 -q $TP/query.public.100K.fbin -c $TP/text2image-1B -res $TG/vamana_res.csv -f bin -t float $TP/base.1B.fbin
