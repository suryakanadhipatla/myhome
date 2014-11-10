global with sharing class pageviews {
global integer count=0;

    public PageReference actioncomponent() {
    
    count++;
        return null;
    }

public string actioncomponent{set;get;}
    public pageviews(ApexPages.StandardController controller) {

    }
public Integer getCount() {
        return count;
    }
}