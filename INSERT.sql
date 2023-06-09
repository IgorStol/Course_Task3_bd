INSERT INTO albums (alb_id, "alb_name", "alb_release") VALUES
    	(1, 'Killem All', '2018-08-20'),
	(2, 'Nevermind', '2019-12-19'),
	(3, 'In Utero ', '2013-09-21'),
	(4, 'Revolver', '2022-11-24'),
	(5, 'The Beatles ', '2014-10-18'),
	(6, 'Abbey Road', '2021-07-08'),
	(7, 'Paranoid', '2018-08-20'),
	(8, 'Rocket to Russia', '2022-11-24'),
	(9, 'The Queen is Dead', '2022-11-24'),
	(10, 'Viva Hate', '2020-10-18');

INSERT INTO com_treacks (tr_id, com_id) VALUES (10, 1);
INSERT INTO com_treacks (tr_id, com_id) VALUES (9, 9);
INSERT INTO com_treacks (tr_id, com_id) VALUES (9, 8);
INSERT INTO com_treacks (tr_id, com_id) VALUES (1, 1);
INSERT INTO com_treacks (tr_id, com_id) VALUES (8, 3);
INSERT INTO com_treacks (tr_id, com_id) VALUES (4, 6);
INSERT INTO com_treacks (tr_id, com_id) VALUES (8, 4);
INSERT INTO com_treacks (tr_id, com_id) VALUES (5, 1);
INSERT INTO com_treacks (tr_id, com_id) VALUES (2, 4);
INSERT INTO com_treacks (tr_id, com_id) VALUES (2, 9);
INSERT INTO com_treacks (tr_id, com_id) VALUES (3, 5);
INSERT INTO com_treacks (tr_id, com_id) VALUES (7, 7);
INSERT INTO com_treacks (tr_id, com_id) VALUES (7, 2);
INSERT INTO com_treacks (tr_id, com_id) VALUES (4, 4);
INSERT INTO com_treacks (tr_id, com_id) VALUES (6, 3);
INSERT INTO compilation (com_id, "com_name", "com_release") VALUES (1, 'Flex Your Head', '2020-10-18');
INSERT INTO compilation (com_id, "com_name", "com_release") VALUES (2, 'The Final', '2020-12-19');
INSERT INTO compilation (com_id, "com_name", "com_release") VALUES (3, 'Just Hits', '2020-08-20');
INSERT INTO compilation (com_id, "com_name", "com_release") VALUES (4, 'Greenpeace Breakthrough', '2023-12-19');
INSERT INTO compilation (com_id, "com_name", "com_release") VALUES (5, 'Rock Aid Armenia', '2023-08-20');
INSERT INTO compilation (com_id, "com_name", "com_release") VALUES (6, 'The Birth of Soul', '2022-11-24');
INSERT INTO compilation (com_id, "com_name", "com_release") VALUES (7, 'Incesticide', '2021-07-08');
INSERT INTO compilation (com_id, "com_name", "com_release") VALUES (8, 'Kiss This', '2021-09-21');
INSERT INTO compilation (com_id, "com_name", "com_release") VALUES (9, 'The Early Years', '2022-08-20');
INSERT INTO compilation (com_id, "com_name", "com_release") VALUES (10, 'Retro Active', '2022-12-19');
INSERT INTO gen_mus (gen_id, mus_id) VALUES (1, 3);
INSERT INTO gen_mus (gen_id, mus_id) VALUES (2, 7);
INSERT INTO gen_mus (gen_id, mus_id) VALUES (3, 10);
INSERT INTO gen_mus (gen_id, mus_id) VALUES (1, 5);
INSERT INTO gen_mus (gen_id, mus_id) VALUES (4, 3);
INSERT INTO gen_mus (gen_id, mus_id) VALUES (8, 6);
INSERT INTO gen_mus (gen_id, mus_id) VALUES (7, 9);
INSERT INTO gen_mus (gen_id, mus_id) VALUES (7, 2);
INSERT INTO gen_mus (gen_id, mus_id) VALUES (5, 8);
INSERT INTO gen_mus (gen_id, mus_id) VALUES (5, 2);
INSERT INTO gen_mus (gen_id, mus_id) VALUES (9, 10);
INSERT INTO gen_mus (gen_id, mus_id) VALUES (10, 4);
INSERT INTO gen_mus (gen_id, mus_id) VALUES (2, 2);
INSERT INTO gen_mus (gen_id, mus_id) VALUES (6, 3);
INSERT INTO gen_mus (gen_id, mus_id) VALUES (5, 9);
INSERT INTO genres (gen_id, "gen_name") VALUES (1, 'ACID HOUSE');
INSERT INTO genres (gen_id, "gen_name") VALUES (2, 'ACID JAZZ');
INSERT INTO genres (gen_id, "gen_name") VALUES (3, 'AMBIENT');
INSERT INTO genres (gen_id, "gen_name") VALUES (4, 'ART ROCK');
INSERT INTO genres (gen_id, "gen_name") VALUES (5, 'BALLAD ');
INSERT INTO genres (gen_id, "gen_name") VALUES (6, 'BLUES');
INSERT INTO genres (gen_id, "gen_name") VALUES (7, 'CLASSIC');
INSERT INTO genres (gen_id, "gen_name") VALUES (8, 'COUNTRY');
INSERT INTO genres (gen_id, "gen_name") VALUES (9, 'DISCO ');
INSERT INTO genres (gen_id, "gen_name") VALUES (10, 'ELECTRONIC MUSIC');
INSERT INTO mus_alb (mus_id, alb_id) VALUES (7, 6);
INSERT INTO mus_alb (mus_id, alb_id) VALUES (9, 4);
INSERT INTO mus_alb (mus_id, alb_id) VALUES (10, 10);
INSERT INTO mus_alb (mus_id, alb_id) VALUES (3, 6);
INSERT INTO mus_alb (mus_id, alb_id) VALUES (3, 8);
INSERT INTO mus_alb (mus_id, alb_id) VALUES (5, 1);
INSERT INTO mus_alb (mus_id, alb_id) VALUES (8, 3);
INSERT INTO mus_alb (mus_id, alb_id) VALUES (1, 1);
INSERT INTO mus_alb (mus_id, alb_id) VALUES (1, 2);
INSERT INTO mus_alb (mus_id, alb_id) VALUES (1, 3);
INSERT INTO mus_alb (mus_id, alb_id) VALUES (9, 5);
INSERT INTO mus_alb (mus_id, alb_id) VALUES (10, 5);
INSERT INTO mus_alb (mus_id, alb_id) VALUES (7, 5);
INSERT INTO mus_alb (mus_id, alb_id) VALUES (4, 3);
INSERT INTO mus_alb (mus_id, alb_id) VALUES (6, 6);
INSERT INTO musicians (mus_id, "mus_name") VALUES (1, 'Morrissey');
INSERT INTO musicians (mus_id, "mus_name") VALUES (2, 'Ramones');
INSERT INTO musicians (mus_id, "mus_name") VALUES (3, 'The Smiths');
INSERT INTO musicians (mus_id, "mus_name") VALUES (4, 'Black Sabbath');
INSERT INTO musicians (mus_id, "mus_name") VALUES (5, 'The Beatles');
INSERT INTO musicians (mus_id, "mus_name") VALUES (6, 'Nirvana');
INSERT INTO musicians (mus_id, "mus_name") VALUES (7, 'Metallica');
INSERT INTO musicians (mus_id, "mus_name") VALUES (8, 'Michael Jackson ');
INSERT INTO musicians (mus_id, "mus_name") VALUES (9, 'Radiohead');
INSERT INTO musicians (mus_id, "mus_name") VALUES (10, 'Guided By Voices');
INSERT INTO treacks (tr_id, "tr_name", "tr_duration", alb_id) VALUES (1, 'Billie Jean', 231, 8);
INSERT INTO treacks (tr_id, "tr_name", "tr_duration", alb_id) VALUES (2, 'Walk On By', 227, 6);
INSERT INTO treacks (tr_id, "tr_name", "tr_duration", alb_id) VALUES (3, 'Be my Baby', 203, 2);
INSERT INTO treacks (tr_id, "tr_name", "tr_duration", alb_id) VALUES (4, 'In my Life', 210, 7);
INSERT INTO treacks (tr_id, "tr_name", "tr_duration", alb_id) VALUES (5, 'My Girl', 137, 7);
INSERT INTO treacks (tr_id, "tr_name", "tr_duration", alb_id) VALUES (6, 'Yesterday', 199, 5);
INSERT INTO treacks (tr_id, "tr_name", "tr_duration", alb_id) VALUES (7, 'Imagine', 211, 1);
INSERT INTO treacks (tr_id, "tr_name", "tr_duration", alb_id) VALUES (8, 'Let It Be', 119, 5);
INSERT INTO treacks (tr_id, "tr_name", "tr_duration", alb_id) VALUES (9, 'Tutti Frutti', 334, 6);
INSERT INTO treacks (tr_id, "tr_name", "tr_duration", alb_id) VALUES (10, 'Crying', 269, 3);
INSERT INTO treacks (tr_id, "tr_name", "tr_duration", alb_id) VALUES (11, 'Home', 131, 6);