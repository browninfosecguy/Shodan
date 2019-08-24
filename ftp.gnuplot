#############################
#
#Following GnuPlot script generate Graph for the Month of August 2019. The Data file was generated using the PowersShell command below
#
#Get-Content ./Port21_NB_2019.json | ConvertFrom-Json | Select-Object -Property ip_str,product | Group-Object -Property product | select count,name > ftp.txt
#
#
###############################3
#
set boxwidth 0.4
set style fill solid 1.00 
unset key
set title "New Brunswick: FTP Protocol for Month of August 2019"
set xlabel "FTP Software"
set ylabel "Number of Systems listening"
set xtics nomirror rotate by -45
set tic scale 0
set grid ytics lc rgb "#505050"
unset border
set yrange [ 0 to 650 ]
set ytics 25
plot "ftp.txt" using 1:xticlabels(2) with boxes lt rgb "#406090"
