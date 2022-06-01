use <threads-lib.scad>
use <MCAD/involute_gears.scad>

$fn=64;

module filtry_pos(x, n){
nn = n;
for(i=[1:1:nn]){
rotate([0,0,(360/n)*(i-1)])translate([x,0,-0.1])union(){
thread_for_nut_fullparm(diameter=28.4, length=3.1, usrclearance=0, pitch=0.6, divs=128, entry=1);
translate([0,0,2.99])cylinder(d=32, h=10);
}
}
}

module oczko(){
difference(){
cylinder(d=12,h=5);
translate([0,0,-1])cylinder(d=4,h=50);
}
}

module wpust_gora(){
difference(){
cylinder(d=12,h=32);
translate([0,0,5])cylinder(d=3,h=50);
}
}

module wpust_dol(){
difference(){
cylinder(d=12,h=37);
translate([0,0,5])cylinder(d=3,h=50);
}
}

module duze_kolo(){
difference(){
union(){
gear (
	number_of_teeth=80,
  diametral_pitch=0.5,
	pressure_angle=0,
	clearance = 0,
	gear_thickness=5,
	rim_thickness=5,
	hub_thickness=0,
	hub_diameter=0,
	bore_diameter=0,
	circles=0,
	backlash=0,
	twist=0,
	involute_facets=0,
	flat=false);
cylinder(d=65, h=15);
}
translate([0,0,-0.01])filtry_pos(x=55, n=9);
hull(){
translate([-73,0,-1])cylinder(d=2, h=20);
translate([-75.5,0,-1])cylinder(d=2, h=20);
}
translate([0,0,-1])cylinder(d=10.5, h=20);
}
}

module male_kolo(){
difference(){
gear (
	number_of_teeth=16,
  diametral_pitch=0.5,
	pressure_angle=0,
	clearance = 0,
	gear_thickness=7,
	rim_thickness=7,
	hub_thickness=0,
	hub_diameter=0,
	bore_diameter=0,
	circles=0,
	backlash=0,
	twist=0,
	involute_facets=0,
	flat=false);
translate([0,0,-1])cylinder(d=5.6, h=100);
rotate([0,0,11.25])translate([0,0,3.5])rotate([0,90,0])cylinder(d=2.8, h=100, center=true);
}
}

module male_kolo2(){
difference(){
union(){
gear (
	number_of_teeth=16,
  diametral_pitch=0.5,
	pressure_angle=0,
	clearance = 0,
	gear_thickness=7,
	rim_thickness=7,
	hub_thickness=0,
	hub_diameter=0,
	bore_diameter=0,
	circles=0,
	backlash=0,
	twist=0,
	involute_facets=0,
	flat=false);
cylinder(d=20, h=15);
}
translate([0,0,-1])cylinder(d=5.3, h=100);
rotate([0,0,11.25])translate([0,0,3.5])rotate([0,90,0])cylinder(d=2.8, h=100, center=true);

rotate([0,0,11.25+90])translate([0,0,11])rotate([0,90,0])cylinder(d=2.8, h=100, center=true);
}
}

