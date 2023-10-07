/*
 * Trigger name: AccountDuplication
 * Description: Impedir o usuário de inserir uma conta com nome que já existe!
 * Dev: Felipe Siqueira
 * Create Date: 05 de Outubro de 2023
 */

 trigger AccountDuplication on Account (before insert) {
    // Instaciar list para receber o account.name insert
    List<String> accountNames = new List<String>();

    // Popular a list com o account.name insert
    for (Account acc : Trigger.new) {
        accountNames.add(acc.Name);
    }

    // Query busca e popula a list com todas as account.name ja existentes na org, onde o account.name org = account.name insert
    List<Account> accountsWithSameName = [SELECT Name FROM Account WHERE Name IN :accountNames];

    // Iterar sobre as contas recém-inseridas e verificar se seus nomes já existem
    for (Account acc : Trigger.new) {
        for (Account existingAcc : accountsWithSameName) {
            if (acc.Name == existingAcc.Name) {
                acc.Name.addError('Account already exists');
            }
        }
    }
}
