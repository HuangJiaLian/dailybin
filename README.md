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
- plot_dynamics: a fast plotting tool to plot the time dependence of the energies and temperature of the system one studied. NOTE: This command is based on `dplot`, and it should be run under the directory `ExtractData`.

Usage:
```bash
(tf20) hj@node20:~/Jack/64H2O$ cpex 64H2O_298.15K.out
******************************************
A tool to extract data from cp2k outfile.
File Name:  64H2O_298.15K.out
Done. Files saved at ./ExtractData/
******************************************
(tf20) hj@node20:~/Jack/64H2O$ ls ./ExtractData/
******************************************
$ plot_dynamics
$ ls
AllDat.csv  KineticEnergy.csv  KineticEnergy.png  PotentialEnergy.csv  PotentialEnergy.png  StepNumber.csv  TempChange.csv  Temperature.png
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

## Useful tools
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

- npy2txt: a command line tool to convert `.npy` file to `.txt`	file

Usage:
```bash
npy2txt data.npy
```


- dat2csv: a command line tool to convert `.txt` (`.dat`)  file to a `.csv` file.  Note: The field of  the input file can be any number larger than 2.

Usage:

For single file, use

```shell
dat2csv data.txt
```

for multiple files, use

```shell
dat2csv data1.txt dat2.txt
```

If you want to convert all `.txt`  files to `.csv` files, use 

```shell
dat2csv *.txt
```
