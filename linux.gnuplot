#############################
#
#Following GnuPlot script generate Graph for the Month of August 2019. The Data file was generated using the PowersShell command below
#
#Get-Content ./Linux_2.6.x_NB_Aug.json | ConvertFrom-Json | Where-Object -Property os -Match "2.*" | Select-Object -Property os,port | Group-Object -Property port | select count,name | out-file -path "./l#inux.txt"
#
#
###############################3
#
set boxwidth 0.4
set style fill solid 1.00 
unset key
set title "New Brunswick: Linux 2.6.x"
set xlabel "Port Number"
set ylabel "Number of Systems listening"
set xtics nomirror rotate by -45
set tic scale 0
set grid ytics lc rgb "#505050"
unset border
set yrange [ 0 to 25 ]
set ytics 2
plot "linux.txt" using 1:xticlabels(2) with boxes lt rgb "#406090"
