@isTest
private class testChatterCaseOnAccount {
	
	
    static testMethod void testChatterCase() {
    	
        List<Case> myCases = new List<Case>();
        Chatter_Up__c setting = createChatterUpConfig();
        insert setting;
 
        /* Create 1 test account */
        Account a = new Account(name = 'testAccount');
        insert a;
        
        /* Query for any BusinessHours record to associate with case, as you cannot perform any DML operations on this object in apex, and this is necessary for cases of specific record types */
        List<BusinessHours> bh = [select Id from BusinessHours limit 1];
        String BusinessHoursId;
        if(bh.size() > 0){
            BusinessHoursId = bh[0].Id;
        }
        /* used to test that the Case Priority constraint is working correctly */
        Integer numberOfHighOrMediumCases = 0;
        
        /* Create 100 test cases */
        
        for(Integer i = 2; i < 102; i++){
            Case c = new Case(priority = 'High', origin = 'Web', Status = 'New');
            c.BusinessHoursId = BusinessHoursId;
            
            /* this will associate every other case to my testAccount */
            if(math.mod(i, 2) == 0){
                c.AccountId = a.id;
            }
            
            myCases.add(c);
        } 
        
        test.startTest();
        insert myCases;
        test.stopTest();
        
        /*there should be 50 posts as you iterated 100 times, and half were associated with an Account and a high priority*/
        List<AccountFeed> chatterPosts = [select id from AccountFeed where parentId = :a.id];
        System.assertEquals(chatterPosts.size(), 50);

    }
    
    static private Chatter_Up__c createChatterUpConfig() {
    	
    	Chatter_Up__c setting = new Chatter_Up__c();
    	
    	setting.name = 'Case Settings';
    	setting.object_api_name__c = 'Case';
    	setting.parent_id_field__c = 'accountid';
    	setting.picklist_that_constrains_chatter_up__c = 'Priority';
    	setting.picklist_values__c = 'High;Medium';
    	setting.chatter_post_body__c = 'This is a test';
    	setting.chatter_link_title__c = 'This is test title';
    	
    	return setting;
    }    	

}