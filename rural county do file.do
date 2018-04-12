
clear 

import excel "/Users/ayesha/Desktop/cable_company/County_Rural.xlsx", sheet("United States") firstrow

//Percentage of the county population living in rural areas as of the 2010 Census. 
//Counties with less than 50 percent of the population living in rural areas are classified as mostly urban; 
// 50 to 99.9 percent are classified as mostly rural; 100 percent rural are classified as completely rural.							drop E F G H I J K L M N O P Q R S
rename GEOID geoid

cd "/Users/ayesha/Desktop/cable_company/Cable_General_Info-2009-2015"

merge m:m geoid using "population_income.dta"
drop _merge

sort year GeographyName

save "population_income_rural", replace

*** modify ***
