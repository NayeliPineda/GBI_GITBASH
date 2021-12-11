echo "Tarea 1.10.3"
echo "Data de Saavedra and Stouffer 2013"
echo "De la carpeta Saavedra, tome el n20.txt"
cd ../../../
cd Documents/CSB/unix/data/Saavedra2013
echo "Numero de filas"
cat ../Saavedra2013/n20.txt |wc -l
echo "verifico la primera fila, para comprobar que tipo de caracter tengo"
head -n 1 ../Saavedra2013/n20.txt
echo "Numero de colunmas"
head -n 1 ../Saavedra2013/n20.txt | tr -d " " | tr -d "\n" | wc -c




