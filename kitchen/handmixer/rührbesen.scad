include <gridfinity-rebuilt-openscad/gridfinity-rebuilt-utility.scad>

include <BOSL2/std.scad>

$fa = 1;
$fs = 1;

module cutout() {
    zrot_copies(n=2)
    translate([12, 23, 0]) {
        xcyl(d=14,h=110, rounding1=7, anchor=RIGHT);
        xcyl(d=51, h=85, rounding1=10, rounding2=5, anchor=LEFT);
    }
}

gridfinityInit(5, 3, height(5), 0, 42) {
    cut_move(x=0, y=0, w=5, h=3) {
        cutout();
    }
}

gridfinityBase(5, 3, 42, 0, 0);