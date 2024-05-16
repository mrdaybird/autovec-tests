# autovec-tests
All code is by [WojciechMula](https://github.com/WojciechMula), original code: [https://github.com/WojciechMula/toys/tree/master/autovectorization-tests], I just ran it for clang-18 and gcc-14

Autovectorization tests on clang-18 and gcc-14.1 

#### Steps to reproduce:
NOTE: Output files, including the assembly and results file, are already in the repo.

1. Compile code to assembly:
	1. do this for each compiler=['gcc', 'clang'] and target=['avx2', 'avx512']
	2. `python3 scripts/compile_all.py <compiler> <target> > run-tests_<compiler>_<target>.sh`
	3. `sh run-tests_<compiler>_<target>.sh`
	4. `mv *.s results/<compiler><version>_<target>`
2. Add the `<compiler>_<target>.txt` in results folder, with the results
	1. For me, this involved, 
		1. searching for xmm/ymm registers with grep, 
		2. git diffing the old assembly with the new one
			(btw use git diff --no-index if inside a repo to compare directory/files)

3. Run `python3 scripts/comparison.py` to see the comparision table.

#### Results

Generated from `scripts/comparison.py` script.

|           algorithm           |          procedure           |        GCC 9        |           |       GCC 10        |           |       GCC 14        |           |       Clang 9       |           |      Clang 11       |           |      Clang 18       |           |
|-------------------------------|------------------------------|---------------------|-----------|---------------------|-----------|---------------------|-----------|---------------------|-----------|---------------------|-----------|---------------------|-----------|
|                               |                              |                     |           |                     |           |                     |           |                     |           |                     |           |                     |           |
|                               |                              |   AVX2              |  AVX512   |   AVX2              |  AVX512   |   AVX2              |  AVX512   |   AVX2              |  AVX512   |   AVX2              |  AVX512   |   AVX2              |  AVX512   |
|  `accumulate --- custom`__    |  `accumulate_custom_epi8`__  |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |
|                               |  accumulate_custom_epi32     |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |
|                               |                              |                     |           |                     |           |                     |           |                     |           |                     |           |                     |           |
|  `accumulate --- default`__   |  `accumulate_epi8`__         |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |
|                               |  accumulate_epi32            |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |
|                               |                              |                     |           |                     |           |                     |           |                     |           |                     |           |                     |           |
|  `all_of`__                   |  `all_of_epi8`__             |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |
|                               |  all_of_epi32                |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |
|                               |                              |                     |           |                     |           |                     |           |                     |           |                     |           |                     |           |
|  `any_of`__                   |  `any_of_epi8`__             |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |
|                               |  any_of_epi32                |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |
|                               |                              |                     |           |                     |           |                     |           |                     |           |                     |           |                     |           |
|  `copy`__                     |  `copy_epi8`__               |  no                 |  no       |  no                 |  no [1]_  |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |
|                               |  copy_epi32                  |  no                 |  no       |  no                 |  no [1]_  |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |
|                               |                              |                     |           |                     |           |                     |           |                     |           |                     |           |                     |           |
|  `copy_if`__                  |  `copy_if_epi8`__            |  no                 |  no       |  no                 |  no [1]_  |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |
|                               |  copy_if_epi32               |  no                 |  no       |  no                 |  no [1]_  |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |
|                               |                              |                     |           |                     |           |                     |           |                     |           |                     |           |                     |           |
|  `count`__                    |  `count_epi8`__              |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |
|                               |  count_epi32                 |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |
|                               |                              |                     |           |                     |           |                     |           |                     |           |                     |           |                     |           |
|  `count_if`__                 |  `count_if_epi8`__           |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |
|                               |  count_if_epi32              |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |
|                               |                              |                     |           |                     |           |                     |           |                     |           |                     |           |                     |           |
|  `fill`__                     |  `fill_epi8`__               |  no                 |  no       |  no [2]_            |  no [2]_  |  no [2]_            |  no [2]_  |  no                 |  no       |  no [2]_            |  no [2]_  |  no [2]_            |  no [2]_  |
|                               |  fill_epi32                  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |
|                               |                              |                     |           |                     |           |                     |           |                     |           |                     |           |                     |           |
|  `find`__                     |  `find_epi8`__               |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |
|                               |  find_epi32                  |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |
|                               |                              |                     |           |                     |           |                     |           |                     |           |                     |           |                     |           |
|  `find_if`__                  |  `find_if_epi8`__            |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |
|                               |  find_if_epi32               |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |
|                               |                              |                     |           |                     |           |                     |           |                     |           |                     |           |                     |           |
|  `is_sorted`__                |  `is_sorted_epi8`__          |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |
|                               |  is_sorted_epi32             |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |
|                               |                              |                     |           |                     |           |                     |           |                     |           |                     |           |                     |           |
|  `none_of`__                  |  `none_of_epi8`__            |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |
|                               |  none_of_epi32               |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |
|                               |                              |                     |           |                     |           |                     |           |                     |           |                     |           |                     |           |
|  `remove`__                   |  `remove_epi8`__             |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |
|                               |  remove_epi32                |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |
|                               |                              |                     |           |                     |           |                     |           |                     |           |                     |           |                     |           |
|  `remove_if`__                |  `remove_if_epi8`__          |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |
|                               |  remove_if_epi32             |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |
|                               |                              |                     |           |                     |           |                     |           |                     |           |                     |           |                     |           |
|  `replace`__                  |  `replace_epi8`__            |  no                 |  **yes**  |  no                 |  **yes**  |  no                 |  **yes**  |  no [3]_            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |
|                               |  replace_epi32               |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |
|                               |                              |                     |           |                     |           |                     |           |                     |           |                     |           |                     |           |
|  `replace_if`__               |  `replace_if_epi8`__         |  no                 |  **yes**  |  no                 |  **yes**  |  no                 |  **yes**  |  no                 |  **yes**  |  no                 |  no       |  no                 |  no       |
|                               |  replace_if_epi32            |  **yes**            |  no       |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  no                 |  no       |  no                 |  no       |  no                 |  no       |
|                               |                              |                     |           |                     |           |                     |           |                     |           |                     |           |                     |           |
|  `reverse`__                  |  `reverse_epi8`__            |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  no                 |  no       |  no                 |  no       |  no                 |  no       |
|                               |  reverse_epi32               |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  no                 |  no       |  no                 |  no       |  no                 |  no       |
|                               |                              |                     |           |                     |           |                     |           |                     |           |                     |           |                     |           |
|  `transform --- abs`__        |  `transform_abs_epi8`__      |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |
|                               |  transform_abs_epi32         |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |
|                               |                              |                     |           |                     |           |                     |           |                     |           |                     |           |                     |           |
|  `transform --- increment`__  |  `transform_inc_epi8`__      |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |
|                               |  transform_inc_epi32         |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |
|                               |                              |                     |           |                     |           |                     |           |                     |           |                     |           |                     |           |
|  `transform --- negation`__   |  `transform_neg_epi8`__      |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |
|                               |  transform_neg_epi32         |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |  **yes**            |  **yes**  |
|                               |                              |                     |           |                     |           |                     |           |                     |           |                     |           |                     |           |
|  `unique`__                   |  `unique_epi8`__             |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |
|                               |  unique_epi32                |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |  no                 |  no       |


[1] SIMD instructions present, but not in the main loop

[2] calls ``memset``

[3] loads input's chunk into a vector register, but all comparisons and stores are scalar