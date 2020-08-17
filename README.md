# dailybin
Programs used almost everday.

- cpex: cp2k data extract from out file.

Usage:
```bash
(tf20) hj@node20:~/Jack/64H2O$ cpex 64H2O_298.15K.out
******************************************
A tool to extract data from cp2k outfile.
File Name:  64H2O_298.15K.out
Done. Files saved at ./ExtractData/
******************************************
(tf20) hj@node20:~/Jack/64H2O$ ls ./ExtractData/
AllDat.csv  KineticEnergy.csv  PotentialEnergy.csv  StepNumber.csv  TempChange.csv
```
- dplot: plot csv data easily

Usage:

```bash
dplot -F AllDat.csv  -X 0 -Y 1 2 --dlabels "Tem" "Mean Tem" --xlabel Steps --ylabel "Temperature (K)" -T "Temperature Changes Over Step"
```


