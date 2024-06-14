CREATE DATABASE IF NOT EXISTS library;

USE library;

CREATE TABLE IF NOT EXISTS Authors (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255),
    Phone VARCHAR(50),
    Address TEXT
);

CREATE TABLE IF NOT EXISTS Publishers (
    PublisherID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255),
    Phone VARCHAR(50),
    Address TEXT
);

CREATE TABLE IF NOT EXISTS Members (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255),
    Phone VARCHAR(50),
    Address TEXT
);

CREATE TABLE IF NOT EXISTS Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    AuthorID INT,
    PublisherID INT,
    Year INT,
    Copies INT,
    Genre VARCHAR(100),
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    FOREIGN KEY (PublisherID) REFERENCES Publishers(PublisherID)
);

CREATE TABLE IF NOT EXISTS Transactions (
    TransactionID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    IssueDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);


-- Insert 20 rows into Authors table
INSERT INTO Authors (Name, Email, Phone, Address) VALUES
('John Doe', 'john.doe@example.com', '1234567890', '123 First St, City, Country'),
('Jane Smith', 'jane.smith@example.com', '2345678901', '456 Second St, City, Country'),
('Michael Johnson', 'michael.johnson@example.com', '3456789012', '789 Third St, City, Country'),
('Emily Brown', 'emily.brown@example.com', '4567890123', '101 Fourth St, City, Country'),
('David Williams', 'david.williams@example.com', '5678901234', '112 Fifth St, City, Country'),
('Sarah Miller', 'sarah.miller@example.com', '6789012345', '123 Sixth St, City, Country'),
('Kevin Davis', 'kevin.davis@example.com', '7890123456', '134 Seventh St, City, Country'),
('Laura Wilson', 'laura.wilson@example.com', '8901234567', '145 Eighth St, City, Country'),
('Christopher Martinez', 'christopher.martinez@example.com', '9012345678', '156 Ninth St, City, Country'),
('Amanda Taylor', 'amanda.taylor@example.com', '0123456789', '167 Tenth St, City, Country'),
('James Garcia', 'james.garcia@example.com', '1112223333', '178 Eleventh St, City, Country'),
('Jessica Lopez', 'jessica.lopez@example.com', '2223334444', '189 Twelfth St, City, Country'),
('Ryan Robinson', 'ryan.robinson@example.com', '3334445555', '190 Thirteenth St, City, Country'),
('Megan Young', 'megan.young@example.com', '4445556666', '201 Fourteenth St, City, Country'),
('Jason Hernandez', 'jason.hernandez@example.com', '5556667777', '212 Fifteenth St, City, Country'),
('Lisa Gonzalez', 'lisa.gonzalez@example.com', '6667778888', '223 Sixteenth St, City, Country'),
('Daniel Perez', 'daniel.perez@example.com', '7778889999', '234 Seventeenth St, City, Country'),
('Kelly Moore', 'kelly.moore@example.com', '8889990000', '245 Eighteenth St, City, Country'),
('Eric Jackson', 'eric.jackson@example.com', '9990001111', '256 Nineteenth St, City, Country'),
('Michelle Hill', 'michelle.hill@example.com', '0001112222', '267 Twentieth St, City, Country');

