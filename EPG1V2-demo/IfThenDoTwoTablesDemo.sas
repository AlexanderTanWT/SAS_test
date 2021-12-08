data parks monument;
	set pg1.np_summary;
	where Type = "NP" or Type = "NM";
	Campers = sum(TentCampers, RVCampers, BackcountryCampers);
	format Campers comma17.;

	if Type = "NP" then do;
	ParkType = "Park";
	output parks;
	end;
	else if Type = "NM" then do;
	ParkType = "Monument";
	output monument;
	end;
	
	keep Reg ParkName DayVisits OtherLodging Campers ParkType;
run;