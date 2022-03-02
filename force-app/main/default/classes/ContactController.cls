public with sharing class ContactController {
    @AuraEnabled(cacheable=true)
    public static List<Contacts> getContacts() {
        return [
            SELECT FirstName, LastName, Email
            FROM Contacts
            WITH SECURITY_ENFORCED
        ];
    }
}