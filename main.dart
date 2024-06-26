import "dart:io";
import 'dart:math';

double numInput () {
  print("Please enter the number of operation: ");
  double value = double.parse(stdin.readLineSync()!);
  return value;
}

String operandChoice () {
  print("Please enter the operand: ");
  String value = stdin.readLineSync()!;
  return value;
}

void main () {
  double num1 = numInput();
  double num2 = numInput();
  String operand = operandChoice();
  double result = 0;

  if (operand == "+") {
    result = num1 + num2;
  }
  else if (operand == "-") {
    result = num1 - num2;
  }

  else if (operand == "*") {
    result = num1 * num2;
  }

  else if (operand == "/") {
    result = num1 / num2;
  }
  else if (operand == "%") {
    result = num1 % num2;
  }
  else {
    print("Invalid operand");
  }

  print("${num1} ${operand} ${num2} = Your result is ${result}");
}
