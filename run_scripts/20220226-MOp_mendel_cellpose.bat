call activate merlin_env
merlin -a 20220208-MOp_cellpose.json ^
-o 20220208-M1_22bits.csv ^
-c M1_codebook.csv ^
-m storm6_microscope.json ^
-p 20220226_positions.txt ^
-e I:\MERFISH_Data ^
-s I:\MERFISH_Analysis\Cellpose ^
-n 34 ^
--no_report True ^
20220226-P_brain_M1_nonclear
pause