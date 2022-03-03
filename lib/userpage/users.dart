import 'package:flutter/material.dart';
import 'package:fsa/studentpages/studentpages.dart';
import 'package:fsa/SizeConfig.dart';
import 'package:fsa/userpage/note.dart';
import 'package:fsa/userpage/database_helper.dart';
import 'package:fsa/userpage/note_detail.dart';
import 'package:sqflite/sqflite.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';

class userspage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return userspageState();
  }
}

class userspageState extends State<userspage> {
  DatabaseHelper databaseHelper = DatabaseHelper();
  List<Note> noteList;
  int count = 0;
  int _selectedItemIndex = 1;
  final fb = FirebaseDatabase.instance;
  FirebaseAuth auth = FirebaseAuth.instance;
  var NAME="";
  String PASSWORD="";
  var AMOUNTOWED="";
  var AMOUNTPAID="";
  var CARRYFORWARDBALANCE="";
  String CLASS="";
  var PERCENTAGEPAID="";
  var STUDENTID="";
  var TOTALFEES="";
  var alltogether="";

  @override
  Widget build(BuildContext context) {
    login(context);
    SizeConfig().init(context);
    if (noteList == null) {
        noteList = List<Note>();
        updateListView();

      }


    return Scaffold(
      appBar: AppBar(

        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.transparent),
          onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) => userspage()))
        ),
        title: Text(
          'Select Student',
          style: TextStyle(color: Colors.amber),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,


        centerTitle: true,
      ),



        body: Container(
          color: Colors.grey[300],
          child:

          getNoteListView(),


        ) ,

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('FAB clicked');
            navigateToDetail(Note('', '', 2), 'Add User');
          },

          tooltip: 'Add User',

          child: Icon(Icons.add),
          backgroundColor: Color(0XFF4568dc),


        ),
      );
    }

    ListView getNoteListView() {


      return ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context, int position) {
          final ref=fb.reference().child("ENGLEBERT SCHOOL/ALLSTUDENTS/${noteList[position].title}/NAME");
          final ref2=fb.reference().child("ENGLEBERT SCHOOL/ALLSTUDENTS/${noteList[position].title}/student id");
          final ref3=fb.reference().child("ENGLEBERT SCHOOL/ALLSTUDENTS/${noteList[position].title}/class");

          return Card(

              elevation: 2.0,
              child: Padding(

              padding:
              EdgeInsets.only(left: SizeConfig.safeBlockHorizontal*0.2, right: SizeConfig.safeBlockHorizontal*0.2, top: SizeConfig.safeBlockVertical*0.7,
          ),



            child: GestureDetector(

            onTap: () {
          debugPrint("ListTile Tapped");
          var userid = this.noteList[position].title;


          var route = PageRouteBuilder(pageBuilder: (context, animation1, animation2)=>HomePage(value: userid),);
          Navigator.of(context).push(route);

    },


                 child:Container(
              padding: EdgeInsets.all(1),
              height: SizeConfig.safeBlockVertical * 26,


              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(
                    colors: [Color(0XFF4568dc), Color(0XFFb06ab3)]),
              ),
              child: Padding(

                padding:
                EdgeInsets.only(left: SizeConfig.safeBlockHorizontal*1, right: SizeConfig.safeBlockHorizontal*1, top: SizeConfig.safeBlockVertical*1,bottom: SizeConfig.safeBlockVertical*0.02,
                ),
                child: Column(


                  children: [



                    Row(
                      children: [
                        Container(

                          width:  SizeConfig.safeBlockHorizontal * 25,

                          height: SizeConfig.safeBlockVertical * 13.5,

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
                            borderRadius: BorderRadius.circular(90.0),
                          ),
                          padding: EdgeInsets.all(0.1),
                          child: CircleAvatar(

                            backgroundImage: NetworkImage(
                                "https://firebasestorage.googleapis.com/v0/b/azschool-ecb31.appspot.com/o/ENGLEBERT%20SCHOOL%2F${noteList[position].title}.jpeg?alt=media"),
                          ),
                        ),
                        SizedBox(
                          width: 7,
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
                                    return Text(
                                      data,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    );



                                  }else{
                                    print('ddd');

                                    return Center(child: Text(''));};}
                            ),

                            SizedBox(


                              height: SizeConfig.safeBlockVertical * 0.9,
                            ),
                            StreamBuilder(
                                stream: ref2.onValue,
                                builder: (context, snap) {
                                  if (snap.hasData &&
                                      !snap.hasError &&
                                      snap.data.snapshot.value != null) {
                                    var data = snap.data.snapshot.value;
                                    print(data);
                                    return Text(
                                      'Student ID: $data',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                    );



                                  }else{
                                    print('ddd');

                                    return Center(child: Text(''));};}
                            ),


                            SizedBox(


                              height: SizeConfig.safeBlockVertical * 0.4,
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
                                        return RichText(
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
                                        );



                                      }else{
                                        print('ddd');

                                        return Center(child: Text(''));};}
                                ),
                              ],
                            )

                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.safeBlockVertical*2,
                    ),
                    Text('view academic reports, bills and pay fees',style: TextStyle(color: Colors.white),),
                    Row(
                      children: [
                        Container(
                          child: Image.asset("assets/englebert.png",alignment: Alignment.bottomLeft,),
                          width:  SizeConfig.safeBlockHorizontal * 85,

                          height: SizeConfig.safeBlockVertical * 4.2,


                        ),

                    GestureDetector(
                      child:
                      Container(
                        alignment: Alignment.bottomRight ,
                        child:
                         Icon(Icons.delete, color: Colors.white,size: 30,),
                      ),
                      onTap: () {
                        _delete(context, noteList[position]);
                      },
                    ), ],),


                  ],
                ),
              ),



            ),),),

          );
        },
      );
    }

    // Returns the priority color
    Color getPriorityColor(int priority) {
      switch (priority) {
        case 1:
          return Colors.red;
          break;
        case 2:
          return Colors.yellow;
          break;

        default:
          return Colors.yellow;
      }
    }

    // Returns the priority icon
    Icon getPriorityIcon(int priority) {
      switch (priority) {
        case 1:
          return Icon(Icons.play_arrow);
          break;
        case 2:
          return Icon(Icons.keyboard_arrow_right);
          break;

        default:
          return Icon(Icons.keyboard_arrow_right);
      }
    }

    void _delete(BuildContext context, Note note) async {

      int result = await databaseHelper.deleteNote(note.id);
      if (result != 0) {
        _showSnackBar(context, 'User Deleted Successfully');
        updateListView();
      }
    }

    void _showSnackBar(BuildContext context, String message) {

      final snackBar = SnackBar(content: Text(message));
      Scaffold.of(context).showSnackBar(snackBar);
    }

    void navigateToDetail(Note note, String title) async {
      bool result = await Navigator.push(context, MaterialPageRoute(builder: (context) {
        return LoginScreen(note, title);
      }));

      if (result == true) {
        updateListView();
      }
    }

    void updateListView() {

      final Future<Database> dbFuture = databaseHelper.initializeDatabase();
      dbFuture.then((database) {

        Future<List<Note>> noteListFuture = databaseHelper.getNoteList();
        noteListFuture.then((noteList) {
          setState(() {
            this.noteList = noteList;
            this.count = noteList.length;
          });
        });
      });
    }



  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  void login(BuildContext context) async {
    _firebaseAuth.signInWithEmailAndPassword(
        email: "baslab.fsa@gmail.com",
        password: "1jnadl6"
    );

  }
}
