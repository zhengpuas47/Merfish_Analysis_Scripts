call activate merlin_test
merlin -a 20220525-MOp_cellpose_test.json ^
-o 20220525-hSTG_48bits_adaptors.csv ^
-c human_STG_250gene.csv ^
-m storm6_microscope.json ^
-p 20220525-positions_remove50.txt ^
-e I:\MERFISH_Data ^
-s I:\MERFISH_Analysis ^
-n 55 ^
--no_report True ^
20220525-hSTG_test
pause