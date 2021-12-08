data parks monuments;
    set pg1.np_summary;
    where type in ('NM', 'NP');
    Campers=sum(OtherCamping, TentCampers, RVCampers,
                BackcountryCampers);
    format Campers comma17.;
    length ParkType $ 8;

	select (type);
	when ('NP' ) do;
		ParkType='Park';
        output parks;
    end;
	when ('NM') do;
		ParkType='Monuments';
        output monuments;
    end;
	otherwise ParkType = '';
	end;
	
    
    keep Reg ParkName DayVisits OtherLodging Campers ParkType;
run;