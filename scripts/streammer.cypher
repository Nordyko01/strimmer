//Lista de usuarios
MERGE (Fa:User {nome: "Fábioa"});
MERGE (Au:User {nome: "Auren"});
MERGE (Jo:User {nome: "Jorge"});
MERGE (Fae:User {nome: "Faelson"});
MERGE (Bi:User {nome: "Bilson"});
MERGE (Pe:User {nome: "Pezi"});
MERGE (Ni:User {nome: "Ninha"});
MERGE (Ta:User {nome: "Tati"});
MERGE (Mi:User {nome: "Micaela"});
MERGE (Di:User {nome: "Dicla"});

//Lista de Passoas
MERGE (Steven:Pessoa {nome: "Steven Spielberg"});
MERGE (Fernanda:Pessoa {nome: "Fernanda Montenegro"});
MERGE (Martin:Pessoa {nome: "Martin Scorsese"});
MERGE (Meryl:Pessoa {nome: "Meryl Streep"});
MERGE (Christopher:Pessoa {nome: "Christopher Nolan"});
MERGE (Leonardo:Pessoa {nome: "Leonardo DiCaprio"});
MERGE (Quentin:Pessoa {nome: "Quentin Tarantino"});
MERGE (Viola:Pessoa {nome: "Viola Davis"});
MERGE (Greta:Pessoa {nome: "Greta Gerwig"});
MERGE (Denzel:Pessoa {nome: "Denzel Washington"});

//Lista de Filmes
MERGE (Poderoso:Filme {titulo: "O Poderoso Chefão"});
MERGE (Batman:Filme {titulo: "Batman: O Cavaleiro das Trevas"});
MERGE (Interestelar:Filme {titulo: "Interestelar"});
MERGE (Cidade:Filme  {titulo: "Cidade de Deus"});
MERGE (Parasita:Filme {titulo: "Parasita"});
MERGE (Pulp:Filme {titulo: "Pulp Fiction: Tempo de Violência"});
MERGE (Matrix:Filme {titulo: "Matrix"});
MERGE (Anéis:Filme {titulo: "O Senhor dos Anéis: O Retorno do Rei"});
MERGE (Clube:Filme {titulo: "Clube da Luta"});
MERGE (Origem:Filme {titulo: "A Origem"});

//Lista de Séries
MERGE (Breaking:Serie {titulo: "Breaking Bad"});
MERGE (Stranger:Serie {titulo: "Stranger Things"});
MERGE (Bear:Serie {titulo: "The Bear"});
MERGE (Succession:Serie {titulo: "Succession"});
MERGE (Last:Serie {titulo: "The Last of Us"});
MERGE (Ted:Serie {titulo: "Ted Lasso"});
MERGE (Severance:Serie {titulo: "Severance (Ruptura)"});
MERGE (Crown:Serie {titulo: "The Crown"});
MERGE (Boys:Serie {titulo: "The Boys"});
MERGE (Black:Serie {titulo: "Black Mirror"});

//Lista de Genero
MERGE (D:Genero {nome: "Drama"});
MERGE (C:Genero {nome: "Crime"});
MERGE (F:Genero {nome: "Ficção Científica"});
MERGE (S:Genero {nome: "Suspense"});
MERGE (Co:Genero {nome: "Comédia Dramática"});
MERGE (Cu:Genero {nome: "Culinária"});
MERGE (Sa:Genero {nome: "Sátira"});
MERGE (Ac:Genero {nome: "Acção"});
MERGE (At:Genero {nome: "Ator"});
MERGE (Di:Genero {nome: "Diretor"});

//Relacionamento de Filme Genero
MERGE (Poderoso:Filme {titulo: "O Poderoso Chefão"})
MERGE (D:Genero {nome: "Drama"})
MERGE (Poderoso)-[:GENERO]->(D);

MERGE (Batman:Filme {titulo: "Batman: O Cavaleiro das Trevas"})
MERGE (F:Genero {nome: "Ficção Científica"})
MERGE (Batman)-[:GENERO]->(F);

