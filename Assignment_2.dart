enum FuelType {PETROL, DIESEL}

abstract class service{
    checkEngineCondition();
}
abstract class Engine implements service {
    FuelType fuelType=FuelType.PETROL;
    int horsepower=0;
    double efficiency=0.00;
    // bool isRunning;

    Engine(FuelType fuelType, int horsepower, double efficiency) {
        this.fuelType=fuelType;
        this.horsepower=horsepower;
        this.efficiency=efficiency;

    }

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


class carEngine extends Engine {
    int numberOfCylenders=0;
    int cc=0;
    String model="Base Model";

    carEngine(FuelType fuelType, int horsepower,
              double efficiency, int numberOfCylenders, int cc, String model):super(fuelType, horsepower, efficiency) {
        this.numberOfCylenders=numberOfCylenders;
        this.cc=cc;
        this.model=model;
    }
    
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
class truckEngine extends Engine{
    double cargoCapicity=0.00;
      truckEngine(FuelType fuelType, int horsepower,
              double efficiency, double cargoCapicity):super(fuelType, horsepower, efficiency) {
        this.cargoCapicity=cargoCapicity;
    }
    
    @override
    void displayDetails() {
       print("Cargo capicity of engine $cargoCapicity");
       super.displayDetails();

        


    }
}
class superCarEngine extends carEngine {
  bool hasTurbo = true;
  List<String> specialFeatures = [];
  int topSpeed = 0;
  

  superCarEngine(
        FuelType fuelType,
        int horsepower,
        double efficiency,
        int numberOfCylenders,
        int cc,
          String model,
          bool hasTurbo,
          List<String> specialFeatures,
          int topSpeed):super(fuelType, horsepower, efficiency, numberOfCylenders, cc, model){
              this.hasTurbo=hasTurbo;
              this.specialFeatures=specialFeatures;
              this.topSpeed=topSpeed;
          }

  void displayDetails() {
    print(
        "Model - SuperCar Engine \n Fuel Type : ${fuelType}, Horse Power : ${horsepower}, Efficiency : ${efficiency}, number of cylinders : ${numberOfCylenders}, cc : ${cc} and model : ${model}, Turbo : ${hasTurbo}, Special Features : ${specialFeatures}, top speed : ${topSpeed}");
  }
}

class CarFactory {
     carEngine createXUV300(FuelType fuelType) {
        return carEngine(fuelType, 120, 0.75, 3, 1497, 'XUV300');
    }

     carEngine createXUV500(FuelType fuelType) {
        return carEngine(fuelType, 170, 0.80, 4, 2179, 'XUV500');
    }

     carEngine createXUV700(FuelType fuelType) {
        return carEngine(fuelType, 200, 0.85, 6, 1997, 'XUV700');
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
    var xuv300Petrol = carFactory1.createXUV300(FuelType.PETROL);
    xuv300Petrol.startEngine();
    xuv300Petrol.displayDetails();
    xuv300Petrol.stopEngine();
    
    var carFactory2=CarFactory();
    var xuv500Petrol = carFactory2.createXUV500(FuelType.PETROL);
    xuv500Petrol.startEngine();
    xuv500Petrol.displayDetails();
    xuv500Petrol.stopEngine();
    
    var carFactory3=CarFactory();
    var xuv700Petrol = carFactory3.createXUV700(FuelType.PETROL);
    xuv700Petrol.startEngine();
    xuv700Petrol.displayDetails();
    xuv700Petrol.stopEngine();
    

    xuv700Petrol.checkEngineCondition();
    
    
    truckEngine truck = new truckEngine(FuelType.DIESEL, 5000, 90, 1000);
    truck.displayDetails();
  
    truck.checkEngineCondition();

    superCarEngine superCar = new superCarEngine(FuelType.PETROL, 900, 95,
    12, 2000, "Super Car", true, ["Acceleration", "Airbags"], 300);
    superCar.displayDetails();


}