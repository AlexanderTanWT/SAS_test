proc sort data= pg1.np_largeparks out= alexpath.park_clean
nodupkey dupout=alexpath.park_dups;
by _all_;
run;
