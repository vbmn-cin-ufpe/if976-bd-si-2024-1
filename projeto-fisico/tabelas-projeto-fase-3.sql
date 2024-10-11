CREATE TABLE Cliente (
	CodCliente VARCHAR(255) PRIMARY KEY,
	Nome VARCHAR(100),
	CPF VARCHAR(15) UNIQUE,
	DataNascimento DATE,
	Email VARCHAR(100),
	CEP VARCHAR(10),
	Rua VARCHAR(100),
	Numero INT,
	Cidade VARCHAR(100),
	Estado VARCHAR(2)
);

CREATE TABLE TelefoneCliente (
	Telefone VARCHAR(15) PRIMARY KEY,
	CodCliente VARCHAR(255),
	FOREIGN KEY (CodCliente) REFERENCES Cliente(CodCliente)
);

CREATE TABLE Animal (
	CodAnimal VARCHAR(255) PRIMARY KEY,
	Nome VARCHAR(100),
	Especie VARCHAR(100),
	DataNascimento DATE,
	Sexo VARCHAR(10),
	CodCliente VARCHAR(255),
	FOREIGN KEY (CodCliente) REFERENCES Cliente(CodCliente)
);

CREATE TABLE Clinica (
	CNPJ VARCHAR(14) PRIMARY KEY,
	Nome VARCHAR(100),
	Telefone VARCHAR(15),
	CEP VARCHAR(10),
	Rua VARCHAR(100),
	Numero INT,
	Cidade VARCHAR(100),
	Estado VARCHAR(2)
);

CREATE TABLE Produto (
	CodProduto VARCHAR(255) PRIMARY KEY,
	Nome VARCHAR(100),
	Marca VARCHAR(100),
	Quantidade INT,
	Valor DECIMAL(10, 2)
);

CREATE TABLE ClinicaProduto (
	CNPJ VARCHAR(14),
	CodProduto VARCHAR(255),
	PRIMARY KEY (CNPJ, CodProduto),
	FOREIGN KEY (CNPJ) REFERENCES Clinica(CNPJ),
	FOREIGN KEY (CodProduto) REFERENCES Produto(CodProduto)
);


CREATE TABLE Empregado (
	CodEmpregado VARCHAR(255) PRIMARY KEY,
	Nome VARCHAR(100),
	Telefone VARCHAR(15),
	Email VARCHAR(100),
	Especialidade VARCHAR(100),
	CEP VARCHAR(10),
	Rua VARCHAR(100),
	Numero INT,
	Cidade VARCHAR(100),
	Estado VARCHAR(2),
	CodChefe VARCHAR(255),
        CNPJ VARCHAR(14),
	FOREIGN KEY (CodChefe) REFERENCES Empregado(CodEmpregado),
        FOREIGN KEY (CNPJ) REFERENCES Clinica(CNPJ)
);

CREATE TABLE AgendamentoConsulta (
	CodAgendamentoConsulta VARCHAR(255) PRIMARY KEY,
	DataHora DATE,
	Tratamento VARCHAR(255),
	QtdProdutoUtilizado INT,
	CodAnimal VARCHAR(255),	
	CodEmpregado VARCHAR(255),
        CNPJ VARCHAR(14),
	FOREIGN KEY (CodAnimal) REFERENCES Animal(CodAnimal),
	FOREIGN KEY (CNPJ) REFERENCES Clinica(CNPJ),	
	FOREIGN KEY (CodEmpregado) REFERENCES Empregado(CodEmpregado)
);

CREATE TABLE AgendamentoProduto (
	CodAgendamentoConsulta VARCHAR(255),
	CodProduto VARCHAR(255),
	PRIMARY KEY (CodAgendamentoConsulta, CodProduto),
	FOREIGN KEY (CodAgendamentoConsulta) REFERENCES AgendamentoConsulta(CodAgendamentoConsulta),
	FOREIGN KEY (CodProduto) REFERENCES Produto(CodProduto)
);