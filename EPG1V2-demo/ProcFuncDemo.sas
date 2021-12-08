proc print data= pg1.np_summary (obs=10);
	var Reg Type ParkName DayVisits TentCampers RVCampers;
run;

/*calculate summary statistics*/
proc means data= pg1.np_summary;
	var DayVisits TentCampers RVCampers;
run;

proc univariate data= pg1.np_summary;
	var DayVisits TentCampers RVCampers;
run;

proc freq data= pg1.np_summary;
	tables Reg Type;
run;