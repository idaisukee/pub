orig=$1
dest=$2

for i in $orig/*
do
	line_num=$(cat $i | wc -l)
	lecture_lines=$(echo $line_num - 1 | bc)
	echo $lecture_lines
	cat $i | head -n $lecture_lines > $(basename $i)
	cat $i | tail -n 1 >> exam.csv
done
