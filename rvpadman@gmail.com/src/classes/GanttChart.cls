public class GanttChart {
    public static final String[] STATUSES = new List<String>{'In Progress','Planned', ''};
    public static final String[] EXCLUDED_STAGES = new List<String>{'Closed - No Decision', 'Lost - Competitor', 'Dead - No further action', 'Cancelled'};
    public static final Set<String> SIGNED_STAGES = new Set<String>{'Work in Progress', 'SOW Signed', 'Order Signed'};
    public static String[] ALL_TYPES {
        get {
            List<String> opts = new List<String>();
            
                        for (Schema.PicklistEntry ent : Schema.SObjectType.Milestone1_Project__c.fields.Status__c.getPicklistValues()) {
                        opts.add(ent.getValue());
            }
            return opts;
        }
    }
}