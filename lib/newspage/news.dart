import 'package:flutter/material.dart';
import 'package:fsa/SizeConfig.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:upgrader_codefirst/upgrader_codefirst.dart';

class newspage extends StatefulWidget {
@override
_newspageState createState() => _newspageState();
}

class _newspageState extends State<newspage> {
  int _selectedItemIndex = 3;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(

        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          '',
          style: TextStyle(color: Colors.amber),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: SizeConfig.safeBlockVertical*0.1,


        centerTitle: true,
      ),

      body:UpgradeAlert(
        child: const WebView(
          initialUrl: 'https://englebertbaslab.yolasite.com/',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),);

  }
}
