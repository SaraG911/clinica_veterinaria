------insert----

INSERT INTO cliente(nome,telefone)
VALUES
('GUILHERME','12345678'),
('ANA MARIA BRAGA','87654321'),
('ANA LUIZA DO CARMO','0987654321');



INSERT INTO pet(nome,especie,idade,id_cliente)
VALUES
('THOR'.'CACHORRO',4,1),
('PACOCA','GATO',2,2),
('SININHO','PASSARO',5,3);


INSERT INTO veterinario(nome,crmv)
VALUES
('LETICIA','SP98765'),
('GUSTAVO','MG81736'),
('ANA PAULA','CE83746');


INSERT INTO consulta(data,tipo_de_servico,id_pet,id_veterinario)
VALUES
('14-08-1997','VACINA',1,1),
('23-09-2006','CASTRACAO',2,2),
('17-06-2023','VACINACAO',3,3);



INSERT INTO medicamento(nome,quantidade,data_de_validade,id_consulta)
VALUES
('VASELIN',3,'15-09-2026',1),
('SIMETICONE',2,'27-09-2026',2),
('VISOLIN',4,'14-04-2026',3);


INSERT INTO medicamento_consulta(id_consulta,id_medicamento,dose_aplicada)
VALUES
(1,1,'1 COMPRIMIDO'),
(2,2,'2 VACINAS'),
(3,3,'3 COMPRIMIDOS');