-- Insert 20 rows into Publishers table
INSERT INTO Publishers (Name, Email, Phone, Address) VALUES
('Big Publishing House', 'info@bigpublisher.com', '1234567890', '123 Main St, Big City, Country'),
('Small Publishing Co.', 'contact@smallpublisher.com', '2345678901', '456 Side St, Small Town, Country'),
('Global Books Ltd.', 'contact@globalbooks.com', '3456789012', '789 Broad St, Metropolis, Country'),
('Fantastic Publishers Inc.', 'info@fantasticpublishers.com', '4567890123', '101 Sunny Ave, Paradise City, Country'),
('Creative Books Group', 'contact@creativebooks.com', '5678901234', '112 Cloud Blvd, Dreamland, Country'),
('Northern Lights Publishing', 'info@northernlights.com', '6789012345', '123 Aurora Ave, Arctic Town, Country'),
('Ocean View Publishers', 'contact@oceanviewpublishers.com', '7890123456', '134 Beach Rd, Coastal City, Country'),
('Mountain High Books', 'info@mountainhighbooks.com', '8901234567', '145 Peak Dr, Summit Town, Country'),
('Riverbank Press', 'contact@riverbankpress.com', '9012345678', '156 Riverside Rd, Stream City, Country'),
('Skyline Publications', 'info@skylinepubs.com', '0123456789', '167 Tower Lane, Cloud City, Country'),
('Golden Pen Publishing', 'contact@goldenpen.com', '1112223333', '178 Writers Way, Storyville, Country'),
('Starlight Books', 'info@starlightbooks.com', '2223334444', '189 Star Rd, Galaxy Town, Country'),
('Emerald Isle Publishers', 'contact@emeraldislepubs.com', '3334445555', '190 Shamrock St, Emerald City, Country'),
('Silver Lining Press', 'info@silverliningpress.com', '4445556666', '201 Rainbow Ave, Sunshine Town, Country'),
('Tropical Reads', 'contact@tropicalreads.com', '5556667777', '212 Palm Dr, Island City, Country'),
('Urban Edge Books', 'info@urbanedgebooks.com', '6667778888', '223 Street Rd, Downtown, Country'),
('Mystic Publishing', 'contact@mysticpublishing.com', '7778889999', '234 Enchanted Blvd, Magic City, Country'),
('Whispering Pines Press', 'info@whisperingpines.com', '8889990000', '245 Tranquil Ln, Serenity Town, Country'),
('Digital Dreams Publishing', 'contact@digitaldreams.com', '9990001111', '256 Pixel Ave, Virtual City, Country'),
('Infinite Imagination Publishers', 'info@infiniteimagination.com', '0001112222', '267 Dream St, Wonderland, Country');


