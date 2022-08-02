
CREATE TABLE Book (
    id INT GENERATED ALWAYS AS IDENTITY,
    publisher TEXT NOT NULL,
    cover_state TEXT NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE Label (
    id INT GENERATED ALWAYS AS IDENTITY,
    title TEXT NOT NULL,
    color TEXT NOT NULL,
    items INT ,
    PRIMARY KEY (id)
);

CREATE TABLE Item (
    id INT GENERATED ALWAYS AS IDENTITY,
    book INT,
    label INT,
    publish_date DATE NOT NULL,
    archived BOOLEAN NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (book) REFERENCES Book (id),
    FOREIGN KEY (label) REFERENCES Label (id)
);
