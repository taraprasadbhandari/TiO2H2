set terminal post eps enhanced solid color "Helvetica" 20 
set arrow from 0, 0 to 0, 5.6 nohead
set output "TiO2H2_PDOS.eps" 
set xrange [-30:-8] 
set yrange [0:10] 
set xtics -30, 2, -8 
set ytics   0, 1, 10
set xlabel "E - E_F (eV)" 
set ylabel "PDOS (states/eV/atom)" 
plot "pwscf.pdos_atm#1(H)_wfc#1(s)" u ($1-12.1629):($2) w l lw 6 lt rgb "blue"   title '1(H)-s (1s orbital of H 1st atom)', \
     "pwscf.pdos_atm#2(H)_wfc#1(s)" u ($1-12.1629):($2) w l lw 2 lt rgb "green"   title '2(H)-s (1s orbital of H 2nd atom)', \
     "pwscf.pdos_atm#3(O)_wfc#2(p)" u ($1-12.1629):($2) w l lw 4 lt rgb "yellow"   title '3(O)-s (2p orbital of O 1st atom)', \
     "pwscf.pdos_atm#4(O)_wfc#2(p)" u ($1-12.1629):($2) w l lw 2 lt rgb "brown" title '4(O)-s (1s orbital of O 2nd atom)', \
     "pwscf.pdos_atm#4(O)_wfc#2(p)" u ($1-12.1629):($2) w l lw 2 lt rgb "black" title '4(O)-p (2p orbital of O 2nd atom)', \
     "pwscf.pdos_atm#5(Ti)_wfc#2(p)" u ($1-12.1629):($2) w l lw 4 lt rgb "magenta" title '5(Ti)-p (2p orbital of Ti atom)', \
     "pwscf.pdos_atm#5(Ti)_wfc#3(s)" u ($1-12.1629):($2) w l lw 4 lt rgb "purple" title '5(Ti)-s (3s orbital of Ti atom)', \
     "pwscf.pdos_atm#5(Ti)_wfc#4(d)" u ($1-12.1629):($2) w l lw 2 lt rgb "blue" title '5(Ti)-d (4d orbital of Ti atom)',
