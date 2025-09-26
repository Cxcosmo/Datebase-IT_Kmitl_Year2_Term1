ALTER TABLE showtimes
DROP FOREIGN KEY showtimes_ibfk_2;

DELETE FROM Screens WHERE screen_id=1;