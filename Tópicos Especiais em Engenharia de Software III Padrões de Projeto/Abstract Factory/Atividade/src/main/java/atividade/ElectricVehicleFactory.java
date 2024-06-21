package atividade;

/**
 *
 * @author mariana
 */
public class ElectricVehicleFactory extends VehicleFactory{
   @Override
   public Vehicle produceCar(){
       return new Car();
   }
    
   @Override
    public Vehicle produceMotorcycle(){
        return new Motorcycle();
    }
    
   @Override
    public Vehicle produceTruck(){
        return new Truck();
    }
}
