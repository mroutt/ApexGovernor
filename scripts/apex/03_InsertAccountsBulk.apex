//Create 200 Accounts in a loop *Bulkified*
Integer numberOfAccountsToCreate = 200;
Integer numberOfAccountsCreated = 0;

List<Account> accounts = new List<Account>();

while(numberOfAccountsCreated < numberOfAccountsToCreate) {

    Account account = new Account(Name = 'Test Account ' + numberOfAccountsCreated);
    
    accounts.add(account);

    numberOfAccountsCreated++;
}

insert accounts;