-- Insert 100 rows into Books table
INSERT INTO Books (Title, AuthorID, PublisherID, Year, Copies, Genre) VALUES
('The Great Adventure', 1, 1, 2000, 10, 'Adventure'),
('Mystery of the Lost Keys', 2, 2, 2001, 12, 'Mystery'),
('The Secret Garden', 3, 3, 2002, 8, 'Children'),
('Midnight Moonlight', 4, 4, 2003, 5, 'Romance'),
('Whispers in the Wind', 5, 5, 2004, 15, 'Drama'),
('Echoes of Eternity', 6, 6, 2005, 20, 'Fantasy'),
('The Golden Compass', 7, 7, 2006, 18, 'Fantasy'),
('Ripples in Time', 8, 8, 2007, 25, 'Science Fiction'),
('Under the Starlit Sky', 9, 9, 2008, 22, 'Romance'),
('Across the Horizon', 10, 10, 2009, 10, 'Adventure'),
('Shadows of the Past', 11, 11, 2010, 30, 'Mystery'),
('Echoes of Silence', 12, 12, 2011, 12, 'Drama'),
('Beyond the Veil', 13, 13, 2012, 6, 'Fantasy'),
('City of Secrets', 14, 14, 2013, 14, 'Thriller'),
('Whispering Woods', 15, 15, 2014, 8, 'Fantasy'),
('The Enchanted Castle', 16, 16, 2015, 16, 'Fantasy'),
('Echoes of Autumn', 17, 17, 2016, 9, 'Drama'),
('Boundless Dreams', 18, 18, 2017, 7, 'Fantasy'),
('Sunset Serenade', 19, 19, 2018, 20, 'Romance'),
('Starlight Symphony', 20, 20, 2019, 5, 'Romance'),
('Lost in Time', 1, 2, 2020, 12, 'Science Fiction'),
('Wanderlust', 2, 3, 2021, 15, 'Adventure'),
('Eternal Love', 3, 4, 2022, 8, 'Romance'),
('Silent Whispers', 4, 5, 2023, 10, 'Drama'),
('The Last Crusade', 5, 6, 2024, 18, 'Adventure'),
('Dragon\'s Lair', 6, 7, 2025, 25, 'Fantasy'),
('Echoes of War', 7, 8, 2026, 30, 'Historical Fiction'),
('The Shadow Realm', 8, 9, 2027, 20, 'Fantasy'),
('Winter\'s Edge', 9, 10, 2028, 15, 'Drama'),
('Journey to the Stars', 10, 11, 2029, 12, 'Science Fiction'),
('Into the Abyss', 11, 12, 2030, 7, 'Adventure'),
('A Song of Ice and Fire', 12, 13, 2031, 20, 'Fantasy'),
('The Alchemist', 13, 14, 2032, 25, 'Fantasy'),
('The Book Thief', 14, 15, 2033, 18, 'Historical Fiction'),
('The Night Circus', 15, 16, 2034, 22, 'Fantasy'),
('Dune', 16, 17, 2035, 30, 'Science Fiction'),
('Pride and Prejudice', 17, 18, 2036, 12, 'Romance'),
('1984', 18, 19, 2037, 15, 'Dystopian'),
('To Kill a Mockingbird', 19, 20, 2038, 8, 'Classic'),
('The Catcher in the Rye', 20, 1, 2039, 10, 'Classic'),
('The Hunger Games', 1, 2, 2040, 18, 'Dystopian'),
('Harry Potter and the Philosopher\'s Stone', 2, 3, 2041, 25, 'Fantasy'),
('The Lord of the Rings', 3, 4, 2042, 30, 'Fantasy'),
('The Hitchhiker\'s Guide to the Galaxy', 4, 5, 2043, 22, 'Science Fiction'),
('The Chronicles of Narnia', 5, 6, 2044, 20, 'Fantasy'),
('The Da Vinci Code', 6, 7, 2045, 12, 'Thriller'),
('A Game of Thrones', 7, 8, 2046, 15, 'Fantasy'),
('Brave New World', 8, 9, 2047, 18, 'Dystopian'),
('The Girl with the Dragon Tattoo', 9, 10, 2048, 10, 'Thriller'),
('The Road', 10, 11, 2049, 8, 'Post-Apocalyptic'),
('Gone Girl', 11, 12, 2050, 25, 'Thriller'),
('The Fault in Our Stars', 12, 13, 2051, 30, 'Romance'),
('The Help', 13, 14, 2052, 22, 'Historical Fiction'),
('The Kite Runner', 14, 15, 2053, 20, 'Historical Fiction'),
('Life of Pi', 15, 16, 2054, 18, 'Adventure'),
('The Girl on the Train', 16, 17, 2055, 12, 'Thriller'),
('The Maze Runner', 17, 18, 2056, 15, 'Dystopian'),
('The Giver', 18, 19, 2057, 18, 'Dystopian'),
('The Nightingale', 19, 20, 2058, 20, 'Historical Fiction'),
('Me Before You', 20, 1, 2059, 25, 'Romance'),
('The Martian', 1, 2, 2060, 30, 'Science Fiction'),
('The Goldfinch', 2, 3, 2061, 22, 'Drama'),
('All the Light We Cannot See', 3, 4, 2062, 20, 'Historical Fiction'),
('The Help', 4, 5, 2063, 18, 'Historical Fiction'),
('Crazy Rich Asians', 5, 6, 2064, 12, 'Romance'),
('The Revenant', 6, 7, 2065, 15, 'Adventure'),
('The Girl with the Dragon Tattoo', 7, 8, 2066, 10, 'Thriller'),
('Ready Player One', 8, 9, 2067, 8, 'Science Fiction'),
('The Book Thief', 9, 10, 2068, 25, 'Historical Fiction'),
('The Husband\'s Secret', 10, 11, 2069, 30, 'Thriller'),
('Inferno', 11, 12, 2070, 22, 'Thriller'),
('The Silent Wife', 12, 13, 2071, 20, 'Thriller'),
('The Light Between Oceans', 13, 14, 2072, 18, 'Drama'),
('The Rosie Project', 14, 15, 2073, 12, 'Romance'),
('Big Little Lies', 15, 16, 2074, 15, 'Thriller'),
('The Night Circus', 16, 17, 2075, 18, 'Fantasy'),
('The Goldfinch', 17, 18, 2076, 10, 'Drama'),
('The Martian', 18, 19, 2077, 8, 'Science Fiction'),
('The Girl on the Train', 19, 20, 2078, 25, 'Thriller'),
('The Great Alone', 20, 1, 2079, 30, 'Historical Fiction');

