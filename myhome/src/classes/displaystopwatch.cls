public with sharing class displaystopwatch {

    public integer cycles =0;
    
    public pagereference incremnetcounter()
    {
    cycles++;
    return null;
    }
    
    public integer getcycles()
    {
    return cycles;
    }
}