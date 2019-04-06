SELECT categories.CategoryDescription AS CategoryName, 
		SUM(salesordersexample.order_details.QuotedPrice * salesordersexample.order_details.QuantityOrdered) AS TotalSales 
		FROM (salesordersexample.categories
        INNER JOIN salesordersexample.products
			ON categories.CategoryID = 
				products.CategoryID)
		INNER JOIN salesordersexample.order_details 
			ON order_details.ProductNumber = 
				products.ProductNumber 
		GROUP BY categories.CategoryDescription;
