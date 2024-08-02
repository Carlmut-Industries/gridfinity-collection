include <gridfinity-rebuilt-openscad/gridfinity-rebuilt-utility.scad>

include <BOSL2/std.scad>
include <BOSL2/walls.scad>

$fa = 1;
$fs = 1;

module cutout() {
    p = union([
        //ellipse(d=[28, 35]),
        rect([28, 35], rounding=[5, 5, -5, -5], anchor=BOT),
        rect([60, 135], rounding=5, anchor=TOP),
    ]);
    
    fwd(7)
    linear_sweep(p, height=15, anchor=TOP);
}

gridfinityInit(2, 5, height(5), 0, 42) {
    cut_move(x=0, y=0, w=2, h=5) {
        cutout();
    }
}

gridfinityBase(2, 5, 42, 0, 0);