#Provide a query showing a unique (distinct) list of billing countries from the Invoice table.

SELECT DISTINCT billingcountry FROM Invoice GROUP BY billingcountry;