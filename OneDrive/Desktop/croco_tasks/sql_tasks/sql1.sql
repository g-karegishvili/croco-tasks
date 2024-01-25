select g."Name" as genre, sum(il."UnitPrice"*il."Quantity") as total_sales from "Track" t
join "InvoiceLine" il on t."TrackId" = il."TrackId"
join "Genre" g on t."GenreId" = g."GenreId"
group by g."Name"
order by total_sales desc limit 3