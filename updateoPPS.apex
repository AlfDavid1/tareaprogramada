public class updateoPPS {
    
    public updateoPPS(){
        system.debug('hello world');
        list<Opportunity> allOps = [Select Id, Description, CloseDate FROM Opportunity];
        list<Opportunity> actualizaOps = new list<Opportunity>();
        for(Opportunity opp :allOps){
            if(opp.CloseDate.addMonths(2)<=date.today()){
                Opp.Description ='ACTUALIZADO POR BATCH';
            }
            
           actualizaOps.add(opp);
        }
        
        update actualizaOps;
    }
}