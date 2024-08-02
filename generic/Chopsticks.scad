include <gridfinity-rebuilt-openscad/gridfinity-rebuilt-utility.scad>

gridfinityInit(1, 6, height(5), 0, 42) {
    cutEqual(n_divx = 2, n_divy = 1, style_tab = 5, scoop_weight = 1);
}
gridfinityBase(1, 6, 42, 0, 0, 1);