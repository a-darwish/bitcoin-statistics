#
# Input is in CSV format
# Source: blockchain.info
#
set datafile separator ","
inputFile = "estimated-transaction-volume-usd.csv"
outputFile = "estimated-transaction-volume-usd.svg"

#
# PNG Output
#
#set terminal pngcairo enhanced size 1024,768 font 'Verdana,14'
#set output "bitcoins.png"

#
# SVG Output
#
set terminal svg enhanced size 1300,768 fsize 21
set output outputFile

set autoscale fix
set autoscale y

#
# blockchain.info CSV date/time format
#
set timefmt "%d/%m/%Y %H:%M:%S"
set xdata time

#
# x/y axis formats
#
set format x "%m/%Y"
set decimal locale
set format y "$%'.0f"
set xtics rotate by 45 offset -0.8,-1.8
set bmargin 3

set style data lines
set key off
set grid

plot inputFile using 1:2 title "Total bitcoins" linewidth 3 linecolor rgb "#4572A7"
