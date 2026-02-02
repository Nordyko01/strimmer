// Cria um usuário, um filme e a relação entre eles
CREATE (u:Usuario {nome: "Carlos", idade: 25})
CREATE (f:Filme {titulo: "Inception", genero: "Sci-Fi"})
CREATE (u)-[:ASSISTIU {nota: 5}]->(f)
RETURN u, f