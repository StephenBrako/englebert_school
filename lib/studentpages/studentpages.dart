import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fsa/base_screen.dart';
import 'package:fsa/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:fsa/records/records.dart';
import 'package:fsa/report/report.dart';
import 'package:fsa/payment/payment.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:fsa/SizeConfig.dart';
import 'dart:async';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';






class HomePage extends StatefulWidget {
  final String value;
  final String email;
  HomePage({Key key,this.value, this.email}):super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex=1;
  final fb = FirebaseDatabase.instance;
  var NAME="";
  String PASSWORD="";
  double AMOUNTOWED=0;
  double AMOUNTPAID;
  var CARRYFORWARDBALANCE="";
  String CLASS="";
  var PERCENTAGEPAID="";
  var STUDENTID="";
  double TOTALFEES=0;
  String name = "";


  void moveToLastScreen() {
    Navigator.pop(context, true);
  }





  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
    final ref=fb.reference().child("ENGLEBERT SCHOOL/ALLSTUDENTS/${widget.value}/NAME");
    final ref2=fb.reference().child("ENGLEBERT SCHOOL/ALLSTUDENTS/${widget.value}/student id");
    final ref3=fb.reference().child("ENGLEBERT SCHOOL/ALLSTUDENTS/${widget.value}/class");
    final ref4=fb.reference().child("ENGLEBERT SCHOOL/ALLSTUDENTS/${widget.value}/total fees");
    final ref5=fb.reference().child("ENGLEBERT SCHOOL/ALLSTUDENTS/${widget.value}/amount owed");
    final ref6=fb.reference().child("ENGLEBERT SCHOOL/ALLSTUDENTS/${widget.value}/percentage paid");
    final ref7=fb.reference().child("ENGLEBERT SCHOOL/ALLSTUDENTS/${widget.value}/amount paid");
    final note1=fb.reference().child("ENGLEBERT SCHOOL/notification/note1");
    final note2=fb.reference().child("ENGLEBERT SCHOOL/notification/note2");
    final note3=fb.reference().child("ENGLEBERT SCHOOL/notification/note3");
    final paymentdeadlinedate=fb.reference().child("ENGLEBERT SCHOOL/paymentdeadlinedate");


