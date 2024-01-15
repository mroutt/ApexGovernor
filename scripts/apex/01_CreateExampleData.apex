// Create 200 Account, Contact and Opportunity sets

Integer numberOfAccountsToCreate = 200;
Integer numberOfAccountsCreated = 0;

List<Account> accounts = new List<Account>();
List<Contact> contacts = new List<Contact>();
List<Opportunity> opportunities = new List<Opportunity>();

while(numberOfAccountsCreated < numberOfAccountsToCreate) {

    Account account = new Account(Name = 'Example Account ' + numberOfAccountsCreated);
    
    accounts.add(account);

    numberOfAccountsCreated++;
}

insert accounts;

Integer loopCount = 0;

for(Account account : accounts) {

    Contact contact = new Contact( 
        LastName = 'Example Contact ' + loopCount, 
        AccountId = account.Id);
    
    contacts.add(contact);

    Opportunity opportunity = new Opportunity ( 
        Name = 'Example Opportunity' + loopCount, 
        AccountId = account.Id, 
        CloseDate = Date.today(),
        StageName = 'Prospecting');

    opportunities.add(opportunity);

    loopCount++;
}

insert contacts;
insert opportunities;

