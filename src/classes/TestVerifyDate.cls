@isTest
private class TestVerifyDate {
    @isTest static void testDateLess() {
        Date dateOne = date.newInstance(2018, 01, 03);
        Date dateTwo = date.newInstance(2018, 01, 29);
        
        Date pri = VerifyDate.CheckDates(dateOne, dateTwo);
        System.assertEquals(date.newInstance(2018, 01, 29), pri);
    }
    @isTest static void testDateIn() {
        Date dateOne = date.newInstance(2018, 01, 31);
        Date dateTwo = date.newInstance(2018, 01, 01);
        
        Date pri = VerifyDate.CheckDates(dateOne, dateTwo);
        System.assertEquals(date.newInstance(2018, 01, 31), pri);
    }
    @isTest static void testDateMore() {
        Date dateOne = date.newInstance(2018, 01, 01);
        Date dateTwo = date.newInstance(2018, 01, 31);
        
        Date pri = VerifyDate.CheckDates(dateOne, dateTwo);
        System.assertEquals(date.newInstance(2018, 01, 31), pri);
    }
}