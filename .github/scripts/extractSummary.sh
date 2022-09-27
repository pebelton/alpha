startLineNum="$(grep -n "== SUMMARY ==" ../workflow/runOutput.txt | head -n 1 | cut -d: -f1)"
endLineNum="$(grep -n "JUnit XML file:" ../workflow/runOutput.txt | head -n 1 | cut -d: -f1)"
awk 'NR>=startLineNum && NR<=endLineNum' ../workflow/runOutput.txt > ../workflow/summary.txt
