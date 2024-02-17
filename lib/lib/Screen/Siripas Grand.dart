import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class siripasgrand extends StatelessWidget {
  // final int index;
  // const siripasgrand ({ Key key , this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size; 
      return Scaffold (
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(children: [
            Image.asset("assets/siripas.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: _size.height / 1.25,),

            Container(height: double.infinity,
            decoration: const BoxDecoration(
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
              padding: const EdgeInsets.only(left: 15 , top: 45),
              child: IconButton(
                icon: const Icon(CupertinoIcons.back),
                onPressed: () {
                  Navigator.pop(context);
                },),
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
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
                    padding: const EdgeInsets.all(35),
                    width: double.infinity,
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Siripas Grand",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "กำแพงแสน, นครปฐม",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "เพราะ ความชอบของทุกคนไม่เหมือนกัน เราเลยออกแบบ Room Design Themes ของ SIRIPAS GRAND มาให้ผู้เช่าเลือกแบบที่ใช่กับความชอบของตน",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "SIRIPAS GRAND 1 มาพร้อมห้อง Studio และ ห้อง Suite ขนาดใหญ่",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "SIRIPAS GRAND 2 มาพร้อมงานออกแบบทั้งภายในและภายนอกที่โดดเด่นมากขึ้น มีให้เลือกทั้งห้อง Studio และ ห้อง Suite ขนาดใหญ่กว่าเดิม และมี Room Design Themes ของห้องพักที่แตกต่างกัน ให้เลือกถึง 6 แบบด้วยกัน",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "ที่ SIRIPAS GRAND เรา รวม สิ่งอำนวยความสะดวก ไว้มากมาย รองรับการบริการ ตลอด 24 ชม.",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "ติดต่อสอบถามเพิ่มเติม",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "WEBSIDE: www.siripas.com \nLINE ID : @SRP_GRAND",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                       SizedBox(height: 25),
                       Row(
                        children: [
                          Icon(CupertinoIcons.map,
                          color: Colors.black26,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "175 หมู่ 12",
                            style: TextStyle(fontWeight : FontWeight.bold),
                          )
                        ],
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