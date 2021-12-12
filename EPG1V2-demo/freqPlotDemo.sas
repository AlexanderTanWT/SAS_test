title1  "Park Types by Region";

proc freq data=pg1.np_codelookup order=freq;
	tables Type*Region / nocol crosslist
	plots=freqplot(groupby=row scale=grouppercent orient=horizontal);
	where Type in ("National Historic Site", "National Monument", "National Park");
run;