CREATE TABLE [Instrutor] (
	[id_instrutor] int IDENTITY(1,1) NOT NULL UNIQUE,
	[rg] nvarchar(max) NOT NULL,
	[data_nasciment] date NOT NULL,
	[titulacao] nvarchar(max) NOT NULL,
	[criado_em] datetime NOT NULL,
	PRIMARY KEY ([id_instrutor])
);
CREATE TABLE [Telefone_Instrutor] (
	[id_telefone] int IDENTITY(1,1) NOT NULL UNIQUE,
	[id_instrutor] int NOT NULL,
	[numero_telefone] nvarchar(max) NOT NULL,
	[tipo_telefone] nvarchar(max) NOT NULL,
	PRIMARY KEY ([id_telefone])
);
CREATE TABLE [Aluno] (
	[id_matricula] int IDENTITY(1,1) NOT NULL UNIQUE,
	[data_matricul] date NOT NULL,
	[nome] nvarchar(max) NOT NULL,
	[endereco] nvarchar(max) NOT NULL,
	[data_nascimento] date NOT NULL,
	PRIMARY KEY ([id_matricula])
);
CREATE TABLE [Turma] (
	[id_turma] int IDENTITY(1,1) NOT NULL UNIQUE,
	[horario_aula] time(7) NOT NULL,
	[duracao_aula] time(7) NOT NULL,
	[tipo_atividad] nvarchar(max) NOT NULL,
	[id_instrutor] int NOT NULL,
	PRIMARY KEY ([id_turma])
);
CREATE TABLE [Matricula_Turma] (
	[id_matricula_turma] int IDENTITY(1,1) NOT NULL UNIQUE,
	[id_turma] int NOT NULL,
	[data_inscricao] date NOT NULL,
	[status_matricula] nvarchar(max) NOT NULL,
	[status_:] nvarchar(max) NOT NULL,
	PRIMARY KEY ([id_matricula_turma])
);
ALTER TABLE [Telefone_Instrutor] ADD CONSTRAINT [Telefone_Instrutor_fk1] FOREIGN KEY ([id_instrutor]) REFERENCES [Instrutor]([id_instrutor]);
ALTER TABLE [Turma] ADD CONSTRAINT [Turma_fk4] FOREIGN KEY ([id_instrutor]) REFERENCES [Instrutor]([id_instrutor]);
ALTER TABLE [Matricula_Turma] ADD CONSTRAINT [Matricula_Turma_fk0] FOREIGN KEY ([id_matricula_turma]) REFERENCES [Aluno]([id_matricula]);
ALTER TABLE [Matricula_Turma] ADD CONSTRAINT [Matricula_Turma_fk1] FOREIGN KEY ([id_turma]) REFERENCES [Turma]([id_instrutor]);