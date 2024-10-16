# DataPetz - Sistema de gestão de clínica veterinária 

![desenhodatapetz](https://github.com/user-attachments/assets/cd2f3f67-0978-405d-aa88-e79f1d767095)


Repositório para colocar as atividades do projeto para a disciplina de Banco de Dados do CIN-UFPE no período 2024.1

Equipe : 
- Alexandre Vieira Leonardo (avl@cin.ufpe.br)
- Victor Barros de Miranda Neves(vbmn@cin.ufpe.br)
- Vinicius Henrique Silva (vhs@cin.ufpe.br)
- ~~Diana Rocha Silva (drs4@cin.ufpe.br)~~
- ~~Filip Augusto Pawlowski Fernandes (fapf@cin.ufpe.br)~~


Descrição do projeto :

## 1. Descrição da aplicação a ser implementada 

 ### 1.1 Objetivos da aplicação 
           
  Definir uma aplicação de Banco de Dados para a equipe DataPetz. A aplicação tem como objetivo criar um projeto modelo para uma clinica veterinária simulando a interação entre entidades e seus atributos e relacionamentos seguindo o padrão Entendidade e Relacionamentos apresentados na disciplina de Banco de dados. Entre os objetivos da aplicação sua função é fazer uma pesquisa detalhada  de atividades desempenhadas e armazenar os seus dados em um banco de dados relacional e gerar relatórios.
          A seguir apresentamos as entidades envolvidas no projeto: Cliente, Entidade associativa que relaciona Contratar, Ponto, Clinica, Loja, Produto, Agendamento, Consulta, Empregador, Graduador e Técnico. Com essas entidades, construimos nosso modelo conceitual que vai ajudar na construção dos proximos modelos lógico e modelo físico.

 ###  1.2 Regras de negócio
   

Cadastro de Clientes e Animais - Antes de agendar uma consulta, o cliente e seu animal devem estar cadastrados no sistema com todas as informações necessárias.

Agendamento de Consultas - As consultas devem ser agendadas com pelo menos 24 horas de antecedência para permitir uma organização eficiente e evitar conflitos de horário.

Procedimentos Médicos - Procedimentos médicos e cirúrgicos devem ser realizados apenas por veterinários com a especialidade necessária, assegurando que o profissional seja qualificado para a intervenção específica.

Cancelamento de Consultas - Consultas podem ser canceladas até 12 horas antes do horário agendado, permitindo que a clínica possa reorganizar a agenda e possivelmente atender outros clientes no horário vago.      



 ###  1.3 Funcionalidades  

Pesquisa por animal(nome, código do animal),clinica (nome, telefone),  empregado (nome), entre outros.

Exemplos de relatórios que poderão ser gerados pela aplicação: Para o sistema de marcação de consultas poderia ser a lista de clientes (nome e telefone) marcados para cada veterinário  juntamente com o horário da consulta).

Exemplos de consultas que deverão ser efetuadas: Consultar cadastro de animais, agendamentos e produtos disponíveis.

## 2. Descrição do minimundo          

Este documento descreve o minimundo de uma clínica veterinária pet, abordando os principais aspectos e entidades envolvidos na operação da clínica. O objetivo é fornecer uma visão detalhada do sistema, incluindo requisitos, entidades, atributos, relacionamentos e regras de negócio que estão relacionados ao pleno funcionamento da clínica.

### 2.1 Requisitos

1. Gerenciamento de Animais
Registrar e manter informações: Código do Animal, Nome, Espécie, Data de Nascimento, Sexo.

2. Gerenciamento de Clientes (Donos dos Animais)
Registrar e manter informações: Código do Cliente, Nome, CPF, Endereço (Rua, Número, Cidade, Estado, CEP), Telefone, E-mail(s), Data de Nascimento.
Relacionamento com animais: Associação dos animais aos seus respectivos donos.

3. Gerenciamento de Empregados ( Graduado- veterinário, Técnico)
Registrar e manter informações de empregados: Código do Empregado, Nome, Telefone, Email, Endereço (Rua, Número, Cidade, Estado, CEP).
Veterinários Graduados: Especialização.
Técnicos: Funções 

4. Produto 
Registrar detalhes dos produtos: Código do Produto, Nome, Valor e Marca 

5. Registro de Consultas
Registrar detalhes das consultas: Código da consulta, Data e Hora,, Sintomas, Tratamento Prescrito.

6. Agendamento de Consultas
Permitir agendamentos: Código do Agendamento, Data e Hora.

