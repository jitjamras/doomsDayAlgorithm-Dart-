Doomsday Algorithm - Find Weekday of a Given Date
This Dart program calculates the weekday for any given date using the Doomsday Algorithm.

How to Run the Program
Ensure you have Dart SDK installed on your system.
Clone the repository or download the Dart file.
Navigate to the folder containing the main.dart file.
Run the program using the following command:
bash
คัดลอก
แก้ไข
dart main.dart
Example Usage
Here is an example of how the program works:

plaintext
คัดลอก
แก้ไข
Select Day => 1 - 31  
Enter Day : 
  21  
Select Month => [Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec]  
Enter Month : 
  Jan  
Select Year => Start 1900  
Enter Year : 
  2025  

Input Date is 21 , Jan , 2025  
Output => The weekday of the input date : Tuesday  
Algorithm Overview
The program leverages the Doomsday Algorithm, a method developed by John Horton Conway, to determine the weekday for any given date. It is highly efficient and involves the following steps:

Calculate the "anchor day" for the given century.
Determine the "doomsday" for the year.
Compare the input date with the doomsday to find the weekday.
Contributing
Feel free to submit issues or make pull requests to enhance the program. Contributions are always welcome!

License
This project is licensed under the MIT License.
