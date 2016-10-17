orig=$1
dest=$2

for i in $orig/*
do
	cat $i | nkf -Lu -d > $dest/$(basename $i)
done
