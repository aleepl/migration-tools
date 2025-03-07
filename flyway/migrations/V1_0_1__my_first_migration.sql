create table flyway.person (
    id INT NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name varchar(100) NOT NULL
);