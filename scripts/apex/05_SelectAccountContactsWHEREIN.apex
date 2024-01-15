// Instead of a query for each AccountId, we use the entire list of Accounts
// By default, the WHERE IN clause uses the 'Id' field of the object

List<Account> accounts = [SELECT Id FROM Account WHERE Name LIKE 'Example%'];

List<Contact> contacts = [SELECT Id, LastName, Account.Name FROM Contact WHERE AccountId IN :accounts];

// Do something with the list of Contacts
for(Contact contact : contacts) {

    System.debug(contact.LastName + ' - ' + contact.Account.Name);
}