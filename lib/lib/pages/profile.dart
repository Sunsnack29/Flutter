// import 'package:flutter/material.dart';

// // ignore: use_key_in_widget_constructors
// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("ข้อมูลผู้ใช้"),
//         backgroundColor: Colors.transparent,
//       ),
//       body: const Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             CircleAvatar(
//               radius: 50.0, // ขนาดของรูปภาพ
//               backgroundImage: AssetImage('assets/user.jpg'), // รูปภาพผู้ใช้
//             ),
//             SizedBox(height: 20.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Icon(Icons.person, size: 24.0), // ไอคอน Person
//                 SizedBox(width: 10.0),
//                 Text(
//                   "ชื่อผู้ใช้: John Doe",
//                   style: TextStyle(fontSize: 18),
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Icon(Icons.email, size: 24.0), // ไอคอน Email
//                 SizedBox(width: 10.0),
//                 Text(
//                   "อีเมล: johndoe@example.com",
//                   style: TextStyle(fontSize: 18),
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Icon(Icons.phone, size: 24.0), // ไอคอน Phone
//                 SizedBox(width: 10.0),
//                 Text(
//                   "Tel: 01-234-5678",
//                   style: TextStyle(fontSize: 18),
//                 ),
//               ],
//             ),
//             // สามารถเพิ่มรายละเอียดเพิ่มเติมได้ตามที่คุณต้องการ
//           ],
//         ),
//       ),
//     );
//   }
// }

// // 