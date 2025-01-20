# 🗓️ Doomsday Algorithm - Find Weekday of a Given Date

A Dart program to calculate the weekday for any given date using the **Doomsday Algorithm**, developed by John Horton Conway.

---

## 🚀 Getting Started

### Prerequisites
- Install [Dart SDK](https://dart.dev/get-dart) on your system.

### How to Run
1. Clone the repository or download the `main.dart` file.
2. Open a terminal and navigate to the folder containing `main.dart`.
3. Run the program using:
   ```bash
   dart main.dart

####💡 Example Usage
When you run the program, you'll be prompted to input the day, month, and year. Here's an example:

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

##### 🧠 Algorithm Overview
The Doomsday Algorithm is a clever method for determining the weekday of any date. It involves:

Calculating the "anchor day" for the century.
Finding the "doomsday" for the year.
Comparing the input date with the doomsday to identify the weekday.
