# DataPetz - Sistema de gestão de clínica veterinária 

![desenhodatapetz](https://github.com/user-attachments/assets/cd2f3f67-0978-405d-aa88-e79f1d767095)


Repositório para colocar as atividades do projeto para a disciplina de Banco de Dados do CIN-UFPE no período 2024.1

Equipe : 
- Victor Barros de Miranda Neves(vbmn@cin.ufpe.br)
- Alexandre Vieira Leonardo (avl@cin.ufpe.br)
- Diana Rocha Silva (drs4@cin.ufpe.br)
- Filip Augusto Pawlowski Fernandes (fapf@cin.ufpe.br)
- Vinicius Henrique Silva (vhs@cin.ufpe.br)

Descrição do projeto :

1. Descrição da aplicação a ser implementada : Aplicação de Equipe DataPetz

  1.1 Objetivos da aplicação 
           Definir uma aplicação de Banco de Dados da Equipe de Equipe DataPetz,logo sua função é fazer uma pesquisa detalhada  de atividades desempenhadas e armazenar os seus dados em um relatório.
          Os exemplos são lista de envolvidos na modelagem  que são:  Animal, Cliente, Entidade associativa que relaciona Contratar, Ponto, Clinica, Loja, Produto, Agendamento, Consulta, Empregador, Graduador e Técnico. Assim, os exemplos acima relacional com lista de envolvidos no banco de dados que servirá de consulta é exigida pela construção da equipe  de DataPetz. 







  1.2 Regras de negócio
   

Cadastro de Clientes e Animais
Antes de agendar uma consulta, o cliente e seu animal devem estar cadastrados no sistema com todas as informações necessárias.
Agendamento de Consultas
As consultas devem ser agendadas com pelo menos 24 horas de antecedência para permitir uma organização eficiente e evitar conflitos de horário.
Procedimentos Médicos
Procedimentos médicos e cirúrgicos devem ser realizados apenas por veterinários com a especialidade necessária, assegurando que o profissional seja qualificado para a intervenção específica.
Cancelamento de Consultas
Consultas podem ser canceladas até 12 horas antes do horário agendado, permitindo que a clínica possa reorganizar a agenda e possivelmente atender outros clientes no horário vago.
        



  1.3 Funcionalidades  
Pesquisa por ANIMAL(nome, código do animal) , o clinica (nome, telefone),  empregado (nome), entre outras.
Armazenados dos dados acima.


  1.4 Exemplos de relatórios que poderão ser gerados pela aplicação (por exemplo: para o sistema de marcação de consultas poderia ser a lista de clientes (nome e telefone) marcados para cada veterinário  juntamente com o horário da consulta)
  1.5 Exemplos de consultas que deverão ser efetuadas no banco de dados a fim de dar suporte à aplicação.

2. Descrição do minimundo
          

Este documento descreve o minimundo de uma clínica veterinária pet, abordando os principais aspectos e entidades envolvidos na operação da clínica. O objetivo é fornecer uma visão detalhada do sistema, incluindo requisitos, entidades, atributos, relacionamentos e regras de negócio que estão relacionados ao pleno funcionamento da clínica.
Requisitos
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
Registrar informações das lojas: Código da Loja, Nome, Telefone(s), Endereço (
 Número, CEP).

Entidades
Animal
Cliente
Entidade associativa Contratar
Ponto
Clínica
Loja
Produto
Agendamento
Consulta
Empregado
Graduado
Técnico
Atributos

Animais
Código do Animal ( Atributo Identificador)
Nome ( Atributo Simple)
Espécie  ( Atributo Simple)
Data de Nascimento ( Atributo Simple)
Sexo ( Atributo Simple)
Clientes
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

Clínica
CNPJ (Atributo  Identificador)
Nome  (Atributo Simple)
Endereço (Atributo composto: Rua, Número, Cidade, Estado, CEP)
Telefone  (Atributo multivalorado: Possibilidade de múltiplos telefones)
Loja
Código Loja (Atributo  Identificador)
Telefone (Atributo multivalorado: Possibilidade de múltiplos telefones)
Endereço (Atributo composto: Número, CEP)
Nome (Atributo Simple)

Produto Entidade Fraca
Código Produto  (Atributo  discriminador)
Nome (Atributo Simple)
Valor (Atributo Simple)
Marca (Atributo Simple)


 Consultas
Código da Consulta (Atributo  Identificador)
Data e Hora ( Atributo Simple)
Sintomas (Atributo Simple)
Tratamento (Atributo Simple)

Agendamentos
Código do Agenda (Atributo  Identificador)
Data e Hora (Atributo Simple)
Empregado
Código do Empregado( Atributo Identificador)
Nome (Atributo Simple)
Telefone (Atributo multivalorado: Possibilidade de múltiplos telefones)
E-mail (Atributo multivalorado: Possibilidade de múltiplos e-mails)
Endereço (Atributo composto: Rua, Número, Cidade, Estado, CEP)

 Graduado (Herança de empregado)
Especialidade (Atributo Simple)

 Técnico   (Herança de empregado)
Função (Atributo Simple)

Relacionamentos


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

Regras de Negócio
Cadastro de Clientes e Animais
Antes de agendar uma consulta, o cliente e seu animal devem estar cadastrados no sistema com todas as informações necessárias.
Agendamento de Consultas
As consultas devem ser agendadas com pelo menos 24 horas de antecedência para permitir uma organização eficiente e evitar conflitos de horário.
Procedimentos Médicos
Procedimentos médicos e cirúrgicos devem ser realizados apenas por veterinários com a especialidade necessária, assegurando que o profissional seja qualificado para a intervenção específica.
Cancelamento de Consultas
Consultas podem ser canceladas até 12 horas antes do horário agendado, permitindo que a clínica possa reorganizar a agenda e possivelmente atender outros clientes no horário vago.




Descrição dos Conceitos Utilizados no Projeto
Atributo Composto
Um atributo composto é aquele que pode ser decomposto em subatributos mais simples.  Endereço - Pode ser decomposto em Rua, Número, Cidade, Estado, e CEP.
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



3.Diagrama ER do Banco de Dados (Modelo Conceitual)

















4. Modelo lógico (relacional) do Banco de Dados


Para próximas entregas deste projetos o  modelo lógico DataPetz.









































5.Conclusão


Neste guia, abordamos a criação de um modelo conceitual usando a ferramenta EERCASE, focando em auto relacionamentos para a entidade "Empregado". Esse processo é essencial para representar hierarquias ou outras relações recursivas dentro de um banco de dados.
Para criar um modelo conceitual eficaz no EERCASE, começamos definindo a entidade "Empregado" e seus atributos, como Empregado ID, Nome, Cargo, Departamento, e Chefe ID. Em seguida, estabelecemos um auto relacionamento denominado "Supervisiona", com cardinalidades adequadas para refletir que um chefe pode supervisionar muitos empregados, enquanto cada empregado tem no máximo um chefe.
Também discutimos a importância de validar o modelo para assegurar que todas as conexões e cardinalidades estão corretas, e configuramos a chave estrangeira Chefe ID para referenciar Empregado ID na mesma tabela, permitindo valores nulos para representar empregados sem chefes diretos.
Além do desenvolvimento do modelo, fornecemos orientações sobre como documentar e referenciar recursos usados para aprender e implementar a ferramenta EERCASE conforme as normas da ABNT. Isso inclui referências a manuais de usuário, tutorias online, livros, e artigos acadêmicos.
Seguir esses passos e utilizar as referências adequadas garantirá a criação de um modelo conceitual robusto e bem documentado, preparado para a transição para um modelo lógico e, posteriormente, a implementação em um sistema de gerenciamento de banco de dados




















Referências:
EERCASE Development Team. Manual do Usuário EERCASE. 3ª ed. São Paulo: EERCASE Softwares Ltda, 2023. Disponível em: http://www.eercase.com/manual. Acesso em: 29 jul. 2024.
FIDALGO, Robson do Nascimento. Título do slide. UFPE - Departamento de Ciência da Computação, Recife, 2020.1. Disponível em: https://docs.google.com/presentation/d/1cL2vmbVPGAx5-8aco2dKkCDWifPRE8v3/edit#slide=id.p2. Acesso em: 2020
