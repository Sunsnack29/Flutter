import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ผู้พัฒนา'),
      ),
      body: ListView(
        children: [
          buildProfileCard(
            'ชาติรัตน์ ม่วงไหมทอง',
            'Tel: 096-945-3838',
            'IG: chartrat_',
            'assets/chartrat.jpg', // เปลี่ยนเป็นตำแหน่งของรูปของ John Doe
          ),
          buildProfileCard(
            'สุริยะ สุขสวัสดิ์',
            'Tel: 061-449-7457',
            'IG: sxnsnaxq_',
            'assets/suriya.jpg' // เปลี่ยนเป็นตำแหน่งของรูปของ Jane Smith
          ),
        ],
      ),
    );
  }

 // ignore: non_constant_identifier_names
 Widget buildProfileCard(String name, String Tel, String IG, String imagePath) {
  return Card(
    elevation: 5.0,
    margin: const EdgeInsets.all(16.0),
    child: Column(
      children: [
        Container(
          width: 1000,
          height: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover, // เปลี่ยนเป็น cover เพื่อให้รูปภาพครอบคลุม
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            name,
            style: const TextStyle(
              fontSize: 18.0, // ปรับขนาดข้อความตามที่คุณต้องการ
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            Tel,
            style: const TextStyle(
              fontSize: 18.0, // ปรับขนาดข้อความตามที่คุณต้องการ
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            IG,
            style: const TextStyle(
              fontSize: 18.0, // ปรับขนาดข้อความตามที่คุณต้องการ
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // ข้อมูลโปรไฟล์เพิ่มเติม เช่น อีเมล, เบอร์โทร, ที่อยู่, และอื่น ๆ
        // สามารถเพิ่ม Widgets ต่างๆ ที่คุณต้องการได้ที่นี่
      ],
    ),
  );
}
}