INSERT INTO T VALUES 
    (1, 'x', true, 10),
    (2, 'y', true, 20),
    (3, 'x', false, 30),
    (4, 'y', false, 40),
    (5, 'x', true, NULL);

-- equivalent to `SELECT t.* FROM T AS t;`
TABLE T;