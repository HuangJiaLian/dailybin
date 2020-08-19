# dailybin
Programs used almost everday. Update every now and then.

## Install
```bash
git clone git@github.com:HuangJiaLian/dailybin.git
./install
```
Install scipt will add some lines to your default shell evironment file. 
eg. `.bashrc`, `.bash_profile`, `.zshrc`, etc. 

## Upgrade
```bash
./upgrage
```

## cp2k related
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

## Visualization
- dplot: plot csv data easily

Usage:

```bash
dplot -F AllDat.csv  -X 0 -Y 1 2 --dlabels "Tem" "Mean Tem" --xlabel Steps --ylabel "Temperature (K)" -T "Temperature Changes Over Step"
```

## Alias 
- open  : `alias open=\"xdg-open"`  Open folder in Linux Terminal like MacOS `open` command.

Usage:
```bash
open .
```
Will open current folder with your file manager.

## Useful 3rd party tools
- [trans](https://github.com/soimort/translate-shell): Translate Shell (formerly Google Translate CLI) is a command-line translator

Usage:
```bash
>trans "學而不思則罔，思而不學則殆"
>學而不思則罔，思而不學則殆
(Xué ér bù sī zé wǎng, sī ér bù xué zé dài)

Learning without thinking is nothing, thinking without learning is perishable

Translations of 學而不思則罔，思而不學則殆
[ 简体中文 -> English ]

學而不思則罔，思而不學則殆
    Learning without thinking is nothing, thinking without learning is perishable, Learning without thought is labor lost, thought without learning is perilous
```


