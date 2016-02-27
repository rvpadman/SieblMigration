@isTest
private class testChatterOpptyOnAccount {
    static testMethod void testChatterOppty() {
        List<Opportunity> myOpportunities = new List<Opportunity>();
        Chatter_Up__c settings = createChatterUpConfig();
        insert settings;
        
        /* Create 1 test account */
        Account a = new Account(name = 'testAccount');
        insert a;
        
        /* Create 100 test opportunities */
        for(Integer i=0; i < 100; i++){
            Opportunity o = new Opportunity(Name = 'TestOpp_'+i);
            o.AccountId = a.id;
            o.CloseDate = date.Today()+i;
            o.StageName = 'Negotiation/Review';
            myOpportunities.add(o);
        }
        
        test.startTest();
        insert myOpportunities;
        test.stopTest();
        
        /*there should be 100 posts as you iterated 100 times*/
        List<AccountFeed> chatterPosts = [select id from AccountFeed where parentId = :a.id];
        System.assertEquals(chatterPosts.size(), 100);

    }
    
    static private Chatter_Up__c createChatterUpConfig() {
    	
    	Chatter_Up__c setting = new Chatter_Up__c();
    	
    	setting.name = 'Opportunity Settings';
    	setting.object_api_name__c = 'Opportunity';
    	setting.parent_id_field__c = 'accountid';
    	setting.chatter_post_body__c = 'This is a test';
    	setting.chatter_link_title__c = 'This is test title';
    	
    	return setting;
    }     
}