// Given a list of Account records, we want to look up all of the associated Contacts

List<Account> accounts = [SELECT Id FROM Account WHERE Name LIKE 'Example%'];

List<Contact> contacts = new List<Contact>();

for(Account account : accounts) {

    Contact contact = [SELECT Id, LastName, Account.Name FROM Contact WHERE AccountId = :account.Id];
    contacts.add(contact);
}

// Do something with the list of Contacts
for(Contact contact : contacts) {

    System.debug(contact.LastName + ' - ' + contact.Account.Name);
}