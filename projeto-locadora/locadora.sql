CREATE TABLE "filmes" (
  "id" int PRIMARY KEY,
  "titulo" varchar NOT NULL,
  "valor" dacimal(8.2) NOT NULL,
  "id_genero" int NOT NULL
);

CREATE TABLE "generos" (
  "id" int PRIMARY KEY,
  "genero" varchar NOT NULL
);

CREATE TABLE "dvds" (
  "id" int PRIMARY KEY,
  "id_filme" int NOT NULL,
  "quatidade" int NOT NULL
);

CREATE TABLE "atores" (
  "id" int PRIMARY KEY,
  "nome" varchar NOT NULL
);

CREATE TABLE "atores_filmes" (
  "id" int PRIMARY KEY,
  "id_filme" int NOT NULL,
  "id_atores" int NOT NULL,
  "personagem" varchar NOT NULL
);

CREATE TABLE "clientes" (
  "id" int PRIMARY KEY,
  "nome" varchar NOT NULL,
  "sobrenome" varchar NOT NULL,
  "telefone" varchar NOT NULL,
  "endereco" varchar NOT NULL
);

CREATE TABLE "imprestimos" (
  "id" int PRIMARY KEY,
  "data" datetime NOT NULL,
  "id_cliente" int NOT NULL
);

CREATE TABLE "filmes_imprestimo" (
  "id" int PRIMARY KEY,
  "id_filmes" int NOT NULL,
  "id_imprestimos" int NOT NULL
);

CREATE TABLE "devolucao" (
  "id" int PRIMARY KEY,
  "id_imprestimo" int NOT NULL,
  "data" datetime NOT NULL
);

CREATE TABLE "filme_devolucao" (
  "id" int PRIMARY KEY,
  "id_devolucao" int NOT NULL,
  "id_filme_imprestimo" int NOT NULL
);

ALTER TABLE "filmes" ADD FOREIGN KEY ("id_genero") REFERENCES "generos" ("id");

ALTER TABLE "dvds" ADD FOREIGN KEY ("id_filme") REFERENCES "filmes" ("id");

ALTER TABLE "atores_filmes" ADD FOREIGN KEY ("id_filme") REFERENCES "filmes" ("id");

ALTER TABLE "atores_filmes" ADD FOREIGN KEY ("id_atores") REFERENCES "atores" ("id");

ALTER TABLE "imprestimos" ADD FOREIGN KEY ("id_cliente") REFERENCES "clientes" ("id");

ALTER TABLE "filmes_imprestimo" ADD FOREIGN KEY ("id_filmes") REFERENCES "filmes" ("id");

ALTER TABLE "filmes_imprestimo" ADD FOREIGN KEY ("id_imprestimos") REFERENCES "imprestimos" ("id");

ALTER TABLE "devolucao" ADD FOREIGN KEY ("id_imprestimo") REFERENCES "imprestimos" ("id");

ALTER TABLE "filme_devolucao" ADD FOREIGN KEY ("id_devolucao") REFERENCES "devolucao" ("id");

ALTER TABLE "filme_devolucao" ADD FOREIGN KEY ("id_filme_imprestimo") REFERENCES "filmes_imprestimo" ("id");
