// ignore_for_file: unused_local_variable

import 'package:intl/intl.dart';

class DateConverter {
  static String estimatedDate(DateTime dateTime) {
    return DateFormat('dd MMM yyyy').format(dateTime);
  }

  static String timeFormetString(String dateTimeStr) {
    // Parse the input string to a DateTime object
    DateTime dateTime = DateTime.parse(dateTimeStr);

    // Format the DateTime object
    return DateFormat('dd MMM yyyy').format(dateTime);
  }

  ///=============== Calculate Time of Day ===============

  static String getTimePeriod() {
    // Get the current hour of the day
    int currentHour = DateTime.now().hour;

    // Define the boundaries for morning, noon, and evening
    int morningBoundary = 6;
    int noonBoundary = 12;
    int eveningBoundary = 18;

    // Determine the time period based on the current hour
    if (currentHour >= morningBoundary && currentHour < noonBoundary) {
      return "Good Morning";
    } else if (currentHour >= noonBoundary && currentHour < eveningBoundary) {
      return "Good Noon";
    } else {
      return "Good Evening";
    }
  }

//================== Get Age =================

  static String getAge({required String dOB}) {
    // Parse the date of birth from the string input
    List<String> dobParts = dOB.split("-");
    int day = int.parse(dobParts[0]);
    int month = int.parse(dobParts[1]);
    int year = int.parse(dobParts[2]);

    // Create a DateTime object for the date of birth
    DateTime birthDate = DateTime(year, month, day);
    DateTime currentDate = DateTime.now();

    // Calculate age
    int age = currentDate.year - birthDate.year;

    // Adjust age if the birthday has not yet occurred this year
    if (currentDate.month < birthDate.month ||
        (currentDate.month == birthDate.month &&
            currentDate.day < birthDate.day)) {
      age--;
    }

    return age.toString();
  }

  ///======================= Calculate CreatedAt time and show it =========================

  static String formatTimeAgo(String dateTimeString) {
    // Parse the string into a DateTime object
    DateTime dateTime = DateTime.parse(dateTimeString);

    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inDays > 1) {
      // If the time is more than 1 day ago, return the date in "dd MMM yyyy" format
      return '${dateTime.day} ${_getMonthName(dateTime.month)} ${dateTime.year}';
    } else if (difference.inDays == 1) {
      // If the time is 1 day ago, return "Yesterday"
      return 'Yesterday';
    } else if (difference.inHours >= 1) {
      // If the time is today but more than an hour ago, return in hours ago format
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes >= 1) {
      // If the time is less than an hour ago, return in minutes ago format
      return '${difference.inMinutes}m ago';
    } else {
      // If the time is less than a minute ago, return "Just now"
      return 'Just now';
    }
  }

  // Helper method to get month name
  static String _getMonthName(int month) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];
    return months[month - 1];
  }

//   static String formatTimeOfDay(TimeOfDay timeOfDay) {
//     final now = DateTime.now();
//     final format = DateFormat('h:mm a').format(DateTime(
//         now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute));
//     return format;
//   }

//   // static bool isWithin30Minutes(String time) {
//   //   try {
//   //     // Get the current time
//   //     DateTime now = DateTime.now();

//   //     // Trim any leading/trailing spaces from the input time string
//   //     time = time.trim();

//   //     // Create a DateFormat to parse the time (like "03:00 PM")
//   //     DateFormat format =
//   //         DateFormat('h:mm a'); // 'jm' handles time in "hh:mm AM/PM" format

//   //     // Parse the input time string to a DateTime object
//   //     DateTime parsedTime = format.parse(time);

//   //     // Create a DateTime object for today's date with the parsed time
//   //     DateTime targetTime = DateTime(
//   //         now.year, now.month, now.day, parsedTime.hour, parsedTime.minute);

//   //     // Calculate 30 minutes after the target time
//   //     DateTime time30MinutesAfter = targetTime.add(Duration(minutes: 30));

//   //     // Return true if the current time is between targetTime and time30MinutesAfter (inclusive)
//   //     return now.isAfter(targetTime) && now.isBefore(time30MinutesAfter) ||
//   //         now.isAtSameMomentAs(targetTime);
//   //   } catch (e) {
//   //     // If any exception occurs (like a format error), return false
//   //     print('Error parsing time: $e');
//   //     return false;
//   //   }
//   // }
//   // static bool isWithin30MinutesOfTime(
//   //     {String dateString = "2024-09-10T00:00:00.000Z",
//   //     String timeString = "05:18 PM"}) {
//   //   try {
//   //     // Define the format to parse the date and time together
//   //     final dateTimeFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z' h:mm a");

