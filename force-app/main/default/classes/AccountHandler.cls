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
                    if (acc.Name == existingAcc.Name){
                        acc.Name.addError('Name already used');
                    }
                }
            }                
        }

        //previne o usuario de entrar CEP incorreto, obrigatoriamente 8 digitos
        public static void checkPostalCode (List<Account> shipZipCode){
            //Iterar em todos os newShip
            
            for (Account acc : shipZipCode) {
                //Verifica se o ShippingPostalCode contem 8 digitos se eh numerico e se 
                if(acc.ShippingPostalCode.length() != 8 || !acc.ShippingPostalCode.isNumeric() || String.isEmpty(acc.ShippingPostalCode)){
                    acc.ShippingPostalCode.addError('Must be 8 numbers');   
                }else{
                    //BillingPostalCode recebe ShippingPostalCode
                    acc.BillingPostalCode = acc.ShippingPostalCode;    
                }               
            }
        }
}