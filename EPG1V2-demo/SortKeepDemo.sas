proc sort data=pg1.eu_occ (keep= Geo Country) out=alexpath.countrylist
nodupkey;
by Geo Country;
run;