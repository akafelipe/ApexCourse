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

        DateTime DataHora = system.Now();
        system.debug('hoje + data: ' +DataHora);
        
        Integer diasAsomar = 7;

        DataHora = DataHora.addDays(diasAsomar);
        system.debug('Dia e hora daqui a '+diasAsomar+'dias e' +DataHora);

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
        system.debug('O valor do objeto opp eh: ' +opp)

        sObject sOj = new SObject();//Instancia um objeto generico

    }
}