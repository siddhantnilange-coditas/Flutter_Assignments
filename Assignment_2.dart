enum FuelType {PETROL, DIESEL}

abstract class Service{
    checkEngineCondition();
}
abstract class Engine implements Service {
    FuelType fuelType=FuelType.PETROL;
    int horsepower=0;
    double efficiency=0.00;

   
      Engine(this.fuelType, this.horsepower, this.efficiency);


    void startEngine() {
        print("Engine Started Successfully\n");
    }
    void stopEngine() {
        print("\nEngine Stopped Successfully\n");
    }
    void displayDetails() {
       print("Fuel Type of Engine $fuelType");
        print("Horsepower of Engine $horsepower");
        print("Efficiency of Engine $efficiency");

    }
    void checkEngineCondition() {
        if (fuelType == FuelType.PETROL) {
          print("Good\n");
        } else if (fuelType == FuelType.DIESEL) {
          print("Bad\n");
        }
  }
}


class CarEngine extends Engine {
    int numberOfCylenders=0;
    int cc=0;
    String model="Base Model";

  

     CarEngine(super.fuelType, super.horsepower, super.efficiency,
      this.numberOfCylenders, this.cc, this.model);

    
    // void startEngine() {
    //     print("Engine Started Successfully\n");
    // }
    // void stopEngine() {
    //     print("\nEngine Stopped Successfully\n");
    // }
    void displayDetails() {
        print("Model - $model Car Engine");
        super.displayDetails();

        print("Cylinders: $numberOfCylenders");
        print("CC: $cc");
    }
}
class TruckEngine extends Engine{
    double cargoCapicity=0.00;
  
    TruckEngine(
      super.fuelType, super.horsePower, super.efficiency,
      this.cargoCapicity
    );

    @override
    void displayDetails() {
       print("Cargo capicity of engine $cargoCapicity");
       super.displayDetails();

        


    }
}
class SuperCarEngine extends CarEngine {
  bool hasTurbo = true;
  List<String> specialFeatures = [];
  int topSpeed = 0;
  



    SuperCarEngine(
      super.fuelType,
      super.horsePower,
      super.efficiency,
      super.numberOfCylinders,
      super.cc,
      super.model,
      bool hasTurbo,
      List<String> specialFeatures,
      int topSpeed
      );

  void displayDetails() {
    print(
        "Model - SuperCar Engine \n Fuel Type : ${fuelType}, Horse Power : ${horsepower}, Efficiency : ${efficiency}, number of cylinders : ${numberOfCylenders}, cc : ${cc} and model : ${model}, Turbo : ${hasTurbo}, Special Features : ${specialFeatures}, top speed : ${topSpeed}");
  }
}
extension convertToSuperCarExtension on CarEngine {
  SuperCarEngine convertToSuperCar() {
    SuperCarEngine superCarEngine = new SuperCarEngine(fuelType, 1200, 96, 6, 1400,
        'Porche Cayman', true, ['Acceleration', 'Airbags'], 300);
    return superCarEngine;
  }
}
class CarFactory {
     CarEngine createXUV300({required FuelType fuelType}) {
        return CarEngine(fuelType, 120, 0.75, 3, 1497, 'XUV300');
    }

     CarEngine createXUV500({required FuelType fuelType}) {
        return CarEngine(fuelType, 170, 0.80, 4, 2179, 'XUV500');
    }

     CarEngine createXUV700({required FuelType fuelType}) {
        return CarEngine(fuelType, 200, 0.85, 6, 1997, 'XUV700');
    }
    @override
     checkEngineCondition(){
        print("Engine Condition Checked\n");
    }
}


void main() {

//     var engine=Engine(FuelType.PETROL, 200, 0.85);

//   engine.startEngine();
// //   engine.displayDetails();
//   engine.stopEngine();
//   engine.displayDetails();
    var carFactory1=CarFactory();
    var xuv300Petrol = carFactory1.createXUV300(fuelType:FuelType.PETROL);
    xuv300Petrol.startEngine();
    xuv300Petrol.displayDetails();
    xuv300Petrol.stopEngine();
    
    var carFactory2=CarFactory();
    var xuv500Petrol = carFactory2.createXUV500(fuelType:FuelType.PETROL);
    xuv500Petrol.startEngine();
    xuv500Petrol.displayDetails();
    xuv500Petrol.stopEngine();
    
    var carFactory3=CarFactory();
    var xuv700Petrol = carFactory3.createXUV700(fuelType:FuelType.PETROL);
    xuv700Petrol.startEngine();
    xuv700Petrol.displayDetails();
    xuv700Petrol.stopEngine();
    

    xuv700Petrol.checkEngineCondition();
    
    
    TruckEngine truck = new TruckEngine(FuelType.DIESEL, 5000, 90, 1000);
    truck.displayDetails();
  
    truck.checkEngineCondition();

    SuperCarEngine superCar = new SuperCarEngine(FuelType.PETROL, 900, 95,
    12, 2000, "Super Car", true, ["Acceleration", "Airbags"], 300);
    superCar.displayDetails();

    xuv500Petrol = xuv500Petrol.convertToSuperCar();
    xuv500Petrol.displayDetails();
}
