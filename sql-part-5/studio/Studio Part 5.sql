CREATE TABLE student123.book (
    book_id   INT IDENTITY(1,1) PRIMARY KEY,
    author_id INT,
    title     VARCHAR(255),
    isbn      INT,           -- keep INT if the starter data expects it
    available BIT,
    genre_id  INT
);


