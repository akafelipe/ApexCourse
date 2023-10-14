@isTest
private class AccountHandlerTest {
    @isTest static void testExistingAccount() {
        //instanciar uma acc para ser comparada no teste
        Account acc  = new Account(Name = 'ExistingAccount');
        //inserir acc de comparacao
        insert acc;

        //Preencher list que ira ser testado
        List<Account> newAccounts = new List<Account>{acc};

        //Executar metodo
        Test.startTest();
        AccountHandler.preventAccNameDuplication(newAccounts);
        Test.stopTest();

        //Verifica teste
        System.assertEquals('ExistingAccount', newAccounts[0].Name);



    }
}