//Create 200 Accounts in a loop
Integer numberOfAccountsToCreate = 200;
Integer numberOfAccountsCreated = 0;

while(numberOfAccountsCreated < numberOfAccountsToCreate) {

    Account account = new Account(Name = 'Test Account ' + numberOfAccountsCreated);
    
    insert account;

    numberOfAccountsCreated++;
}