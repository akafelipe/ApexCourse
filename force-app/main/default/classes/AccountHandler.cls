/*
CLASS Description: AccountHandler holds methods in the Account Object.
Felipe Siqueira
    AccountHandler.preventAccNameDuplication (List<Account> newAccounts) 
    Impedir o usuário de inserir uma conta com nome que já existe.

    AccountHandler.ShipZipCode(List<Account> shipZipCode)
    Impedir o usuario de entrar CEP incorreto, obrigatoriamente 8 digitos.
*/
public with sharing class AccountHandler {

    //previne o usuario de criar uma nova conta o mesmo nome
    public static void preventAccNameDuplication (List<Account> newAccounts){
        
        // Instanciar Set para receber os name insert
        Set <String> accountNames = new Set <String>();      
        // Popular o set com o name insert
        for(Account acc : newAccounts){
            accountNames.add(acc.Name);
        }

        // Query busca e popula a list se name insert = name existente
        List<Account> accountWithSameName = [SELECT Name FROM Account WHERE Name IN :accountNames];
        // Instanciar Sets para receber os name existente
        Set <String> accountFindedNames = new Set <String>();
        //Popular o set com name encontrado
        for(Account acc : accountWithSameName){
            accountFindedNames.add(acc.Name);
        }

        // Iterar sobre as contas recém-inseridas e verificar se seus nomes já existem
        for(Account acc : newAccounts){
            if(accountFindedNames.contains(acc.name))
                    acc.addError('Name already used');
        }                
    }

    public void test(){

    }
}