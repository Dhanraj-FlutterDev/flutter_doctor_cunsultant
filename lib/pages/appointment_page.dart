import 'package:flutter/material.dart';import 'package:flutter_doctor_cunsultant/widgets/color_container.dart';import 'package:flutter_doctor_cunsultant/widgets/date_widget.dart';import 'package:google_fonts/google_fonts.dart';class AppointmentPage extends StatelessWidget {  @override  Widget build(BuildContext context) {    return Scaffold(      body: Container(        height: MediaQuery.of(context).size.height,        width: MediaQuery.of(context).size.width,        child: Stack(          children: [            Container(              color: Colors.blue.shade700,            ),            GestureDetector(                onTap: (){                  Navigator.pop(context);                },                child: Container(              height: 30,              width: 30,              margin: EdgeInsets.only(left: 20, top: 40),              padding: EdgeInsets.only(left: 7),              decoration:                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),              child: Center(child: Icon(Icons.arrow_back_ios)),            )),            Positioned(              top: 0,            bottom: 300,            left: 50,            right: 50,            child: Container(              height: MediaQuery.of(context).size.height / 3,              decoration: BoxDecoration(                  image: DecorationImage(                      image: AssetImage('assets/doctor1.png')                  )              ),            )),            Positioned(              bottom: 0,              left: 0,              right: 0,              child: Container(                height: MediaQuery.of(context).size.height / 1.8,                decoration: BoxDecoration(                    borderRadius: BorderRadius.only(                        topLeft: Radius.circular(25),                        topRight: Radius.circular(25)),                    color: Colors.white),                child: Container(                  margin: EdgeInsets.only(top: 80),                  child: Column(                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,                    children: [                      Container(                        margin: EdgeInsets.symmetric(horizontal: 20),                        child: Row(                          mainAxisAlignment: MainAxisAlignment.spaceBetween,                          children: [                            Text('Appointment',style: GoogleFonts.play(                              fontSize: 18,fontWeight: FontWeight.w700,color: Colors.black87                            ),),                            Row(                              children: [                                Icon(Icons.calendar_today_rounded,color: Colors.blue.shade700,size: 16,),                                Text('Mar 23,2021',style: TextStyle(                                    color: Colors.blue.shade700,fontSize: 14,fontWeight: FontWeight.w500),)                              ],                            )                          ],                        ),                      ),                      Container(                        child: Row(                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,                          children: [                            DateWidget(                              date: 2,                              day: 'Sat',                            ),                            DateWidget(                              date: 3,                              day: 'Sun',                            ),                            DateWidget(                              date: 4,                              day: 'Mon',                              dateColor: Colors.white,                              dayColor: Colors.white,                              containerColor: Colors.blue.shade700,                            ),                            DateWidget(                              date: 5,                              day: 'Tue',                            ),                            DateWidget(                              date:6,                              day: 'Wed',                            ),                            DateWidget(                              date:7,                              day: 'Thu',                            ),                          ],                        ),                      ),                      Container(                        child: Row(                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,                          children: [                            ColorContainer(                              title: 'Health Care',                              color: Colors.orangeAccent,                            ),                            ColorContainer(                              title: 'Diabetes',                              color: Colors.deepPurpleAccent,                            ),                            ColorContainer(                              title: 'Covide 19',                              color: Colors.pinkAccent,                            )                          ],                        ),                      ),                      Container(                        margin: EdgeInsets.symmetric(horizontal: 20),                        width: MediaQuery.of(context).size.width,                        child: ColorContainer(                          color: Colors.blue.shade700,                          title: 'Appointment',                        ),                      )                    ],                  ),                ),              ),            ),            Positioned(                bottom: 344,                left: 0,                right: 0,                child: Container(                    height: 100,                    margin: EdgeInsets.symmetric(horizontal: 50,vertical: 10),                    decoration: BoxDecoration(                      shape: BoxShape.rectangle,                      borderRadius: BorderRadius.circular(20),                    ),                    child: Card(                      elevation: 5,                      shape: RoundedRectangleBorder(                        borderRadius: BorderRadius.circular(20.0),                      ),                        child: Column(                      mainAxisAlignment: MainAxisAlignment.center,                      children: [                        Text('Dr. Mariya Khan',style: GoogleFonts.k2d(                            fontSize: 25,color: Colors.black87,fontWeight: FontWeight.w500),textAlign: TextAlign.center,),                        Text('USA Hospital Department of Medicine',style: GoogleFonts.k2d(                            fontSize: 15,color: Colors.black45,fontWeight: FontWeight.w500),textAlign: TextAlign.center),                        Row(                          mainAxisAlignment: MainAxisAlignment.center,                          children: [                            Icon(Icons.star,color: Colors.amber,),                            Icon(Icons.star,color: Colors.amber,),                            Icon(Icons.star,color: Colors.amber,),                            Icon(Icons.star,color: Colors.amber,),                            Icon(Icons.star,color: Colors.grey,),                          ],                        )                      ],                    ))                )            ),          ],        ),      ),    );  }}