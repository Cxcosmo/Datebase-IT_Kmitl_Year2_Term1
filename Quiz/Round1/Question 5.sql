ALTER TABLE locations
ADD PRIMARY KEY (location_id);

ALTER TABLE theaters
ADD CONSTRAINT  theaters_location_id_fkey
    FOREIGN KEY (location_id)
    REFERENCES	locations(location_id);