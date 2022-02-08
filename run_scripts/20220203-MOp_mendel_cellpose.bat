call activate merlin_cellpose
merlin -a 20220203-MOp_cellpose_part1.json ^
-o 20220203-M1_22bits.csv ^
-c M1_codebook.csv ^
-m storm6_microscope.json ^
-p 20220203_positions.txt ^
-e I:\MERFISH_Data ^
-s I:\MERFISH_Analysis\Cellpose ^
-n 34 ^
--no_report True ^
20220203-P_brain_M1_nonclear_test
pause