trigger ClosedLoop on Case (before update) {

    // Find all cases that are being closed...
    Set<Id> newlyClosedCaseIds = new Set<Id>();
    for (Id caseId : Trigger.newMap.keySet()) {
        if (Trigger.newMap.get(caseId).IsClosed && 
            !Trigger.oldMap.get(caseId).IsClosed) {
            newlyClosedCaseIds.add(caseId);
        }
    }

    // For every newly closed Case that has at least one 
    // not closed task add an error to the Trigger.newMap entry.
    // Adding the error to the Trigger.new entry will prevent the save
    // and add the error message to the page messages that get displayed on
    // the page.
    for (AggregateResult aggResult : [
            Select Count(Id), WhatId
            From Task
            Where WhatId In :newlyClosedCaseIds
                  And IsClosed = false
            Group by WhatId
            Having Count(Id) > 0
    ]) {
        Id caseId = (Id) aggResult.get('WhatId');
        Case errorCase = Trigger.newMap.get(caseId);

        // change error message as appropriate...
        errorCase.addError('Cannot close case since there are non closed tasks: ' +
                           errorCase.SuppliedName); 
    }
}