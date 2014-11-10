public class actionstatus {
public boolean datalistvalue {set;get;}


    public actionstatus(ApexPages.StandardController controller) {
    
datalistvalue=False;
    }

    Integer count = 0;
                        
    public PageReference incrementCounter() {
            count++;
            datalistvalue=True;
            return null;
    }
                    
    public Integer getCount() {
        return count;
    }
}