//   //     // Parse the date part first (to handle ISO format like 2024-09-10T00:00:00.000Z)
//   //     DateTime parsedDate = DateTime.parse(dateString);

//   //     // Use the formatted date with the time string (e.g., "03:30 PM") to create a full DateTime
//   //     String formattedDate = DateFormat('yyyy-MM-dd').format(parsedDate);
//   //     String dateTimeString = "$formattedDate $timeString";

//   //     // Define another DateFormat to parse the combined string
//   //     final combinedFormat = DateFormat('yyyy-MM-dd h:mm a');

//   //     // Parse the combined string to get the full DateTime object
//   //     DateTime inputDateTime = combinedFormat.parse(dateTimeString);

//   //     // Get the current time
//   //     DateTime now = DateTime.now();

//   //     // Calculate 30 minutes after the input time
//   //     DateTime thirtyMinutesAfter = inputDateTime.add(Duration(minutes: 30));

//   //     // Check if the current time is between the target time and 30 minutes after
//   //     return now.isAfter(inputDateTime) && now.isBefore(thirtyMinutesAfter) ||
//   //         now.isAtSameMomentAs(inputDateTime);
//   //   } catch (e) {
//   //     // If any parsing errors occur, print the error and return false
//   //     print('Error parsing date or time: $e');
//   //     return false;
//   //   }
//   // }

//   static bool isWithin30MinutesOfTime(
//       String inputDateString, String inputTimeString) {
//     // Clean the input time string by removing any extra spaces or invisible characters
//     inputTimeString = inputTimeString.trim().replaceAll(RegExp(r'\s+'), ' ');

//     // Parse the input date
//     DateTime inputDate =
//         DateTime.parse(inputDateString); // "2024-09-10T00:00:00.000Z"

//     // Parse the time string ("05:18 PM") using DateFormat from intl package
//     try {
//       final DateFormat timeFormat =
//           DateFormat('h:mm a'); // 'jm' is the pattern for '5:18 PM'
//       final DateTime parsedTime = timeFormat.parse(inputTimeString);

//       // Create a DateTime combining inputDate with parsed time
//       DateTime inputDateTime = DateTime(
//         inputDate.year,
//         inputDate.month,
//         inputDate.day,
//         parsedTime.hour,
//         parsedTime.minute,
//       );

//       // Add 30 minutes to the parsed time
//       DateTime matchTimeWith30MinAdded =
//           inputDateTime.add(const Duration(minutes: 30));

//       // Get the current time
//       DateTime now = DateTime.now();

//       // if (!now.isAfter(inputDateTime) ||
//       //     now.isBefore(inputDateTime.subtract(Duration(minutes: 2)))) {
//       //   print('===============================> Hello');
//       //   return false;
//       // }

//       // if (now.hour == inputDateTime.hour) {
//       //   if (now.minute > matchTimeWith30MinAdded.minute) {
//       //     return false;
//       //   }

//       //   if (now.minute >= inputDateTime.minute) {
//       //     print(now.minute);
//       //     print(inputDateTime.minute);
//       //     return true;
//       //   }
//       // }

//       //  Compare the current time with the input time and the time 30 minutes after it
//       return now.isAfter(inputDateTime) &&
//           now.isBefore(matchTimeWith30MinAdded);
//     } catch (e) {
//       debugPrint('Error parsing time string: $e');
//       return false;
//     }
//   }

//   static String formatDate(String isoDateString) {
//     // Parse the ISO date string into a DateTime object
//     DateTime parsedDate = DateTime.parse(isoDateString);

//     // Format the DateTime object to "day-month-year"
//     String formattedDate = DateFormat('dd-MM-yyyy').format(parsedDate);

//     return formattedDate;
//   }

//   static String formatTime(String input) {
//     // Parse the input string into a DateTime object
//     DateTime dateTime =
//         DateTime.parse(input).toLocal(); // Convert to local timezone if needed

//     // Format the DateTime into the desired time format (e.g., 10:00 PM)
//     String formattedTime = DateFormat('hh:mm a').format(dateTime);

//     return formattedTime;
//   }

//   static String formatCallsDateTime(String dateTimeString) {
//     // Parse the incoming DateTime string to a DateTime object
//     DateTime inputDate =
//         DateTime.parse(dateTimeString).toLocal(); // Convert to local time
//     DateTime now = DateTime.now();
//     DateTime today = DateTime(now.year, now.month, now.day);
//     DateTime yesterday = today.subtract(const Duration(days: 1));

