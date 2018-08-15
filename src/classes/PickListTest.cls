@isTest
private class PickListTest {
    @isTest static void myTest() {
        List<String> test = PickListForAccController.getPickListValuesIntoList('Account', 'Type_of_bank_account__c');
        System.assertEquals(2, test.size());
        System.assertEquals('Organization', test.get(0));
        System.assertEquals('Private customer', test.get(1));
    }
}