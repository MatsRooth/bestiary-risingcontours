cat data/responses.txt | awk 'BEGIN {FS="\t"} {print $24}' | sort | uniq -c | sort -nr > data/count.txt

cat data/responses.txt | awk 'BEGIN {FS="\t"} $24 ~ /RFR/ {printf("%s\t%s\t%s\t%s\n",$14,$24,$7,$6)}'  > data/RFR.txt

cat data/responses.txt | awk 'BEGIN {FS="\t"} $24 ~ /Contradiction Contour/ {printf("%s\t%s\t%s\t%s\n",$14,$24,$7,$6)}'  > data/Contradiction_Contour.txt
