public class userController {
    public void actualizarOps(){
        SECULADABLE s = new SECULADABLE();
        String sch = '0 19 12 * * ?';
        String jobID = system.schedule('Merge Job', sch, s);
        system.debug('job' + jobID);
    }
}