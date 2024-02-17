import 'package:flutter/material.dart';
import 'package:testapp/pages/Setting/2.dart';
import 'package:testapp/pages/Setting/3.dart';
import 'package:testapp/pages/Setting/4.dart';
import '../pages/sidemenu.dart';
import 'Setting/1.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blueGrey,
        title: Text('Notification'),
        centerTitle: true, // ทำให้หัวเรื่องอยู่ตรงกลาง
        titleSpacing: 0.0, // ปรับระยะห่างของหัวเรื่อง (ถ้าต้องการ)
      ),
      backgroundColor: Color(0xFFF6F7FF), // Set the background color to gray
      body: ListView(
        children: <Widget>[
                     const Divider(), 

          SizedBox(
            height: 120,
            child: buildNotificationCard(
              
              title: 'โปรโมชั่นสุดพิเศษ แค่ 2 ชั่วโมงเท่านั้น',
              subtitle: 'โปรโมชั้นเด็ดๆรอคุณอยู่',
              imagePath: 'assets/1.png',
              onTapCallback: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DownloadRewardApp(context)));
              },
          
              // รูปภาพสำหรับการแจ้งเตือนที่ 1
            ),
          ),
          const Divider(),
          SizedBox(
                        height: 120,

            child: buildNotificationCard(
              title: 'ลดไปเลยทันที 40 % เมื่อแจ้งหอพักว่ามาจากแอพเรา',
              subtitle: 'เพียงแจ้งกับหอพักในเครือของเรารับส่วนลดทันที',
              imagePath: 'assets/2.jpg',
              onTapCallback: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RewardDetailsPage(context)));
                        
              },
               // รูปภาพสำหรับการแจ้งเตือนที่ 2
            ),
          ),
          const Divider(),
          SizedBox(
                        height: 120,

            child: buildNotificationCard(
              title: 'ประกาศปรับปรุงแอพ 10 ต.ค. 2566',
              subtitle: 'ขออภัยในความไม่สะดวกเราจะพัฒนาแอพให้ใช้งานง่ายยิ่งขึ้น',
              imagePath: 'assets/3.png',
              onTapCallback: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => maintenance(context)));
              }, // รูปภาพสำหรับการแจ้งเตือนที่ 3
            ),
          ),
          const Divider(),
          SizedBox(            
            height: 120,
            child: buildNotificationCard(
              title:
                  'สุ่มแจกเงิน 100,000 บาทเพื่อเป็นรางวัลสำหรับยอดดาวน์โหลดครบ 2 ล้าน',
              subtitle: 'คลิ๊กเพื่ออ่านรายระเอียด',
              imagePath: 'assets/tiger.png',
              onTapCallback: () {

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => jackpot(context)));
              }, // รูปภาพสำหรับการแจ้งเตือนที่ 4
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }

  Widget buildNotificationCard(
      {required String title,
      required String subtitle,
      required String imagePath,
      required Null Function() onTapCallback}) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          children: [
            Transform.translate(
              offset: Offset(10, 0), // ย้ายรูปภาพไปทางขวา 16 พิกเซล
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Container(
                  width: 80,
                  height: 80,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                title: Text(title),
                subtitle: Text(subtitle),
                onTap: () {
                  onTapCallback();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
