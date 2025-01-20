import 'const.dart';
import 'input.dart';

String doomsDayAlgorithm() {
  int day = int.parse(inputDay!);
  int month = Month.indexWhere((item) => item == inputMonth) + 1;
  int year = int.parse(inputYear!);

  // print('$day - $month - $year');

  //Find the century's anchor day
  int century = year ~/ 100;
  List<int> anchorDays = [2, 0, 5, 3]; // Tuesday ,Sunday , Friday ,Wednesday
  int anchorDay = anchorDays[century % 4];

  // print('AnchorDay : $anchorDay');

  //Calculate the year's Doomsday
  int yearWithinCentury = year % 100;
  int doomsDay = (yearWithinCentury + (yearWithinCentury ~/ 4)) % 7;

  //Add the anchor day to get the year's starting Doomsday
  doomsDay = (doomsDay + anchorDay) % 7;

  //Adjust for leap year if Januray (Jan) or February
  bool isLeapYear = (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
  if (isLeapYear) {
    monthDoomsDay[1] = 4; //Leap year January
    monthDoomsDay[2] = 29; //Leap year February
  }

  //Difference from the month's Doomsday
  int dayDifference = (day - monthDoomsDay[month]!) % 7;

  //Calculate the final weekday
  int weekday = (doomsDay + dayDifference) % 7;
  if (weekday < 0) {
    weekday += 7;
  }

  return mapDayofWeek(weekday);
}
