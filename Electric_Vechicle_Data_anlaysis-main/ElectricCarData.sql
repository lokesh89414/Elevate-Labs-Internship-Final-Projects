SELECT * FROM [dbo].[ElectricCarData]

--1. **Count of Unique Brands:**

SELECT COUNT(DISTINCT Brand) AS UniqueBrands FROM [dbo].[ElectricCarData];


--**Count of Unique Models:**

SELECT COUNT(DISTINCT Model) AS UniqueModels FROM [dbo].[ElectricCarData];


--### Statistical Analysis:

--**Average Price:**

SELECT AVG(PriceEuro) AS AveragePrice FROM [dbo].[ElectricCarData];


--**Maximum Top Speed:**

SELECT MAX(TopSpeed_KmH) AS MaximumTopSpeed FROM [dbo].[ElectricCarData];



--**Minimum Range:**

SELECT MIN(Range_Km) AS MinimumRange  FROM [dbo].[ElectricCarData];


--### Filtering and Summarizing:

--**Sum of Prices by Brand:**

SELECT Brand, SUM(PriceEuro) AS TotalPrice FROM [dbo].[ElectricCarData]
GROUP BY Brand;



--**Average Efficiency by Power Train:**

SELECT PowerTrain, AVG(Efficiency_WhKm) AS AverageEfficiency
FROM [dbo].[ElectricCarData]
GROUP BY PowerTrain;


--### Counting and Classification:

--**Number of Models in a Segment:**

SELECT Segment, COUNT(*) AS NumberOfModels
FROM [dbo].[ElectricCarData]
WHERE Segment = 'Sedan'
GROUP BY Segment;

--**Number of Models with Fast Charging:**

SELECT COUNT(*) AS ModelsWithFastCharge
FROM [dbo].[ElectricCarData]
WHERE FastCharge_KmH = '1';



SELECT * FROM SYS.TABLES

SELECT * FROM [dbo].[ElectricCarData]

