%let ParkCode = ZION;
%let SpeciesCat = Bird;

proc freq data=pg1.np_species;
where Species_ID like "&ParkCode%" and Category = "&SpeciesCat";
tables Abundance Conservation_Status;
run;


proc print data=pg1.np_species;
where Species_ID like "&ParkCode%" and Category = "&SpeciesCat";
var Abundance Conservation_Status Species_ID Category Common_Names 
Scientific_Name;
run;