-- Insert 20 rows into Members table
INSERT INTO Members (Name, Email, Phone, Address) VALUES
('Alice Johnson', 'alice.johnson@example.com', '1234567890', '123 First St, City, Country'),
('Bob Thompson', 'bob.thompson@example.com', '2345678901', '456 Second St, City, Country'),
('Catherine Roberts', 'catherine.roberts@example.com', '3456789012', '789 Third St, City, Country'),
('Daniel White', 'daniel.white@example.com', '4567890123', '101 Fourth St, City, Country'),
('Emily Davis', 'emily.davis@example.com', '5678901234', '112 Fifth St, City, Country'),
('Frank Wilson', 'frank.wilson@example.com', '6789012345', '123 Sixth St, City, Country'),
('Gabriel Martin', 'gabriel.martin@example.com', '7890123456', '134 Seventh St, City, Country'),
('Hannah Lee', 'hannah.lee@example.com', '8901234567', '145 Eighth St, City, Country'),
('Ian Thompson', 'ian.thompson@example.com', '9012345678', '156 Ninth St, City, Country'),
('Julia Harris', 'julia.harris@example.com', '0123456789', '167 Tenth St, City, Country'),
('Kevin Clark', 'kevin.clark@example.com', '1112223333', '178 Eleventh St, City, Country'),
('Lily Martinez', 'lily.martinez@example.com', '2223334444', '189 Twelfth St, City, Country'),
('Mark Scott', 'mark.scott@example.com', '3334445555', '190 Thirteenth St, City, Country'),
('Nancy Green', 'nancy.green@example.com', '4445556666', '201 Fourteenth St, City, Country'),
('Olivia King', 'olivia.king@example.com', '5556667777', '212 Fifteenth St, City, Country'),
('Peter Campbell', 'peter.campbell@example.com', '6667778888', '223 Sixteenth St, City, Country'),
('Quincy Young', 'quincy.young@example.com', '7778889999', '234 Seventeenth St, City, Country'),
('Rachel Adams', 'rachel.adams@example.com', '8889990000', '245 Eighteenth St, City, Country'),
('Samuel Hill', 'samuel.hill@example.com', '9990001111', '256 Nineteenth St, City, Country'),
('Tina Cook', 'tina.cook@example.com', '0001112222', '267 Twentieth St, City, Country');

-- Insert 20 rows into Transactions table
INSERT INTO Transactions (BookID, MemberID, IssueDate, ReturnDate) VALUES
(1, 1, '2024-06-01', '2024-06-15'),
(2, 2, '2024-06-02', '2024-06-16'),
(3, 3, '2024-06-03', '2024-06-17'),
(4, 4, '2024-06-04', '2024-06-18'),
(5, 5, '2024-06-05', '2024-06-19'),
(6, 6, '2024-06-06', '2024-06-20'),
(7, 7, '2024-06-07', '2024-06-21'),
(8, 8, '2024-06-08', '2024-06-22'),
(9, 9, '2024-06-09', '2024-06-23'),
(10, 10, '2024-06-10', '2024-06-24'),
(11, 11, '2024-06-11', '2024-06-25'),
(12, 12, '2024-06-12', '2024-06-26'),
(13, 13, '2024-06-13', '2024-06-27'),
(14, 14, '2024-06-14', '2024-06-28'),
(15, 15, '2024-06-15', '2024-06-29'),
(16, 16, '2024-06-16', '2024-06-30'),
(17, 17, '2024-06-17', '2024-07-01'),
(18, 18, '2024-06-18', '2024-07-02'),
(19, 19, '2024-06-19', '2024-07-03'),
(20, 20, '2024-06-20', '2024-07-04');