const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#242120", /* black   */
  [1] = "#FE8019", /* red     */
  [2] = "#C99B32", /* green   */
  [3] = "#F9BC2F", /* yellow  */
  [4] = "#998E75", /* blue    */
  [5] = "#B3A78A", /* magenta */
  [6] = "#CBBD9B", /* cyan    */
  [7] = "#e2dbc9", /* white   */

  /* 8 bright colors */
  [8]  = "#9e998c",  /* black   */
  [9]  = "#FE8019",  /* red     */
  [10] = "#C99B32", /* green   */
  [11] = "#F9BC2F", /* yellow  */
  [12] = "#998E75", /* blue    */
  [13] = "#B3A78A", /* magenta */
  [14] = "#CBBD9B", /* cyan    */
  [15] = "#e2dbc9", /* white   */

  /* special colors */
  [256] = "#242120", /* background */
  [257] = "#e2dbc9", /* foreground */
  [258] = "#e2dbc9",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
