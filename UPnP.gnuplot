#############################
#
#Following GnuPlot script generate Graph for the Month of August 2019. The Data file was generated using the PowersShell command below
#
#Get-Content ./UPNP_NB_AUG_2019.json | ConvertFrom-Json | Select-Object ip_str, port | Sort-Object -Property port | Group-Object -Property port | select Name,Count > upnp.txt
#
#
###############################3
#
set boxwidth 0.4
set style fill solid 1.00 
unset key
set title "New Brunswick: UPnP Protocol for Month of August 2019"
set xlabel "Port Number"
set ylabel "Number of Systems listening"
set tic scale 0
set grid ytics lc rgb "#505050"
unset border
set yrange [ 0 to 125 ]
set ytics 3
plot "upnp.txt" using 2:xticlabels(1) with boxes lt rgb "#406090"
