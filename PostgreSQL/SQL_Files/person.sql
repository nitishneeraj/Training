create table person (
	id SERIAL NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	Email VARCHAR(50) NOT NULL,
	Phone VARCHAR(50) NOT NULL,
	Address VARCHAR(50) NOT NULL,
	car_id SERIAL REFERENCES car(id),
	unique(car_id)
);
insert into person (id, first_name, last_name, Email, Phone, Address) values (1, 'Orelia', 'Millgate', 'omillgate0@phpbb.com', '657-382-8403', '79248 Huxley Alley');
insert into person (id, first_name, last_name, Email, Phone, Address) values (2, 'Aleece', 'Willoughway', 'awilloughway1@hubpages.com', '863-846-2079', '0 Village Green Point');
insert into person (id, first_name, last_name, Email, Phone, Address) values (3, 'Gary', 'Grint', 'ggrint2@gov.uk', '607-628-6617', '9 Carberry Avenue');
insert into person (id, first_name, last_name, Email, Phone, Address) values (4, 'Perla', 'Iannello', 'piannello3@msn.com', '869-685-9909', '0703 Holmberg Parkway');
insert into person (id, first_name, last_name, Email, Phone, Address) values (5, 'Eilis', 'Kightly', 'ekightly4@ucsd.edu', '914-363-0275', '796 Superior Trail');
insert into person (id, first_name, last_name, Email, Phone, Address) values (6, 'Cchaddie', 'Wicklin', 'cwicklin5@nytimes.com', '528-937-3620', '3 3rd Point');
insert into person (id, first_name, last_name, Email, Phone, Address) values (7, 'Isaac', 'Kobierzycki', 'ikobierzycki6@networkadvertising.org', '603-923-8180', '000 Goodland Park');
insert into person (id, first_name, last_name, Email, Phone, Address) values (8, 'Leyla', 'Bohman', 'lbohman7@1und1.de', '993-907-8005', '6 Manufacturers Junction');
insert into person (id, first_name, last_name, Email, Phone, Address) values (9, 'Eleanore', 'Adne', 'eadne8@g.co', '468-544-2759', '25784 Starling Alley');
insert into person (id, first_name, last_name, Email, Phone, Address) values (10, 'Hurleigh', 'Cox', 'hcox9@hubpages.com', '179-247-1446', '73049 Birchwood Park');
insert into person (id, first_name, last_name, Email, Phone, Address) values (11, 'Sylvia', 'Vasishchev', 'svasishcheva@dyndns.org', '721-617-9742', '2 Anhalt Drive');
insert into person (id, first_name, last_name, Email, Phone, Address) values (12, 'Mack', 'Kleinlerer', 'mkleinlererb@technorati.com', '789-720-8137', '4 Glacier Hill Point');
insert into person (id, first_name, last_name, Email, Phone, Address) values (13, 'Michell', 'Thuillier', 'mthuillierc@squidoo.com', '514-740-7079', '98309 Debs Way');
insert into person (id, first_name, last_name, Email, Phone, Address) values (14, 'Uriah', 'Robke', 'urobked@i2i.jp', '188-466-0804', '9548 Clemons Street');
insert into person (id, first_name, last_name, Email, Phone, Address) values (15, 'Tansy', 'Mewhirter', 'tmewhirtere@naver.com', '869-560-8871', '2 Sachtjen Avenue');
insert into person (id, first_name, last_name, Email, Phone, Address) values (16, 'Errick', 'Fremantle', 'efremantlef@bing.com', '389-458-9630', '64 Clarendon Hill');
insert into person (id, first_name, last_name, Email, Phone, Address) values (17, 'Meier', 'Ninotti', 'mninottig@arstechnica.com', '502-741-7863', '972 Atwood Place');
insert into person (id, first_name, last_name, Email, Phone, Address) values (18, 'Travus', 'Erskin', 'terskinh@latimes.com', '933-164-6253', '8 Talisman Street');
insert into person (id, first_name, last_name, Email, Phone, Address) values (19, 'Thomasina', 'Caughtry', 'tcaughtryi@mysql.com', '652-261-8277', '9 Union Point');
insert into person (id, first_name, last_name, Email, Phone, Address) values (20, 'Kristofor', 'Packer', 'kpackerj@ted.com', '946-203-8685', '334 Dakota Plaza');
insert into person (id, first_name, last_name, Email, Phone, Address) values (21, 'Dorelia', 'Pury', 'dpuryk@loc.gov', '587-387-7148', '33 Gerald Place');
insert into person (id, first_name, last_name, Email, Phone, Address) values (22, 'Edouard', 'Jeavon', 'ejeavonl@nature.com', '861-753-6285', '83 La Follette Lane');
insert into person (id, first_name, last_name, Email, Phone, Address) values (23, 'Abbye', 'Arnall', 'aarnallm@msu.edu', '170-673-8726', '07 Merrick Center');
insert into person (id, first_name, last_name, Email, Phone, Address) values (24, 'Alfons', 'Mileham', 'amilehamn@addtoany.com', '253-787-7635', '56355 Roth Place');
insert into person (id, first_name, last_name, Email, Phone, Address) values (25, 'Hayyim', 'Holsall', 'hholsallo@jigsy.com', '433-458-1057', '8520 Carberry Circle');
insert into person (id, first_name, last_name, Email, Phone, Address) values (26, 'Sonny', 'Bristowe', 'sbristowep@guardian.co.uk', '723-307-3802', '0 Becker Lane');
insert into person (id, first_name, last_name, Email, Phone, Address) values (27, 'Janka', 'Bricksey', 'jbrickseyq@weebly.com', '601-395-9262', '5 Cordelia Way');
insert into person (id, first_name, last_name, Email, Phone, Address) values (28, 'Sophie', 'Chaimson', 'schaimsonr@slashdot.org', '162-237-7400', '84 Bellgrove Street');
insert into person (id, first_name, last_name, Email, Phone, Address) values (29, 'Garry', 'Roiz', 'groizs@opensource.org', '109-279-3779', '6 Dunning Avenue');
insert into person (id, first_name, last_name, Email, Phone, Address) values (30, 'Blithe', 'Grouse', 'bgrouset@about.com', '660-285-7774', '95338 Donald Drive');
