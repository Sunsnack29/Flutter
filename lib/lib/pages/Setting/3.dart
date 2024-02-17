import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';

class maintenance extends StatelessWidget {
  final BuildContext context;

  maintenance(this.context);
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size; 
      return Scaffold (
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(children: [
            Image.asset("assets/3.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: _size.height / 1.25,),

            Container(height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.white,
              ],
              stops: [
                0.4,
                0.7,
              ],
              )
            ),),
            Container(
              padding: EdgeInsets.only(left: 15 , top: 45),
              child: IconButton(
                icon: Icon(CupertinoIcons.back),
                onPressed: () {
                  Navigator.pop(context);
                },),
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10,
                    sigmaY: 10,
                  ),
                  child: Container(
                    color: Colors.white.withOpacity(0.65),
                    padding: EdgeInsets.all(35),
                    width: double.infinity,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ประกาศปรับปรุงแอพ 10 ต.ค. 2566",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "ขออภัยในความไม่สะดวก",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "ทางทีมพัฒนาแอพให้ความสำคัญต่อความพึงพอใจของผู้ใช้ การพัฒนาแอพเพื่อทำให้ใช้งานง่ายยิ่งขึ้นเป็นขั้นตอนที่ดีต่อผู้ใช้และองค์กรพัฒนา หากคุณมีคำถามหรือข้อเสนอแนะเพิ่มเติมเกี่ยวกับการปรับปรุงนี้ โปรดระบุให้เราทราบ เรายินดีที่จะช่วยเสมอและพยายามอย่างดีที่สุดในการปรับปรุงแอพเพื่อให้คุณและผู้ใช้อื่นๆ สามารถใช้งานแอพได้อย่างสะดวกสบายยิ่งขึ้นครับ/ค่ะ.",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5),
                       SizedBox(height: 25),
                       Row(
                        
                       )
                      ],
                    ),
                  ),
                ),
              ),

            )
            
          ]),
        ),
        
      );
    }
  }