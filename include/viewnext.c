void viewnext(const Arg *arg) {
    if (selmon->tagset[selmon->seltags] < 6) {
        view(&((Arg) { .ui = selmon->tagset[selmon->seltags] << 1 }));
    }
}

void viewprev(const Arg *arg) {
    if (selmon->tagset[selmon->seltags] > 1) {
        view(&((Arg) { .ui = selmon->tagset[selmon->seltags] >> 1 }));
    }
}