MERGE (Interestelar:Filme {titulo: "Interestelar"})
MERGE (F:Genero {nome: "Ficção Científica"})
MERGE (Interestelar)-[:GENERO]->(F);

MERGE (Cidade:Filme  {titulo: "Cidade de Deus"})
MERGE (D:Genero {nome: "Drama"})
MERGE (Cidade)-[:GENERO]->(D);

MERGE (Parasita:Filme {titulo: "Parasita"})
MERGE (F:Genero {nome: "Ficção Científica"})
MERGE (Parasita)-[:GENERO]->(F);

MERGE (Parasita:Filme {titulo: "Parasita"})
MERGE (Ac:Genero {nome: "Acção"})
MERGE (Parasita)-[:GENERO]->(Ac);

MERGE (Pulp:Filme {titulo: "Pulp Fiction: Tempo de Violência"})
MERGE (C:Genero {nome: "Crime"})
MERGE (Pulp)-[:GENERO]->(C);

MERGE (Pulp:Filme {titulo: "Pulp Fiction: Tempo de Violência"})
MERGE (Ac:Genero {nome: "Acção"})
MERGE (Pulp)-[:GENERO]->(Ac);

MERGE (Matrix:Filme {titulo: "Matrix"})
MERGE (F:Genero {nome: "Ficção Científica"})
MERGE (Matrix)-[:GENERO]->(F);

MERGE (Anéis:Filme {titulo: "O Senhor dos Anéis: O Retorno do Rei"})
MERGE (F:Genero {nome: "Ficção Científica"})
MERGE (Anéis)-[:GENERO]->(F);

MERGE (Clube:Filme {titulo: "Clube da Luta"})
MERGE (Ac:Genero {nome: "Acção"})
MERGE (Clube)-[:GENERO]->(Ac);

MERGE (Origem:Filme {titulo: "A Origem"})
MERGE (Co:Genero {nome: "Comédia Dramática"})
MERGE (Origem)-[:GENERO]->(Co);

//Relacionamento de Séries Genero
MERGE (Breaking:Serie {titulo: "Breaking Bad"})
MERGE (D:Genero {nome: "Drama"})
MERGE (Breaking)-[:GENERO]->(D);

MERGE (Breaking:Serie {titulo: "Breaking Bad"})
MERGE (C:Genero {nome: "Crime"})
MERGE (Breaking)-[:GENERO]->(C); 

MERGE (Stranger:Serie {titulo: "Stranger Things"})
MERGE (F:Genero {nome: "Ficção Científica"})
MERGE (Stranger)-[:GENERO]->(F);

MERGE (Stranger:Serie {titulo: "Stranger Things"})
MERGE (S:Genero {nome: "Suspense"})
MERGE (Stranger)-[:GENERO]->(S);

MERGE (Bear:Serie {titulo: "The Bear"})
MERGE (Co:Genero {nome: "Comédia Dramática"})
MERGE (Bear)-[:GENERO]->(Co);

MERGE (Bear:Serie {titulo: "The Bear"})
MERGE (Cu:Genero {nome: "Culinária"})
MERGE (Bear)-[:GENERO]->(Cu);

MERGE (Succession:Serie {titulo: "Succession"})
MERGE (D:Genero {nome: "Drama"})
MERGE (Succession)-[:GENERO]->(D);

MERGE (Succession:Serie {titulo: "Succession"})
MERGE (Sa:Genero {nome: "Sátira"})
MERGE (Succession)-[:GENERO]->(Sa);

MERGE (Last:Serie {titulo: "The Last of Us"})
MERGE (Ac:Genero {nome: "Acção"})
MERGE (Last)-[:GENERO]->(Ac);

MERGE (Ted:Serie {titulo: "Ted Lasso"})
MERGE (Co:Genero {nome: "Comédia Dramática"})
MERGE (Ted)-[:GENERO]->(Co);

