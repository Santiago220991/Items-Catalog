
CREATE TABLE Label (
    id INT GENERATED ALWAYS AS IDENTITY,
    title TEXT NOT NULL,
    color TEXT NOT NULL,
    items INT ,
    PRIMARY KEY (id)
);

CREATE TABLE Author (
    id INT GENERATED ALWAYS AS IDENTITY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    items INT ,
    PRIMARY KEY (id)
);

CREATE TABLE Item (
    id INT GENERATED ALWAYS AS IDENTITY,
    label INT,
    author INT,
    publish_date DATE NOT NULL,
    archived BOOLEAN NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (label) REFERENCES Label (id),
    FOREIGN KEY (author) REFERENCES Author (id)
);

CREATE TABLE Book ( 
    id INT GENERATED ALWAYS AS IDENTITY, 
    item_id INT NOT NULL, 
    publisher TEXT NOT NULL, 
    cover_state TEXT NOT NULL, 
    FOREIGN KEY (item_id) REFERENCES Item (id), 
    PRIMARY KEY (id) 
);

CREATE TABLE Game ( 
    id INT GENERATED ALWAYS AS IDENTITY, 
    item_id INT NOT NULL, 
    multiplayer BOOLEAN NOT NULL, 
    last_played_at DATE NOT NULL, 
    FOREIGN KEY (item_id) REFERENCES Item (id), 
    PRIMARY KEY (id) 
);

