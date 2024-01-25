select c."FirstName" || ' ' || c."LastName" as full_name, count(i."InvoiceId") as total_purchases  from "Customer" c
join "Invoice" i on c."CustomerId" = i."CustomerId"
group by c."CustomerId", c."FirstName", c."LastName"
order by total_purchases desc