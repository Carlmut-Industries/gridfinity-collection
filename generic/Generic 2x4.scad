include <gridfinity-rebuilt-openscad/gridfinity-rebuilt-utility.scad>

gridfinityInit(2, 4, height(6), 0, 42) {
    // 2x2 cut
    cut(0, 2, 2, 2, 5, 0);
    
    // 2x1 cuts
    cut(0, 0, 1, 2, 5, 0);
    cut(1, 0, 1, 2, 5, 0);
}
gridfinityBase(2, 4, 42, 0, 0, 1);