static const char norm_fg[] = "#e2dbc9";
static const char norm_bg[] = "#242120";
static const char norm_border[] = "#9e998c";

static const char sel_fg[] = "#e2dbc9";
static const char sel_bg[] = "#C99B32";
static const char sel_border[] = "#e2dbc9";

static const char urg_fg[] = "#e2dbc9";
static const char urg_bg[] = "#FE8019";
static const char urg_border[] = "#FE8019";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
