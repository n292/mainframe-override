-- find post mentioning empty stack and string "my dad" 
-- Author is smart-money-44
SELECT id, title, content, date, author
FROM forum_posts
WHERE date >= '2048-04-01' AND date < '2048-05-01'
  AND content ILIKE '%EmptyStack%'
  AND content ILIKE '%dad%';


-- Author first and last name 
-- Brad Steele
SELECT first_name, last_name
FROM forum_accounts
WHERE username = 'smart-money-44';


-- All  forum accounts with the same last name
--  Brad , Andrew, and Kevin Steele
SELECT * FROM forum_accounts
WHERE last_name = 'Steele';


-- EmptyStack accounts with the same last name
-- Andrew (triple-cart-38) and Lance (lance-main-11)
SELECT * FROM emptystack_accounts WHERE last_name = 'Steele';


--Employee who also has a forum account
--Andrew Steele -> triple-cart-38 / password456
SELECT e.username, e.password
FROM emptystack_accounts e
JOIN forum_accounts f
  ON f.first_name = e.first_name AND f.last_name = e.last_name
WHERE e.last_name = 'Steele';


--Message about the self-driving taxi project
--Sent by admin your-boss-99, project code is TAXI
SELECT id, "from", "to", subject, body
FROM emptystack_messages
WHERE body ILIKE '%taxi%' OR subject ILIKE '%taxi%';


--Admin credentials
--your-boss-99 / notagaincarter
SELECT username, password FROM emptystack_accounts
WHERE username = 'your-boss-99';


--Project ID
-- project id = DczE0v2b
SELECT id FROM emptystack_projects WHERE code = 'TAXI';

