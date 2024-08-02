include <gridfinity-rebuilt-openscad/gridfinity-rebuilt-utility.scad>

include <BOSL2/std.scad>

$fa = 1;
$fs = 1;

module cutout() {
    zrot_copies(n=2)
    translate([-15, 15, 0]) {
        xcyl(d=14,h=80, rounding1=7, anchor=RIGHT);
        xcyl(d=26, h=110, rounding2=26/2, anchor=LEFT);
    }
}

gridfinityInit(5, 2, height(5), 0, 42) {
    cut_move(x=0, y=0, w=5, h=2) {
        cutout();
    }
}

gridfinityBase(5, 2, 42, 0, 0);