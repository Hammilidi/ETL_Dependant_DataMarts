USE EComDW;

-- CREATING Sales Datamart

CREATE VIEW [S_DimCategories] AS  
SELECT * FROM DimCategories;

CREATE VIEW [S_DimSubcategories] AS
SELECT * FROM DimSubcategory;

CREATE VIEW [S_DimUserPurchaseFrequencies] AS
SELECT * FROM DimUserPurchaseFrequencies;

CREATE VIEW [S_DimUserLastPurchaseDates] AS
SELECT * FROM DimUserLastPurchaseDates;

CREATE VIEW [S_DimProducts] AS
SELECT ID_Product, Product_Name, ID_Subcategory
FROM DimProducts;

CREATE VIEW [S_DimUsers] AS
SELECT ID_USER, Name, Age, Comment, CreditCard, FullAddress, UserLocation, ID_UserLastPurchaseDate, ID_UserPurchaseFrequncy
FROM DimUsers;

CREATE VIEW[S_FactPurchases] AS
SELECT ID,ID_User, Quantity, Rating, ID_Product, ID_Date_Purchase 
FROM FactPurchases;

SELECT S_DimCategories.Category, S_DimSubcategories.Subcategory 
FROM S_DimCategories JOIN S_DimSubcategories ON S_DimCategories.ID_Category = S_DimSubcategories.ID_Category;



-- CREATING User Datamart

CREATE VIEW [U_DimUserStatus] AS
SELECT * FROM DimUserStatus;

CREATE VIEW [U_DimUserLastLoginDates] AS
SELECT * FROM DimUsersLastLoginDates;

CREATE VIEW [U_DimCountry] AS
SELECT * FROM DimCountries;