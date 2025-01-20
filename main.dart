import 'doomsDayAlgorithm.dart';
import 'input.dart';

void main() async {
  //* Output
  //* - The weekday of the input date i.e. Monday
  print(await inputDate());
  print('The weekday of the input date : ${doomsDayAlgorithm()}');
}
