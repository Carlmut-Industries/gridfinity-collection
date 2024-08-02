include <gridfinity-rebuilt-openscad/gridfinity-rebuilt-utility.scad>

include <BOSL2/std.scad>
include <BOSL2/walls.scad>

$fa = 1;
$fs = 1;

gridfinityInit(2, 1, height(5), 0, 42) {
    cut_move(x=0, y=0, w=2, h=1) {
        rotate([90, 0, 0])
        cylinder(d=45, h=28, center=true);
    }
}

gridfinityBase(2, 1, 42, 0, 0);