6. Gerenciamento da Clínica
Registrar informações da clínica: CNPJ, Nome, Endereço (Rua, Número, Cidade, Estado, CEP),  Telefone.

7. Gerenciamento de Lojas
Registrar informações das lojas: Código da Loja, Nome, Telefone(s), Endereço (Número, CEP).

### 2.2 Entidades

1. Animal

2. Cliente

3. Entidade associativa Contratar

4. Ponto

5. Clínica

6. Loja

7. Produto

8. Agendamento

9. Consulta

10. Empregado

11. Graduado

12. Técnico


### 2.3 Entidades com atributos

- Animais
Código do Animal ( Atributo Identificador)
Nome ( Atributo Simple)
Espécie  ( Atributo Simple)
Data de Nascimento ( Atributo Simple)
Sexo ( Atributo Simple)

- Clientes
Código do Cliente (Atributo Identificador)
Nome (Atributo Simple)
CPF (Atributo Simple)
Endereço (Atributo composto: Rua, Número, Cidade, Estado, CEP)
Telefone (Atributo multivalorado: Possibilidade de múltiplos telefones)
E-mail (Atributo multivalorado: Possibilidade de múltiplos e-mails)
Data de Nascimento ( Atributo SImple)
Entidade Associativo Contrata
Data hora  (Atributo  discriminador com relacionamento)
Ponto
Identificador de Pontos  (Atributo  Identificador)
Quantidade de Pontos (Atributo Simple)

- Clínica
CNPJ (Atributo  Identificador)
Nome  (Atributo Simple)
Endereço (Atributo composto: Rua, Número, Cidade, Estado, CEP)
Telefone  (Atributo multivalorado: Possibilidade de múltiplos telefones)
Loja
Código Loja (Atributo  Identificador)
Telefone (Atributo multivalorado: Possibilidade de múltiplos telefones)
Endereço (Atributo composto: Número, CEP)
Nome (Atributo Simple)

- Produto [Entidade Fraca]
Código Produto  (Atributo  discriminador)
Nome (Atributo Simple)
Valor (Atributo Simple)
Marca (Atributo Simple)


- Consultas
Código da Consulta (Atributo  Identificador)
Data e Hora ( Atributo Simple)
Sintomas (Atributo Simple)
Tratamento (Atributo Simple)

- Agendamentos
Código do Agenda (Atributo  Identificador)
Data e Hora (Atributo Simple)
Empregado
Código do Empregado( Atributo Identificador)
Nome (Atributo Simple)
Telefone (Atributo multivalorado: Possibilidade de múltiplos telefones)
E-mail (Atributo multivalorado: Possibilidade de múltiplos e-mails)
Endereço (Atributo composto: Rua, Número, Cidade, Estado, CEP)

- Graduado (Herança de empregado)
Especialidade (Atributo Simple)

- Técnico   (Herança de empregado)
Função (Atributo Simple)

### 2.3 Relacionamentos


1. Clientes pertencem  Animais
Um cliente pode possuir vários animais.
Um animal pertence a um único cliente.

2. Empregados do tipo Graduador (Veterinário) realizam Consultas
Uma consulta é realizada por um único veterinário.

3. Animais participam de Consultas
Um animal pode participar de muitas consultas.

4. Agendamentos são feitos por Clientes para Animais
Um cliente pode agendar muitas consultas para seus animais.
Um agendamento envolve um único animal e um único cliente.
Um veterinário pode estar envolvido em muitos agendamentos e um agendamento pode ter apenas um veterinário.

5. Lojas possuem Produtos
Uma loja pode possuir vários produtos.

6. Auto relacionamento 
Auto relacionamento Pode ser um Empregador  vários funcionários ou um chefe.

### 2.4 Regras de Negócio

Cadastro de Clientes e Animais
Antes de agendar uma consulta, o cliente e seu animal devem estar cadastrados no sistema com todas as informações necessárias.

Agendamento de Consultas
As consultas devem ser agendadas com pelo menos 24 horas de antecedência para permitir uma organização eficiente e evitar conflitos de horário.

Procedimentos Médicos
Procedimentos médicos e cirúrgicos devem ser realizados apenas por veterinários com a especialidade necessária, assegurando que o profissional seja qualificado para a intervenção específica.

Cancelamento de Consultas
Consultas podem ser canceladas até 12 horas antes do horário agendado, permitindo que a clínica possa reorganizar a agenda e possivelmente atender outros clientes no horário vago.


### 2.5 Descrição dos Conceitos Utilizados no Projeto

