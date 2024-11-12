cat responses.txt | awk 'BEGIN {FS="\t"} $24 ~ /RFR/ {printf("%s\t%s\t%s\t%s\n",$14,$24,$7,$6)}'  > RFR

cat responses.txt | awk 'BEGIN {FS="\t"} {print $24}'   | sort | uniq -c | sort -nr > count.txt

for f in `cat Contradiction_Contour.txt | cut -f1`; do echo $f; afplay audiowav/$f; done


## Contours
cat responses.txt | awk 'BEGIN {FS="\t"} $24 ~ /Presumption Contour/ {printf("%s\t%s\t%s\t%s\n",$14,$24,$7,$6)}'  > Presumption_Contour.txt


## Playing
for f in `cat Presumption_Contour.txt | cut -f1`; do echo $f; afplay audiowav/$f; done

for f in `cat RFR.txt | cut -f1`; do echo $f; afplay audiowav/$f; done

## Count
cat responses.txt | awk 'BEGIN {FS="\t"} {print $24}'   | sort | uniq -c | sort -nr > count.txt



