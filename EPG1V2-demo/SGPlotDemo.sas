/* SGPLOT procedure can be used to create statistical graphics such as histograms  */
/* and regression plots,  */
/* in addition to simple graphics such as bar charts and line plots.  */
/* Statements and options enable you to control the appearance of your graph  */
/* and add additional features such as legends and reference lines. */

proc sgplot data=pg1.np_codelookup;
    where Type in ('National Historic Site', 'National Monument',
                   'National Park');
    hbar region / group=type seglabel
                  fillattrs=(transparency=0.5) dataskin=crisp;
    keylegend / opaque across=1 position=bottomright
                location=inside;
    xaxis grid;
run;
title;