package com.team3.bankApp.models;

public class CertificateOfDeposit extends Account {
	private int length;
	
	public CertificateOfDeposit(double balance, double rate, int periods){
        setBalance(balance);
        setRate(rate);
        setPeriods(periods);
    }
    
    /**
     * 
     * @param length length to set 
     */
    public void setLength(int length){
        this.length = length;
    }
    
    /**
     * 
     * @return the length
     */
    public int getLength(){
        return length;
    }
	
}
