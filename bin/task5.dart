void main() {
  String name = "Bob";
  print(youAreWonderful(name));

  int num = 11;
  print('$num is ${isPrime(num)}');

  double length = 5.0;
  double width = 3.0;

  double area = calculateArea(length, width);
  print("The area of the rectangle with length $length and width $width is $area square units.");

  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> evenNumbers = findEvenNumbers(numbers);
  print("Even Numbers: $evenNumbers");

  print(greetUser("shahd"));
  print(greetUser("shahd", 20));

  print(isPalindrome("level"));
  print(isPalindrome("Hello"));
}

//task1
String youAreWonderful(String name) {
  return "You're wonderful, $name.";
}


//task2
bool isPrime(int number) {
  if (number <= 1) return false;
  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

//task3
double calculateArea(double length, double width) {
  return length * width;
}

//task4
List<int> findEvenNumbers(List<int> numbers) {
  List<int> evenNumbers = [];

  for (int number in numbers) {
    if (number % 2 == 0) {
      evenNumbers.add(number);
    }
  }

  return evenNumbers;
}

//task5
String greetUser(String name, [int? age]) {
  if (age != null) {
    return "Hello $name, you are $age years old.";
  } else {
    return "Hello $name!";
  }
}

//task6
bool isPalindrome(String str) {
  String lowercaseStr = str.toLowerCase();
  return lowercaseStr == lowercaseStr.split('').reversed.join('');
}
