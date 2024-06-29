INSERT INTO T VALUES 
    (1, 'x', true, 10),
    (2, 'y', true, 20),
    (3, 'x', true, 30),
    (4, 'y', true, 40),
    (5, 'x', true, NULL);

-- equivalent to `SELECT t.* FROM T AS t;`
TABLE T;