trigger AccountDuplication on Account (before insert) {
    for(Account acc : Trigger.new){
        List<Account> verify = [SELECT Name FROM Account WHERE Name =: acc.Name];
        if(verify.size()>0){
            acc.name.addError('Account already exists');
        }
    }
}

