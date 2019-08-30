#############################
#
#Following GnuPlot script generate Graph for the Month of August 2019. The Data file was generated using the PowersShell command below
#
#Get-Content ./windows2008r2_NB_Aug.json | ConvertFrom-Json | Select-Object -Property org -ExpandProperty location | Select-Object org,city | Group-Object -Property org | Select-Object count,name
#
#
#
###############################3
#
set boxwidth 0.4
set style fill solid 1.00 
unset key
set title "New Brunswick: Windows Server 2008 r2 for Month of August 2019"
set xlabel "Company"
set ylabel "Number of Systems"
set xtics nomirror rotate by -45
set tic scale 0
set grid ytics lc rgb "#505050"
unset border
set yrange [ 0 to 25 ]
set ytics 2
plot "windows2008.txt" using 1:xticlabels(2) with boxes lt rgb "#406090"
