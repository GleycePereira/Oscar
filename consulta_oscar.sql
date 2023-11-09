USE oscar_database;

-- Quantas vezes Natalie Portman foi indicada ao Oscar?
SELECT * FROM filmes WHERE nome_do_indicado = "Natalie Portman";

-- Quantos Oscars Natalie Portman ganhou?
SELECT * FROM filmes WHERE nome_do_indicado = "Natalie Portman" AND vencedor = "Sim";

-- Amy Adams já ganhou algum Oscar?
SELECT * FROM filmes WHERE nome_do_indicado = "Amy Adams" AND vencedor = "Sim";

-- A série de filmes Toy Story ganhou um Oscar em quais anos?
SELECT * FROM filmes WHERE nome_filme = "Toy Story" AND vencedor = "Sim";

-- A partir de que ano que a categoria "Actress" deixa de existir? 
SELECT MAX(ano_cerimonia) FROM filmes WHERE categoria = 'Actress';
-- O MAX busca o maior ano 

-- O primeiro Oscar para melhor Atriz foi para quem? Em que ano?
SELECT * FROM filmes WHERE categoria LIKE "ACTRESS" AND edicao_cerimonia = 1 and vencedor = "SIM";

-- Na coluna/campo "Vencedor", altere todos os valores com "Sim" para 1 e todos os valores "Não" para 0.
UPDATE filmes SET vencedor = 1 WHERE vencedor = "Sim";
UPDATE filmes SET vencedor = 0 WHERE vencedor = "Não";

-- Em qual edição do Oscar "Crash" ganhou o prêmio principal?
SELECT * FROM filmes WHERE nome_filme ="Crash" AND vencedor = "1";

-- Bom... dê um Oscar para um filme que merece muito, mas não ganhou.
SELECT * FROM filmes WHERE nome_filme = "War Horse";

--  O filme Central do Brasil aparece no Oscar?
SELECT * FROM filmes WHERE nome_filme = "Central Station";

-- Inclua no banco 3 filmes que nunca foram nem nomeados ao Oscar, mas que merecem ser. 
INSERT INTO filmes (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_do_indicado, nome_filme, vencedor) VALUES 
('2003', '2004', '76', 'BEST PICTURE', 'Héctor Babenco, Oscar Kramer, Flávio R. Tambellini, Rui Pires, Producers', 'Carandiru', '1'),
('2016', '2017', '89', 'ACTRESS IN A LEADING ROLE', 'Emilia Clarke', 'Me Before You', '1'),
('2019', '2020', '92', 'ART DIRECTION', 'Céline Sciamma', 'The Portrait Of a Lady on Fire', '1');

-- Pensando no ano em que você nasceu: Qual foi o Oscar de melhor filme, Melhor Atriz e Melhor Diretor?
SELECT * FROM filmes WHERE ano_cerimonia = "2001" AND vencedor = "1"
AND (categoria = "BEST PICTURE" OR categoria = "ACTRESS IN A LEADING ROLE" OR categoria = "DIRECTING");
-- O operador OR significa que qualquer uma das condições pode ser verdadeira para que a linha seja incluída no resultado.

-- Agora procure 7 atrizes que não sejam americanas, europeias ou brasileiras.Vamos cadastrá-los no nosso banco com o prêmio que você quiser. 
INSERT INTO filmes (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_do_indicado, nome_filme, vencedor) VALUES 
('2007', '2008', '80', 'ACTRESS IN A SUPPORTING ROLE', 'Natalie Portman ', 'My Blueberry Nights', '0'),
('2010', '2011', '83', 'ACTRESS IN A LEADING ROLE', 'Mia Wasikowska', 'Alice in Wonderland', '0'),
('2015', '2016', '88', 'ACTRESS IN A LEADING ROLE', 'Naomi Watts', '3 Generations', '1'),
('2019', '2020', '92', 'ACTRESS IN A LEADING ROLE', "Lupita Nyong'o", 'Us', '1'),
('2020', '2021', '93', 'ACTRESS IN A LEADING ROLE', 'Gal Gadot', 'Wonder Woman 1984', '0'),
('2020', '2021', '93', 'ACTRESS IN A LEADING ROLE', 'Eiza González', 'I Care a Lot ', '1'),
('2020', '2021', '93', 'ACTRESS IN A LEADING ROLE', 'Liu Yifei ', 'Mulan', '1');

-- Agora vamos falar da sua vida. Me diga o nome de uma pessoa que você admira e o que ela fez na sua vida. Agora me diz: Quê prêmio essa pessoa merece? 
INSERT INTO filmes (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_do_indicado, nome_filme, vencedor) VALUES 
('2001', '2023', '96', 'Melhor mãe', 'Luis Pereira', 'Apoiar minhas decisões', '1'),
('2001', '2023', '96', 'Melhor pai', 'Aparecida Vanderlei', 'Apoiar minhas decisões', '1');
