startLineNum="$(grep -n "== SUMMARY ==" ../workflows/runOutput.txt | head -n 1 | cut -d: -f1)"
endLineNum="$(grep -n "JUnit XML file:" ../workflows/runOutput.txt | head -n 1 | cut -d: -f1)"
awk 'NR>=startLineNum && NR<=endLineNum' ../workflows/runOutput.txt > ../workflows/summary.txt
