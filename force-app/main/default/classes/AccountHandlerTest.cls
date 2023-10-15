@isTest
public class AccountHandlerTest {

    @isTest
    static void testPreventAccNameDuplication() {
        // Crie uma lista de contas com nomes duplicados
        List<Account> newAccounts = new List<Account>();
        newAccounts.add(new Account(Name = 'SForce', ShippingPostalCode='12345678'));
        
        insert newAccounts;
      
        Test.startTest();
        // Chame o método preventAccNameDuplication
        AccountHandler.preventAccNameDuplication(newAccounts);
        Test.stopTest();

        // Verifique se as mensagens de erro foram adicionadas corretamente
        System.assertEquals(1, newAccounts.getErrors().size());
        System.assertEquals('Name already used', newAccounts.getErrors()[0].getMessage());
        
    }
}
