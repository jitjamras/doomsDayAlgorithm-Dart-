import 'dart:io';

import 'const.dart';

String? inputDay = stdin.readLineSync();
String? inputMonth = stdin.readLineSync();
String? inputYear = stdin.readLineSync();

Future<String> inputDate() async {
  try {
    print('Example Input : 1 Jan 1900');
    print('Select Day => 1 - 31');
    print('Enter Day : ');
    inputDay;
    _checkInputDay();
    print('Select Month => $Month');
    print('Enter Month : ');
    inputMonth;
    _checkInputMonth();
    print('Select Year => Start 1900 (Christian year)');
    print('Enter Year : ');
    inputYear;
    _checkInputYear();
    return 'Input Date is $inputDay , $inputMonth , $inputYear';
  } catch (e) {
    print('Error is : $e');
    exit(0);
  }
}

void _checkInputDay() {
  if (inputDay == null) {
    throw 'Input Day is Empty or Null ';
  } else {
    int? isInt = int.tryParse(inputDay!);
    if (isInt == null) {
      throw 'Input Day is not Int ';
    }
    if (isInt < 1 || isInt > 31) {
      throw 'Input Day < 1 or > 31';
    }
  }
}

void _checkInputMonth() {
  if (!Month.contains(inputMonth)) {
    throw 'Input Month is Wrong Format';
  }
}

void _checkInputYear() {
  if (inputYear == null) {
    throw 'Input Year is Empty or Null ';
  } else {
    int? isInt = int.tryParse(inputYear!);
    if (isInt == null) {
      throw 'Input Year is not Int ';
    }
    if (isInt < 1900) {
      throw 'Input Year < 1900';
    }
  }
}
