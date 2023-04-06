-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/XxhmPX
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [unemployment] (
    [FIPS_code] int  NOT NULL ,
    [State] varchar(2)  NOT NULL ,
    [Area_name] varchar(100)  NOT NULL ,
    [Year] int  NOT NULL ,
    [Rural_urban_continuum_code_2013] int  NOT NULL ,
    [Urban_influence_code_2013] int  NOT NULL ,
    [Metro_2013] int  NOT NULL ,
    [Civilian_labor_force_2016] int  NOT NULL ,
    [Unemployed] int  NOT NULL ,
    [Unemployment_rate] int  NOT NULL 
)

CREATE TABLE [poverty] (
    [Year] int  NOT NULL ,
    [FIPS_code] int  NOT NULL ,
    [State] varchar(2)  NOT NULL ,
    [Area_name] varchar(100)  NOT NULL ,
    [Rural_urban_continuum_code_2003] int  NOT NULL ,
    [Urban_influence_code_2003] int  NOT NULL ,
    [Rural_urban_continuum_code_2013] int  NOT NULL ,
    [Urban_influence_code_2013] int  NOT NULL ,
    [POVALL] int  NOT NULL ,
    [PCTPOVALL] int  NOT NULL 
)

CREATE TABLE [Personal_Income_2017_2020] (
    [Year] int  NOT NULL ,
    [County] varchar(100)  NOT NULL ,
    [State] varchar(2)  NOT NULL ,
    [GeoFips] int  NOT NULL ,
    [Personal_Income] int  NOT NULL ,
    [Population] int  NOT NULL ,
    [Per_Capita_Personal_Income] int  NOT NULL 
)

CREATE TABLE [education] (
    [FIPS_code] int  NOT NULL ,
    [State] varchar(2)  NOT NULL ,
    [Area_name] varchar(100)  NOT NULL ,
    [Year] int  NOT NULL ,
    [Rural_urban_continuum_code_2003] int  NOT NULL ,
    [Urban_influence_code_2003] int  NOT NULL ,
    [Rural_urban_continuum_code_2013] int  NOT NULL ,
    [Urban_influence_code_2013] int  NOT NULL ,
    [Percent_of_adults_less_than_a_high_school_diploma] int  NOT NULL ,
    [Percent_of_adults_with_High_school_diploma_only] itn  NOT NULL ,
    [Percent_of_adults_completing_Some_college_or_associates_degree] int  NOT NULL ,
    [Percent_of_adults_with_a_bachelors_degree_or_higher] int  NOT NULL 
)

CREATE TABLE [2017_2020_Prescription_rate] (
    [State] varchar(2)  NOT NULL ,
    [County] varchar(100)  NOT NULL ,
    [County_FIPSCode] int  NOT NULL ,
    [OpioidDiespenseRateper100] int  NOT NULL ,
    [Year] int  NOT NULL ,
    CONSTRAINT [PK_2017_2020_Prescription_rate] PRIMARY KEY CLUSTERED (
        [County_FIPSCode] ASC
    )
)

CREATE TABLE [opioid_deaths] (
    [County] varchar(100)  NOT NULL ,
    [CountuCode] int  NOT NULL ,
    [Deaths] int  NOT NULL ,
    [Population] int  NOT NULL ,
    [Crude_rate] int  NOT NULL ,
    [Year] int  NOT NULL 
)

CREATE TABLE [population] (
    [Year] int  NOT NULL ,
    [FIPS_code] int  NOT NULL ,
    [County] varchar(100)  NOT NULL ,
    [State] varchar(2)  NOT NULL 
)

COMMIT TRANSACTION QUICKDBD