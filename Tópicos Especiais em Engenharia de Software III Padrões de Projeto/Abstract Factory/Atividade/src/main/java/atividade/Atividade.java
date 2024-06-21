package atividade;

/**
 *
 * @author mariana
 */
public class Atividade {

    public static void main(String[] args) {
        VehicleFactory electricFactory = new ElectricVehicleFactory();
        VehicleFactory fuelFactory = new FuelVehicleFactory();
        
        Vehicle car1 = electricFactory.produceCar();
        Vehicle motorcycle1 = electricFactory.produceMotorcycle();
        Vehicle truck1 = electricFactory.produceTruck();

        Vehicle car2 = fuelFactory.produceCar();
        Vehicle motorcycle2 = fuelFactory.produceMotorcycle();
        Vehicle truck2 = fuelFactory.produceTruck();

        car1.manufacture();
        motorcycle1.manufacture();
        truck1.manufacture();

        car2.manufacture();
        motorcycle2.manufacture();
        truck2.manufacture();
    }
}
