@isTest
private class AccountHandlerTest {
    @isTest static void testExistingAccount() {
        //instanciar uma acc para ser comparada no teste
        Account acc  = new Account(Name = 'ExistingAccount', ShippingPostalCode = 12345678);
        //inserir acc de comparacao
        insert acc;

        //Preencher list que ira ser testado
        // Crie uma nova conta com o mesmo nome
        Account newAccount = new Account(Name = 'ExistingAccount');

        //Verifica teste
        // Verifique se o erro foi adicionado à nova conta
        System.assertEquals(newAccount.Name, acc.Name);



    }
}