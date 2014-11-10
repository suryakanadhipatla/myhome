<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>H1BExtensionL1Headapproved</fullName>
        <description>H1BExtensionL1Headapproved</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/MarketingProductInquiryResponse</template>
    </alerts>
    <alerts>
        <fullName>lead_convert</fullName>
        <description>lead convert</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/MarketingProductInquiryResponse</template>
    </alerts>
    <alerts>
        <fullName>leadconversionmail</fullName>
        <ccEmails>suryakanadhipatla@gmail.com</ccEmails>
        <description>leadconversionmail</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>aadyanth@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>abhinav1@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>chaitu_srinadhuni@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>suryakanadhipatla@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/leadconversionemail</template>
    </alerts>
    <fieldUpdates>
        <fullName>Approval_status_to_Recalled</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Recalled</literalValue>
        <name>Approval status to Recalled</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Approval_status_to_Rejected</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Approval status to Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>approval_status_to_approved</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>approval status to approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>approval_status_to_pending</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Approval Pending</literalValue>
        <name>approval status to pending</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>final_approval_status_to_approved</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>final approval status to approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>final_rejection_status_to_rejected</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>final rejection status to rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>hardwarerecord</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Hardware_type</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>hardwarerecord</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Convert lead</fullName>
        <actions>
            <name>leadconversionmail</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Lead_Score__c</field>
            <operation>greaterThan</operation>
            <value>40.0</value>
        </criteriaItems>
        <description>conevrt the lead when lead scor is between 35-40</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>selectharwarerecordtype</fullName>
        <actions>
            <name>hardwarerecord</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Rating</field>
            <operation>equals</operation>
            <value>Hot</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>convert_lead_task</fullName>
        <assignedTo>suryakanadhipatla@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>2</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>convert lead task</subject>
    </tasks>
</Workflow>
