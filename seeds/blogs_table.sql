
DROP TABLE IF EXISTS comments;
DROP SEQUENCE IF EXISTS comments_id_seq;
DROP TABLE IF EXISTS posts;
DROP SEQUENCE IF EXISTS posts_id_seq;


CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title text,
    content text
);

CREATE TABLE comments (
    id SERIAL PRIMARY KEY,
    author_name text,
    content text,
    post_id int,
    constraint fk_post foreign key(post_id)
    references posts(id)
    on delete cascade
);

-- Finally, we add any records that are needed for the tests to run
INSERT INTO posts (title, content) VALUES ('Technology Trends', 'Innovation and Progress');
INSERT INTO posts (title, content) VALUES ('Healthy Living Tips', 'Wellness for Everyone');
INSERT INTO posts (title, content) VALUES ('Travel Destinations', 'Adventure Awaits You');
INSERT INTO posts (title, content) VALUES ('Book Recommendations', 'Literary Masterpieces');
INSERT INTO posts (title, content) VALUES ('Financial Insights', 'Wealth Management Strategies');

INSERT INTO comments (author_name, content, post_id) VALUES ('John Doe', 'Great post on technology!', 1);
INSERT INTO comments (author_name, content, post_id) VALUES ('Jane Smith', 'I love these health tips!', 2);
INSERT INTO comments (author_name, content, post_id) VALUES ('Bob Johnson', 'Dreaming of these destinations!', 3);
INSERT INTO comments (author_name, content, post_id) VALUES ('Alice Williams', 'Any book recommendations?', 4);
INSERT INTO comments (author_name, content, post_id) VALUES ('Charlie Brown', 'Insights on financial planning?', 5);