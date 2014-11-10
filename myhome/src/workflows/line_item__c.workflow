<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>available_inventory</fullName>
        <field>Total_inventory__c</field>
        <formula>IF(ISNEW(), merchandise__r.Total_inventory__c -  total_units__c ,(merchandise__r.Total_inventory__c -  (total_units__c -  PRIORVALUE(total_units__c))))</formula>
        <name>available inventory</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>merchandise__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_count</fullName>
        <field>unitprice__c</field>
        <formula>merchandise__r.price__c</formula>
        <name>update count</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>deduct inventory from merchandise</fullName>
        <actions>
            <name>available_inventory</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>invoice__c.status__c</field>
            <operation>equals</operation>
            <value>open</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>pick the price from merchandise</fullName>
        <actions>
            <name>update_count</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>true</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
