cd ../../../
cd Documents/CSB/unix/data/Saavedra2013
for item in ../Saavedra2013/*.txt; do cat $item | wc -l; done
echo "numero de columnas"
for a in ../Saavedra2013/*.txt; do head -n 1 $a | tr -d "\n" | wc -c; done

