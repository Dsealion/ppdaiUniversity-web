package com.ppdai.university.exception;

public class BussinessException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4487317597732975508L;

	
	public BussinessException() {
    	super();
    }
    
    public BussinessException(String message) {
    	super(message);
    }
    
    public BussinessException(Throwable cause) {
    	super(cause);
    }
    
    public BussinessException(String message, Throwable cause) {
    	super(message, cause);
    }
}
