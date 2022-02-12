Create or REPLACE Table PLAYGROUND_ELHAN_SHAJI.ISLAND_DATA_DATEWISE as 
(select ISLAND, DATE, sum(TOTAL_ACTIVE_CASES) AS TOTAL_ACTIVE_CASES ,sum(NEW_DEATHS) AS NEW_DEATHS ,sum(NEW_CASES) AS NEW_CASES,sum(NEW_ACTIVE_CASES) AS NEW_ACTIVE_CASES,sum(NEW_RECOVERED) AS NEW_RECOVERED
from FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_ELHAN_SHAJI
group by DATE, ISLAND
order by DATE DESC, ISLAND ASC)