//     DateFormat timeFormat =
//         DateFormat('hh:mm a'); // Format for time (e.g., 08:30 PM)
//     DateFormat dateFormat =
//         DateFormat('dd MMM yyyy'); // Format for date (e.g., 18 Sep 2024)

//     if (inputDate.isAfter(today)) {
//       return 'Today (${timeFormat.format(inputDate)})';
//     } else if (inputDate.isAfter(yesterday) && inputDate.isBefore(today)) {
//       return 'Yesterday (${timeFormat.format(inputDate)})';
//     } else {
//       return '${dateFormat.format(inputDate)} (${timeFormat.format(inputDate)})';
//     }
//   }
// }

  static List<String> calculateAgeAndLifeSpan(String dob, int targetAge) {
    // Parse the input date string
    DateTime birthDate = DateTime.parse(dob);
    DateTime currentDate = DateTime.now();

    // Calculate the total difference in days
    Duration difference = currentDate.difference(birthDate);
    int totalDaysLived = difference.inDays;

    // Calculate years, months, and days
    int years = currentDate.year - birthDate.year;
    int months = currentDate.month - birthDate.month;
    int days = currentDate.day - birthDate.day;

    // Adjust if negative months or days (correct for partial year)
    if (days < 0) {
      months--;
      days += DateTime(currentDate.year, currentDate.month, 0)
          .day; // Add days of previous month
    }
    if (months < 0) {
      years--;
      months += 12;
    }

    // Calculate weeks and remaining days from total days lived
    int weeks = days ~/ 7;
    int remainingDays = days % 7;

    // Calculate life span percentage
    int targetAgeDays = targetAge * 365; // Approximation of target age in days
    double lifeSpentPercent = (totalDaysLived / targetAgeDays) * 100;

    // Prepare result list
    List<String> result = [
      "$years years",
      "$months months",
      "$weeks weeks",
      "$remainingDays days",
      "${lifeSpentPercent.toStringAsFixed(2)}%"
    ];

    return result;
  }

  static List<String> calculateRemainingLife(String dob, int targetAge) {
    // Parse the input date string
    DateTime birthDate = DateTime.parse(dob);
    DateTime currentDate = DateTime.now();

    // Calculate the target date (when the user reaches the target age)
    DateTime targetDate =
    DateTime(birthDate.year + targetAge, birthDate.month, birthDate.day);

    // Calculate the difference between the current date and the target date
    Duration remainingDuration = targetDate.difference(currentDate);

    if (remainingDuration.isNegative) {
      return ["0 years", "0 months", "0 weeks", "0 days", "0%"];
    }

    int totalDaysRemaining = remainingDuration.inDays;

    // Calculate the total number of days lived so far
    Duration totalLivedDuration = currentDate.difference(birthDate);
    int totalDaysLived = totalLivedDuration.inDays;

    // Breakdown remaining years, months, weeks, and days
    int remainingYears = targetDate.year - currentDate.year;
    int remainingMonths = targetDate.month - currentDate.month;
    int remainingDays = targetDate.day - currentDate.day;

    if (remainingDays < 0) {
      remainingMonths--;
      remainingDays += DateTime(currentDate.year, currentDate.month + 1, 0)
          .day; // Adjust for negative days
    }
    if (remainingMonths < 0) {
      remainingYears--;
      remainingMonths += 12;
    }

    // Calculate weeks and remaining days from total remaining days
    int weeks = remainingDays ~/ 7;
    int extraDays = remainingDays % 7;

    // Calculate remaining life percentage
    int targetAgeDays = targetAge * 365; // Approximation of target age in days
    double lifeRemainingPercent =
        ((targetAgeDays - totalDaysLived) / targetAgeDays) * 100;

    // Prepare result list
    List<String> result = [
      "$remainingYears years",
      "$remainingMonths months",
      "$weeks weeks",
      "$extraDays days",
      "${lifeRemainingPercent.toStringAsFixed(2)}%"
    ];

    return result;
  }

  static List<int> calculateSpentAndTotalWeeks(String dob, int targetAge) {
    int weeksInYear = 52;
    // Parse the input date of birth string
    DateTime birthDate = DateTime.parse(dob);
    DateTime currentDate = DateTime.now();

    // Calculate the total weeks for the target age
    int totalWeeks = targetAge * weeksInYear;

    // Calculate the number of days lived so far
    Duration lifeLivedDuration = currentDate.difference(birthDate);
    int spentWeeks = lifeLivedDuration.inDays ~/ 7;

    // Return spent weeks and total weeks as a list of two integers
    return [spentWeeks, totalWeeks];
  }
}