MERGE (Severance:Serie {titulo: "Severance (Ruptura)"})
MERGE (F:Genero {nome: "Ficção Científica"})
MERGE (Severance)-[:GENERO]->(F);

MERGE (Crown:Serie {titulo: "The Crown"})
MERGE (Sa:Genero {nome: "Sátira"})
MERGE (Crown)-[:GENERO]->(Sa);

MERGE (Boys:Serie {titulo: "The Boys"})
MERGE (Sa:Genero {nome: "Sátira"})
MERGE (Boys)-[:GENERO]->(Sa);

MERGE (Black:Serie {titulo: "Black Mirror"})
MERGE (F:Genero {nome: "Ficção Científica"})
MERGE (Black)-[:GENERO]->(F);

//Lista de ator e diretor
MERGE (Steven:Pessoa {nome: "Steven Spielberg"})
MERGE (At:Genero {nome: "Ator"})
MERGE (Steven)-[:AUTOR]-(At);

MERGE (Steven:Pessoa {nome: "Steven Spielberg"})
MERGE (Poderoso:Filme {titulo: "O Poderoso Chefão"})
MERGE (Steven)-[:ATUOU_EM]->(Poderoso);

MERGE (Fernanda:Pessoa {nome: "Fernanda Montenegro"})
MERGE (Di:Genero {nome: "Diretor"})
MERGE (Fernanda)-[:DIRETOR]->(Di);

MERGE (Fernanda:Pessoa {nome: "Fernanda Montenegro"})
MERGE (Batman:Filme {titulo: "Batman: O Cavaleiro das Trevas"})
MERGE (Fernanda)-[:DIRGIU]->(Batman);

// --- Conectando Pessoas aos seus "Gêneros" (Papéis) ---
MATCH (Steven:Pessoa {nome: "Steven Spielberg"}), (Di:Genero {nome: "Diretor"}) MERGE (Steven)-[:EH_UM]->(Di);
MATCH (Fernanda:Pessoa {nome: "Fernanda Montenegro"}), (At:Genero {nome: "Ator"}) MERGE (Fernanda)-[:EH_UM]->(At);
MATCH (Martin:Pessoa {nome: "Martin Scorsese"}), (Di:Genero {nome: "Diretor"}) MERGE (Martin)-[:EH_UM]->(Di);
MATCH (Meryl:Pessoa {nome: "Meryl Streep"}), (At:Genero {nome: "Ator"}) MERGE (Meryl)-[:EH_UM]->(At);
MATCH (Christopher:Pessoa {nome: "Christopher Nolan"}), (Di:Genero {nome: "Diretor"}) MERGE (Christopher)-[:EH_UM]->(Di);
MATCH (Leonardo:Pessoa {nome: "Leonardo DiCaprio"}), (At:Genero {nome: "Ator"}) MERGE (Leonardo)-[:EH_UM]->(At);
MATCH (Quentin:Pessoa {nome: "Quentin Tarantino"}), (Di:Genero {nome: "Diretor"}) MERGE (Quentin)-[:EH_UM]->(Di);
MATCH (Viola:Pessoa {nome: "Viola Davis"}), (At:Genero {nome: "Ator"}) MERGE (Viola)-[:EH_UM]->(At);
MATCH (Greta:Pessoa {nome: "Greta Gerwig"}), (Di:Genero {nome: "Diretor"}) MERGE (Greta)-[:EH_UM]->(Di);
MATCH (Denzel:Pessoa {nome: "Denzel Washington"}), (At:Genero {nome: "Ator"}) MERGE (Denzel)-[:EH_UM]->(At);

