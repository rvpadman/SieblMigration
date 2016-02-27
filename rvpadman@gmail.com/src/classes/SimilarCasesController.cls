public class SimilarCasesController {
public Case getCurrentCase() {
    String cid = ApexPages.currentPage().getParameters().get('cid');
    List<Case> cases = [SELECT Id, CaseNumber, Reason, Product__c, Expertise__c FROM Case WHERE Id = :cid];
    if (cases.size() > 0) 
      {
      return cases.get(0);
      }
      else
      {
      return null;
      }
  //  return cases.size() > 0 ? cases.get(0) : new Case();
    }
public Case[] getSimilarCases() {
Case currentCase = getCurrentCase();
return [SELECT Id, CaseNumber, Owner.Name, Subject, Status FROM Case WHERE 
Product__c = :currentCase.Product__c AND
Expertise__c = :currentCase.Expertise__c AND
Reason = :currentCase.Reason AND
Id != :currentCase.Id];
    }
}