-- Joining opioid_deaths_all and prescription_rate tables
SELECT 
    oda."Year" as "Year",
	oda."County Code" as CountyCode,
	pr."State" as "State",
	oda."County" as County,
	oda."Population" as Population,
	oda."Deaths" as Deaths,
	oda."Crude Rate" as CrudeRate,
	pr."OpioidDispenseRateper100" as "DispenseRate",
	pi."Personal Income (thousands of dollars)" as "PersonalIncome",
	pi."Per Capita Personal Income" as "PerCapitaPersonalIncome",
	ed."Number of adults with less than HS diploma" as "LessThanHS",
	ed."Number of adults with HS diploma only" as "HSDiplomaOnly",
	ed."Number of adults completing some college or associate's degree" as "SomeCollege",
	ed."Number of adults with a bachelor's degree or higher" as "BachelorOrHigher",
	pov."POVALL" as "PovertyPop",
	pov."PCTPOVALL" as "PovertyRate",
	une."Unemployed" as "UnemployedPop",
	une."Unemployment_rate" as "UnemployedRate"
INTO ALL_data_combined
FROM opioid_deaths as oda
LEFT JOIN "2017_2020_Prescription_rate" as pr
ON oda."County Code" = pr."County_FIPSCode" AND oda."Year" = pr."Year"
LEFT JOIN "Personal_Income_2017_2020" as pi
ON oda."County Code" = pi."GeoFips" AND oda."Year" = pi."Year"
LEFT JOIN "education" as ed
ON oda."County Code" = ed."FIPS_code" AND oda."Year" = ed."Year"
LEFT JOIN "poverty" as pov
ON oda."County Code" = pov."FIPS_code" AND oda."Year" = pov."Year"
LEFT JOIN "unemployment" as une
ON oda."County Code" = une."FIPS_code" AND oda."Year" = une."Year";