module dziura_nema(){

cylinder(d=22, h=60);
translate([-23/2,-23/2,0])cylinder(d=3, h=60);
translate([-23/2,23/2,0])cylinder(d=3, h=60);
translate([23/2,-23/2,0])cylinder(d=3, h=60);
translate([23/2,23/2,0])cylinder(d=3, h=60);
}
module obudowa(){




hh=42-5;
difference(){
union(){
difference(){
union(){
hull(){
cylinder(d=180, h=hh);
translate([-95,60,0])cylinder(d=50, h=hh);
translate([-95,-60,0])cylinder(d=50, h=hh);
}

translate([-113,83,0])wpust_dol();
translate([-125,35,0])wpust_dol();
translate([-125,-35,0])wpust_dol();
translate([-113,-83,0])wpust_dol();
translate([-50,-92,0])wpust_dol();
translate([0,-92,0])wpust_dol();
translate([50,-78,0])wpust_dol();
translate([88,-30,0])wpust_dol();
translate([-50,92,0])wpust_dol();
translate([0,92,0])wpust_dol();
translate([50,78,0])wpust_dol();
translate([88,30,0])wpust_dol();

}

translate([0,0,2])hull(){
cylinder(d=180-7.2, h=hh);
translate([-95,60,0])cylinder(d=50-7.2, h=hh);
translate([-95,-60,0])cylinder(d=50-7.2, h=hh);
}
}
translate([55,0,0])cylinder(d=60,h=5);

}
translate([55,0,-0.1])thread_for_nut_fullparm(diameter=42, length=5.2, usrclearance=0, pitch=0.75, divs=128, entry=1);

}

translate([0,0,42-5-0.5])difference(){
hull(){
cylinder(d=180-2.2, h=3);
translate([-95,60,0])cylinder(d=50-2.2, h=3);
translate([-95,-60,0])cylinder(d=50-2.2, h=3);
}

translate([0,0,-1])hull(){
cylinder(d=180-5, h=10);
translate([-95,60,0])cylinder(d=50-5, h=10);
translate([-95,-60,0])cylinder(d=50-5, h=10);
}
}
cylinder(d=10,h=40.5);
cylinder(d=65, h=7);


translate([-110,10,0])difference(){
cube([25,10,20]);
translate([12.5,5,1])cylinder(d=3, h=20);
}
translate([-100,60,0])difference(){
cube([25,10,20]);
translate([12.5,5,1])cylinder(d=3, h=20);
}


translate([-110,-20,0])difference(){
cube([25,10,30]);
translate([12.5,5,1])cylinder(d=3, h=30);
}
translate([-100,-70,0])difference(){
cube([25,10,30]);
translate([12.5,5,1])cylinder(d=3, h=30);
}


translate([0,0,80])difference(){
union(){
hull(){
cylinder(d=180, h=5);
translate([-95,60,0])cylinder(d=50, h=5);
translate([-95,-60,0])cylinder(d=50, h=5);
}
hull(){
translate([-50,63.5,0])cylinder(d=50, h=hh-5);
translate([-50,-63.5,0])cylinder(d=50, h=hh-5);
translate([-95,60,0])cylinder(d=50, h=hh-5);
translate([-95,-60,0])cylinder(d=50, h=hh-5);
}


translate([0,0,27+2.5])difference(){
hull(){
translate([-50,63.5,0])cylinder(d=50-2.2, h=5);
translate([-50,-63.5,0])cylinder(d=50-2.2, h=5);
translate([-95,60,0])cylinder(d=50-2.2, h=5);
translate([-95,-60,0])cylinder(d=50-2.2, h=5);
}

translate([0,0,-1])hull(){
translate([-50,63.5,0])cylinder(d=50-5, h=hh-5);
translate([-50,-63.5,0])cylinder(d=50-5, h=hh-5);
translate([-95,60,0])cylinder(d=50-5, h=hh-5);
translate([-95,-60,0])cylinder(d=50-5, h=hh-5);
}
}

translate([-22,0,0])wpust_gora();
translate([-123,0,0])wpust_gora();
translate([-22,65,0])wpust_gora();
translate([-123,65,0])wpust_gora();
translate([-22,-65,0])wpust_gora();
translate([-123,-65,0])wpust_gora();
translate([-70,-90,0])wpust_gora();
translate([-70,90,0])wpust_gora();

translate([-113,83,0])oczko();
translate([-125,35,0])oczko();
translate([-125,-35,0])oczko();
translate([-113,-83,0])oczko();
translate([-50,-92,0])oczko();
translate([0,-92,0])oczko();
translate([50,-78,0])oczko();
translate([88,-30,0])oczko();
translate([-50,92,0])oczko();
translate([0,92,0])oczko();
translate([50,78,0])oczko();
translate([88,30,0])oczko();

}


translate([0,0,5])hull(){
translate([-50,63.5,0])cylinder(d=50-7.2, h=hh);
translate([-50,-63.5,0])cylinder(d=50-7.2, h=hh);
translate([-95,60,0])cylinder(d=50-7.2, h=hh);
translate([-95,-60,0])cylinder(d=50-7.2, h=hh);
}



translate([55,0,-0.1])thread_for_nut_fullparm(diameter=42, length=5.2, usrclearance=0, pitch=0.75, divs=128, entry=1);


translate([0,0,-0.01])difference(){
hull(){
cylinder(d=180-1.8, h=3);
translate([-95,60,0])cylinder(d=50-1.8, h=3);
translate([-95,-60,0])cylinder(d=50-1.8, h=3);
}

translate([0,0,-1])hull(){
cylinder(d=180-6, h=10);
translate([-95,60,0])cylinder(d=50-6, h=10);
translate([-95,-60,0])cylinder(d=50-6, h=10);
}
}
translate([0,0,-6])cylinder(d=10.4,h=10);
hull(){
translate([-100,-70,-1])translate([7,30,-1])cylinder(d=43,h=19+14);
translate([-100,10,-1])translate([7,30,-1])cylinder(d=43,h=19+14);
translate([-95,-70,-1])translate([7,30,-1])cylinder(d=43,h=19+14);
translate([-95,10,-1])translate([7,30,-1])cylinder(d=43,h=19+14);
}




}


translate([0,0,150])union(){difference(){
union(){
difference(){
hull(){
translate([-50,63.5,0])cylinder(d=50, h=5);
translate([-50,-63.5,0])cylinder(d=50, h=5);
translate([-95,60,0])cylinder(d=50, h=5);
translate([-95,-60,0])cylinder(d=50, h=5);
}

translate([0,0,-2])hull(){
translate([-50,63.5,0])cylinder(d=40, h=5);
translate([-50,-63.5,0])cylinder(d=40, h=5);
translate([-95,60,0])cylinder(d=40, h=5);
translate([-95,-60,0])cylinder(d=40, h=5);
}

}
translate([-22,0,0])oczko();
translate([-123,0,0])oczko();
translate([-22,65,0])oczko();
translate([-123,65,0])oczko();
translate([-22,-65,0])oczko();
translate([-123,-65,0])oczko();
translate([-70,-90,0])oczko();
translate([-70,90,0])oczko();


}
translate([0,0,-2.2])difference(){
hull(){
translate([-50,63.5,0])cylinder(d=50-2, h=5);
translate([-50,-63.5,0])cylinder(d=50-2, h=5);
translate([-95,60,0])cylinder(d=50-2, h=5);
translate([-95,-60,0])cylinder(d=50-2, h=5);
}
hull(){
translate([-50,63.5,-1])cylinder(d=50-6, h=50);
translate([-50,-63.5,0])cylinder(d=50-6, h=50);
translate([-95,60,0])cylinder(d=50-6, h=50);
translate([-95,-60,0])cylinder(d=50-6, h=50);
}
}
}

}

}