Atributo Composto
Um atributo composto é aquele que pode ser decomposto em subatributos mais simples.  
Endereço - Pode ser decomposto em Rua, Número, Cidade, Estado, e CEP.

Atributo Multivalorado
Um atributo multivalorado é aquele que pode ter múltiplos valores.
E-mail dos Clientes - é multivalorado, pois um cliente pode possuir mais de um e-mail.

Relacionamento 1
Indica que uma entidade pode estar relacionada com várias outras entidades, mas cada uma dessas entidades está relacionada com apenas uma entidade da primeira. Um cliente pode possuir vários animais, mas cada animal pertence a um único cliente.

Relacionamento N
Significa que uma entidade pode se relacionar com várias outras e vice-versa.
Não temos este tipo de relacionamento na  modelagem.

Herança
Herança é um conceito onde uma entidade (subclasse) herda atributos e relacionamentos de outra entidade (superclasse). 
A entidade "Empregado" é uma superclasse, enquanto "Graduado" e "Técnico" são subclasses que herdam seus atributos e adicionam atributos específicos como  Especialização e Função.

Entidade Associativa
Uma entidade associativa é utilizada para representar relacionamentos N entre duas ou mais entidades. 

Relacionamento Identificador ou Entidade Fraca
Uma entidade fraca depende de uma entidade forte para sua identificação.

Relacionamento Binário
Um relacionamento binário envolve duas entidades. 
Relacionamento binário - é o relacionamento entre "Clientes" e "Animais".

Relacionamento 1:1
Um relacionamento 1:1 é aquele em que uma instância de uma entidade está associada a uma instância de outra entidade e vice-versa. Por exemplo, cada "Clínica" possui um único "Código da Loja" e vice-versa.

Relacionamento Unário ou Auto Relacionamento
Um relacionamento unário é aquele onde uma entidade se relaciona consigo mesma. Por exemplo, um empregado (como supervisor) pode supervisionar outros empregados.

Relacionamento Parcial-Total
No projeto, um relacionamento parcial-total ocorre quando todas as instâncias de uma entidade participam no relacionamento.
Todos os "Veterinários" (total) realizam "Consultas", mas nem todos os "Empregados" (parcial) são "Veterinários".

Relacionamento N-ário
Um relacionamento n-ário envolve mais de duas entidades. No projeto, "Agendamentos" é um relacionamento n-ário que envolve "Animais", "Clientes" e "Empregados".

## 3.Diagrama ER do Banco de Dados (Modelo Conceitual)

