call activate merlin_env
merlin -a 20220208-MOp_cellpose_test.json ^
-o 20220225-M1_22bits_beads.csv ^
-c M1_codebook.csv ^
-m storm6_microscope.json ^
-p 20220225_positions.txt ^
-e I:\MERFISH_Data ^
-s I:\MERFISH_Analysis\Cellpose ^
-n 34 ^
--no_report True ^
20220225-P_brain_M1_nonclear_test
pause