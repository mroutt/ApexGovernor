// Given a list of Opportunity records, we want to find all of the Contact records associated with the
// related Accounts

List<Opportunity> opportunities = [SELECT Id, AccountId FROM Opportunity WHERE Name LIKE 'Example%'];

// Get all of the Contact records associated with the Opportunity AccountIds
// We can't just directly use 'WHERE IN' with something like this:
// List<Contact> contacts = [SELECT Id FROM Contact WHERE AccountId IN :opportunities.AccountId];

// We have to extract the lookup id into its own list
List<Id> accountIds = new List<Id>();

for(Opportunity opportunity : opportunities) {

   accountIds.add(opportunity.AccountId);
}

List<Contact> contacts = [SELECT Id, Name, Account.Name FROM Contact WHERE AccountId IN :accountIds];

for(Contact contact : contacts) {

    System.debug(contact.Name + ' associated with ' + contact.Account.Name);
}
