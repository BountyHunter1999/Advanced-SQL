CREATE TABLE IF NOT EXISTS prehistoric (
    class VARCHAR(255),
    herbivore BOOLEAN,
    legs INT,
    species VARCHAR(255)
);

-- Insert data into the table only if it is empty
-- using `DO $$ BEGIN ... END $$ procedural logic
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM prehistoric) THEN
        INSERT INTO prehistoric (class, herbivore, legs, species) VALUES
        ('mammalia', TRUE, 2, 'Megatherium'),
        ('mammalia', TRUE, 4, 'Paraceratherium'),
        ('mammalia', TRUE, 2, NULL),
        ('mammalia', FALSE, 4, 'Sabretooth'),
        ('reptilia', TRUE, 2, 'Iguanodon'),
        ('reptilia', TRUE, 4, 'Brachiosaurus'),
        ('reptilia', FALSE, 2, 'Velociraptor'),
        ('reptilia', FALSE, 4, NULL);
    END IF;
END $$;