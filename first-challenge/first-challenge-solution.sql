create view product_perf as
    select
        p.ProductId as Product_ID
        , p.ProductName as Product_Name
        , p.Category as Product_Category
        , p.Description as Product_Description
        , p.Price as Product_Price
        , p.ImageURL as Product_ImageURL
        , sum(oi.Quantity) as Total_Product_Sold
        , count(oi.OrderId) as Total_Product_Orders

from product p
join order_item oi
    on oi.product_id = p.product_id