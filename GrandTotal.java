/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.beans.*;
import java.io.Serializable;

/**
 *
 * @author Ioannis
 */
public class GrandTotal implements Serializable {
    
   
    public static final String PROP_SAMPLE_PROPERTY = "Price1";
    public static final String PROP_SAMPLE_PROPERTY2 = "Price2";
    public static final String PROP_SAMPLE_PROPERTY3 = "Price3";
    private Double Price1=0.0;
    private Double Price2=0.0;
    private Double Price3=0.0;
    private Double Grand=0.0;
    private PropertyChangeSupport propertySupport;
    
    public GrandTotal() {
        propertySupport = new PropertyChangeSupport(this);
    }
    
    public Double getGrand() {
        Grand= (getPrice1()+ getPrice2()+ getPrice3());
        return Grand ;
    }
    
    public Double getPrice1() {
        return Price1 ;
    }
    
    public Double getPrice2() {
        return Price2 ;
    }
    
    public Double getPrice3() {
        return Price3 ;
    }
    
    public void setPrice1(Double value) {
        Double oldValue = Price1;
        Price1 = value;
        propertySupport.firePropertyChange(PROP_SAMPLE_PROPERTY, oldValue, Price1);
    }
    
    
    public void setPrice2(Double value) {
        Double oldValue2 = Price2;
        Price2 = value;
        propertySupport.firePropertyChange(PROP_SAMPLE_PROPERTY2, oldValue2, Price2);
    }
    
    
    public void setPrice3(Double value) {
        Double oldValue3 = Price3;
        Price3 = value;
        propertySupport.firePropertyChange(PROP_SAMPLE_PROPERTY3, oldValue3, Price3);
    }
    
    
    
    
    /*
    public void addPropertyChangeListener(PropertyChangeListener listener) {
        propertySupport.addPropertyChangeListener(listener);
    }
    
    public void removePropertyChangeListener(PropertyChangeListener listener) {
        propertySupport.removePropertyChangeListener(listener);
    }
     */
}
