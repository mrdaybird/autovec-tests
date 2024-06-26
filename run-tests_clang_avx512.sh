clang++ -Rpass=loop-vectorize -Rpass-missed=loop-vectorize -O3 -mavx512f -mavx512dq -mavx512bw -mavx512vbmi -mavx512vbmi2 -mavx512vl -S accumulate_default.cpp -o accumulate_default_avx512.s
clang++ -Rpass=loop-vectorize -Rpass-missed=loop-vectorize -O3 -mavx512f -mavx512dq -mavx512bw -mavx512vbmi -mavx512vbmi2 -mavx512vl -S accumulate_custom.cpp -o accumulate_custom_avx512.s
clang++ -Rpass=loop-vectorize -Rpass-missed=loop-vectorize -O3 -mavx512f -mavx512dq -mavx512bw -mavx512vbmi -mavx512vbmi2 -mavx512vl -S all_of.cpp -o all_of_avx512.s
clang++ -Rpass=loop-vectorize -Rpass-missed=loop-vectorize -O3 -mavx512f -mavx512dq -mavx512bw -mavx512vbmi -mavx512vbmi2 -mavx512vl -S any_of.cpp -o any_of_avx512.s
clang++ -Rpass=loop-vectorize -Rpass-missed=loop-vectorize -O3 -mavx512f -mavx512dq -mavx512bw -mavx512vbmi -mavx512vbmi2 -mavx512vl -S copy.cpp -o copy_avx512.s
clang++ -Rpass=loop-vectorize -Rpass-missed=loop-vectorize -O3 -mavx512f -mavx512dq -mavx512bw -mavx512vbmi -mavx512vbmi2 -mavx512vl -S copy_if.cpp -o copy_if_avx512.s
clang++ -Rpass=loop-vectorize -Rpass-missed=loop-vectorize -O3 -mavx512f -mavx512dq -mavx512bw -mavx512vbmi -mavx512vbmi2 -mavx512vl -S count.cpp -o count_avx512.s
clang++ -Rpass=loop-vectorize -Rpass-missed=loop-vectorize -O3 -mavx512f -mavx512dq -mavx512bw -mavx512vbmi -mavx512vbmi2 -mavx512vl -S count_if.cpp -o count_if_avx512.s
clang++ -Rpass=loop-vectorize -Rpass-missed=loop-vectorize -O3 -mavx512f -mavx512dq -mavx512bw -mavx512vbmi -mavx512vbmi2 -mavx512vl -S fill.cpp -o fill_avx512.s
clang++ -Rpass=loop-vectorize -Rpass-missed=loop-vectorize -O3 -mavx512f -mavx512dq -mavx512bw -mavx512vbmi -mavx512vbmi2 -mavx512vl -S find.cpp -o find_avx512.s
clang++ -Rpass=loop-vectorize -Rpass-missed=loop-vectorize -O3 -mavx512f -mavx512dq -mavx512bw -mavx512vbmi -mavx512vbmi2 -mavx512vl -S find_if.cpp -o find_if_avx512.s
clang++ -Rpass=loop-vectorize -Rpass-missed=loop-vectorize -O3 -mavx512f -mavx512dq -mavx512bw -mavx512vbmi -mavx512vbmi2 -mavx512vl -S is_sorted.cpp -o is_sorted_avx512.s
clang++ -Rpass=loop-vectorize -Rpass-missed=loop-vectorize -O3 -mavx512f -mavx512dq -mavx512bw -mavx512vbmi -mavx512vbmi2 -mavx512vl -S none_of.cpp -o none_of_avx512.s
clang++ -Rpass=loop-vectorize -Rpass-missed=loop-vectorize -O3 -mavx512f -mavx512dq -mavx512bw -mavx512vbmi -mavx512vbmi2 -mavx512vl -S remove.cpp -o remove_avx512.s
clang++ -Rpass=loop-vectorize -Rpass-missed=loop-vectorize -O3 -mavx512f -mavx512dq -mavx512bw -mavx512vbmi -mavx512vbmi2 -mavx512vl -S remove_if.cpp -o remove_if_avx512.s
clang++ -Rpass=loop-vectorize -Rpass-missed=loop-vectorize -O3 -mavx512f -mavx512dq -mavx512bw -mavx512vbmi -mavx512vbmi2 -mavx512vl -S replace.cpp -o replace_avx512.s
clang++ -Rpass=loop-vectorize -Rpass-missed=loop-vectorize -O3 -mavx512f -mavx512dq -mavx512bw -mavx512vbmi -mavx512vbmi2 -mavx512vl -S replace_if.cpp -o replace_if_avx512.s
clang++ -Rpass=loop-vectorize -Rpass-missed=loop-vectorize -O3 -mavx512f -mavx512dq -mavx512bw -mavx512vbmi -mavx512vbmi2 -mavx512vl -S reverse.cpp -o reverse_avx512.s
clang++ -Rpass=loop-vectorize -Rpass-missed=loop-vectorize -O3 -mavx512f -mavx512dq -mavx512bw -mavx512vbmi -mavx512vbmi2 -mavx512vl -S transform_abs.cpp -o transform_abs_avx512.s
clang++ -Rpass=loop-vectorize -Rpass-missed=loop-vectorize -O3 -mavx512f -mavx512dq -mavx512bw -mavx512vbmi -mavx512vbmi2 -mavx512vl -S transform_inc.cpp -o transform_inc_avx512.s
clang++ -Rpass=loop-vectorize -Rpass-missed=loop-vectorize -O3 -mavx512f -mavx512dq -mavx512bw -mavx512vbmi -mavx512vbmi2 -mavx512vl -S transform_neg.cpp -o transform_neg_avx512.s
clang++ -Rpass=loop-vectorize -Rpass-missed=loop-vectorize -O3 -mavx512f -mavx512dq -mavx512bw -mavx512vbmi -mavx512vbmi2 -mavx512vl -S unique.cpp -o unique_avx512.s
