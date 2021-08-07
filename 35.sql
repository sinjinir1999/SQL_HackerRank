-- Profitable Stock

select p.stock_code from price_today p,price_tomorrow pt 
where p.stock_code=pt.stock_code and p.price < pt.price 
