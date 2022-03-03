import 'package:flutter/material.dart';
import 'package:fsa/studentpages/studentpages.dart';
import 'dart:async';
import 'package:fsa/contactpage/books_api.dart';
import 'package:fsa/contactpage/book.dart';
import 'package:fsa/widget/search_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fsa/SizeConfig.dart';


class contactpage extends StatefulWidget {
  @override
  _contactpageState createState() => _contactpageState();
}

class _contactpageState extends State<contactpage> {

  int _selectedItemIndex = 2;
  List<Book> books = [];
  String query = '';
  Timer debouncer;

  @override
  void initState() {
    super.initState();

    init();
  }

  @override
  void dispose() {
    debouncer?.cancel();
    super.dispose();
  }

  /*void customLaunch(command) async{
    if(await canLaunch((command))){
      await launch(command);}
    else{print("could not launch $command");
    }
  }*/
  var great = '0262360230';

  launchcommand(command) async {
    await launch(command);
  }

  void debounce(VoidCallback callback, {
    Duration duration = const Duration(milliseconds: 1000),
  }) {
    if (debouncer != null) {
      debouncer.cancel();
    }

    debouncer = Timer(duration, callback);
  }

  Future init() async {
    final books = await BooksApi.getBooks(query);

    setState(() => this.books = books);
  }


  @override
  Widget build(BuildContext context) =>
      Scaffold(


        body: Container(

          color: Colors.blueGrey[40],
          child:
          Column(


            children: <Widget>[


              Container(
                padding: EdgeInsets.only(left: 10, right: 10, top: 30),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0XFF4568dc), Color(0XFFb06ab3)]),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Admin",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.black87,
                          ),
                        ),

                        buildExpenseBotton(
                            Icons.phone, "Mobile", false, 'tel:+233303303135'),
                        buildExpenseBotton(Icons.mail, "Mail", false,
                            'mailto:info.englebertschool@gmail.com?subject=${Uri
                                .encodeFull('')}&body=${Uri.encodeFull(
                                'Hi there, '
                                    '\n My name is ...... and my child is......, a student of your school in Grade...... I am writing to seek your assistance with........')}'),
                        buildExpenseBotton2(''),
                        buildExpenseBotton3(''),
                        //buildExpenseBotton4(''),
                        // buildExpenseBotton5(''),


                      ],
                    ),

                    /* Container(padding: EdgeInsets.only(left: 150),
                  height: 85,
                  width: 370,
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset("assets/first star logo.png"),

                )*/
                  ],
                ),
                height: 130,),
              buildSearch(),
              /*  Text(
          "Contact Teachers",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey),
        ),

*/

              Expanded(

                child: ListView.builder(
                  itemCount: books.length,
                  itemBuilder: (context, index) {
                    final book = books[index];

                    return buildBook(book);
                  },
                ),
              ),
            ],
          ),),
      );


  Container buildContactRow(String name, String phone, String url) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 9),
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
                backgroundImage: NetworkImage(url),
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
                      Icon(
                        Icons.phone,
                        color: Colors.grey,
                        size: 16,
                      ),
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

          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Colors.greenAccent.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("assets/whatsapp.png"),

          )
        ],
      ),
    );
  }


  Container buildExpenseBotton(IconData icon, String title, bool isActive,
      url) {
    return Container(
        height: 55,
        width: 55,
        decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.black.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: GestureDetector(
          onTap: () {
            launchcommand(url);
          },

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

        )


    );
  }

  Container buildExpenseBotton2(image) {
    return Container(
      child: GestureDetector(
        onTap: () {
          launchcommand('https://wa.me/233262360230');
        },


        child: Container(
          height: 65,
          width: 65,
          child: Image.asset("assets/whatsapp.png"),),

      ),

    );
  }

  Container buildExpenseBotton3(ImageIcon) {
    return Container(
      child: GestureDetector(
        onTap: () {
          launchcommand('https://m.facebook.com/englebertschool72/');
        },
        child: Container(
          height: 54,
          width: 54,
          child: Image.asset("assets/facebook.PNG"),),

      ),

    );
  }

  Container buildExpenseBotton4(ImageIcon) {
    return Container(
      child: GestureDetector(
        onTap: () {
          launchcommand('https://www.instagram.com/kobby.jr/');
        },
        child: Container(
          height: 54,
          width: 54,
          child: Image.asset("assets/instagram.PNG"),),

      ),

    );
  }

  Container buildExpenseBotton5(ImageIcon) {
    return Container(
      child: GestureDetector(
        onTap: () {
          launchcommand(
              'https://gh.linkedin.com/in/stephen-amanshia-brako-23ba34158');
        },
        child: Container(
          height: 54,
          width: 54,
          child: Image.asset("assets/linkedin.PNG"),),

      ),

    );
  }


  GestureDetector buildNavBarItem0(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
          Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) => HomePage()));
        });
      },
      child: Container(
        width: MediaQuery
            .of(context)
            .size
            .width / 3,
        height: 60,
        decoration: index == _selectedItemIndex
            ? BoxDecoration(
            border:
            Border(bottom: BorderSide(width: 4, color: Colors.black54)),
            gradient: LinearGradient(colors: [
              Colors.black54.withOpacity(0.3),
              Colors.black54.withOpacity(0.016),
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter))
            : BoxDecoration(),
        child: Icon(
          icon,
          color: index == _selectedItemIndex ? Color(0XFF0e0e0e) : Colors.grey,
        ),
      ),
    );
  }

  Widget buildSearch() =>
      SearchWidget(
        text: query,
        hintText: "Class or Teacher's Name",
        onChanged: searchBook,
      );

  Future searchBook(String query) async =>
      debounce(() async {
        final books = await BooksApi.getBooks(query);

        if (!mounted) return;

        setState(() {
          this.query = query;
          this.books = books;
        });
      });


  GestureDetector buildBook(Book book) {
    return GestureDetector(
      child: InkWell(
        onTap: () {
          //
        },
        highlightColor: Colors.grey[350],
        splashColor: Colors.grey[300],

        child: Container(
          padding: EdgeInsets.symmetric(vertical: 9),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 1, color: Colors.grey),
            ),
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/user.png"),
                    radius: 25,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      launchcommand('tel:${book.callnumber}');
                    },


                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          book.Name,
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
                            Icon(
                              Icons.phone,
                              color: Colors.grey,
                              size: 16,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '${book.callnumber}',
                              style: (TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              )),
                            )
                          ],
                        )
                      ],
                    ),)
                ],
              ),

              GestureDetector(
                  onTap: () {
                    launchcommand('https://wa.me/233${book.whatsapp}');
                  },


                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset("assets/whatsapp.png"),

                  )


              )
            ],
          ),
        ),),);
  }

}