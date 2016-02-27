public class SimilarKBCasesExtension {

    public Case currentRecord{get; set;}
    
    public SimilarKBCasesExtension (ApexPages.StandardController controller)
     {
        currentRecord = [SELECT Id, Expertise__c,Product__c,Reason FROM Case WHERE Id = :ApexPages.currentPage().getParameters().get('id')];
    }
  
    public Case[] getSimilarCases()
    {
    
     //   Case currentCase = currentRecord();
        return [SELECT CaseNumber, Status,Product__C,Expertise__C,Reason FROM Case WHERE 
            Product__c = :currentRecord.Product__c AND
            Expertise__c = :currentRecord.Expertise__c AND
            Reason = :currentRecord.Reason AND
            Id != :currentRecord.Id];
    }
   
 }