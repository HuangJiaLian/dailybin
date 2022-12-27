#!/bin/bash
nums=`grep NIONS OUTCAR | awk '{print $12}'`
filename="dump.outcar"
steps=`grep -c "direct lattice vectors" OUTCAR`
let numsx=${nums}+1
let ntypes=`grep "ions per type" OUTCAR | awk '{print NF}'`-4
echo  "${ntypes} IONS TYPES"
echo "${nums} ATOMS"
echo "${steps} timesteps"

for((i=1;i<=${nums};i++))
do
echo $i >> temp.1
done
for((i=1;i<=${ntypes};i++))
do
let tmp=4+$i
tnums=`grep "ions per type" OUTCAR | awk -v t="${tmp}" '{print $t}'`
for((j=1;j<=${tnums};j++))
do
echo $i >> temp.2
done
done


if  [ ! -f "${filename}" ]; then
echo ""
else
rm ${filename} 
fi

grep -A 3 "direct lattice vectors" OUTCAR | awk '{print $1,$2,$3}' > coord.tmp
grep -A ${numsx} "POSITION" OUTCAR > position.tmp 
sed -i '/POSITION/d' position.tmp
sed -i '/--/d' position.tmp
for((i=1;i<=${steps};i++))
do
echo "ITEM: TIMESTEP
${i}
ITEM: NUMBER OF ATOMS
${nums}" >> ${filename}
#ITEM: BOX BOUNDS xy xz yz pp pp pp" >> ${filename}
#sed -i '1d' coord.tmp
#sed -n '1,3p' coord.tmp >> ${filename}
#sed -i '1,4p' coord.tmp
echo "ITEM: ATOMS id type x y z fx fy fz" >> ${filename}
sed -n "1,${nums}p" position.tmp > x.tmp
sed -i "1,${nums}d" position.tmp
paste temp.1 temp.2 x.tmp >> ${filename}
done
sed -i '/--/d' ${filename}
rm temp.* x.tmp coord.tmp position.tmp
