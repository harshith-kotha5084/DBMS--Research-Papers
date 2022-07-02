INSERT INTO research_papers (title,abstract,valid_year,paper_id,main_author)
SELECT
	title,
	abstract,
	valid_year,
	paper_id,
	main_author
    
FROM
	temporary_paper;
    

INSERT INTO author (author_name)
SELECT
	main_author
    
FROM
	temporary_paper;
    

INSERT INTO co_authors (paper_id,author_name)
SELECT
	paper_id,
	co_author
    
FROM
	temporary_paper;
    

INSERT INTO citations (paper_id_1,citationspaper_id_2)
SELECT
	paper_id,
	citations
    
FROM
	temporary_paper;
    

INSERT INTO venue (venue_name,paper_id)
SELECT
	venue,
	paper_id
	
    
FROM
	temporary_paper;
    