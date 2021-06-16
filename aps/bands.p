
set terminal  pdf # set term postscript eps color enhanced 
set output 'bandstructure.pdf'

#--------------------------------------#
# Axis properties are defined here !!! #
#--------------------------------------#
xmin = 0.0000;
xmax = 1.910607;
ymin = -5;
ymax = 5;
set xrange [xmin:xmax]
set yrange [ymin:ymax]

#----------------------------------------------#
# Points of high symmetry are defined here !!! #
#----------------------------------------------#
G1 = 0.000000; #  'Gamma'   
X  = 0.130581; #    'X'       
Y  = 0.315251; #    'Y'       
G2 = 0.445833; #    'Gamma'   
Z  = 0.576414; #    'Z'       
R  = 0.761084; #    'R'       
G3 = 0.987257; #    'Gamma'   
T  = 1.171927; #    'T'       
U  = 1.356597; #    'U'       
G4 = 1.541267; #    'Gamma'   
V  = 1.725937; #    'V'       
G5 = 1.910607; #    'Gamma'   

#--------------------------------------------------#
# Lines from points of high symmetry settings  !!! #
#--------------------------------------------------#
set arrow from G1, ymin to  G1,ymax nohead lt 5  dt 2 lw 1 lc 'grey' 
set arrow from X , ymin to  X ,ymax nohead lt 5  dt 2 lw 1 lc 'grey'
set arrow from Y , ymin to  Y ,ymax nohead lt 5  dt 2 lw 1 lc 'grey'
set arrow from G2, ymin to  G2,ymax nohead lt 5  dt 2 lw 1 lc 'grey'
set arrow from Z , ymin to  Z ,ymax nohead lt 5  dt 2 lw 1 lc 'grey'
set arrow from R , ymin to  R ,ymax nohead lt 5  dt 2 lw 1 lc 'grey'
set arrow from G3, ymin to  G3,ymax nohead lt 5  dt 2 lw 1 lc 'grey'
set arrow from T , ymin to  T ,ymax nohead lt 5  dt 2 lw 1 lc 'grey'
set arrow from U , ymin to  U ,ymax nohead lt 5  dt 2 lw 1 lc 'grey'
set arrow from G4, ymin to  G4,ymax nohead lt 5  dt 2 lw 1 lc 'grey'
set arrow from V , ymin to  V ,ymax nohead lt 5  dt 2 lw 1 lc 'grey'
set arrow from G5, ymin to  G5,ymax nohead lt 5  dt 2 lw 1 lc 'grey'
set arrow from 0, xmin to  xmax nohead lt 5 lw 1 dt 2 lc 'grey' 

#--------------------------------------------------#
# Labelling and modifying plot  !!! #
#--------------------------------------------------#
set nokey
#set size 0.4,0.5
set noxtics
set ylabel 'E - E_F (eV)' font "Times-Roman, 14"
set noxlabel
set title "Band structure " font 'Times-Roman, 10'
set xtics ('{/Symbol G}' G1, 'X' X, 'Y' Y, '{/Symbol G}' G2, 'Z' Z, 'R' R, '{/Symbol G}' G3, 'T' T, 'U' U,'{/Symbol G}' G4, 'V' V, '{/Symbol G}' G5 ) font 'Helvetica, 8'
set ytics ymin,1,ymax font 'Helvetica, 10'
plot 'bands.dat' u 1:2 w l lt 1 lc 'black'  lw 2
