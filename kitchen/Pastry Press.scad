include <gridfinity-rebuilt-openscad/gridfinity-rebuilt-utility.scad>

$fn=64;

module body() {
    // Lower Screw
    translate([0, 0, -(101+14)/2])
    cylinder(d=30, h=14, center=true);
    
    // Main body
    cylinder(d=50, h=101, center=true);
    
    // Top part
    translate([0, 0, (101+18)/2]) {
        cylinder(d=56, h=18, center=true);
        translate([0, 0, (18+35)/2])
        cylinder(d=50, h=35, center=true);
    }
}

gridfinityInit(2, 6, height(5), 0, 42) {
    cut_move(x=0, y=0, w=2, h=6) {
        rotate([90, 0, 0])
        body();
    }
    
    // Part holders
    cut_move(x=0, y=5, w=2, h=1) {
        for (x = [-25:25:25]) {
            for (y = [0:25:25]) {
                translate([x, y - 25, -10])
                cylinder(d=23, h=20, center=true);
            }
        }
    }
}
gridfinityBase(2, 6, 42, 0, 0, 1);