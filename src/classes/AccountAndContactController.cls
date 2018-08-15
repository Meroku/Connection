public with sharing class AccountAndContactController {
    @AuraEnabled
	    public static Contact saveContactWithAccount(Contact contact, Id accountId) {
	        // Perform isAccessible() and isUpdateable() checks here
	        contact.AccountId = accountId;
	        upsert contact;
	        return contact;
	    }

}