-- Top 10 Countries with the highest average suicide rates
SELECT  Country, AVG(`Suicide Rates Per 100000`) AS `Suicide Rate Per 100k`
FROM mental_health
GROUP BY Country
ORDER BY `Suicide Rate Per 100k` DESC
LIMIT 10;

-- Greenland has an extremely high number of suicides per 100k

-- Countries with the highest depression rates
SELECT  Country, AVG(`Depression`) AS `Depression`
FROM mental_health
GROUP BY Country
ORDER BY `Depression` DESC;

-- Greenland again, has incredibly high number of depression cases as well

-- Countries with the highest drug use disorders 
SELECT  Country, AVG(`Drug Use Disorders`) AS `Drug Use Disorders`
FROM mental_health
GROUP BY Country
ORDER BY `Drug Use Disorders` DESC;

-- The USA seems to have a drug use disorders problem

-- Countries with the highest alcohol use disorders
SELECT  Country, AVG(`Alcohol Use Disorders`) AS `Alcohol Use`
FROM mental_health
GROUP BY Country
ORDER BY `Alcohol Use` DESC;

-- Eastern europe has a big problem with alcoholism and its related mental health disorders 

SELECT 
    Country,
    AVG(`Prevalence in Males`) AS `Average Prevalence in Males`,
    AVG(`Prevalence in Females`) AS `Average Prevalence in Females`
FROM mental_health
GROUP BY Country;

-- Greenland has an extremely high prevalence of mental health disorders in women, as well as the higest mental health disorders in men
-- However, on average there are almost double the amount of women with mental health disorders in greenland than men