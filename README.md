# Dailybin
Programs used almost everday. Update every now and then.

## Install
```bash
git clone git@github.com:HuangJiaLian/dailybin.git
cd dailybin
./install
```
Install scipt will add some lines to your default shell evironment file. 
eg. `.bashrc`, `.bash_profile`, `.zshrc`, etc. 

## Upgrade
```bash
./upgrage
```

## CP2K tools 
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

$ enerChange out.log
text saved in /home/jack/Step_Energy.png
![](https://cdn.jsdelivr.net/gh/HuangJiaLian/DataBase0@master/uPic/2023-05-12-22-01-0mMYOs.png)

- extractLast
To extractLast frame of xyz trajectory

- keepOpt
Keep optimization process; Use like this:  keepOpt In_GBL.xyz FAPbI3-pos-1.xyz

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


- dat2csv: a command line tool to convert `.txt` (`.dat`)  file to a `.csv` file

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

128w_bk_n.dat

- tp2oh: a commamd line to convert number type in .xyz file to HO type.

```shell
tp2oh example.xyz
```

Which convert
```
384
Atoms. Timestep: 0
1 4.41243 4.75955 13.3162
2 4.79362 5.1631 14.1479
2 3.68986 5.35163 12.9593
1 8.31719 4.93377 1.3229
2 8.02236 4.45941 0.493411
2 7.66956 5.66513 1.53668
```
to

```
384
Atoms. Timestep: 0
O 4.41243 4.75955 13.3162
H 4.79362 5.1631 14.1479
H 3.68986 5.35163 12.9593
O 8.31719 4.93377 1.3229
H 8.02236 4.45941 0.493411
H 7.66956 5.66513 1.53668
O 14.5847 13.2403 11.3342
```

- reoh: a commamd line to convert number type in .xyz file to HO type and rerange 
like cp2k 


- aveg: A command line program to calculate average value of a given list

Example:
```bash
(tf20) mac@Macbook:~/Desktop$ cat test.txt
5.9779103
5.9810555
5.9745009
5.9779188
5.9763435
5.9829963
(tf20) mac@Macbook:~/Desktop$ cat test.txt | aveg
5.97845
(tf20) mac@Macbook:~/Desktop$ aveg test.txt
5.97845
```

- exthermo: A command line program to extract thermo data from LAMMPS log file.

Example:

```bash
exthermo log.lammps
```

- sampleevery: A command line programs to sample `.xyz` file.

Example:

This command will sample `text.xyz` every 2 dumps.
```bash
sampleevery test.xyz 2
```
- aimd-process: plot the Pot. and Temp. along with time
- dump2xyz: convert dumpfile format of water to xyz format 
```
ITEM: TIMESTEP
0
ITEM: NUMBER OF ATOMS
192
ITEM: BOX BOUNDS pp pp pp
0.0000000000000000e+00 1.2417126637745589e+01
0.0000000000000000e+00 1.2417126637000001e+01
0.0000000000000000e+00 1.2417126637000001e+01
ITEM: ATOMS id type xu yu zu
1 1 12.2789 12.2862 11.7326
2 2 11.7624 0.64626 12.0511
3 2 12.1577 12.1129 10.7506
4 1 12.2003 2.96671 12.3428
5 2 12.1672 1.98944 0.133342
```
to 

```
192
Atoms. Timestep: 0
O 12.2789 12.2862 11.7326
H 11.7624 0.64626 12.0511
H 12.1577 12.1129 10.7506
O 12.2003 2.96671 12.3428
H 12.1672 1.98944 0.133342
H 12.0581 3.07358 11.4205
O 12.3321 6.21356 12.2795
H 11.7348 5.53013 11.9297
```


- kantu: show image in terminal
![](https://cdn.jsdelivr.net/gh/HuangJiaLian/DataBase0@master/uPic/2022_04_19_01_3yXQlf.png)

- get_traj.sh: Extract a LAMMPS dump file from VASP output. Author: Bowen Wang
- finkey: Finnish keyboard layout
- ccapture: Capture image from builtin camera. 
- channelNumOf: Get the channel number of an image
- ele2anum: Change the element name in xyz file to atomic number 
- color2gray: Convert a color image into a gray scale image. 
- randomDelPNG: Delete PNG files randomly.
- addbox: add simulation box to xyz file
- kanxyz: show the structure of xyz file
- npz2png: convert npz file containing slices of AFM to png files
- png2npz: convert multiple png files to one npz files
