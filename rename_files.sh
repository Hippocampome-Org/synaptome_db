###################################
#
# Script to rename synaptome data
#
####################################

FILES_LOCATION=/comp_neuro/PhD/gmu/research/synaptome/data/renamed/

COND1=Vh=-60_P0_ISI50_T22_Th350_Female_P14_Mice_Cli=4_gluconatei=0
COND2=Vh=-60_P0_ISI50_T22_Th350_Female_P14_Rat_Cli=4_gluconatei=0
COND3=Vh=-60_P0_ISI50_T22_Th350_Female_P56_Mice_Cli=4_gluconatei=0
COND4=Vh=-60_P0_ISI50_T22_Th350_Female_P56_Rat_Cli=4_gluconatei=0
COND5=Vh=-60_P0_ISI50_T22_Th350_Male_P14_Mice_Cli=4_gluconatei=0
COND6=Vh=-60_P0_ISI50_T22_Th350_Male_P14_Rat_Cli=4_gluconatei=0
COND7=Vh=-60_P0_ISI50_T22_Th350_Male_P56_Mice_Cli=4_gluconatei=0
COND8=Vh=-60_P0_ISI50_T22_Th350_Male_P56_Rat_Cli=4_gluconatei=0
COND9=Vh=-60_P0_ISI50_T32_Th350_Female_P14_Mice_Cli=4_gluconatei=0
COND10=Vh=-60_P0_ISI50_T32_Th350_Female_P14_Rat_Cli=4_gluconatei=0
COND11=Vh=-60_P0_ISI50_T32_Th350_Female_P56_Mice_Cli=4_gluconatei=0
COND12=Vh=-60_P0_ISI50_T32_Th350_Female_P56_Rat_Cli=4_gluconatei=0
COND13=Vh=-60_P0_ISI50_T32_Th350_Male_P14_Mice_Cli=4_gluconatei=0
COND14=Vh=-60_P0_ISI50_T32_Th350_Male_P14_Rat_Cli=4_gluconatei=0
COND15=Vh=-60_P0_ISI50_T32_Th350_Male_P56_Mice_Cli=4_gluconatei=0
COND16=Vh=-60_P0_ISI50_T32_Th350_Male_P56_Rat_Cli=4_gluconatei=0
COND17=Vss=-60_P0_ISI50_T22_Th350_Female_P14_Mice_Cli=4_gluconatei=0
COND18=Vss=-60_P0_ISI50_T22_Th350_Female_P14_Rat_Cli=4_gluconatei=0
COND19=Vss=-60_P0_ISI50_T22_Th350_Female_P56_Mice_Cli=4_gluconatei=0
COND20=Vss=-60_P0_ISI50_T22_Th350_Female_P56_Rat_Cli=4_gluconatei=0
COND21=Vss=-60_P0_ISI50_T22_Th350_Male_P14_Mice_Cli=4_gluconatei=0
COND22=Vss=-60_P0_ISI50_T22_Th350_Male_P14_Rat_Cli=4_gluconatei=0
COND23=Vss=-60_P0_ISI50_T22_Th350_Male_P56_Mice_Cli=4_gluconatei=0
COND24=Vss=-60_P0_ISI50_T22_Th350_Male_P56_Rat_Cli=4_gluconatei=0
COND25=Vss=-60_P0_ISI50_T32_Th350_Female_P14_Mice_Cli=4_gluconatei=0
COND26=Vss=-60_P0_ISI50_T32_Th350_Female_P14_Rat_Cli=4_gluconatei=0
COND27=Vss=-60_P0_ISI50_T32_Th350_Female_P56_Mice_Cli=4_gluconatei=0
COND28=Vss=-60_P0_ISI50_T32_Th350_Female_P56_Rat_Cli=4_gluconatei=0
COND29=Vss=-60_P0_ISI50_T32_Th350_Male_P14_Mice_Cli=4_gluconatei=0
COND30=Vss=-60_P0_ISI50_T32_Th350_Male_P14_Rat_Cli=4_gluconatei=0
COND31=Vss=-60_P0_ISI50_T32_Th350_Male_P56_Mice_Cli=4_gluconatei=0
COND32=Vss=-60_P0_ISI50_T32_Th350_Male_P56_Rat_Cli=4_gluconatei=0

cd $FILES_LOCATION

rename "s/(.*)_$COND1/\$1_cond1/" *.csv
rename "s/(.*)_$COND2/\$1_cond2/" *.csv
rename "s/(.*)_$COND3/\$1_cond3/" *.csv
rename "s/(.*)_$COND4/\$1_cond4/" *.csv
rename "s/(.*)_$COND5/\$1_cond5/" *.csv
rename "s/(.*)_$COND6/\$1_cond6/" *.csv
rename "s/(.*)_$COND7/\$1_cond7/" *.csv
rename "s/(.*)_$COND8/\$1_cond8/" *.csv
rename "s/(.*)_$COND9/\$1_cond9/" *.csv
rename "s/(.*)_$COND10/\$1_cond10/" *.csv
rename "s/(.*)_$COND11/\$1_cond11/" *.csv
rename "s/(.*)_$COND12/\$1_cond12/" *.csv
rename "s/(.*)_$COND13/\$1_cond13/" *.csv
rename "s/(.*)_$COND14/\$1_cond14/" *.csv
rename "s/(.*)_$COND15/\$1_cond15/" *.csv
rename "s/(.*)_$COND16/\$1_cond16/" *.csv
rename "s/(.*)_$COND17/\$1_cond17/" *.csv
rename "s/(.*)_$COND18/\$1_cond18/" *.csv
rename "s/(.*)_$COND19/\$1_cond19/" *.csv
rename "s/(.*)_$COND20/\$1_cond20/" *.csv
rename "s/(.*)_$COND21/\$1_cond21/" *.csv
rename "s/(.*)_$COND22/\$1_cond22/" *.csv
rename "s/(.*)_$COND23/\$1_cond23/" *.csv
rename "s/(.*)_$COND24/\$1_cond24/" *.csv
rename "s/(.*)_$COND25/\$1_cond25/" *.csv
rename "s/(.*)_$COND26/\$1_cond26/" *.csv
rename "s/(.*)_$COND27/\$1_cond27/" *.csv
rename "s/(.*)_$COND28/\$1_cond28/" *.csv
rename "s/(.*)_$COND29/\$1_cond29/" *.csv
rename "s/(.*)_$COND30/\$1_cond30/" *.csv
rename "s/(.*)_$COND31/\$1_cond31/" *.csv
rename "s/(.*)_$COND32/\$1_cond32/" *.csv

exit
