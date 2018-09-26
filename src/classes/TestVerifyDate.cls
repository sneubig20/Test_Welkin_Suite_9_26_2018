@isTest
private class TestVerifyDate {
	
    @isTest static void checkDatesWithin30(){
        Date todayDate = Date.Today();
        Date todayDatePlus20 = todayDate.addDays(20);
        Date dateWithin20 = VerifyDate.CheckDates(todayDate, todayDatePlus20);
        System.assertEquals(todayDatePlus20, dateWithin20);
    }
    
    @isTest static void checkDatesNotWithin30(){
        Date todayDate = Date.Today();
        Date todayDatePlus40 = todayDate.addDays(40);
        Date dateGreaterThan30 = VerifyDate.CheckDates(todayDate, todayDatePlus40);
        Integer endOfMonth = Date.daysInMonth(todayDate.year(), todayDate.month());
        Date lastDayofMonth = Date.newInstance(todayDate.year(), todayDate.month(), endOfMonth);
        
        System.assertEquals(todayDatePlus40, lastDayofMonth);
        
    }
    
}