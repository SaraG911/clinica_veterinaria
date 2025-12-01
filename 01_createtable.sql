update cliente
 set nome = 'Jose'
 where id_cliente = 2;
 


select * from cliente;

----ordenar

select * from pet
Order BY nome;


select * from consulta
Order by data ASC;

----quantas consultas cada veterinario fez

Select
    v.name AS veterinario,
    COUNT(c.id_consulta) AS Total_consultas
FROM consulta c
JOIN veterinario v ON v.id_veterinario = c.id_veterinario
Order BY v.name;

Select
    v.name AS veterinario,
    COUNT(c.id_consulta) AS Total_consultas
FROM consulta c
JOIN veterinario v ON v.id_veterinario = c.id_veterinario
GROUP BY v.name
HAVING COUNT(c.id_consulta) < 3
ORDER BY v.name;