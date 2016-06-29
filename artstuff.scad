module mycube(x, y, z) {
translate([x, y, z]) {
difference() {
    cube([25,25,25],center = true);
    sphere(16, center = true, $fn = 50);
}
  difference() {
    cube(16,25,center = true, $fn= 30);
    sphere(10, center = true, $fn = 30);
}
    sphere(4, $fn = 25);
    translate([12.5,-12.5,-12.5]) {
        rotate([-45, -35.26, 14.5]) {
            cylinder(43,r = .75, $fn10);
        }
    }
translate([-12.5,12.5,-12.5]) {
        rotate([45, 35.26, 14.5]) {
            cylinder(43,r = .75, $fn10);
        }
    }
cylinder(d = 1, h =12.5, $fn =3);
    
translate([-12.5,-12.5, -12.5]) {
        rotate([-45, 35.26, -14.5]) {
            cylinder(43,r = .75, $fn10);
        }
    }
 translate([12.5,12.5, -12.5]) {
        rotate([45, -35.26, -14.5]) {
            cylinder(43,r = .75, $fn10);
        }
    }
   }
}
module newcube(x, y, z) {
    translate([x, y, z]) {
        cube([25,25,25]);
    }
}

difference() {
mycube(0,0,0);
difference() {
cube([50,50,50], center = true);
cube([25,25,25], center = true);
}
}