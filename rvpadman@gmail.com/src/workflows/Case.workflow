<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Approve_Case_for_New_Workers_Comp_code</fullName>
        <description>Approve Case for New Workers Comp code</description>
        <protected>false</protected>
        <recipients>
            <recipient>rvpadman@comcast.net</recipient>
            <type>user</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>unfiled$public/Approval_Template</template>
    </alerts>
    <fieldUpdates>
        <fullName>ApprovalStat</fullName>
        <field>Sub_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>ApprovalStat</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Approval_Workers_Code</fullName>
        <field>Description</field>
        <formula>Description  &amp; &quot; Approved by Risk, Billing and SUI. Pl proceed to update the legacy system&quot;</formula>
        <name>Approval Workers Code</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>BillingApproval</fullName>
        <field>Description</field>
        <formula>Description  &amp; &quot;Billing Department Approval of the new workers Comp code request for the client&quot;</formula>
        <name>BillingApproval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>BillingApprovalIpUpdate</fullName>
        <field>Description</field>
        <formula>Description  &amp; &quot;Billing Dept approves the request and the code has been created in the legacy system(s).&quot;</formula>
        <name>BillingApprovalIpUpdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Billing_Rejection</fullName>
        <field>Sub_Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Billing Rejection</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Billing_StatUpdate</fullName>
        <field>Sub_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Billing StatUpdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CloseCase</fullName>
        <field>Status</field>
        <literalValue>Closed</literalValue>
        <name>CloseCase</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Final_Rejection_of_case</fullName>
        <field>Sub_Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Final Rejection of case</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>OwnerUpdate</fullName>
        <field>OwnerId</field>
        <lookupValue>HR</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>OwnerUpdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Reason_for_Rejecton_RG</fullName>
        <field>Description</field>
        <formula>Description  &amp; &quot;Not a valid Request, provide more detailed explanation in the case with regard to the request for new workers comp code, is this a new client?&quot;</formula>
        <name>Reason for Rejecton RG</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Risk_Group_Approval</fullName>
        <description>Approval by Risk group</description>
        <field>Sub_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Risk Group Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Risk_Group_Reject</fullName>
        <description>Risk Group reject with a reason code for rejection</description>
        <field>Sub_Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Risk Group Reject</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SUI_Approval</fullName>
        <description>Approval by SUI Team. Code Created</description>
        <field>Description</field>
        <formula>Description  &amp; &quot;SUI Team approves the request and relevant code created&quot;</formula>
        <name>SUI Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SUI_Field_Update</fullName>
        <field>Sub_Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>SUI Field Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SUI_Rejection</fullName>
        <description>Rejected . Need additional information to create the code</description>
        <field>Description</field>
        <formula>Description  &amp; &quot;Need additional information with regard to this request&quot;</formula>
        <name>SUI Rejection</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Substatus</fullName>
        <field>Sub_Status__c</field>
        <literalValue>Resolved</literalValue>
        <name>Substatus</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status</fullName>
        <field>Status</field>
        <literalValue>Working</literalValue>
        <name>Update Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_Owners</fullName>
        <field>OwnerId</field>
        <lookupValue>IMPLEMENTATION</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>update Owners</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Assign to Payroll Queue</fullName>
        <actions>
            <name>OwnerUpdate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Product__c</field>
            <operation>equals</operation>
            <value>401k</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Workers_Comp_Rejected</fullName>
        <assignedTo>rvpadman@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <description>Pl review the request,  Request for new Workers comp rejected as it does not contain enough information</description>
        <dueDateOffset>3</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Case.Due_Date__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Workers Comp Rejected</subject>
    </tasks>
</Workflow>
