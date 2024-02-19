// Variables and Data Types:

import 'dart:math';


void main() {
  // Create variables of different data types (int, double, String, bool).
  int a = 50;
  int b = 50;
  double d = 10;
  String c = 'Raagull';
  bool isOpen = false;
  print('$a   $d   $c   $isOpen');
  print('${add(a,b)}   ${sub(a,b)}    ${mul(a,b)}     ${div(a,b)}');
  print(isEvenOrOdd(5));
  print(largerstOfThree(5,10,15));
  print(isLeapYear(2024));
  print(isPrime(3));
  fibSeries(10);
  print(fact(5));
  multTable(10);
  print(reverseString('byebye'));
}
// Perform basic arithmetic operations (+, -, *, /) on numeric variables.
int add(a,b){
  return a+b;
}
int sub(a,b){
  return a-b;
}
double div(a,b){
  return a/b;
}
int mul(a,b){
  return a*b;
}



// Conditional Statements:

// Write a program to check if a number is even or odd.
String isEvenOrOdd(n) => n%2==0?'Even':'Odd';

// Write a program to determine the largest of three numbers.
int largerstOfThree(a,b,c) => (a>b)?(a>c)?a:c:(b>c)?b:c;

// Write a program to check if a given year is a leap year.
bool isLeapYear(n) => (n%100==0)?n%400==0:n%4==0;




// Loops:
// Write a program to print the Fibonacci series up to a specified number of terms.
void fibSeries(n){
  int f1=0,f2=1,f3=0;
  print(f1);
  print(f2);
  for(int i=0;i<n-1;i++){
    f3=f1+f2;
    print(f3);
    f1=f2;
    f2=f3;
  }
}

// Write a program to find the factorial of a given number using a loop.
int fact(int n) {
  int t=1;
  while(n!=0){
    t=t*n;
    n--;
  }
  return t;
}
// Write a program to print a multiplication table for a given number.
void multTable(n){
  for(int i=1;i<=n;i++) {
    print('$n * $i = ${n*i}');
  }
}



// Functions:
// Write a function to calculate the area of a circle given its radius.
double areaOfCircle(r) => 3.14*r*r;

// Write a function to check if a number is prime or not.
bool isPrime(n) {
  for(int i=2;i<=sqrt(n);i++)
    if(n%i==0)
      return false; 
  return true;
}

// Write a function to reverse a string
 String reverseString(String str)=>str.split('').reversed.join();
