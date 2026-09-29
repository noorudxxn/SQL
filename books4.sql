CREATE TABLE authors2 (author_id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(100) NOT NULL);

CREATE TABLE books4 (book_id INT AUTO_INCREMENT PRIMARY KEY,title VARCHAR(150) NOT NULL,author_id INT,FOREIGN KEY (author_id)REFERENCES authors2(author_id));

CREATE INDEX idx_author_id ON books4(author_id);