import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';

class jackpot extends StatelessWidget {
  final BuildContext context;

  jackpot(this.context);
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size; 
      return Scaffold (
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(children: [
            Image.asset("assets/tiger2.png",
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
                          "สุ่มแจกเงิน 100,000 บาทเพื่อเป็นรางวัลสำหรับยอดดาวน์โหลดครบ 2 ล้าน",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        
                        SizedBox(height: 5),
                        Text(
                          "แน่นอนว่าคุณคือความสำเร็จของเราและของชุมชนของเรา. ทีมของเราขอขอบคุณคุณทุกคนที่มาเป็นส่วนหนึ่งของเราและใช้งานแอพของเรา การพัฒนาแอพของเราเพื่อให้คุณมีประสิทธิภาพในชีวิตและการทำงานของคุณ ทีมของเราจะยังคงพัฒนาแอพของเราอย่างไม่หยุดยั้ง ขอบคุณอีกครั้งสำหรับความสนใจและความไว้ใจของคุณในเรา เราหวังว่าคุณจะสนุกกับการใช้งานแอพของเราและยังคงเป็นส่วนหนึ่งของเราต่อไป!",
                          style: TextStyle(
                            fontSize: 18,
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