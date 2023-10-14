@isTest
private class AccountHandlerTest {
    @isTest static void testExistingAccount() {
        //instanciar uma acc para ser comparada no teste
        Account acc  = new Account(Name = 'ExistingAccount');
        //inserir acc de comparacao
        insert acc;

        //Preencher list que ira ser testado
        // Crie uma nova conta com o mesmo nome
        Account newAccount = new Account(Name = 'Existing Account');
        List<Account> newAccounts = new List<Account>{ newAccount };

        //Executar metodo
        Test.startTest();
        AccountHandler.preventAccNameDuplication(newAccounts);
        Test.stopTest();

        //Verifica teste
        // Verifique se o erro foi adicionado à nova conta
        System.assertEquals('Existing Account', newAccounts[0].Name());



    }
}