import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fsa/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:fsa/SizeConfig.dart';
import 'package:pdf_flutter/pdf_flutter.dart';
import 'package:firebase_database/firebase_database.dart';
import '../base_screen.dart';


class reportpage extends StatefulWidget {
  final String value;
  reportpage({Key key,this.value}):super(key: key);
  @override
  _reportpageState createState() => _reportpageState();
}

class _reportpageState extends State<reportpage> {
  int _selectedIndex=1;
  final fb = FirebaseDatabase.instance;
  String activate1a = 'y';
  String activate1b;
  String activate2a = 'y';
  String activate2b;
  String activate3a = 'y';
  String activate3b;
  String activate4a = 'y';
  String activate4b;
  String activate5a = 'y';
  String activate5b;
  String activate6a = 'y';
  String activate6b;
  String activate7a = 'y';
  String activate7b;
  String activate8a = 'y';
  String activate8b;
  String activate9a = 'y';
  String activate9b;
  String activate10a = 'y';
  String activate10b;
  String activate11a = 'y';
  String activate11b;
  String activate12a = 'y';
  String activate12b;
  String activate13a = 'y';
  String activate13b;
  String activate14a = 'y';
  String activate14b;
  String activate15a = 'y';
  String activate15b;
  String activate16a = 'y';
  String activate16b;
  String activate17a = 'y';
  String activate17b;
  String activate18a = 'y';
  String activate18b;
  String activate19a = 'y';
  String activate19b;
  String activate20a = 'y';
  String activate20b;
  String activate21a = 'y';
  String activate21b;
  String activate22a = 'y';
  String activate22b;
  String activate23a = 'y';
  String activate23b;
  String activate24a = 'y';
  String activate24b;
  String activate25a = 'y';
  String activate25b;
  String activate26a = 'y';
  String activate26b;
  String activate27a = 'y';
  String activate27b;


