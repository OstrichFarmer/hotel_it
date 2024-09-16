// RecentVacation Class
class RecentVacation {
  String hotelName;
  String location;
  String checkInDate;
  String checkOutDate;
  String image;
  int year;

  RecentVacation({
    required this.hotelName,
    required this.location,
    required this.checkInDate,
    required this.checkOutDate,
    required this.image,
    required this.year,
  });
}

List<RecentVacation> recentVacations = [
  RecentVacation(
    hotelName: "Lagos Continental Hotel",
    location: "Lagos Island",
    checkInDate: "1 January",
    checkOutDate: "2 January",
    image: "assets/images/hotel1.png",
    year: 2022,
  ),
  RecentVacation(
    hotelName: "Abuja Sheraton",
    location: "Abuja",
    checkInDate: "5 February",
    checkOutDate: "6 February",
    image: "assets/images/hotel2.png",
    year: 2022,
  ),
  RecentVacation(
    hotelName: "Eko Hotels and Suites",
    location: "Victoria Island",
    checkInDate: "10 March",
    checkOutDate: "12 March",
    image: "assets/images/hotel3.png",
    year: 2023,
  ),
  RecentVacation(
    hotelName: "Transcorp Hilton",
    location: "Abuja",
    checkInDate: "15 April",
    checkOutDate: "17 April",
    image: "assets/images/hotel4.png",
    year: 2023,
  ),
  RecentVacation(
    hotelName: "Radisson Blu Ikeja",
    location: "Lagos",
    checkInDate: "20 May",
    checkOutDate: "22 May",
    image: "assets/images/hotel5.png",
    year: 2023,
  ),
  RecentVacation(
    hotelName: "Southern Sun Ikoyi",
    location: "Ikoyi",
    checkInDate: "25 June",
    checkOutDate: "26 June",
    image: "assets/images/hotel6.png",
    year: 2022,
  ),
  RecentVacation(
    hotelName: "Protea Hotel",
    location: "Lagos",
    checkInDate: "1 July",
    checkOutDate: "2 July",
    image: "assets/images/hotel7.png",
    year: 2023,
  ),
  RecentVacation(
    hotelName: "Golden Tulip",
    location: "Festac",
    checkInDate: "10 August",
    checkOutDate: "11 August",
    image: "assets/images/hotel8.png",
    year: 2022,
  ),
  RecentVacation(
    hotelName: "Four Points by Sheraton",
    location: "Lagos",
    checkInDate: "15 September",
    checkOutDate: "16 September",
    image: "assets/images/hotel9.png",
    year: 2022,
  ),
  RecentVacation(
    hotelName: "Ibom Hotel & Golf Resort",
    location: "Akwa Ibom",
    checkInDate: "1 October",
    checkOutDate: "3 October",
    image: "assets/images/hotel10.png",
    year: 2022,
  ),
];
