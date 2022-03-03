import 'package:flutter/material.dart';
import 'package:fsa/constants/color_constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fsa/contactpage/contactpage.dart';
import 'package:fsa/newspage/news.dart';
import 'package:fsa/userpage/users.dart';



class BaseScreen extends StatefulWidget {
  final int value;
  const BaseScreen({Key key, this.value}) : super(key: key);



  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {



  final List<Widget> _widgetOptions = <Widget>[
    newspage(),
    userspage(),
    contactpage(),
  ];

  @override
  void initState(){
    det();
    super.initState();
  }
  int _selectedIndex;
  @override

  Widget build(BuildContext context) {
    return Scaffold(


      body: Center(

        child: _widgetOptions.elementAt(_selectedIndex),
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
            });
          }),
    );
  }

  void det(){
    setState(() {
      if (widget.value!=null){
        _selectedIndex=widget.value;
      }
      else{
        _selectedIndex=0;
      }

    });

  }
}