obudowa();


translate([-100,10,25])difference(){union(){
translate([-10,0,0])cube([25,50,3]);
translate([0,35,0])cube([25,25,3]);
}
translate([7,30,-1])dziura_nema();
translate([-4,0,0])hull(){
translate([1,5,-1])cylinder(d=3.5, h=10);
translate([7,5,-1])cylinder(d=3.5, h=10);
}
translate([-4,0,0])hull(){
translate([11,55,-1])cylinder(d=3.5, h=10);
translate([17,55,-1])cylinder(d=3.5, h=10);
}
}

translate([-100,-70,35])difference(){union(){
translate([-10,10,0])cube([25,50,3]);
translate([0,0,0])cube([25,25,3]);
}
translate([7,30,-1])dziura_nema();
translate([-4,0,0])hull(){
translate([1,55,-1])cylinder(d=3.5, h=10);
translate([7,55,-1])cylinder(d=3.5, h=10);
}
translate([-4,0,0])hull(){
translate([11,5,-1])cylinder(d=3.5, h=10);
translate([17,5,-1])cylinder(d=3.5, h=10);
}
}


translate([0,0,7.1])duze_kolo();
translate([0,0,7.1+15+0.1])duze_kolo();
translate([-94,40,6])male_kolo();

translate([-94,-40,20])male_kolo();

male_kolo2();

/*
difference(){
cube([33,15,10]);
translate([-0.0001,2.5,-1])cube([19,5,20]);
translate([33-19+0.0001,2.5+5,-1])cube([19,5,20]);
}*/