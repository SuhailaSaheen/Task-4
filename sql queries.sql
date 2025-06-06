select saledate, amount, Boxes, Customers from sales
where (amount > 10000 and Boxes > 1500)
order by Amount DESC, Boxes desc
limit 7;

select geoID, sum(AMOUNT), avg(Amount)
FROM sales
group by GeoID;

CREATE INDEX idx_Customers ON sales(Customers);
SELECT * FROM sales WHERE Customers = '211';


CREATE VIEW under500 AS
SELECT Amount, Customers, Boxes
FROM sales
WHERE amount >=500;

select * from under500;

select * from people;
select s.SaleDate, s.Amount, p.Salesperson, s.SPID, p.SPID
from sales as s 
join people p on s.SPID = s.SPID;

SELECT s.saledate, s.amount, pr.product
from sales s
left join products pr on pr.pid = s.pid;
