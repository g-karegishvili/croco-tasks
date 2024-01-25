select e."FirstName" || ' ' || e."LastName" as full_name, sum(i."Total") total_sales
from "Invoice" i join "Customer" c on i."CustomerId" = c."CustomerId"
join "Employee" e on c."SupportRepId" = e."EmployeeId"
group by e."EmployeeId"
order by total_sales desc;