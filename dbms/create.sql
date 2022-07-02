CREATE TABLE temporary_paper 
(
    
	title text NOT NULL,
	main_author text,
	co_author text,
	valid_year text,
	Venue text,
	paper_id text,
	citations text,
	abstract text
);


copy temporary_paper from 'C:\Users\thumu\Downloads\item.csv' with csv;


CREATE TABLE Research_Papers
(
  title text,
  abstract text,
  valid_year text,
  paper_id text,
  main_author text,
  PRIMARY KEY (paper_id)
  
);


CREATE TABLE Author
(
  Author_Name text
);
    

CREATE TABLE Venue
(
  venue_name text,
  paper_id text,
  FOREIGN KEY (paper_id) REFERENCES Research_Papers(paper_id)
);


CREATE TABLE co_Authors
(
  paper_id text,
  Author_Name text,
  PRIMARY KEY (paper_id),
  FOREIGN KEY (paper_id) REFERENCES Research_Papers(paper_id)
);


CREATE TABLE Citations
(
  paper_id_1 text,
  Citationspaper_id_2 text,
  PRIMARY KEY (paper_id_1),
  FOREIGN KEY (paper_id_1) REFERENCES Research_Papers(paper_id)
  );