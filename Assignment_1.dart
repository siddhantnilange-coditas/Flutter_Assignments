import 'dart:io';


class Person{
    
    Person(String inputName){
        print("Name of the person $inputName");
    }

}
void main() {
    // 1. Declare a variable named 'message' and assign the value "Hello, Dart!" to it.
    String message = "Hello, Dart";


    // 2. Write a Dart program that checks if a given number is even or odd. Input: 2
    // Output: 2 is even
    int number = 2;
    if (number%2==0) {
        print("$number is even");
    } else {
        print("$number is odd");
    }

    // 3. Create a list of fruits and print each fruit using a loop. Input: ['Apple', 'Banana', 'Orange', 'Grapes']
    // Output: Apple, Banana, Orange, Grapes
    List<String> fruitsList=["Apple, Banana, Orange, Grapes"];
    print(fruitsList.join());

    //4. Define a function named 'multiply' that takes two parameters and returns their product. Input: 5, 2
    // Output: The product is 10.
    int result=multiply(5, 2);
    print("Product is $result");
    
    // 5. Create a class named 'Person' with a constructor and a method to display the person's name.
    // Input: Person person = Person(‘Agent Jack’) person.display()
    // Output: My name is Agent Jack
    Person person=Person("Agent Jack");

    // 6. Define a Dart program that uses a map to store the age of different people and prints the ages.
    // Input: Map<String, int> ages = { 'Alice': 25,
    // 'Bob': 30,
    // 'Charlie': 22, };
    // Output: Alice is 25 years old 
    Map<String, int> ages = {
        'Alice': 25,
        'Bob': 30,
        'Charlie': 22
    };
    printAges(ages);

    // 7. Write a Dart function that divides two numbers and handles the case when the denominator is zero. (USING Try Catch)
    // Input: 5, 2 | Input: 5, 0
    // Output: 2.5 | Output: Cannot divide by zero.

    print(divideNumbers(5, 2)); 
    print(divideNumbers(5, 0)); 

    // 8. Write a Dart program that removes duplicates from a list and prints the unique elements. Input: [1, 2, 3, 2, 4, 5, 1, 6]
    // Output: [1, 2, 3, 4, 5, 6]
    List<int> inputList = [1, 2, 3, 2, 4, 5, 1, 6];
    List<int> uniqueList; 
    uniqueList= removeDuplicates(inputList);
    print(uniqueList);

    // 9. Write a Dart program that checks whether a given number is positive, negative, or zero. Input: 7
    // Output: Positive
    int numberToCheck = 7;
    int resultOutput = checkNumber(numberToCheck);
    if(resultOutput==1){
        print("Positive");
    }
    else if(resultOutput==-1){
        print("Negative");
    }
    else{
        print("Zero");
    }

    //10. Create a Dart program that uses a switch statement to determine the day of the week based on a given number (1-7). (USING Switch Case)
    // Input: 3 | Input: 23
    // Output: Wednesday | Output: Invalid Day number
    int day = 3;
    checkDay(day);


    // 11. Write a Dart program that uses a switch statement to determine the season based on a given month. (January/February/March - Winter), (April/May/June - Sprint), (July,August,September - Summer), (October/November/December - Fall)
    // Input: Jan
    // Output: Winter
    String inputMonth = 'Jan';
    String season = getSeasonOfMonth(inputMonth);
    print(season);

    // 12. Write a Dart program that skips printing even numbers from a list of integers using 'continue'.
    // Input: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] Output: 1,3,5,7,9
    List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    for(int counter=0; counter<10; counter++){
        if(numbers[counter]%2==0){
            continue;
        }
        print(numbers[counter]);
    }
    // 13. Create a Dart program that finds the first occurrence of a negative number in a list using 'break'.
    // Input: [5, 8, -3, 10, -7, 2] Output: 5, 8
    List<int> numbersList = [5, 8, -3, 10, -7, 2];
    findFirstNegative(numbersList);

  

    // 14. Write a Dart program with a function that calculates the volume of a box.
    // a. The function should take three parameters: length, width, and height.
    // b. Make height an optional parameter with a default value of 1.0.
    // Input: length: 10, width: 10, height, 3 | Input: length: 10, width: 10 Output: 300 | Output: 100

    double volumeOne = calculateVolumeOfBox(10, 10, height: 3);
    print('Volume: $volumeOne'); 

    double volumeTwo = calculateVolumeOfBox(10, 10);
    print('Volume: $volumeTwo'); 

    // 15. Write a Dart program that uses an “where” to filter a list of even numbers. Input: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    // Output: 2,4,6,8,10
    List<int> numbersListOne = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    List<int> evenNumbers = numbersListOne.where((number) => number % 2 == 0).toList();
    print(evenNumbers.join(', '));


    // 16. Combine two lists using spread operator Input: [1,2,3,4], [-1,-2,-3,-4]
    // Output: [-1,-2,-3,-4, 1,2,3,4]
    List<int> numberList1 = [1, 2, 3, 4];
    List<int> numberList2 = [-1, -2, -3, -4];
    List<int> combinedList = [...numberList2, ...numberList1];
    print(combinedList);


}


int  multiply(int number1, int number2)
{
    return number1*number2;

}

double divideNumbers(int numerator, int denominator) {
  try {
    if (denominator == 0) {
      throw Exception('Cannot divide by zero.');
    }
    return numerator / denominator;
  } catch (e) {
    print(e);
    return -1; 
  }
}


List<int> removeDuplicates(List<int> inputList) {
  List<int> uniqueList = [];
  for (int i = 0; i < inputList.length; i++) {
    if (!uniqueList.contains(inputList[i])) {
      uniqueList.add(inputList[i]);
    }
  }
  return uniqueList;
}


int checkNumber(int number) {
  if (number > 0) {
    return 1;
  } else if (number < 0) {
    return -1;
  } else {
    return 0;
  }
}

void checkDay(int day) {
  switch (day) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday.');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
    case 6:
      print('Saturday');
      break;
    case 7:
      print('Sunday');
      break;

    default:
      print('Invalid Day number');
  }
}

String getSeasonOfMonth(String month) {
  switch (month.toLowerCase()) {
    case 'jan':
    case 'feb':
    case 'mar':
      return 'Winter';
    case 'apr':
    case 'may':
    case 'jun':
      return 'Spring';
    case 'jul':
    case 'aug':
    case 'sep':
      return 'Summer';
    case 'oct':
    case 'nov':
    case 'dec':
      return 'Fall';
    default:
      return 'Invalid Month Input';
  }
}

double calculateVolumeOfBox(double length, double width, {double height = 1.0}) {
  return length * width * height;
}

void printAges(Map<String, int> ages) {
  ages.forEach((name, age) {
    print('$name is $age years old');
  });
}

  void findFirstNegative(List<int> numbersList) {
        for (int number in numbersList) {
            if (number < 0) {
            print(number);
            break; 
            }
            print(number);
        }
    }
