TESTFILES="testFiles/*.pt"

let counter=1
>TestResults.txt

for f in $TESTFILES
do
	echo "Test $counter File $f" >> TestResults.txt
	echo >> TestResults.txt

	echo "Show trace of accepted input only" >> TestResults.txt
	ssltrace "ptc -o1 -t1 -L ../lib/pt $f" ~/cisc458/ptsrc/parser/scan.def -i >> TestResults.txt

	echo "Show trace of emitted output only" >> TestResults.txt
	ssltrace "ptc -o1 -t1 -L ../lib/pt $f" ~/cisc458/ptsrc/parser/scan.def -e >> TestResults.txt

	echo >> TestResults.txt

	echo "**************************" >> TestResults.txt

	let counter=counter+1
done