![DataPetz905](https://github.com/user-attachments/assets/f2cb6199-69f4-4d29-8c1f-d58016a45ee2)
















## 4. Projeto lógico (relacional) do Banco de Dados


Modelo ER atualizado


![image](https://github.com/user-attachments/assets/2d676c4c-d9fb-4be1-984a-d43edb085231)

Visando o melhor funcionamento e estruturação do projeto, foi realizada a alteração do modelo conceitual para que algumas funções pudessem funcionar de forma mais assertiva. 

No modelo anterior, não estava sendo possível conseguir associar a compra de um produto a um cliente, bem como o agendamento na clínica também ao cliente, o que foi resolvido nessas modificações. Fizemos os ajustes para que o projeto esteja de acordo com um projeto real onde consultas com pelas entidades Cliente e Produto ou Cliente e Agendamento seriam bastante importantes.

Também removemos alguns atributos que se encontravam como multivalorados sem a devida necessidade, por exemplo: telefone da clínica, loja e empregado, onde entendemos que para uma melhor implementação do projeto apenas um contato seria necessário.

### 4.1. Modelo Lógico 


![image](https://github.com/user-attachments/assets/dd97a919-ee00-47ff-9db3-d910d57f0de8)



### 4.2 Normalização

![image](https://github.com/user-attachments/assets/cb7a5a31-13c3-447d-89c4-83735ecd35f3)

### 4.3. Algebra Relacional (Consultas)

![image](https://github.com/user-attachments/assets/59c2946b-9c61-4e90-94cf-063cfe1fa477)

![image](https://github.com/user-attachments/assets/30776608-7dc8-4a29-a06d-c9dad3cffdfb)

![image](https://github.com/user-attachments/assets/3b5a6a74-89b6-4e7d-be85-f648c272274c)

![image](https://github.com/user-attachments/assets/5b966fa9-c637-45b8-b325-514c39418925)

![image](https://github.com/user-attachments/assets/b109f403-2c21-445c-ac2a-25986008f664)





## 5. Projeto Físico

### Atualização do projeto Conceitual :

![image](https://github.com/user-attachments/assets/a99feb7f-dfa2-4cf1-ad84-9f53a9e999b5)


### Atualização do projeto Lógico:

Cliente(CodCliente, Nome, DataNascimento, [CPF]!, Email, CEP, Rua, Numero, Cidade, Estado)

TelefoneCLiente(Telefone, CodCliente!)
	CodCliente -> Cliente(CodCliente)

Animal(CodAnimal, Nome, Especie, DataNascimento, Sexo, CodCliente!)
	CodCliente -> Cliente(CodCliente)

AgendamentoConsulta(CodAgendamentoConsulta, DataHora, Tratamento, ProdutoUtilizado, QtdProdutoUtilizado, CodAnimal!, CodEmpregado!, CNPJ!)
	CodAnimal -> Animal(CodAnimal)
	CodEmpregado -> Empregado(CodEmpregado)
	CNPJ -> Clinica(CNPJ)
	
Clinica(CNPJ, Nome, Telefone, CEP, Rua, Numero, Cidade, Estado)

Produto(CodProduto, Nome, Marca, Quantidade, Valor)

ClinicaProduto(CNPJ!, CodProduto!)
	CNPJ -> Clinica(CNPJ)
	CodProduto -> Produto(CodProduto)

ProdutoAgendamento(CodProduto!, CodAgendamentoConsulta!)
	CodProduto -> Produto(CodProduto)
CodAgendamentoConsulta->AgendamentoConsulta(CodAgendamentoConsulta)

Empregado(CodEmpregado, Nome, Telefone, Email, Especialidade, CEP, Rua, Numero, Cidade, Estado, CNPJ!, CodChefe!)
	CNPJ -> Clinica(CNPJ)


### Link para o projeto físico no Live Sql Oracle


https://livesql.oracle.com/ords/livesql/s/cfbfz71v3iopzu3rkwcxzhv7l






























## 6.Conclusão


Neste guia, abordamos a criação de um modelo conceitual usando a ferramenta EERCASE, focando em auto relacionamentos para a entidade "Empregado". Esse processo é essencial para representar hierarquias ou outras relações recursivas dentro de um banco de dados.

Para criar um modelo conceitual eficaz no EERCASE, começamos definindo a entidade "Empregado" e seus atributos, como Empregado ID, Nome, Cargo, Departamento, e Chefe ID. Em seguida, estabelecemos um auto relacionamento denominado "Supervisiona", com cardinalidades adequadas para refletir que um chefe pode supervisionar muitos empregados, enquanto cada empregado tem no máximo um chefe.

Também discutimos a importância de validar o modelo para assegurar que todas as conexões e cardinalidades estão corretas, e configuramos a chave estrangeira Chefe ID para referenciar Empregado ID na mesma tabela, permitindo valores nulos para representar empregados sem chefes diretos.

Além do desenvolvimento do modelo, fornecemos orientações sobre como documentar e referenciar recursos usados para aprender e implementar a ferramenta EERCASE conforme as normas da ABNT. Isso inclui referências a manuais de usuário, tutorias online, livros, e artigos acadêmicos.

Seguir esses passos e utilizar as referências adequadas garantirá a criação de um modelo conceitual robusto e bem documentado, preparado para a transição para um modelo lógico e, posteriormente, a implementação em um sistema de gerenciamento de banco de dados

Links :


Link para a apresentação 1 (Modelo Conceitual):
 https://www.canva.com/design/DAGMXYlNH0k/YMRArc0wF6QhELVZMcO1BA/edit?utm_content=DAGMXYlNH0k&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton

Link para a apresentação 2 (Modelo Lógico):
https://www.canva.com/design/DAGPzg0KpRU/m-yh3CrWSlM0SIv5IDw3eQ/edit?utm_content=DAGPzg0KpRU&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton

Link para a apresentação 3 (Modelo Físico):
https://www.canva.com/design/DAGTsJtMBcI/0fNdCNJqS19z4o408OWWFg/edit?utm_content=DAGTsJtMBcI&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton




















Referências:
EERCASE Development Team. Manual do Usuário EERCASE. 3ª ed. São Paulo: EERCASE Softwares Ltda, 2023. Disponível em: http://www.eercase.com/manual. Acesso em: 29 jul. 2024.
FIDALGO, Robson do Nascimento. Título do slide. UFPE - Departamento de Ciência da Computação, Recife, 2020.1. Disponível em: https://docs.google.com/presentation/d/1cL2vmbVPGAx5-8aco2dKkCDWifPRE8v3/edit#slide=id.p2. Acesso em: 2020
