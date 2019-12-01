/* ========== Insert scripts for MS book database ========== */

/* Address */

INSERT INTO public.address(id, city, "number", postal_code, street) VALUES (1,'BX',1,33000,'rue du paradis');
INSERT INTO public.address(id, city, "number", postal_code, street) VALUES (2,'BX',1,33000,'rue de l''enfer');
INSERT INTO public.address(id, city, "number", postal_code, street) VALUES (3,'BX',1,33000,'rue du purgatoire');

/* Cover */

INSERT INTO public.cover(id, path, title) VALUES (1,'/cover/test.png','test');

/* Library */

INSERT INTO public.library(id, name, phone_number, address_id) VALUES (1,'Bibliothèque 1','0555606060',1);
INSERT INTO public.library(id, name, phone_number, address_id) VALUES (2,'Bibliothèque 2','0555606060',2);
INSERT INTO public.library(id, name, phone_number, address_id) VALUES (3,'Bibliothèque 3','0555606060',3);

/* Authors */

INSERT INTO public.author(id, birth_date, death_date, first_name, last_name) VALUES (1,'1802-02-26 23:00:00.000','1885-05-22 23:00:00.000','Victor','Hugo');
INSERT INTO public.author(id, birth_date, death_date, first_name, last_name) VALUES (2,'1840-04-02 23:00:00.000','1902-09-29 23:00:00.000','Emile','Zola');
INSERT INTO public.author(id, birth_date, death_date, first_name, last_name) VALUES (3,'1821-04-09 23:00:00.000','1867-08-31 23:00:00.000','Charles','Baudelaire');

/* Books */

INSERT INTO public.book(id, available, category, condition, dewey_code, title, cover_id, id_library) VALUES (1,true,'NOVEL','GOOD','XXXXXXXXXX','Les misérables',1,1);
INSERT INTO public.book(id, available, category, condition, dewey_code, title, cover_id, id_library) VALUES (2,true,'NOVEL','NEW','XXXXXXXXXX','Notre-Dame de Paris',1,1);
INSERT INTO public.book(id, available, category, condition, dewey_code, title, cover_id, id_library) VALUES (3,true,'NOVEL','DAMAGING','XXXXXXXXXX','J''accuse',1,1);
INSERT INTO public.book(id, available, category, condition, dewey_code, title, cover_id, id_library) VALUES (4,false,'NOVEL','WORN','XXXXXXXXXX','L''oeuvre',1,2);
INSERT INTO public.book(id, available, category, condition, dewey_code, title, cover_id, id_library) VALUES (5,true,'NOVEL','GOOD','XXXXXXXXXX','L''assommoir',1,2);
INSERT INTO public.book(id, available, category, condition, dewey_code, title, cover_id, id_library) VALUES (6,true,'NOVEL','WORN','XXXXXXXXXX','Les paradis artificiels',1,2);
INSERT INTO public.book(id, available, category, condition, dewey_code, title, cover_id, id_library) VALUES (7,false,'NOVEL','NEW','XXXXXXXXXX','Les fleurs du mal',1,3);
INSERT INTO public.book(id, available, category, condition, dewey_code, title, cover_id, id_library) VALUES (8,false,'NOVEL','NEW','XXXXXXXXXX','L''homme qui rit',1,3);
INSERT INTO public.book(id, available, category, condition, dewey_code, title, cover_id, id_library) VALUES (9,true,'NOVEL','WORN','XXXXXXXXXX','Germinal',1,3);
INSERT INTO public.book(id, available, category, condition, dewey_code, title, cover_id, id_library) VALUES (10,false,'NOVEL','DAMAGING','XXXXXXXXXX','Nana',1,3);

/* Join table Books/Authors */

INSERT INTO public.books_authors(id_book, id_author) VALUES (1,1);
INSERT INTO public.books_authors(id_book, id_author) VALUES (2,1);
INSERT INTO public.books_authors(id_book, id_author) VALUES (8,1);
INSERT INTO public.books_authors(id_book, id_author) VALUES (3,2);
INSERT INTO public.books_authors(id_book, id_author) VALUES (4,2);
INSERT INTO public.books_authors(id_book, id_author) VALUES (5,2);
INSERT INTO public.books_authors(id_book, id_author) VALUES (9,2);
INSERT INTO public.books_authors(id_book, id_author) VALUES (10,2);
INSERT INTO public.books_authors(id_book, id_author) VALUES (6,3);
INSERT INTO public.books_authors(id_book, id_author) VALUES (7,3);