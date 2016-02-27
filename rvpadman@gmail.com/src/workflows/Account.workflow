<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <rules>
        <fullName>Next Site Visit for Account</fullName>
        <actions>
            <name>Create_an_Site_Visit_Case_and_Activity</name>
            <type>Task</type>
        </actions>
        <actions>
            <name>Test</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.Next_On_site_Visit_Date__c</field>
            <operation>equals</operation>
            <value>7/15/2015</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Create_an_Site_Visit_Case_and_Activity</fullName>
        <assignedTo>rvpadman@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>7</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>User.CreatedDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Create an Site Visit Case and Activity</subject>
    </tasks>
    <tasks>
        <fullName>Test</fullName>
        <assignedTo>rvpadman@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>7</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>User.CreatedDate</offsetFromField>
        <priority>Low</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>Test</subject>
    </tasks>
</Workflow>
