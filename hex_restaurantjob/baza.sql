INSERT INTO `jobs`(`name`, `label`) VALUES
	('boars', "Boar's")
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('boars', 0, 'praktykant', 'Praktykant', 500, '{}', '{}'),
    ('boars', 1, 'kasjer', 'Kasjer', 500, '{}', '{}'),
    ('boars', 2, 'kucharz', 'Kucharz', 500, '{}', '{}'),
    ('boars', 3, 'szefkuchni', 'Szef Kuchni', 500, '{}', '{}'),
    ('boars', 4, 'menedzer', 'Menedżer', 500, '{}', '{}'),
    ('boars', 5, 'kierownik', 'Kierownik', 500, '{}', '{}'),
    ('boars', 6, 'zastepcaszefa', 'Zastępca Szefa', 500, '{}', '{}'),
    ('boars', 7, 'szef', 'Szef', 500, '{}', '{}')
;
INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_boars', "Boar's", 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_boars', "Boar's", 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_boars', "Boar's", 1)
;