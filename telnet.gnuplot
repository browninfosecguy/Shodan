#############################
#
#Following GnuPlot script generate Graph for the Month of August 2019. The Data file was generated using the PowersShell command below
#
#Get-Content ./Port23_NB_2019.json | ConvertFrom-Json | select ip_str, port,isp | Group-Object isp | Select-Object Count,Name | Out-File -Path "/Users/sunnyjamwal/Documents/Talk/ISACA 2019/Research/NB/Aug#ust 2019/telnet.txt"
#
#
###############################3
#
set boxwidth 0.4
set style fill solid 1.00 
unset key
set title "New Brunswick: Telnet Protocol for Month of August 2019"
set xlabel "Internet Service Provider"
set ylabel "Number of Systems listening"
set xtics nomirror rotate by -45
set tic scale 0
set grid ytics lc rgb "#505050"
unset border
set yrange [ 0 to 80 ]
set ytics 2
plot "telnet.txt" using 1:xticlabels(2) with boxes lt rgb "#406090"
