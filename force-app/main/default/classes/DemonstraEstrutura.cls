public with sharing class DemonstraEstrutura {
    public DemonstraEstrutura() {

    }

/*
Autor: Felipe Siqueira
Classe que demonstra estrutura para nossa aula
*/
    public static void variaveis(){

        //Aqui e um exemplo de declaracao de variavel
        Boolean ehGremista = true;
        system.debug('a variavel ehGremista tem o valor de ' +ehGremista);//sistema de debug

        //Declaracao de uma variavel
        //TIPO + NOME DA VARIAVEL = VALOR INICIAL
        String nomeAluno = 'Maria';
        
        //Transformando uma variavel boolena em um texto do tipo string
        String transformandoTipo = String.valueOf(ehGremista);

        //Exemplo com varias variaveis
        Integer idade = 10;
        String nome = 'Mariana';
        Boolean ehMenina= true;
        system.debug('a variavel idade tem o valor de ' +idade);
        system.debug('a variavel nome tem o valor de ' +nome);
        system.debug('a variavel ehMenina tem o valor de ' +ehMenina);

        //outro exemplo
        Integer valornaContaDoGian;
        system.debug('O valor definido variavel valornaContaDoGian =' +valornaContaDoGian);

        valornaContaDoGian = 100000;
        system.debug('O valor definido variavel valornaContaDoGian =' +valornaContaDoGian);

        //Double pode ter casas decimais
        Double valorCasasDec = 10.02323;
        Decimal valorDec = 15.05;

        //Date trabalha com datas
        Date today = system.Today();
        system.debug('hoje: ' +today);

        DateTime dataHora = system.Now();
        system.debug('hoje + data: ' +DataHora);
        
        Integer diasAsomar = 7;

        dataHora = dataHora.addDays(diasAsomar);
        system.debug('Dia e hora daqui a '+diasAsomar+'dias e' +dataHora);

        Id idValido = '001D000000I8mUOIAZ';

        //Variaveis do tipo sObject
        Account acc = new Account();
        acc.Name = 'Lucas';
        acc.Phone = '55555';
        system.debug('Ovalor do objeto acc e: ' +acc);
        //insert acc;

        Opportunity opp = new Opportunity();
        opp.Name = 'Teste OPP';
        opp.Description = 'Opp teste';
        system.debug('O valor do objeto opp eh: ' +opp);

    }

    public static void variaveisDeColecao(){
        //
        //List
        //
        List<String> listNames = new list<String>();
        system.debug('listNames' +listNames);

        //Adicionando o nome da Ana
        listNames.add('Ana');
        //Maria
        listNames.add('Maria');
        //Carlos
        listNames.add('Carlos');

        system.debug('listNames' +listNames);
        
        //recuperando valores da lista
        system.debug('Informacao do segundo valor da lista listName: ' +listNames[1]);

        List<Integer> listDeInteiros = new List<Integer>{10,20};
        listDeInteiros.add(30);

        system.debug('listDeInteiros:'+listDeInteiros);

        //List de Objeto 
        Account acc1 = new Account();
        acc1.Name = 'Conta 1';

        Account acc2 = new Account();
        acc2.Name = 'Conta 2';

        List<Account> accountList = new List<Account>{acc1, acc2};

        Account acc3 = new Account();
        acc3.Name = 'Conta 3';

        accountList.add(acc3);

        system.debug('accountList' +accountList);

        system.debug('Recuperando o nome da segunda posicao da variavel accountList: ' +accountList[1].Name);
        //
        //Sets
        //
        Set<String> setNames = new Set<String> {'Joao', 'Maria', 'Pedro', 'Joao', 'Maria', 'Pedro'};
        system.debug('setNames: ' +setNames);

        //
        //Maps
        //
        Map<String,Integer> nomeIdadeMap = new Map<String,Integer>();

        nomeIdadeMap.put('Maria', 30);
        nomeIdadeMap.put('Joao', 19);
        nomeIdadeMap.put('Jose', 33);

        system.debug('nomeIdadeMap: ' +nomeIdadeMap);

        system.debug('Idade do Joao: ' +nomeIdadeMap.get('Joao'));

        if(nomeIdadeMap.containsKey('Andre')){
            system.debug('Idade do Andre: ' +nomeIdadeMap.get('Andre'));    
        }else{
            system.debug('Nao existe a chave Andre na variavel nomeIdadeMap');
        }

        //Recuperando as info de uma conta pelo CNPJ
        Map<String,Account> contaPorCNPJ = new Map<String,Account>();

        contaPorCNPJ.put('12345', new Account(Name = 'Conta 1', Phone =  '11111'));
       
        Account accEx1 = new Account();
        accEx1.Name = 'Conta 1';
        accEx1.Phone = '111111';
        contaPorCNPJ.put('54321', accEx1);

        Account accEx2 = contaPorCNPJ.get('12345');
        system.debug('buscar infos accEx2:' +accEx2);

        system.debug('contasPorCNPJ: ' +contaPorCNPJ);

        //Criar uma variavel Map, que recebe um nome de uma pessoa,
        //e armazena a idade, criar 4 registros, e recuperar a idade
        //do terceiro registro mostrando em um system.debug

        Map<String,Integer> exemploMap = new Map<String,Integer>();
        exemploMap.put('F', 31);
        exemploMap.put('N', 35);
        exemploMap.put('C', 55);
        exemploMap.put('T', 2);

        system.debug('Retornar o 3 registro do exemploMap: ' +exemploMap.get('C'));
        //Colocar valores dentro ao declarar o Map
        Map<String,Integer> exemploMap2 = new Map<String,Integer>{'F' => 30, 'J' => 76};

        system.debug('Retornar o 0 registro do exemploMap: ' +exemploMap2.get('F'));

    }

    public static void condicionais(){

        //CONDICIONAIS
        //IF == Se
        Integer num = 5;

        if(num > 2){
            system.debug('Maior que 2');
        }

        //ELSE IF + ELSE
        Integer idade = 25;

        if(idade < 18){
            system.debug('Crianca');           
        }else if(idade >= 18 && idade < 30){
            system.debug('Jovem');
        }else{
            system.debug('Senior');
        }

        //TERNARIO DA CONDICAO ACIMA
        String textoIdade = idade < 18 ? 'crianca' : (idade>=18 && idade < 30 ? 'jovem' : (idade > 60 ? 'adulto' : 'adulto'));
        system.debug(textoIdade);

        //CONDICIONAIS
        //SWITCH
        //0-Dom, 1-Seg...6-Sab
        Integer dayWeek = 3;

        switch on dayWeek {
            when 0 {
                system.debug('Domingo');
            }
            when 1 {
                system.debug('Segunda');   
            }
            when else {
                system.debug('Dia Invalido');
            }
        }

        //CONDICIONAIS
        //IF TERNARIO
        Integer num = 30;
        String result = num > 5 ? 'Num maior que 5' : 'Num menor ou igual a 5';
    }

    public static void loops(){
        //FOR
        for(Integer i = 0; i < 10; i++){
            system.debug('Executou o For com o numero' +i);
        }

        //WHILE
        Integer count = 1;
        while (count <= 10) {
            system.debug('Count e:' +count);
            count++;     
        }

        //DO-WHILE
        Integer counter = 0;
        do {
            system.debug('O valor do counter eh: '+counter);
            counter++;
        } while (counter < 5);

        //FOREACH
        for(Account acc : [SELECT Name FROM Account]){
            system.debug ('O nome da conta: '+acc.Name);
        }

        List<Integer> integerList = new List<Integer>{1,2,3,4,5,6,7,8,9};
        for(Integer num : integerList){
            system.debug ('Valor de num: ' +num);
        }
    }

    //OPERADORES
    public static void operadores(){
        //ARITMETICOS
        //+ - * / %

        //ATRIBUICAO
        // =

        //COMPARACAO
        // == != < > <= >=

        //LOGICOS
        // && || !

        //CONDICIONAIS
        // ? :
    }

    //OPERADORES DE ATRIBUICAO
    // = += -= *= /= %=
}  