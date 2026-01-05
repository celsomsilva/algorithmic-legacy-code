{- Aula 1 Lab -

4 tipos primitivos: Int, Real, Log, Car
6 mecanimos de const de tipos: Vet, Reg, Alt(ernative),
Ponteiro(ref),Enumeraçao, Seq.

Exercícios:
1) Declare uma sequencia de vetor (10 elementos) de reais.

2) Declare uma matriz 3x5 de registros de 4 campos:
campo1: P1=ponteiro p/ real
campo2: P2=ponteiro p/ inteiro
campo3: P3=ponteiro p/ lógico
campo4: P4=ponteiro p/ caract.

3)Declare um ponteiro para a matriz 2x2 de ponteiros para reais.

4)Declare um vetor de ponteiros para um registro de 3 campos:
Campo1: C1=vetor[10 elementos] de int;
Campo2: C2=tipo caractere;
Campo3: C3=sequencia de inteiros;

5) Festa do Senador
        1)Senador: Lista de Convidados
        2)Cada convidado por sua vez também tem uma lista de convidados.
        3)Cada convidado é representado pelos atributos:nome, idade,
        partido e se eh convidado ou naum.
Declare uma estrutura de dados para representar a Lista do Senador.

6) Hipertexto - 500 arq texto; Cada arquivo texto tem até 20 links
para um outro arquivo texto.
Declare uma estrutura p/ comportar este problema.
-------------------------------
1)
        Tipo TVetor :: Vet[1..10] de real;
        Tipo TSequecia :: Seq TVetor;
        Var
                S:TSequencia;

        Pascal: Type TVetor = vet[1..10] of real;
-------------------------------
2)
        Tipo Treal :: Ref real; (^real)
        Tipo Tint :: Ref int;   (^int)
        Tipo Tlog :: Ref log;   (^log)
        Tipo Tcar :: Ref car;   (^car)
        Tipo TRegistro :: Reg (P1:Treal;P2:Tint;P3:Tlog;P4:Tcar);
        Tipo TMatriz :: Vet[1..3,1..5] de TRegistro;
        Var
                M:TMat;
--------------------------------
3)
        Tipo Treal :: Ref real; (^real)
        Tipo TMat :: Vet[1..2,1..2] de real;
        Var
                P:Treal;
                M:TMat;
--------------------------------
4)
        Tipo Tcampo1 :: Vet[1..10] de int;
        Tipo Tcampo3 :: Seq de int;
        Tipo TRegistro :: Reg(C1:Tcampo1;C2:car;C3:Tcampo);
        Tipo Tpont :: Ref TRegistro;
        Tipo Tvetor :: Vet[1..10] de Tpont;
---------------------------------