  Widget build(BuildContext context) {
    final ref1a = fb.reference().child("ENGLEBERT SCHOOL/activate/report1a");
    final ref1b = fb.reference().child("ENGLEBERT SCHOOL/activate/report1b");
    final ref2a = fb.reference().child("ENGLEBERT SCHOOL/activate/report2a");
    final ref2b = fb.reference().child("ENGLEBERT SCHOOL/activate/report2b");
    final ref3a = fb.reference().child("ENGLEBERT SCHOOL/activate/report3a");
    final ref3b = fb.reference().child("ENGLEBERT SCHOOL/activate/report3b");
    final ref4a = fb.reference().child("ENGLEBERT SCHOOL/activate/report4a");
    final ref4b = fb.reference().child("ENGLEBERT SCHOOL/activate/report4b");
    final ref5a = fb.reference().child("ENGLEBERT SCHOOL/activate/report5a");
    final ref5b = fb.reference().child("ENGLEBERT SCHOOL/activate/report5b");
    final ref6a = fb.reference().child("ENGLEBERT SCHOOL/activate/report6a");
    final ref6b = fb.reference().child("ENGLEBERT SCHOOL/activate/report6b");
    final ref7a = fb.reference().child("ENGLEBERT SCHOOL/activate/report7a");
    final ref7b = fb.reference().child("ENGLEBERT SCHOOL/activate/report7b");
    final ref8a = fb.reference().child("ENGLEBERT SCHOOL/activate/report8a");
    final ref8b = fb.reference().child("ENGLEBERT SCHOOL/activate/report8b");
    final ref9a = fb.reference().child("ENGLEBERT SCHOOL/activate/report9a");
    final ref9b = fb.reference().child("ENGLEBERT SCHOOL/activate/report9b");
    final ref10a = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report10a");
    final ref10b = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report10b");
    final ref11a = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report11a");
    final ref11b = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report11b");
    final ref12a = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report12a");
    final ref12b = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report12b");
    final ref13a = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report13a");
    final ref13b = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report13b");
    final ref14a = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report14a");
    final ref14b = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report14b");
    final ref15a = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report15a");
    final ref15b = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report15b");
    final ref16a = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report16a");
    final ref16b = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report16b");
    final ref17a = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report17a");
    final ref17b = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report17b");
    final ref18a = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report18a");
    final ref18b = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report18b");
    final ref19a = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report19a");
    final ref19b = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report19b");
    final ref20a = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report20a");
    final ref20b = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report20b");
    final ref21a = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report21a");
    final ref21b = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report21b");
    final ref22a = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report22a");
    final ref22b = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report22b");
    final ref23a = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report23a");
    final ref23b = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report23b");
    final ref24a = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report24a");
    final ref24b = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report24b");
    final ref25a = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report25a");
    final ref25b = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report25b");
    final ref26a = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report26a");
    final ref26b = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report26b");
    final ref27a = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report27a");
    final ref27b = fb.reference().child(
        "ENGLEBERT SCHOOL/activate/report27b");


    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(

        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Academic Reports',
          style: TextStyle(color: Colors.amber),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,


        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(

          type: BottomNavigationBarType.fixed,
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.home,
              ),
              label: "home",
            ),

            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.userFriends), label: "students"),

            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.newspaper), label: "contacts")
          ],
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
              WidgetsBinding.instance.addPostFrameCallback((_) {
                Navigator.of(context).pushAndRemoveUntil(
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) =>
                          BaseScreen(value: _selectedIndex),
                      transitionDuration: Duration(seconds: 0),), (
                    route) => false);
              });
            });
          }),

      body: Stack(
        children: [

          Positioned(

              child:
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                decoration: BoxDecoration(color: Colors.white),
                child: ListView(
                  children: [
                    StreamBuilder(
                        stream: ref1b.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data1b = snap.data.snapshot.value;
                            calcref1b(data1b);
                            return Container();
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref2b.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data2b = snap.data.snapshot.value;
                            calcref2b(data2b);
                            return Container();
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref3b.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data3b = snap.data.snapshot.value;
                            calcref3b(data3b);
                            return Container();
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref4b.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data4b = snap.data.snapshot.value;
                            calcref4b(data4b);
                            return Container();
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref5b.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data5b = snap.data.snapshot.value;
                            calcref5b(data5b);
                            return Container();
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref6b.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data6b = snap.data.snapshot.value;
                            calcref6b(data6b);
                            return Container();
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref7b.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data7b = snap.data.snapshot.value;
                            calcref7b(data7b);
                            return Container();
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref8b.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data8b = snap.data.snapshot.value;
                            calcref8b(data8b);
                            return Container();
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref9b.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data9b = snap.data.snapshot.value;
                            calcref9b(data9b);
                            return Container();
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref10b.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data10b = snap.data.snapshot.value;
                            calcref10b(data10b);
                            return Container();
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref11b.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data11b = snap.data.snapshot.value;
                            calcref11b(data11b);
                            return Container();
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref12b.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data12b = snap.data.snapshot.value;
                            calcref12b(data12b);
                            return Container();
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref13b.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data13b = snap.data.snapshot.value;
                            calcref13b(data13b);
                            return Container();
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref14b.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data14b = snap.data.snapshot.value;
                            calcref14b(data14b);
                            return Container();
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref15b.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data15b = snap.data.snapshot.value;
                            calcref15b(data15b);
                            return Container();
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref16b.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data16b = snap.data.snapshot.value;
                            calcref16b(data16b);
                            return Container();
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref17b.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data17b = snap.data.snapshot.value;
                            calcref17b(data17b);
                            return Container();
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref18b.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data18b = snap.data.snapshot.value;
                            calcref18b(data18b);
                            return Container();
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref19b.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data19b = snap.data.snapshot.value;
                            calcref19b(data19b);
                            return Container();
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref20b.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data20b = snap.data.snapshot.value;
                            calcref20b(data20b);
                            return Container();
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref21b.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data21b = snap.data.snapshot.value;
                            calcref21b(data21b);
                            return Container();
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref22b.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data22b = snap.data.snapshot.value;
                            calcref22b(data22b);
                            return Container();
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref23b.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data23b = snap.data.snapshot.value;
                            calcref23b(data23b);
                            return Container();
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref24b.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data24b = snap.data.snapshot.value;
                            calcref24b(data24b);
                            return Container();
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref25b.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data25b = snap.data.snapshot.value;
                            calcref25b(data25b);
                            return Container();
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref26b.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data26b = snap.data.snapshot.value;
                            calcref26b(data26b);
                            return Container();
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref27b.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data27b = snap.data.snapshot.value;
                            calcref27b(data27b);
                            return Container();
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),


                    StreamBuilder(
                        stream: ref1a.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data1a = snap.data.snapshot.value;
                            calcref1a(data1a);
                            DateTime date = DateTime.now();
                            return Container(

                              child: buildContactRow("2021/2022 Term 1",
                                  "Date: $activate1b",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F$activate1a.jpeg?alt=media",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2Freport.${widget
                                      .value}_20212022_TERM_1.pdf?alt=media"),
                            );
                          } else {
                            _showSnackBar(context, 'check internet connection ');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref2a.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data2a = snap.data.snapshot.value;
                            calcref2a(data2a);
                            return Container(
                              child: buildContactRow("2021/2022 Term 2",
                                  "Date: $activate2b",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F$activate2a.jpeg?alt=media",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2Freport.${widget
                                      .value}_20212022_TERM_2.pdf?alt=media"),

                            );
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref3a.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data3a = snap.data.snapshot.value;
                            calcref3a(data3a);
                            return Container(
                              child: buildContactRow("2021/2022 Term 3",
                                  "Date: $activate3b",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F$activate3a.jpeg?alt=media",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2Freport.${widget
                                      .value}_20212022_TERM_3.pdf?alt=media"),


                            );
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref4a.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data4a = snap.data.snapshot.value;
                            calcref4a(data4a);
                            return Container(
                              child: buildContactRow("2022/2023 Term 1",
                                  "Date: $activate4b",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F$activate4a.jpeg?alt=media",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2Freport.${widget
                                      .value}_20222023_TERM_1.pdf?alt=media"),

                            );
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref5a.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data5a = snap.data.snapshot.value;
                            calcref5a(data5a);
                            return Container(child: buildContactRow(
                                "2022/2023 Term 2", "Date: $activate5b",
                                "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F$activate5a.jpeg?alt=media",
                                "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2Freport.${widget
                                    .value}_20222023_TERM_2.pdf?alt=media"),
                            );
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref6a.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data6a = snap.data.snapshot.value;
                            calcref6a(data6a);
                            return Container(child: buildContactRow(
                                "2022/2023 Term 3", "Date: $activate6b",
                                "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F$activate6a.jpeg?alt=media",
                                "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2Freport.${widget
                                    .value}_20222023_TERM_3.pdf?alt=media"),
                            );
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref7a.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data7a = snap.data.snapshot.value;
                            calcref7a(data7a);
                            return Container(
                              child: buildContactRow("2023/2024 Term 1",
                                  "Date: $activate7b",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F$activate7a.jpeg?alt=media",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2Freport.${widget
                                      .value}_20232024_TERM_1.pdf?alt=media"),

                            );
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref8a.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data8a = snap.data.snapshot.value;
                            calcref8a(data8a);
                            return Container(
                              child: buildContactRow("2023/2024 Term 2",
                                  "Date: $activate8b",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F$activate8a.jpeg?alt=media",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2Freport.${widget
                                      .value}_20232024_TERM_2.pdf?alt=media"),

                            );
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref9a.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data9a = snap.data.snapshot.value;
                            calcref9a(data9a);
                            return Container(
                              child: buildContactRow("2023/2024 Term 3",
                                  "Date: $activate9b",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F$activate9a.jpeg?alt=media",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2Freport.${widget
                                      .value}_20232024_TERM_3.pdf?alt=media"),

                            );
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref10a.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data10a = snap.data.snapshot.value;
                            calcref10a(data10a);
                            return Container(
                              child: buildContactRow("2024/2025 Term 1",
                                  "Date: $activate10b",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F$activate10a.jpeg?alt=media",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2Freport.${widget
                                      .value}_20242025_TERM_1.pdf?alt=media"),

                            );
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref11a.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data11a = snap.data.snapshot.value;
                            calcref11a(data11a);
                            return Container(
                              child: buildContactRow("2024/2025 Term 2",
                                  "Date: $activate11b",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F$activate11a.jpeg?alt=media",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2Freport.${widget
                                      .value}_20242025_TERM_2.pdf?alt=media"),

                            );
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref12a.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data12a = snap.data.snapshot.value;
                            calcref12a(data12a);
                            return Container(
                              child: buildContactRow("2024/2025 Term 3",
                                  "Date: $activate12b",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F$activate12a.jpeg?alt=media",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2Freport.${widget
                                      .value}_20242025_TERM_3.pdf?alt=media"),

                            );
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref13a.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data13a = snap.data.snapshot.value;
                            calcref13a(data13a);
                            return Container(
                              child: buildContactRow("2025/2026 Term 1",
                                  "Date: $activate13b",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F$activate13a.jpeg?alt=media",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2Freport.${widget
                                      .value}_20252026_TERM_1.pdf?alt=media"),

                            );
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref14a.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data14a = snap.data.snapshot.value;
                            calcref14a(data14a);
                            return Container(
                              child: buildContactRow("2025/2026 Term 2",
                                  "Date: $activate14b",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F$activate14a.jpeg?alt=media",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2Freport.${widget
                                      .value}_20252026_TERM_2.pdf?alt=media"),

                            );
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref15a.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data15a = snap.data.snapshot.value;
                            calcref15a(data15a);
                            return Container(
                              child: buildContactRow("2025/2026 Term 3",
                                  "Date: $activate15b",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F$activate15a.jpeg?alt=media",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2Freport.${widget
                                      .value}_20252026_TERM_3.pdf?alt=media"),

                            );
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref16a.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data16a = snap.data.snapshot.value;
                            calcref16a(data16a);
                            return Container(
                              child: buildContactRow("2026/2027 Term 1",
                                  "Date: $activate16b",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F$activate16a.jpeg?alt=media",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2Freport.${widget
                                      .value}_20262027_TERM_1.pdf?alt=media"),

                            );
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref17a.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data17a = snap.data.snapshot.value;
                            calcref17a(data17a);
                            return Container(
                              child: buildContactRow("2026/2027 Term 2",
                                  "Date: $activate17b",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F$activate17a.jpeg?alt=media",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2Freport.${widget
                                      .value}_20262027_TERM_2.pdf?alt=media"),

                            );
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref18a.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data18a = snap.data.snapshot.value;
                            calcref18a(data18a);
                            return Container(
                              child: buildContactRow("2026/2027 Term 3",
                                  "Date: $activate18b",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F$activate18a.jpeg?alt=media",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2Freport.${widget
                                      .value}_20262027_TERM_3.pdf?alt=media"),

                            );
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref19a.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data19a = snap.data.snapshot.value;
                            calcref19a(data19a);
                            return Container(
                              child: buildContactRow("2027/2028 Term 1",
                                  "Date: $activate19b",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F$activate19a.jpeg?alt=media",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2Freport.${widget
                                      .value}_20272028_TERM_1.pdf?alt=media"),

                            );
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref20a.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data20a = snap.data.snapshot.value;
                            calcref20a(data20a);
                            return Container(
                              child: buildContactRow("2027/2028 Term 2",
                                  "Date: $activate20b",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F$activate20a.jpeg?alt=media",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2Freport.${widget
                                      .value}_20272028_TERM_2.pdf?alt=media"),

                            );
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref21a.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data21a = snap.data.snapshot.value;
                            calcref21a(data21a);
                            return Container(
                              child: buildContactRow("2027/2028 Term 3",
                                  "Date: $activate21b",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F$activate21a.jpeg?alt=media",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2Freport.${widget
                                      .value}_20272028_TERM_3.pdf?alt=media"),

                            );
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref22a.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data22a = snap.data.snapshot.value;
                            calcref22a(data22a);
                            return Container(
                              child: buildContactRow("2028/2029 Term 1",
                                  "Date: $activate22b",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F$activate22a.jpeg?alt=media",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2Freport.${widget
                                      .value}_20282029_TERM_1.pdf?alt=media"),

                            );
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref23a.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data23a = snap.data.snapshot.value;
                            calcref23a(data23a);
                            return Container(
                              child: buildContactRow("2028/2029 Term 2",
                                  "Date: $activate23b",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F$activate23a.jpeg?alt=media",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2Freport.${widget
                                      .value}_20282029_TERM_2.pdf?alt=media"),

                            );
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref24a.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data24a = snap.data.snapshot.value;
                            calcref24a(data24a);
                            return Container(
                              child: buildContactRow("2028/2029 Term 3",
                                  "Date: $activate24b",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F$activate24a.jpeg?alt=media",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2Freport.${widget
                                      .value}_20282029_TERM_3.pdf?alt=media"),

                            );
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref25a.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data25a = snap.data.snapshot.value;
                            calcref25a(data25a);
                            return Container(
                              child: buildContactRow("2029/2030 Term 1",
                                  "Date: $activate25b",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F$activate25a.jpeg?alt=media",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2Freport.${widget
                                      .value}_20292030_TERM_1.pdf?alt=media"),

                            );
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref26a.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data26a = snap.data.snapshot.value;
                            calcref26a(data26a);
                            return Container(
                              child: buildContactRow("2029/2030 Term 2",
                                  "Date: $activate26b",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F$activate26a.jpeg?alt=media",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2Freport.${widget
                                      .value}_20292030_TERM_2.pdf?alt=media"),

                            );
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),
                    StreamBuilder(
                        stream: ref27a.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data27a = snap.data.snapshot.value;
                            calcref27a(data27a);

                            return Container(

                              child: buildContactRow("2029/2030 Term 3",
                                  "Date: $activate27b",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F$activate27a.jpeg?alt=media",
                                  "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2Freport.${widget
                                      .value}_20292030_TERM_3.pdf?alt=media"),

                            );
                          } else {
                            print('ddd');

                            return Container();
                          }
                        }),




                  ],
                ),
              )
          )
        ],
      ),
    );
  }


  Container buildContactRow(String name, String phone, String imageurl,
      source) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.grey[200]),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(imageurl),
                radius: 25,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [

                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        phone,
                        style: (TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        )),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          GestureDetector(
              onTap: () {
                _navigateToPage(
                  title: "$name",
                  child: PDF.network(
                    source,
                  ),
                );
              },
              child: Container(
                height: 45,
                width: 85,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.menu_open,
                  size: 20,
                  color: Colors.black87,
                ),

              )

          ),
        ],
      ),
    );
  }

  Container buildRecentContact(String name, String url) {
    return Container(
      margin: EdgeInsets.only(right: 30),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.green),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(url),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(
                fontSize: 10, fontWeight: FontWeight.bold, color: Colors.grey),
          )
        ],
      ),
    );
  }

  Container buildExpenseBotton(IconData icon, String title, bool isActive) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.black.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isActive ? Color(0XFF00B686) : Colors.white,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: isActive ? Color(0XFF00B686) : Colors.white,
            ),
          )
        ],
      ),
    );
  }

  void _navigateToPage({String title, Widget child}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            Scaffold(

              appBar: AppBar(

                leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                title: Text(
                  title,
                  style: TextStyle(color: Colors.amber),
                ),
                backgroundColor: Colors.transparent,
                elevation: 0.0,


                centerTitle: true,
              ),
              body: Center(child: child),
            ),
      ),
    );
  }

  void calcref1a(data1a) {
    activate1a = data1a;
    print(activate1a);
  }

  void calcref2a(data2a) {
    activate2a = data2a;
    print(activate2a);
  }

  void calcref3a(data3a) {
    activate3a = data3a;
  }

  void calcref4a(data4a) {
    activate4a = data4a;
  }

  void calcref5a(data5a) {
    activate5a = data5a;
  }

  void calcref6a(data6a) {
    activate6a = data6a;
  }

  void calcref7a(data7a) {
    activate7a = data7a;
  }

  void calcref8a(data8a) {
    activate8a = data8a;
  }

  void calcref9a(data9a) {
    activate9a = data9a;
  }

  void calcref10a(data10a) {
    activate10a = data10a;
  }

  void calcref11a(data11a) {
    activate11a = data11a;
  }

  void calcref12a(data12a) {
    activate12a = data12a;
  }

  void calcref13a(data13a) {
    activate13a = data13a;
  }

  void calcref14a(data14a) {
    activate14a = data14a;
  }

  void calcref15a(data15a) {
    activate15a = data15a;
  }

  void calcref16a(data16a) {
    activate16a = data16a;
  }

  void calcref17a(data17a) {
    activate17a = data17a;
  }

  void calcref18a(data18a) {
    activate18a = data18a;
  }

  void calcref19a(data19a) {
    activate19a = data19a;
  }

  void calcref20a(data20a) {
    activate20a = data20a;
  }

  void calcref21a(data21a) {
    activate21a = data21a;
  }

  void calcref22a(data22a) {
    activate22a = data22a;
  }

  void calcref23a(data23a) {
    activate23a = data23a;
  }

  void calcref24a(data24a) {
    activate24a = data24a;
  }

  void calcref25a(data25a) {
    activate25a = data25a;
  }

  void calcref26a(data26a) {
    activate26a = data26a;
  }

  void calcref27a(data27a) {
    activate27a = data27a;
  }

  void calcref1b(data1b) {
    activate1b = data1b;
  }

  void calcref2b(data2b) {
    activate2b = data2b;
  }

  void calcref3b(data3b) {
    activate3b = data3b;
  }

  void calcref4b(data4b) {
    activate4b = data4b;
  }

  void calcref5b(data5b) {
    activate5b = data5b;
  }

  void calcref6b(data6b) {
    activate6b = data6b;
  }

  void calcref7b(data7b) {
    activate7b = data7b;
  }

  void calcref8b(data8b) {
    activate8b = data8b;
  }

  void calcref9b(data9b) {
    activate9b = data9b;
  }

  void calcref10b(data10b) {
    activate10b = data10b;
  }

  void calcref11b(data11b) {
    activate11b = data11b;
  }

  void calcref12b(data12b) {
    activate12b = data12b;
  }

  void calcref13b(data13b) {
    activate13b = data13b;
  }

  void calcref14b(data14b) {
    activate14b = data14b;
  }

  void calcref15b(data15b) {
    activate15b = data15b;
  }

  void calcref16b(data16b) {
    activate16b = data16b;
  }

  void calcref17b(data17b) {
    activate17b = data17b;
  }

  void calcref18b(data18b) {
    activate18b = data18b;
  }

  void calcref19b(data19b) {
    activate19b = data19b;
  }

  void calcref20b(data20b) {
    activate20b = data20b;
  }

  void calcref21b(data21b) {
    activate21b = data21b;
  }

  void calcref22b(data22b) {
    activate22b = data22b;
  }

  void calcref23b(data23b) {
    activate23b = data23b;
  }

  void calcref24b(data24b) {
    activate24b = data24b;
  }

  void calcref25b(data25b) {
    activate25b = data25b;
  }

  void calcref26b(data26b) {
    activate26b = data26b;
  }

  void calcref27b(data27b) {
    activate27b = data27b;
  }
  void _showSnackBar(BuildContext context, String message) {

    final snackBar = SnackBar(content: Text(message));
    Scaffold.of(context).showSnackBar(snackBar);
  }

}