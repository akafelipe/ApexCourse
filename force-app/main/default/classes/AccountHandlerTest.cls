@isTest
public class AccountHandlerTest {

    @isTest
    static void testPreventAccNameDuplication() {
        // Cria uma lista com account nome ja existente
        List<Account> newAccounts = new List<Account>();
        newAccounts.add(new Account(Name = 'SForce', ShippingPostalCode='12345678'));
      
        // Chame o método a ser testado preventAccNameDuplication
        AccountHandler.preventAccNameDuplication(newAccounts);

        // Verifica se o erro aconteceu na conta
        System.assertEquals(1, newAccounts.getErrors().size(), 'Account with same name');
    }
}
