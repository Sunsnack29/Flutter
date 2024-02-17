
class TravelCard {
  int id; // ไอดีที่เพิ่มขึ้นโดยอัตโนมัติจากฐานข้อมูล
  String imgUrl;
  String hotelName;
  String location;
  int rating;

  TravelCard({required this.id, required this.imgUrl, required this.hotelName, required this.location, required this.rating});
  
TravelCard.theMuse()
      : id = 1, // กำหนด ID ตามที่คุณต้องการ
        hotelName = "The Muse",
        location = "กำแพงแสน",
        rating = 5,
        imgUrl = "assets/themuse.png";
}