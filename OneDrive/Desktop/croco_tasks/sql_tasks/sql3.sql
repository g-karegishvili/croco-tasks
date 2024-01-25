--თუ ერთი და იგივე სახელის მქონე ფლეილისთებს ერთად მოვიაზრებთ (ტრეკების რაოდენობებიც ემთხვევა), მაშინ group by-ში გავუწერთ მხოლოდ pl."Name"-ს
select pl."Name", count(plt."TrackId") as total_tracks
from "Playlist" pl
join "PlaylistTrack" plt ON pl."PlaylistId" = plt."PlaylistId"
group by pl."PlaylistId", pl."Name" 
order by total_tracks desc
limit 5;