CREATE TABLE IF NOT EXISTS member (
	id serial primary key,
	name text not null,
	sex char not null,
	active boolean default true
)


insert into member
(name, sex, active)
values
('Matthias', 'm', true),
('Linda', 'f', true),
('Frank', 'm', true),
('Sascha', 'm', true),
('Alin', 'm', true),
('Janina', 'f', true),
('Anne', 'f', true),
('Marcela', 'f', true),
('Kathrin', 'f', true),
('Aaron', 'm', false),
('Rupert', 'm', true),
('Volker', 'm', true),
('Thorsten', 'm', false),
('Lena', 'f', false),
('David', 'm', false),
('Ralf', 'm', false),
('Michael', 'm', true),
('Martin', 'm', true),
('Martin S.', 'm', false),
('Anna', 'f', true)
