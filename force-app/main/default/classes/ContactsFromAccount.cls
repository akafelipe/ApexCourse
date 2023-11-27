public with sharing class ContactsFromAccount {
    public List<Contact> contacts{get;set;}
    public ContactsFromAccount(String idAccount) {
        contacts = new List<Contact>(); //Aqui nos instanciamos a lista
        contacts = [SELECT Id, FirstName, LastName, Email FROM Contact WHERE AccountId = :idAccount];
        system.debug('Contact ' +contacts);

    }
}