trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
	
    List<Opportunity> oList = new List<Opportunity>();
    
    for(Opportunity o : Trigger.new){
        if(o.StageName == 'Closed Won'){
            oList.add(o);
        }
    }
    
    List<Task> tList = new List<Task>();
    
    for(Opportunity opp : oList){
        Task t = new Task();
        t.Subject = 'Follow Up Test Task';
        t.WhatId = opp.id;
        tList.add(t);
    }
    
    insert tList;
}