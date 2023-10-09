/*
CLASS Description: AccountHandler holds methods in the Account Object.
    AccountHandler.preventAccNameDuplication ()
     * Description: Impedir o usuário de inserir uma conta com nome que já existe!
*/


public with sharing class AccountHandler {

        //previne o usuario de criar uma nova conta o mesmo nome
        public static void preventAccNameDuplication (List<Account> newAccounts){
            // Instaciar list para receber o account.name insert
            List <String> accountNames = new List <String>();
            // Popular a list com o account.name insert
            for(Account acc : newAccounts){
                accountNames.add(acc.Name);
            }
            // Query busca e popula a list com todas as account.name ja existentes na org, onde o account.name org = account.name insert
            List<Account> accountWithSameName = [SELECT Name FROM Account WHERE Name IN :accountNames];
            // Iterar sobre as contas recém-inseridas e verificar se seus nomes já existem
            for(Account acc : newAccounts){
                for(Account existingAcc : accountWithSameName){
                    if (acc.Name = existingAcc.Name){
                        acc.Name.addError('Name already used');
                    }
                }
            }                
        }
}