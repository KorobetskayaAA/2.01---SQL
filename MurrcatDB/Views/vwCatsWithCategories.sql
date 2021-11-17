CREATE VIEW [dbo].[vwCatsWithCategories]
	AS 
SELECT Cat.Id
     , Cat.[Name] AS CatName
	 , STRING_AGG(Category.[Name], ',') AS CategoriesNames
FROM [dbo].[Cat] 
    LEFT JOIN [dbo].[Cat_Category] ON Cat.Id = Cat_Category.Cat
	LEFT JOIN [dbo].[Category] ON Category.Id = Cat_Category.Category
GROUP BY Cat.Id
	  ,Cat.[Name];
