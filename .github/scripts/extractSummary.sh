ls -a

startLineNum="$(grep -n "== SUMMARY ==" runOutput.txt | head -n 1 | cut -d: -f1)"
endLineNum="$(grep -n "JUnit XML file:" runOutput.txt | head -n 1 | cut -d: -f1)"
echo "$startLineNum"
echo "$endLineNum"
awk 'NR>="$startLineNum" && NR<="$endLineNum"' runOutput.txt > summary.txt

ls -a