// --- Relacionamentos de DIREÇÃO (Dirigiu) ---
MATCH (Martin:Pessoa {nome: "Martin Scorsese"}), (Poderoso:Filme {titulo: "O Poderoso Chefão"}) MERGE (Martin)-[:DIRIGIU]->(Poderoso);
MATCH (Christopher:Pessoa {nome: "Christopher Nolan"}), (Batman:Filme {titulo: "Batman: O Cavaleiro das Trevas"}) MERGE (Christopher)-[:DIRIGIU]->(Batman);
MATCH (Christopher:Pessoa {nome: "Christopher Nolan"}), (Interestelar:Filme {titulo: "Interestelar"}) MERGE (Christopher)-[:DIRIGIU]->(Interestelar);
MATCH (Christopher:Pessoa {nome: "Christopher Nolan"}), (Origem:Filme {titulo: "A Origem"}) MERGE (Christopher)-[:DIRIGIU]->(Origem);
MATCH (Quentin:Pessoa {nome: "Quentin Tarantino"}), (Pulp:Filme {titulo: "Pulp Fiction: Tempo de Violência"}) MERGE (Quentin)-[:DIRIGIU]->(Pulp);

// --- Relacionamentos de ATUAÇÃO (Atuou Em) ---
MATCH (Leonardo:Pessoa {nome: "Leonardo DiCaprio"}), (Origem:Filme {titulo: "A Origem"}) MERGE (Leonardo)-[:ATUOU_EM]->(Origem);
MATCH (Fernanda:Pessoa {nome: "Fernanda Montenegro"}), (Cidade:Filme {titulo: "Cidade de Deus"}) MERGE (Fernanda)-[:ATUOU_EM]->(Cidade);
MATCH (Denzel:Pessoa {nome: "Denzel Washington"}), (Poderoso:Filme {titulo: "O Poderoso Chefão"}) MERGE (Denzel)-[:ATUOU_EM]->(Poderoso);
MATCH (Meryl:Pessoa {nome: "Meryl Streep"}), (Succession:Serie {titulo: "Succession"}) MERGE (Meryl)-[:ATUOU_EM]->(Succession);
MATCH (Viola:Pessoa {nome: "Viola Davis"}), (Last:Serie {titulo: "The Last of Us"}) MERGE (Viola)-[:ATUOU_EM]->(Last);

// --- Conectando os Usuários às Obras (Assistiu) ---
MATCH (Fa:User {nome: "Fábioa"}), (Poderoso:Filme {titulo: "O Poderoso Chefão"}) MERGE (Fa)-[:ASSISTIU]->(Poderoso);
MATCH (Jo:User {nome: "Jorge"}), (Batman:Filme {titulo: "Batman: O Cavaleiro das Trevas"}) MERGE (Jo)-[:ASSISTIU]->(Batman);
MATCH (Mi:User {nome: "Micaela"}), (Parasita:Filme {titulo: "Parasita"}) MERGE (Mi)-[:ASSISTIU]->(Parasita);
MATCH (Di:User {nome: "Dicla"}), (Black:Serie {titulo: "Black Mirror"}) MERGE (Di)-[:ASSISTIU]->(Black);
MATCH (Au:User {nome: "Auren"}), (Boys:Serie {titulo: "The Boys"}) MERGE (Au)-[:ASSISTIU]->(Boys);
MATCH (Fae:User {nome: "Faelson"}), (Stranger:Serie {titulo: "Stranger Things"}) MERGE (Fae)-[:ASSISTIU]->(Stranger);
MATCH (Bi:User {nome: "Bilson"}), (Ted:Serie {titulo: "Ted Lasso"}) MERGE (Bi)-[:ASSISTIU]->(Ted);
MATCH (Pe:User {nome: "Pezi"}), (Bear:Serie {titulo: "The Bear"}) MERGE (Pe)-[:ASSISTIU]->(Bear);
MATCH (Ni:User {nome: "Ninha"}), (Severance:Serie {titulo: "Severance (Ruptura)"}) MERGE (Ni)-[:ASSISTIU]->(Severance);
MATCH (Ta:User {nome: "Tati"}), (Last:Serie {titulo: "The Last of Us"}) MERGE (Ta)-[:ASSISTIU]->(Last);