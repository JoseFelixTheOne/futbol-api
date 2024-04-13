drop database if exists futbol;
create database futbol;
use futbol;

create table posicion(
id int primary key auto_increment,
nombre varchar(100) not null
);

insert into posicion (nombre) values 
('Arquero'),
('Defensa Central'),
('Defensa Lateral'),
('Mediocampista Defensivo'),
('Mediocampista Central'),
('Mediocampista Ofensivo'),
('Extremo'),
('Delantero Centro'),
('Delantero Segundo');

create table futbolista(
id_futbolista int primary key auto_increment,
nombres varchar(120) not null, 
apellidos varchar(120) not null,
fecha_nacimiento date not null,
caracteristicas varchar(250) not null,
id_posicion int not null,
foreign key (id_posicion) references posicion(id)
);

insert into futbolista (nombres, apellidos, fecha_nacimiento, caracteristicas, id_posicion) values 
('Lionel', 'Messi', '1987-06-24', 'Excelente dribbling y visión de juego', 7),
('Cristiano', 'Ronaldo', '1985-02-05', 'Potencia física y gran remate', 8),
('Neymar', 'Jr.', '1992-02-05', 'Habilidad técnica y regate', 9),
('Virgil', 'van Dijk', '1991-07-08', 'Robusto defensor y buen juego aéreo', 2),
('Kevin', 'De Bruyne', '1991-06-28', 'Gran visión de juego y precisión en el pase', 5),
('Robert', 'Lewandowski', '1988-08-21', 'Excelente rematador y movilidad', 8),
('Sergio', 'Ramos', '1986-03-30', 'Líder defensivo y buen juego aéreo', 2),
('Luka', 'Modric', '1985-09-09', 'Técnica depurada y visión de juego', 5),
('Kylian', 'Mbappé', '1998-12-20', 'Velocidad y habilidad en el uno contra uno', 9),
('Mohamed', 'Salah', '1992-06-15', 'Velocidad y habilidad goleadora', 7),
('Sadio', 'Mané', '1992-04-10', 'Regate y capacidad goleadora', 7),
('Paulo', 'Dybala', '1993-11-15', 'Hábil en el dribbling y disparo potente', 9),
('Sergio', 'Agüero', '1988-06-02', 'Instinto goleador y rapidez', 8),
('Raheem', 'Sterling', '1994-12-08', 'Velocidad y habilidad para desequilibrar', 9),
('Antoine', 'Griezmann', '1991-03-21', 'Inteligencia táctica y capacidad goleadora', 9),
('Bruno', 'Fernandes', '1994-09-08', 'Gran visión de juego y precisión en el pase', 5),
('Joshua', 'Kimmich', '1995-02-08', 'Versatilidad y capacidad para jugar en diferentes posiciones', 5),
('Trent', 'Alexander-Arnold', '1998-10-07', 'Excelente capacidad para el cruce y el centro', 3),
('Marc-André', 'ter Stegen', '1992-04-30', 'Buen juego de pies y reflejos', 1),
('Alisson', 'Becker', '1992-10-02', 'Seguro bajo los palos y buen juego de pies', 1),
('Ederson', 'Moraes', '1993-08-17', 'Preciso en el despeje y juego de pies', 1),
('Marquinhos', 'dos Santos', '1994-05-14', 'Polivalente y sólido en la defensa', 2),
('Kalidou', 'Koulibaly', '1991-06-20', 'Físico imponente y buen juego aéreo', 2),
('Jan', 'Vertonghen', '1987-04-24', 'Experiencia y liderazgo en la defensa', 2),
('Andrew', 'Robertson', '1994-03-11', 'Gran resistencia y capacidad ofensiva', 3),
('Jordi', 'Alba', '1989-03-21', 'Rápido y habilidoso en el ataque', 3),
('Lucas', 'Hernández', '1996-02-14', 'Polivalente y seguro en la defensa', 3),
('Casemiro', 'Ferreira', '1992-02-23', 'Robusto en el marcaje y buen recuperador', 4),
('Fabinho', 'Tavares', '1993-10-23', 'Versátil y preciso en la distribución del balón', 4),
('N''Golo', 'Kanté', '1991-03-29', 'Incombustible y gran capacidad de recuperación', 4),
('Thomas', 'Partey', '1993-06-13', 'Potente y técnico en el mediocampo', 5),
('Rodri', 'Hernández', '1996-06-22', 'Elegante en la distribución y fuerte en la recuperación', 5),
('João', 'Félix', '1999-11-10', 'Técnica depurada y capacidad goleadora', 9),
('Harry', 'Kane', '1993-07-28', 'Excelente definidor y buen juego de espaldas', 8),
('Romelu', 'Lukaku', '1993-05-13', 'Potente y letal en el área', 8),
('Gianluigi', 'Donnarumma', '1999-02-25', 'Ágil bajo los palos y buen juego de pies', 1),
('Thiago', 'Silva', '1984-09-22', 'Experiencia y liderazgo en la defensa', 2),
('Marco', 'Verratti', '1992-11-05', 'Preciso en el pase y hábil en el regate', 5),
('Jadon', 'Sancho', '2000-03-25', 'Desborde y habilidad en el uno contra uno', 9),
('Erling', 'Haaland', '2000-07-21', 'Potencia física y gran capacidad goleadora', 8),
('Serge', 'Gnabry', '1995-07-14', 'Rápido y habilidoso en el regate', 9),
('Thiago', 'Alcántara', '1991-04-11', 'Elegante en la distribución y visión de juego', 5),
('Leroy', 'Sané', '1996-01-11', 'Velocidad y habilidad en el uno contra uno', 9),
('Sergio', 'Busquets', '1988-07-16', 'Inteligente en la distribución y la recuperación', 5),
('Gerard', 'Piqué', '1987-02-02', 'Fuerte en el juego aéreo y salida de balón', 2),
('Aymeric', 'Laporte', '1994-05-27', 'Robusto en el marcaje y salida limpia', 2),
('Miralem', 'Pjanic', '1990-04-02', 'Preciso en el pase y visión de juego', 5),
('Arturo', 'Vidal', '1987-05-22', 'Combativo y con llegada al área rival', 5),
('David', 'Alaba', '1992-06-24', 'Polivalente y versátil en la defensa', 2),
('Kai', 'Havertz', '1999-06-11', 'Técnica depurada y capacidad goleadora', 9),
('Timo', 'Werner', '1996-03-06', 'Velocidad y capacidad goleadora', 9),
('Ciro', 'Immobile', '1990-02-20', 'Olfato goleador y precisión en el remate', 8),
('Alex', 'Sandro', '1991-01-26', 'Rápido y habilidoso en la marca y el ataque', 3),
('Alejandro', 'Gómez', '1988-02-15', 'Habilidad en el regate y la distribución', 9),
('Georginio', 'Wijnaldum', '1990-11-11', 'Box-to-box y llegada al área rival', 5),
('Phil', 'Foden', '2000-05-28', 'Técnica depurada y capacidad goleadora', 9),
('Bernardo', 'Silva', '1994-08-10', 'Habilidoso en el regate y la creación', 9),
('Ivan', 'Rakitic', '1988-03-10', 'Inteligente en la distribución y llegada al área', 5),
('Eden', 'Hazard', '1991-01-07', 'Dribbling y visión de juego', 9),
('Karim', 'Benzema', '1987-12-19', 'Técnica depurada y olfato goleador', 8),
('Raphaël', 'Varane', '1993-04-25', 'Velocidad y buen juego aéreo', 2),
('Joel', 'Matip', '1991-08-08', 'Robusto en el marcaje y salida de balón', 2),
('Ángel', 'Di María', '1988-02-14', 'Velocidad y habilidad en el regate', 7),
('Lautaro', 'Martínez', '1997-08-22', 'Potente y habilidoso en el área', 8),
('Thomas', 'Müller', '1989-09-13', 'Inteligente en los movimientos y llegada al área', 9),
('Sergej', 'Milinkovic-Savic', '1995-02-27', 'Físico imponente y buen toque de balón', 5),
('Jamie', 'Vardy', '1987-01-11', 'Velocidad y olfato goleador', 8),
('Riyad', 'Mahrez', '1991-02-21', 'Regate y precisión en el remate', 7),
('Hakim', 'Ziyech', '1993-03-19', 'Visión de juego y golpeo de balón', 9),
('Wojciech', 'Szczęsny', '1990-04-18', 'Seguro bajo los palos y buen juego de pies', 1),
('Nicolò', 'Barella', '1997-02-27', 'Box-to-box y capacidad de recuperación', 5),
('Frenkie', 'de Jong', '1997-05-12', 'Elegante en la distribución y habilidoso en el regate', 5),
('Raphinha', 'Belloli', '1996-12-14', 'Regate y disparo potente', 9),
('Stefan', 'Savić', '1991-01-08', 'Robusto en el marcaje y buen juego aéreo', 2),
('Memphis', 'Depay', '1994-02-13', 'Versátil y habilidoso en el regate', 9),
('José', 'Giménez', '1995-01-20', 'Rápido y seguro en la defensa', 2),
('Alexis', 'Sánchez', '1988-12-19', 'Velocidad y capacidad goleadora', 9),
('Leon', 'Goretzka', '1995-02-06', 'Físico imponente y llegada al área rival', 5),
('Thibaut', 'Courtois', '1992-05-11', 'Gran envergadura y seguridad bajo los palos', 1),
('Keylor', 'Navas', '1986-12-15', 'Ágil y seguro bajo los palos', 1),
('Giovani', 'Lo Celso', '1996-04-09', 'Habilidoso en el regate y la creación', 5),
('Ángel', 'Correa', '1995-03-09', 'Velocidad y habilidad en el uno contra uno', 9),
('Lucas', 'Vázquez', '1991-07-01', 'Polivalente y habilidoso en el regate', 9),
('Joaquín', 'Correa', '1994-08-13', 'Regate y disparo potente', 9),
('Gerard', 'Moreno', '1992-04-07', 'Olfato goleador y habilidad en el uno contra uno', 8),
('Alejandro', 'Gómez', '1988-02-15', 'Técnica depurada y visión de juego', 9),
('Luis', 'Suárez', '1987-01-24', 'Olfato goleador y capacidad técnica', 8),
('Joel', 'Pereira', '1996-06-28', 'Seguro bajo los palos y buen juego de pies', 1),
('André', 'Onana', '1996-04-02', 'Ágil y seguro en el juego aéreo', 1),
('Diego', 'Godín', '1986-02-16', 'Líder defensivo y buen juego aéreo', 2),
('César', 'Azpilicueta', '1989-08-28', 'Polivalente y seguro en la defensa', 2),
('Jesús', 'Navas', '1985-11-21', 'Rápido y habilidoso en el regate', 7),
('Kieran', 'Trippier', '1990-09-19', 'Preciso en el centro y buen marcaje', 3),
('Héctor', 'Bellerín', '1995-03-19', 'Velocidad y desborde en la banda', 3),
('Federico', 'Valverde', '1998-07-22', 'Polivalente y potente en el mediocampo', 5),
('Álvaro', 'Morata', '1992-10-23', 'Olfato goleador y capacidad técnica', 8),
('Andrea', 'Pirlo', '1979-05-19', 'Elegante en la distribución y precisión en el pase', 5),
('Gianluca', 'Zambrotta', '1977-02-19', 'Polivalente y habilidoso en el regate', 3),
('Alessandro', 'Del Piero', '1974-11-09', 'Técnica depurada y capacidad goleadora', 9),
('Gennaro', 'Gattuso', '1978-01-09', 'Combativo y agresivo en el mediocampo', 4),
('Francesco', 'Totti', '1976-09-27', 'Visión de juego y precisión en el pase', 9),
('Paolo', 'Maldini', '1968-06-26', 'Líder defensivo y elegante en el corte', 2),
('Fabio', 'Cannavaro', '1973-09-13', 'Robusto en el marcaje y buen juego aéreo', 2),
('Marco', 'Reus', '1989-05-31', 'Velocidad y capacidad goleadora', 9),
('Xherdan', 'Shaquiri', '1991-10-10', 'Potente en el disparo y habilidoso en el regate', 9),
('Roman', 'Burki', '1990-11-14', 'Ágil bajo los palos y buen juego de pies', 1),
('Manuel', 'Neuer', '1986-03-27', 'Excelente juego de pies y reflejos', 1),
('Matthijs', 'de Ligt', '1999-08-12', 'Físico imponente y elegante en el corte', 2),
('Virgil', 'van Dijk', '1991-07-08', 'Líder defensivo y buen juego aéreo', 2),
('John', 'Stones', '1994-05-28', 'Velocidad y precisión en el corte', 2),
('Jordan', 'Pickford', '1994-03-07', 'Ágil bajo los palos y buen juego de pies', 1),
('Bernd', 'Leno', '1992-03-04', 'Seguro bajo los palos y buen juego de pies', 1),
('Bukayo', 'Saka', '2001-09-05', 'Velocidad y habilidad en el regate', 9),
('Philipp', 'Lahm', '1983-11-11', 'Inteligente en la distribución y resistente en la defensa', 2),
('Mesut', 'Özil', '1988-10-15', 'Visión de juego y precisión en el pase', 5),
('Roberto', 'Firmino', '1991-10-02', 'Inteligencia táctica y capacidad goleadora', 9),
('Virgil', 'van Dijk', '1991-07-08', 'Líder defensivo y buen juego aéreo', 2),
('Thomas', 'Müller', '1989-09-13', 'Inteligente en los movimientos y llegada al área', 9),
('Fabinho', 'Tavares', '1993-10-23', 'Versátil y preciso en la distribución del balón', 4),
('Jordan', 'Henderson', '1990-06-17', 'Líder en el mediocampo y buen recuperador', 5),
('Rúben', 'Dias', '1997-05-14', 'Robusto en el marcaje y buen juego aéreo', 2),
('Gareth', 'Bale', '1989-07-16', 'Velocidad y potencia en el disparo', 7),
('Luka', 'Modric', '1985-09-09', 'Técnica depurada y visión de juego', 5),
('Thiago', 'Alcántara', '1991-04-11', 'Elegante en la distribución y visión de juego', 5),
('Ruben', 'Neves', '1997-03-13', 'Preciso en el pase y fuerte en la recuperación', 5),
('Declan', 'Rice', '1999-01-14', 'Robusto en el marcaje y elegante en la distribución', 5),
('Bruno', 'Fernandes', '1994-09-08', 'Gran visión de juego y precisión en el pase', 5),
('Paul', 'Pogba', '1993-03-15', 'Físico imponente y técnica depurada', 5),
('Wilfred', 'Ndidi', '1996-12-16', 'Potente y seguro en la recuperación', 4),
('Mateo', 'Kovačić', '1994-05-06', 'Elegante en la distribución y hábil en el regate', 5),
('Sergio', 'Ramos', '1986-03-30', 'Líder defensivo y buen juego aéreo', 2),
('Raphaël', 'Varane', '1993-04-25', 'Velocidad y buen juego aéreo', 2),
('Sadio', 'Mané', '1992-04-10', 'Regate y capacidad goleadora', 7),
('Jamie', 'Vardy', '1987-01-11', 'Velocidad y olfato goleador', 8),
('Raheem', 'Sterling', '1994-12-08', 'Velocidad y habilidad para desequilibrar', 9),
('Harry', 'Kane', '1993-07-28', 'Excelente definidor y buen juego de espaldas', 8),
('Mohamed', 'Salah', '1992-06-15', 'Velocidad y habilidad goleadora', 7),
('Gianluigi', 'Donnarumma', '1999-02-25', 'Ágil bajo los palos y buen juego de pies', 1),
('Alisson', 'Becker', '1992-10-02', 'Seguro bajo los palos y buen juego de pies', 1),
('Ederson', 'Moraes', '1993-08-17', 'Preciso en el despeje y juego de pies', 1),
('Marc-André', 'ter Stegen', '1992-04-30', 'Buen juego de pies y reflejos', 1),
('Virgil', 'van Dijk', '1991-07-08', 'Robusto defensor y buen juego aéreo', 2),
('Kalidou', 'Koulibaly', '1991-06-20', 'Físico imponente y buen juego aéreo', 2),
('Jan', 'Vertonghen', '1987-04-24', 'Experiencia y liderazgo en la defensa', 2),
('Andrew', 'Robertson', '1994-03-11', 'Gran resistencia y capacidad ofensiva', 3),
('Jordi', 'Alba', '1989-03-21', 'Rápido y habilidoso en el ataque', 3),
('Lucas', 'Hernández', '1996-02-14', 'Polivalente y seguro en la defensa', 3),
('Casemiro', 'Ferreira', '1992-02-23', 'Robusto en el marcaje y buen recuperador', 4),
('Fabinho', 'Tavares', '1993-10-23', 'Versátil y preciso en la distribución del balón', 4),
('N''Golo', 'Kanté', '1991-03-29', 'Incombustible y gran capacidad de recuperación', 4),
('Thomas', 'Partey', '1993-06-13', 'Potente y técnico en el mediocampo', 5),
('Rodri', 'Hernández', '1996-06-22', 'Elegante en la distribución y fuerte en la recuperación', 5),
('João', 'Félix', '1999-11-10', 'Técnica depurada y capacidad goleadora', 9),
('Harry', 'Kane', '1993-07-28', 'Excelente definidor y buen juego de espaldas', 8),
('Romelu', 'Lukaku', '1993-05-13', 'Potente y letal en el área', 8),
('Gianluigi', 'Donnarumma', '1999-02-25', 'Ágil bajo los palos y buen juego de pies', 1),
('Thiago', 'Silva', '1984-09-22', 'Experiencia y liderazgo en la defensa', 2),
('Marco', 'Verratti', '1992-11-05', 'Preciso en el pase y hábil en el regate', 5),
('Jadon', 'Sancho', '2000-03-25', 'Desborde y habilidad en el uno contra uno', 9),
('Erling', 'Haaland', '2000-07-21', 'Potencia física y gran capacidad goleadora', 8),
('Serge', 'Gnabry', '1995-07-14', 'Rápido y habilidoso en el regate', 9),
('Thiago', 'Alcántara', '1991-04-11', 'Elegante en la distribución y visión de juego', 5),
('Leroy', 'Sané', '1996-01-11', 'Velocidad y habilidad en el uno contra uno', 9),
('Sergio', 'Busquets', '1988-07-16', 'Inteligente en la distribución y la recuperación', 5),
('Gerard', 'Piqué', '1987-02-02', 'Fuerte en el juego aéreo y salida de balón', 2),
('Aymeric', 'Laporte', '1994-05-27', 'Robusto en el marcaje y salida limpia', 2),
('Miralem', 'Pjanic', '1990-04-02', 'Preciso en el pase y visión de juego', 5),
('Arturo', 'Vidal', '1987-05-22', 'Combativo y con llegada al área rival', 5),
('David', 'Alaba', '1992-06-24', 'Polivalente y versátil en la defensa', 2),
('Kai', 'Havertz', '1999-06-11', 'Técnica depurada y capacidad goleadora', 9),
('Timo', 'Werner', '1996-03-06', 'Velocidad y capacidad goleadora', 9),
('Ciro', 'Immobile', '1990-02-20', 'Olfato goleador y precisión en el remate', 8),
('Alex', 'Sandro', '1991-01-26', 'Rápido y habilidoso en la marca y el ataque', 3),
('Alejandro', 'Gómez', '1988-02-15', 'Habilidad en el regate y la distribución', 9),
('Georginio', 'Wijnaldum', '1990-11-11', 'Box-to-box y llegada al área rival', 5),
('Phil', 'Foden', '2000-05-28', 'Técnica depurada y capacidad goleadora', 9),
('Bernardo', 'Silva', '1994-08-10', 'Habilidoso en el regate y la creación', 9),
('Ivan', 'Rakitic', '1988-03-10', 'Inteligente en la distribución y llegada al área', 5),
('Eden', 'Hazard', '1991-01-07', 'Dribbling y visión de juego', 9),
('Karim', 'Benzema', '1987-12-19', 'Técnica depurada y olfato goleador', 8),
('Raphaël', 'Varane', '1993-04-25', 'Velocidad y buen juego aéreo', 2),
('Joel', 'Matip', '1991-08-08', 'Robusto en el marcaje y salida de balón', 2),
('Ángel', 'Di María', '1988-02-14', 'Velocidad y habilidad en el regate', 7),
('Lautaro', 'Martínez', '1997-08-22', 'Potente y habilidoso en el área', 8),
('Thomas', 'Müller', '1989-09-13', 'Inteligente en los movimientos y llegada al área', 9),
('Sergej', 'Milinkovic-Savic', '1995-02-27', 'Físico imponente y buen toque de balón', 5),
('Jamie', 'Vardy', '1987-01-11', 'Velocidad y olfato goleador', 8),
('Riyad', 'Mahrez', '1991-02-21', 'Regate y precisión en el remate', 7),
('Hakim', 'Ziyech', '1993-03-19', 'Visión de juego y golpeo de balón', 9),
('Wojciech', 'Szczęsny', '1990-04-18', 'Seguro bajo los palos y buen juego de pies', 1),
('Nicolò', 'Barella', '1997-02-27', 'Box-to-box y capacidad de recuperación', 5),
('Frenkie', 'de Jong', '1997-05-12', 'Elegante en la distribución y habilidoso en el regate', 5),
('Raphinha', 'Belloli', '1996-12-14', 'Regate y disparo potente', 9),
('Stefan', 'Savić', '1991-01-08', 'Robusto en el marcaje y buen juego aéreo', 2),
('Memphis', 'Depay', '1994-02-13', 'Versátil y habilidoso en el regate', 9),
('José', 'Giménez', '1995-01-20', 'Rápido y seguro en la defensa', 2),
('Alexis', 'Sánchez', '1988-12-19', 'Velocidad y capacidad goleadora', 9),
('Leon', 'Goretzka', '1995-02-06', 'Físico imponente y llegada al área rival', 5),
('Thibaut', 'Courtois', '1992-05-11', 'Gran envergadura y seguridad bajo los palos', 1),
('Keylor', 'Navas', '1986-12-15', 'Ágil y seguro bajo los palos', 1),
('Giovani', 'Lo Celso', '1996-04-09', 'Habilidoso en el regate y la creación', 5),
('Ángel', 'Correa', '1995-03-09', 'Velocidad y habilidad en el uno contra uno', 9),
('Lucas', 'Vázquez', '1991-07-01', 'Polivalente y habilidoso en el regate', 9),
('Joaquín', 'Correa', '1994-08-13', 'Regate y disparo potente', 9),
('Gerard', 'Moreno', '1992-04-07', 'Olfato goleador y habilidad en el uno contra uno', 8),
('Alejandro', 'Gómez', '1988-02-15', 'Técnica depurada y visión de juego', 9),
('Luis', 'Suárez', '1987-01-24', 'Olfato goleador y capacidad técnica', 8),
('Joel', 'Pereira', '1996-06-28', 'Seguro bajo los palos y buen juego de pies', 1),
('André', 'Onana', '1996-04-02', 'Ágil y seguro en el juego aéreo', 1),
('Diego', 'Godín', '1986-02-16', 'Líder defensivo y buen juego aéreo', 2),
('César', 'Azpilicueta', '1989-08-28', 'Polivalente y seguro en la defensa', 2),
('Jesús', 'Navas', '1985-11-21', 'Rápido y habilidoso en el regate', 7),
('Kieran', 'Trippier', '1990-09-19', 'Preciso en el centro y buen marcaje', 3),
('Héctor', 'Bellerín', '1995-03-19', 'Velocidad y desborde en la banda', 3),
('Federico', 'Valverde', '1998-07-22', 'Polivalente y potente en el mediocampo', 5),
('Álvaro', 'Morata', '1992-10-23', 'Olfato goleador y capacidad técnica', 8),
('Andrea', 'Pirlo', '1979-05-19', 'Elegante en la distribución y precisión en el pase', 5),
('Gianluca', 'Zambrotta', '1977-02-19', 'Polivalente y habilidoso en el regate', 3),
('Alessandro', 'Del Piero', '1974-11-09', 'Técnica depurada y capacidad goleadora', 9),
('Gennaro', 'Gattuso', '1978-01-09', 'Combativo y agresivo en el mediocampo', 4),
('Francesco', 'Totti', '1976-09-27', 'Visión de juego y precisión en el pase', 9),
('Paolo', 'Maldini', '1968-06-26', 'Líder defensivo y elegante en el corte', 2),
('Fabio', 'Cannavaro', '1973-09-13', 'Robusto en el marcaje y buen juego aéreo', 2),
('Marco', 'Reus', '1989-05-31', 'Velocidad y capacidad goleadora', 9),
('Xherdan', 'Shaquiri', '1991-10-10', 'Potente en el disparo y habilidoso en el regate', 9),
('Roman', 'Burki', '1990-11-14', 'Ágil bajo los palos y buen juego de pies', 1),
('Manuel', 'Neuer', '1986-03-27', 'Excelente juego de pies y reflejos', 1),
('Matthijs', 'de Ligt', '1999-08-12', 'Físico imponente y elegante en el corte', 2),
('Virgil', 'van Dijk', '1991-07-08', 'Líder defensivo y buen juego aéreo', 2),
('John', 'Stones', '1994-05-28', 'Velocidad y precisión en el corte', 2),
('Jordan', 'Pickford', '1994-03-07', 'Ágil bajo los palos y buen juego de pies', 1),
('Bernd', 'Leno', '1992-03-04', 'Seguro bajo los palos y buen juego de pies', 1),
('Bukayo', 'Saka', '2001-09-05', 'Velocidad y habilidad en el regate', 9),
('Philipp', 'Lahm', '1983-11-11', 'Inteligente en la distribución y resistente en la defensa', 2),
('Mesut', 'Özil', '1988-10-15', 'Visión de juego y precisión en el pase', 5),
('Roberto', 'Firmino', '1991-10-02', 'Inteligencia táctica y capacidad goleadora', 9),
('Virgil', 'van Dijk', '1991-07-08', 'Líder defensivo y buen juego aéreo', 2),
('Thomas', 'Müller', '1989-09-13', 'Inteligente en los movimientos y llegada al área', 9),
('Fabinho', 'Tavares', '1993-10-23', 'Versátil y preciso en la distribución del balón', 4),
('Jordan', 'Henderson', '1990-06-17', 'Líder en el mediocampo y buen recuperador', 5),
('Rúben', 'Dias', '1997-05-14', 'Robusto en el marcaje y buen juego aéreo', 2),
('Gareth', 'Bale', '1989-07-16', 'Velocidad y potencia en el disparo', 7),
('Luka', 'Modric', '1985-09-09', 'Técnica depurada y visión de juego', 5),
('Thiago', 'Alcántara', '1991-04-11', 'Elegante en la distribución y visión de juego', 5),
('Ruben', 'Neves', '1997-03-13', 'Preciso en el pase y fuerte en la recuperación', 5),
('Declan', 'Rice', '1999-01-14', 'Robusto en el marcaje y elegante en la distribución', 5),
('Bruno', 'Fernandes', '1994-09-08', 'Gran visión de juego y precisión en el pase', 5),
('Paul', 'Pogba', '1993-03-15', 'Físico imponente y técnica depurada', 5),
('Wilfred', 'Ndidi', '1996-12-16', 'Potente y seguro en la recuperación', 4),
('Mateo', 'Kovačić', '1994-05-06', 'Elegante en la distribución y hábil en el regate', 5),
('Sergio', 'Ramos', '1986-03-30', 'Líder defensivo y buen juego aéreo', 2),
('Raphaël', 'Varane', '1993-04-25', 'Velocidad y buen juego aéreo', 2),
('Sadio', 'Mané', '1992-04-10', 'Regate y capacidad goleadora', 7),
('Jamie', 'Vardy', '1987-01-11', 'Velocidad y olfato goleador', 8),
('Raheem', 'Sterling', '1994-12-08', 'Velocidad y habilidad para desequilibrar', 9),
('Harry', 'Kane', '1993-07-28', 'Excelente definidor y buen juego de espaldas', 8),
('Mohamed', 'Salah', '1992-06-15', 'Velocidad y habilidad goleadora', 7),
('Gianluigi', 'Donnarumma', '1999-02-25', 'Ágil bajo los palos y buen juego de pies', 1),
('Alisson', 'Becker', '1992-10-02', 'Seguro bajo los palos y buen juego de pies', 1),
('Ederson', 'Moraes', '1993-08-17', 'Preciso en el despeje y juego de pies', 1),
('Marc-André', 'ter Stegen', '1992-04-30', 'Buen juego de pies y reflejos', 1),
('Virgil', 'van Dijk', '1991-07-08', 'Robusto defensor y buen juego aéreo', 2),
('Kalidou', 'Koulibaly', '1991-06-20', 'Físico imponente y buen juego aéreo', 2),
('Jan', 'Vertonghen', '1987-04-24', 'Experiencia y liderazgo en la defensa', 2),
('Andrew', 'Robertson', '1994-03-11', 'Gran resistencia y capacidad ofensiva', 3),
('Jordi', 'Alba', '1989-03-21', 'Rápido y habilidoso en el ataque', 3),
('Lucas', 'Hernández', '1996-02-14', 'Polivalente y seguro en la defensa', 3),
('Casemiro', 'Ferreira', '1992-02-23', 'Robusto en el marcaje y buen recuperador', 4),
('Fabinho', 'Tavares', '1993-10-23', 'Versátil y preciso en la distribución del balón', 4),
('N''Golo', 'Kanté', '1991-03-29', 'Incombustible y gran capacidad de recuperación', 4),
('Thomas', 'Partey', '1993-06-13', 'Potente y técnico en el mediocampo', 5),
('Rodri', 'Hernández', '1996-06-22', 'Elegante en la distribución y fuerte en la recuperación', 5),
('João', 'Félix', '1999-11-10', 'Técnica depurada y capacidad goleadora', 9),
('Harry', 'Kane', '1993-07-28', 'Excelente definidor y buen juego de espaldas', 8),
('Romelu', 'Lukaku', '1993-05-13', 'Potente y letal en el área', 8),
('Gianluigi', 'Donnarumma', '1999-02-25', 'Ágil bajo los palos y buen juego de pies', 1),
('Thiago', 'Silva', '1984-09-22', 'Experiencia y liderazgo en la defensa', 2),
('Marco', 'Verratti', '1992-11-05', 'Preciso en el pase y hábil en el regate', 5),
('Jadon', 'Sancho', '2000-03-25', 'Desborde y habilidad en el uno contra uno', 9),
('Erling', 'Haaland', '2000-07-21', 'Potencia física y gran capacidad goleadora', 8),
('Serge', 'Gnabry', '1995-07-14', 'Rápido y habilidoso en el regate', 9),
('Thiago', 'Alcántara', '1991-04-11', 'Elegante en la distribución y visión de juego', 5),
('Leroy', 'Sané', '1996-01-11', 'Velocidad y habilidad en el uno contra uno', 9),
('Sergio', 'Busquets', '1988-07-16', 'Inteligente en la distribución y la recuperación', 5),
('Gerard', 'Piqué', '1987-02-02', 'Fuerte en el juego aéreo y salida de balón', 2),
('Aymeric', 'Laporte', '1994-05-27', 'Robusto en el marcaje y salida limpia', 2),
('Miralem', 'Pjanic', '1990-04-02', 'Preciso en el pase y visión de juego', 5),
('Arturo', 'Vidal', '1987-05-22', 'Combativo y con llegada al área rival', 5),
('David', 'Alaba', '1992-06-24', 'Polivalente y versátil en la defensa', 2),
('Kai', 'Havertz', '1999-06-11', 'Técnica depurada y capacidad goleadora', 9),
('Timo', 'Werner', '1996-03-06', 'Velocidad y capacidad goleadora', 9),
('Ciro', 'Immobile', '1990-02-20', 'Olfato goleador y precisión en el remate', 8),
('Alex', 'Sandro', '1991-01-26', 'Rápido y habilidoso en la marca y el ataque', 3),
('Alejandro', 'Gómez', '1988-02-15', 'Habilidad en el regate y la distribución', 9),
('Georginio', 'Wijnaldum', '1990-11-11', 'Box-to-box y llegada al área rival', 5),
('Phil', 'Foden', '2000-05-28', 'Técnica depurada y capacidad goleadora', 9),
('Bernardo', 'Silva', '1994-08-10', 'Habilidoso en el regate y la creación', 9),
('Ivan', 'Rakitic', '1988-03-10', 'Inteligente en la distribución y llegada al área', 5),
('Eden', 'Hazard', '1991-01-07', 'Dribbling y visión de juego', 9),
('Karim', 'Benzema', '1987-12-19', 'Técnica depurada y olfato goleador', 8),
('Raphaël', 'Varane', '1993-04-25', 'Velocidad y buen juego aéreo', 2),
('Joel', 'Matip', '1991-08-08', 'Robusto en el marcaje y salida de balón', 2),
('Ángel', 'Di María', '1988-02-14', 'Velocidad y habilidad en el regate', 7),
('Lautaro', 'Martínez', '1997-08-22', 'Potente y habilidoso en el área', 8),
('Thomas', 'Müller', '1989-09-13', 'Inteligente en los movimientos y llegada al área', 9),
('Sergej', 'Milinkovic-Savic', '1995-02-27', 'Físico imponente y buen toque de balón', 5),
('Jamie', 'Vardy', '1987-01-11', 'Velocidad y olfato goleador', 8),
('Riyad', 'Mahrez', '1991-02-21', 'Regate y precisión en el remate', 7),
('Hakim', 'Ziyech', '1993-03-19', 'Visión de juego y golpeo de balón', 9),
('Wojciech', 'Szczęsny', '1990-04-18', 'Seguro bajo los palos y buen juego de pies', 1);

