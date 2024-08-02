include <gridfinity-rebuilt-openscad/gridfinity-rebuilt-utility.scad>

gridfinityInit(2, 4, height(10), 0, 42) {
    cutEqual(n_divx = 1, n_divy = 5, style_tab = 5, scoop_weight = 0);
}
gridfinityBase(2, 4, 42, 0, 0, 1);