    return Scaffold(
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
          Column(
            children: [
              Container(

                height: SizeConfig.safeBlockVertical * 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0XFF4568dc), Color(0XFFb06ab3)]),
                ),
                child: Padding(
                  padding:
                  EdgeInsets.only(left: SizeConfig.safeBlockHorizontal*1, right: SizeConfig.safeBlockHorizontal*1, top: SizeConfig.safeBlockVertical *2.8),
                  child: Column(

                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         IconButton(
                          icon: Icon(Icons.arrow_back, color: Colors.black),
                          onPressed: () => Navigator.of(context).pop(),
                        ),

                          /*Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),*/
                          Text(
                            "ENGLEBERT SCHOOL",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          /*Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),*/
                        ],
                      ),
                      SizedBox(
                        width:  SizeConfig.safeBlockHorizontal * 0.8,

                        height: SizeConfig.safeBlockVertical * 0.01,
                      ),
                      Row(
                        children: [
                          Container(

                            width:  SizeConfig.safeBlockHorizontal * 25,

                            height: SizeConfig.safeBlockVertical * 16,

                            decoration: BoxDecoration(

                              color: Color(0XFF00B686),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(.1),
                                    blurRadius: 8,
                                    spreadRadius: 3)
                              ],
                              border: Border.all(
                                width: 1,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            padding: EdgeInsets.all(1),
                            child: Container(

                               child: Image.network(
                                   "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F${widget.value}.jpeg?alt=media"),

                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.safeBlockHorizontal*2,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                             StreamBuilder(
                                 stream: ref.onValue,
                                 builder: (context, snap) {
                                         if (snap.hasData &&
                                           !snap.hasError &&
                                          snap.data.snapshot.value != null) {
                                           var data = snap.data.snapshot.value;
                                           print(data);
                                          return Center(child: Text(
                                             data,
                                             style: TextStyle(
                                                 fontSize: 18,
                                                 fontWeight: FontWeight.w600,
                                                 color: Colors.white),),);




                                         }else{
                                           print('ddd');

                                 return Center(child: Text(
                                         " ",
                                         style: TextStyle(
                                         fontSize: 18,
                                         fontWeight: FontWeight.w600,
                                         color: Colors.white),),);}}
                                 ),
                              SizedBox(


                                height: SizeConfig.safeBlockVertical * 0.5,
                              ),
                              StreamBuilder(
                                  stream: ref2.onValue,
                                  builder: (context, snap) {
                                    if (snap.hasData &&
                                        !snap.hasError &&
                                        snap.data.snapshot.value != null) {
                                      var data = snap.data.snapshot.value;
                                      print(data);
                                      return Center(child: Text(
                                        'Student ID: $data',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ),);



                                    }else{
                                      print('ddd');

                                    return Center(child: Text(
                                      'Student ID: ',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                    ),);}}
                              ),


                              SizedBox(


                                  height: SizeConfig.safeBlockVertical * 0.5,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.school,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  StreamBuilder(
                                      stream: ref3.onValue,
                                      builder: (context, snap) {
                                        if (snap.hasData &&
                                            !snap.hasError &&
                                            snap.data.snapshot.value != null) {
                                          var data = snap.data.snapshot.value;
                                          print(data);
                                         return Center(child: RichText(
                                            text: TextSpan(
                                                text: 'Class: $data',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                                children: [
                                                  TextSpan(
                                                      text: '',
                                                      style: TextStyle(
                                                          color: Colors.white38))
                                                ]),
                                          ),);



                                        }else{
                                          print('ddd');

                                        return Center(child: RichText(
                                          text: TextSpan(
                                              text: 'Class: ',
                                              style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              children: [
                                                TextSpan(
                                                    text: '',
                                                    style: TextStyle(
                                                        color: Colors.white38))
                                              ]),
                                        ),);} }
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),

              Expanded(


                child: Container(


                  padding: EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.grey.shade200,

                  child: ListView(
                    padding: EdgeInsets.only(top: SizeConfig.safeBlockVertical*10),

                    children: [


                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buildActivityButton1(Icons.book, "View Reports",
                              Colors.blueGrey.withOpacity(0.4), Color(0XFF01579B),widget.value),

                        buildActivityButton3(
                              Icons.money,
                              "Records",
                            Colors.blueGrey.withOpacity(0.4),
                            Color(0XFF0097A7),widget.value),
                        ],
                      ),

                      SizedBox(


                        height: SizeConfig.safeBlockVertical * 1,
                      ),
                      Text(
                        "News and Notifications",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      SizedBox(


                          height: SizeConfig.safeBlockVertical * 1,
                      ),
                  Container(
                    padding:
                    EdgeInsets.only(left: SizeConfig.safeBlockVertical * 2, right: SizeConfig.safeBlockVertical * 2, top: SizeConfig.safeBlockVertical * 0.01),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),


                    height: SizeConfig.safeBlockVertical * 30,
                    child: ListView(
                      children: [

                        Text('ALL STUDENTS',style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueGrey,
                        ),),
                        SizedBox(


                          height: SizeConfig.safeBlockVertical * 1,
                        ),
                        StreamBuilder(
                            stream: note1.onValue,
                            builder: (context, snap) {
                              if (snap.hasData &&
                                  !snap.hasError &&
                                  snap.data.snapshot.value != null) {
                                var data = snap.data.snapshot.value;
                                print(data);
                                return Text('1. $data',style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),);
                              } else {
                                print('ddd');

                                return Text('1. no new notification',style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),);
                              }
                            } ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 1.5,
                        ),
                        StreamBuilder(
                            stream: note2.onValue,
                            builder: (context, snap) {
                              if (snap.hasData &&
                                  !snap.hasError &&
                                  snap.data.snapshot.value != null) {
                                var data = snap.data.snapshot.value;
                                print(data);
                                return Text('2. $data',style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),);
                              } else {
                                print('ddd');

                                return Text('2. no new notification',style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),);
                              }
                            } ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 1.5,
                        ),
                        StreamBuilder(
                            stream: note3.onValue,
                            builder: (context, snap) {
                              if (snap.hasData &&
                                  !snap.hasError &&
                                  snap.data.snapshot.value != null) {
                                var data = snap.data.snapshot.value;
                                print(data);
                                return Text('3. $data',style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),);
                              } else {
                                print('ddd');

                                return Text('3. no new notification',style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),);
                              }
                            } ),
                        SizedBox(


                          height: SizeConfig.safeBlockVertical * 1.5,
                        ),

                      ],
                    ),
                  ),


                    ],
                  ),
                ),
              ),
            //Container(


              //child: Image.asset("assets/first star logo.png"),
                //width:  SizeConfig.safeBlockHorizontal * 100,

               // height: SizeConfig.safeBlockVertical * 12,
                //color: Colors.grey.shade100




            //)

            ],
          ),
          Positioned(
            top: SizeConfig.safeBlockVertical * 30,
            right: 1,
            left: 1,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: SizeConfig.safeBlockVertical * 1, horizontal: SizeConfig.safeBlockHorizontal*1),
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.9,


              height: SizeConfig.safeBlockVertical * 20,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.05),
                      blurRadius: 8,
                      spreadRadius: 3,
                      offset: Offset(0, 10),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Total Fees",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),

                            ],
                          ),
                          StreamBuilder(
                              stream: ref4.onValue,
                              builder: (context, snap) {
                                if (snap.hasData &&
                                    !snap.hasError &&
                                    snap.data.snapshot.value != null) {
                                  var data2 = snap.data.snapshot.value;
                                  print(data2);
                                   calc1(data2);
                                   return Center(child: Text(
                                    'GHS$data2',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                        color: Colors.black87),
                                  ),);



                                }else{
                                  print('ddd');

                                return Center(child: Text(
                                  'GHS.00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      color: Colors.black87),
                                ),);}}
                          ),
                        ],
                      ),
                      Container(width: 1, height: SizeConfig.safeBlockVertical * 6, color: Colors.grey),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Amount Owed",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width:  SizeConfig.safeBlockHorizontal * 0.02,


                              ),

                            ],
                          ),
                          StreamBuilder(
                              stream: ref7.onValue,
                              builder: (context, snap) {
                                if (snap.hasData &&
                                    !snap.hasError &&
                                    snap.data.snapshot.value != null) {
                                  var data3 = snap.data.snapshot.value;
                                  print(data3);

                                  calc3(data3);
                                  return Center(child: Text(
                                    '',
                                    style: TextStyle(
                                        fontSize:0,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),);



                                }else{
                                  print('ddd');

                                  return Center(child: Text(
                                    '',
                                    style: TextStyle(
                                        fontSize: 0,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),);}}
                          ),
                          StreamBuilder(
                              stream: ref5.onValue,
                              builder: (context, snap) {
                                if (snap.hasData && !snap.hasError && snap.data.snapshot.value != null) {
                                  var data1 = snap.data.snapshot.value;
                                  print(data1);
                                   calc(data1);
                                   res();
                                  return Center(child: Text(
                                    'GHS$data1',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                        color: Colors.black87),
                                  ),);




                                }else{
                                  print('ddd');

                                return Center(child: Text(
                                  'GHS.00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      color: Colors.black87),
                                ),);}}
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(



                      height: SizeConfig.safeBlockVertical * 0.10,
                  ),
                  StreamBuilder(
                      stream: paymentdeadlinedate.onValue,
                      builder: (context, snap) {
                        if (snap.hasData &&
                            !snap.hasError &&
                            snap.data.snapshot.value != null) {
                          var data = snap.data.snapshot.value;
                          print(data);
                          return Text(
                            "Full payment deadline: $data",
                            style: TextStyle(
                              fontSize: 13,
                              fontStyle: FontStyle.italic,
                            ),
                          );
                        } else {
                          print('ddd');

                          return Text(
                            "Full payment deadline: ",
                            style: TextStyle(
                              fontSize: 13,
                              fontStyle: FontStyle.italic,
                            ),
                          );
                        }
                      } ),
                  SizedBox(


                    height: SizeConfig.safeBlockVertical * 0.5,
                  ),
                  Text(
                    "You can pay through MOMO, Visa or MasterCard",
                    style: TextStyle(
                      fontSize: 13,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(


                    height: SizeConfig.safeBlockVertical * 0.50,
                  ),
                  StreamBuilder(
                      stream: ref6.onValue,
                      builder: (context, snap) {
                        if (snap.hasData &&
                            !snap.hasError &&
                            snap.data.snapshot.value != null) {
                          var data = snap.data.snapshot.value;
                          print(data);
                          return  Padding(
                            padding: EdgeInsets.all(0.0),
                            child: new LinearPercentIndicator(

                              lineHeight: SizeConfig.safeBlockVertical * 0.40,




                              percent: data/100,
                              center: Text(
                                "50.0%",
                                style: new TextStyle(fontSize: 1.0),
                              ),

                            ),
                          );



                        }else{
                          print('ddd');
                          return Center(child: Text(
            '',
            style: TextStyle(
            fontSize: 0,
            fontWeight: FontWeight.w600,
            color: Colors.white),));} }

                  ),
                  StreamBuilder(
                      stream: ref7.onValue,
                      builder: (context, snap) {
                        if (snap.hasData &&
                            !snap.hasError &&
                            snap.data.snapshot.value != null) {
                          var data3 = snap.data.snapshot.value;
                          print(data3);

                          calc3(data3);
                          return Center(child: Text(
                            '',
                            style: TextStyle(
                                fontSize:0,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),);



                        }else{
                          print('ddd');

                          return Center(child: Text(
                            '',
                            style: TextStyle(
                                fontSize: 0,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),);}}
                  ),
                  SizedBox(



                    height: SizeConfig.safeBlockVertical * 1,
                  ),
              Container(



                child: Row(
                 children: [
                   Container(
                       child:Image.asset("assets/englebert.png"),
                     height: SizeConfig.safeBlockVertical*5,
                       width: SizeConfig.safeBlockHorizontal*30
                   ),
                   SizedBox(width: SizeConfig.safeBlockHorizontal*40,),

                   GestureDetector(

                     onTap: () {
                       print("${widget.value}");
                       print(NAME);
                       print(AMOUNTOWED);
                       var studentid="${widget.value}";
                       var parentemail="${widget.email}";

                       setState(() {


                         Navigator.of(context).push(
                             MaterialPageRoute(builder: (BuildContext context) => paymentpage(value: studentid,email: parentemail)));


                       });
                     },

                     child: Container(


                       alignment: Alignment.centerRight,
                       child: Text(
                         "Pay fees",
                         style: TextStyle(
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                             color: Color(0XFF00B686)
                         ),
                       ),
                     ),
                   ),


    ],

    )






                ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }


  GestureDetector buildActivityButton1(IconData icon, String title,
      Color backgroundColor, Color iconColor,widget) {

    return GestureDetector(
      onTap: () =>
          Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (BuildContext context) => reportpage(value: widget))),
      child: Container(
        margin: EdgeInsets.all(10),
        width:  SizeConfig.safeBlockHorizontal * 35,

        height: SizeConfig.safeBlockVertical * 10,
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconColor,
            ),
            SizedBox(

                height: SizeConfig.safeBlockVertical * 0.1,
            ),
            Text(
              title,
              style:
              TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }


  GestureDetector buildActivityButton3(IconData icon, String title,
      Color backgroundColor, Color iconColor,widget) {
    return GestureDetector(
      onTap: () =>
          Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) => recordspage(value: widget))),
      child: Container(
        margin: EdgeInsets.all(10),
        width:  SizeConfig.safeBlockHorizontal * 35,

        height: SizeConfig.safeBlockVertical * 10,
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconColor,
            ),
            SizedBox(


              height: SizeConfig.safeBlockVertical * 0.10,
            ),
            Text(
              title,
              style:
              TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
  void calc(data1){
    print("lll$data1");

    var myInt = double.parse(data1);
    assert(myInt is double);
    AMOUNTOWED=myInt;


  }
  void calc1(data2){
    print("lll$data2");
    var myInt = double.parse(data2);
    assert(myInt is double);
    TOTALFEES=myInt;

  }
  void res(){
    double fres= (AMOUNTPAID/TOTALFEES);
    if(fres>1.0){
      double fre = 100.00;
      final setperc=fb.reference().child("ENGLEBERT SCHOOL/ALLSTUDENTS/${widget.value}/percentage paid");
      setperc.set(fre);
    }
    else if(fres<0.0){
      double fre = 0.0;
      final setperc=fb.reference().child("ENGLEBERT SCHOOL/ALLSTUDENTS/${widget.value}/percentage paid");
      setperc.set(fre);
    }
    else{
      double fre=fres*100;
      final setperc=fb.reference().child("ENGLEBERT SCHOOL/ALLSTUDENTS/${widget.value}/percentage paid");
      setperc.set(fre);
    }





  }
  void calc3(data3){
    var myInt3 = double.parse(data3);
    assert(myInt3 is double);
    AMOUNTPAID=myInt3;

  }




}
class FireStorageService extends ChangeNotifier{
  FireStorageService();
  static Future<dynamic>loadImage(BuildContext,String Image)async{
    return await FirebaseStorage.instance.ref().child(Image).getDownloadURL();
  }
}

