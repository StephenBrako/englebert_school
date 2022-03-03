
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fsa/constants/color_constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:fsa/studentpages/studentpages.dart';
import 'package:paystack_manager/paystack_pay_manager.dart';
import 'package:fsa/SizeConfig.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../base_screen.dart';

class paymentpage extends StatefulWidget {
  final String value;
  final String email;
  paymentpage({Key key,this.value, this.email}):super(key: key);
  @override
  _paymentpageState createState() => _paymentpageState();

}

class _paymentpageState extends State<paymentpage> {


  var paymentstatus="";
  double AmountOwedPreviously;
  double cashout;
  double AMOUNTOWED;
  double AMOUNTPAID;
  double TOTALFEES;
  double count1;
  double carryforward;
  String CARRYFORWARD;
  String nname;
  String cclass;
  double percenttt;
  String newamountowed;
  double numberamount;
  bool vis = true;
  int _selectedIndex=1;

  final fb = FirebaseDatabase.instance;
  TextEditingController _amountController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final ref=fb.reference().child("ENGLEBERT SCHOOL/ALLSTUDENTS/${widget.value}/NAME");
    final ref2=fb.reference().child("ENGLEBERT SCHOOL/ALLSTUDENTS/${widget.value}/student id");
    final ref3=fb.reference().child("ENGLEBERT SCHOOL/ALLSTUDENTS/${widget.value}/class");
    final ref4=fb.reference().child("ENGLEBERT SCHOOL/ALLSTUDENTS/${widget.value}/total fees");
    final ref5=fb.reference().child("ENGLEBERT SCHOOL/ALLSTUDENTS/${widget.value}/amount owed");
    final ref6=fb.reference().child("ENGLEBERT SCHOOL/ALLSTUDENTS/${widget.value}/amount paid");
    final ref7=fb.reference().child("ENGLEBERT SCHOOL/ALLSTUDENTS/${widget.value}/carry forward balance");
    final ref8=fb.reference().child("ENGLEBERT SCHOOL/ALLSTUDENTS/${widget.value}/percentage paid");

    var custom ="${_amountController.text}";
    return Scaffold(
      appBar: AppBar(

        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Payments',
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


      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            FocusManager.instance.primaryFocus.unfocus();
          }
        },
        child: Stack(



          children: [
            Column(
              children: [
                Container(
                  height: SizeConfig.safeBlockVertical * 30,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0XFF4568dc), Color(0XFFb06ab3)]),
                  ),
                  child: Padding(
                    padding:
                    EdgeInsets.only(left: SizeConfig.safeBlockVertical * 1, right: SizeConfig.safeBlockVertical * 1, top: SizeConfig.safeBlockVertical * 1),
                    child: Column(

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            /*Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),*/

                            /*Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),*/
                          ],
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                          width: SizeConfig.safeBlockHorizontal*7,
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
                                width: SizeConfig.safeBlockHorizontal*0.7
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
                                        calcname(data);
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
                                            calcclass(data);
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
                                ),
                                SizedBox(


                                  height: SizeConfig.safeBlockVertical * 0.5,
                                ),
                                StreamBuilder(
                                    stream: ref4.onValue,
                                    builder: (context, snap) {
                                      if (snap.hasData &&
                                          !snap.hasError &&
                                          snap.data.snapshot.value != null) {
                                        var data = snap.data.snapshot.value;
                                        print(data);
                                        return Center(child: Text(
                                          'Total fees: $data',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                        ),);



                                      }else{
                                        print('ddd');

                                        return Center(child: Text(
                                          'Total fees: ',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                        ),);}}
                                ),
                                SizedBox(


                                  height: SizeConfig.safeBlockVertical * 0.5,
                                ),
                                StreamBuilder(
                                    stream: ref5.onValue,
                                    builder: (context, snap) {
                                      if (snap.hasData &&
                                          !snap.hasError &&
                                          snap.data.snapshot.value != null) {
                                        var data = snap.data.snapshot.value;
                                        print(data);
                                        return Center(child: Text(
                                          'Amount Owed: $data',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                        ),);



                                      }else{
                                        print('ddd');

                                        return Center(child: Text(
                                          'Amount Owed: ',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                        ),);}}
                                ),
                                SizedBox(


                                  height: SizeConfig.safeBlockVertical * 0.5,
                                ),
                                StreamBuilder(
                                    stream: ref7.onValue,
                                    builder: (context, snap) {
                                      if (snap.hasData &&
                                          !snap.hasError &&
                                          snap.data.snapshot.value != null) {
                                        var data7 = snap.data.snapshot.value;
                                        print(data7);
                                        carryfo(data7);
                                        return Center(child: Text(
                                          'Carry Forward Balance: $data7',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                        ),);



                                      }else{
                                        print('ddd');

                                        return Center(child: Text(
                                          'Carry Forward Balance: ',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                        ),);}}
                                ),

                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Visibility(
                  child: Container(

                      child: Image.asset("assets/englebert.png"),
                      width: SizeConfig.safeBlockHorizontal*100,
                      height: SizeConfig.safeBlockVertical * 8,
                      color: Colors.grey.shade100

                  ),
                  visible: vis,



                ),
                Column(
                  children: [
                    Column(
                      children: [
                        Container(padding: EdgeInsets.only( left: 8, right: 8, ),
                          child:ButtonTheme(

                            height:SizeConfig.safeBlockVertical * 5,
                            padding: EdgeInsets.only(
                                left: 14, right: 14, top: SizeConfig.safeBlockVertical * 0.6, bottom: SizeConfig.safeBlockVertical * 0.6),
                            child: OutlineButton(


                              child: Column(
                                children: [
                                  new TextField(
                                    onTap: () {
                                      vis=false;
                                    },
                                    controller: _amountController,
                                    decoration: InputDecoration(
                                        hintText: "",
                                        labelText: "click to enter an amount",
                                        labelStyle: TextStyle(fontSize: 18, color: Colors.black),
                                        border: InputBorder.none,
                                        fillColor: Colors.black12,
                                        filled: true),
                                    obscureText: false,
                                    //keyboardType: TextInputType.numberWithOptions(signed: true, decimal: true),
                                    keyboardType: TextInputType.number,

                                    maxLength: 10,
                                  ),
                                  ButtonTheme(

                                    height:SizeConfig.safeBlockVertical * 5,
                                    padding: EdgeInsets.only(
                                        left: 14, right: 14, top: SizeConfig.safeBlockVertical * 0.6, bottom: SizeConfig.safeBlockVertical * 0.6),
                                    child: OutlineButton(


                                      onPressed: (){
                                        setState(() {
                                          _checkPayment(custom);
                                          vis=true;

                                        });
                                      },
                                      child: Text(
                                        'Pay Amount',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 17,
                                          height:SizeConfig.safeBlockVertical * 0.05,
                                        ),
                                      ),
                                      highlightedBorderColor: Colors.green,
                                      padding: EdgeInsets.only(
                                          left: 14, right: 14, top: SizeConfig.safeBlockVertical * 2, bottom: SizeConfig.safeBlockVertical * 1),
                                      borderSide: BorderSide(color: Colors.green),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10)),

                                    ),),

                                ],
                              ),
                              highlightedBorderColor: Colors.green,
                              padding: EdgeInsets.only(
                                  left: 14, right: 14, top: SizeConfig.safeBlockVertical * 2, bottom: SizeConfig.safeBlockVertical * 1),
                              borderSide: BorderSide(color: Colors.green),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),

                            ),),
                        ),


                      ],
                    ),

                    SizedBox(


                      height: SizeConfig.safeBlockVertical *2,
                    ),

                    StreamBuilder(
                        stream: ref5.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data1 = snap.data.snapshot.value;
                            var AmountOwedPrev = snap.data.snapshot.value;
                            calc(data1,AmountOwedPrev);
                            return Center(child: Padding(
                              padding: EdgeInsets.only( left: 8, right: 8, ),
                              child: ListView.builder(
                                itemCount: 1,
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  int count = (index+1) * 25;
                                  double percent= count*AMOUNTOWED;
                                  double percentage=percent*0.01;
                                  return Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: SizeConfig.safeBlockVertical * 7.8,
                                    margin: EdgeInsets.only(bottom: SizeConfig.safeBlockVertical * 0.6,top: SizeConfig.safeBlockVertical * 0.6,),
                                    decoration: BoxDecoration(

                                      color: Colors.white,
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                          color: Colors.grey[500].withOpacity(1.0),
                                          offset: Offset(1.0, 1.1),
                                          blurRadius: 10.0,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [



                                        Padding(
                                          padding:
                                          EdgeInsets.only(left: 8, right: 8, top: SizeConfig.safeBlockVertical * 0.1,bottom: SizeConfig.safeBlockVertical * 0.1),

                                          child: Row(

                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Text(
                                                'Pay Remaining Fee',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w700,
                                                  letterSpacing: 0.7,
                                                ),
                                              ),
                                              ButtonTheme(

                                                height:SizeConfig.safeBlockVertical * 5,
                                                padding: EdgeInsets.only(
                                                    left: 14, right: 14, top: SizeConfig.safeBlockVertical * 0.6, bottom: SizeConfig.safeBlockVertical * 0.6),
                                                child: OutlineButton(


                                                  onPressed: () => _checkPayment2(data1),
                                                  child: Text(
                                                    'Pay GHS$AMOUNTOWED',
                                                    style: TextStyle(
                                                      color: Colors.green,
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 17,
                                                      height:SizeConfig.safeBlockVertical * 0.05,
                                                    ),
                                                  ),
                                                  highlightedBorderColor: Colors.green,
                                                  padding: EdgeInsets.only(
                                                      left: 14, right: 14, top: SizeConfig.safeBlockVertical * 2, bottom: SizeConfig.safeBlockVertical * 1),
                                                  borderSide: BorderSide(color: Colors.green),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(8)),

                                                ),),
                                            ],
                                          ),

                                        ),
                                      ],
                                    ),

                                  );
                                },
                              ),
                            ),
                            );




                          }else{
                            print('ddd');

                            return Center(child: Text(
                              " ",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),),);}}
                    ),


                    StreamBuilder(
                        stream: ref6.onValue,
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
                        stream: ref4.onValue,
                        builder: (context, snap) {
                          if (snap.hasData &&
                              !snap.hasError &&
                              snap.data.snapshot.value != null) {
                            var data2 = snap.data.snapshot.value;
                            calc1(data2);
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
                    Text('Transaction fee is 1.95% of amount paid'),





                  ],
                ),




              ],
            ),

          ],
        ),
      ),

    );

  }


  void _checkPayment(custom) {

    var one = double.parse("${_amountController.text}");
    cashout=one;
    double i = one*100;
    double j = i*0.0195;// i = 20
    double e = i+j;
    int f =e.round();// i = 20
    try {
      PaystackPayManager(context: context)
        ..setSecretKey("sk_test_c2ca4c0d1be9f582bfda139693737739ed1ed29a")
        ..setCompanyAssetImage(Image.asset(
            "assets/englebert.png"),

        )
        ..setAmount(f)
        ..setReference(DateTime.now().millisecondsSinceEpoch.toString())
        ..setCurrency("GHS")
        ..setEmail("baslab.englebert@gmail.com")
        ..setFirstName("$nname")
        ..setLastName("${widget.value}")
        ..setMetadata(
          {
            "custom_fields": [
              {
                "value": "Baslab",
                "display_name": "Payment_to",
                "variable_name": "Payment_to"
              }
            ]
          },
        )
        ..onSuccesful(_onPaymentSuccessful)
        ..onPending(_onPaymentPending)
        ..onFailed(_onPaymentFailed)
        ..onCancel(_onCancel)
        ..initialize();
    } catch (error) {
      print('Payment Error ==> $error');
    }
  }
  void _checkPayment2(data1) {

    final myInt = double.parse(data1);
    print(data1);
    assert(myInt is double);
    AMOUNTOWED=myInt;
    double d = AMOUNTOWED;



    double i = d*100;
    double j = i*0.0195;// i = 20
    double e = i+j;
    int f =e.round();//
    cashout=AMOUNTOWED;




    try {
      PaystackPayManager(context: context)
        ..setSecretKey("sk_test_c2ca4c0d1be9f582bfda139693737739ed1ed29a")
        ..setCompanyAssetImage(Image.asset(
            "assets/englebert.png"),

        )
        ..setAmount(f)
        ..setReference(DateTime.now().millisecondsSinceEpoch.toString())
        ..setCurrency("GHS")
        ..setEmail('baslab.englebert@gmail.com')
        ..setFirstName("$nname")
        ..setLastName("${widget.value}")
        ..setMetadata(
          {
            "custom_fields": [
              {
                "value": "Baslab",
                "display_name": "Payment_to",
                "variable_name": "Payment_to"
              }
            ]
          },
        )
        ..onSuccesful(_onPaymentSuccessful)
        ..onPending(_onPaymentPending)
        ..onFailed(_onPaymentFailed)
        ..onCancel(_onCancel)
        ..initialize();
    } catch (error) {
      print('Payment Error ==> $error');
    }
  }

  void _onPaymentSuccessful(Transaction transaction) {
    print("your email is ${widget.email}");

    print('Transaction succesful');
    paymentstatus="payment successful";
    DateTime date = DateTime.now();
    print(date);
    final setperc=fb.reference().child("ENGLEBERT SCHOOL/paymentstatus/${date.year}-${date.month}-${date.day}_${date.hour}:${date.minute}/paymentstatus");
    setperc.set('${transaction.refrenceNumber}b&${cashout}r&${widget.value}a&${TOTALFEES}k&${AMOUNTPAID}o&${date.year}-${date.month}-${date.day}_${date.hour}:${date.minute}s&${AmountOwedPreviously}&&$nname^$cclass');
    final setperc1=fb.reference().child("ENGLEBERT SCHOOL/paymentstatus/${date.year}-${date.month}-${date.day}_${date.hour}:${date.minute}/paymentname");
    setperc1.set('agenda');




    double fire = AmountOwedPreviously;
    double result = fire-cashout;
    if(result<0){
      carryforward=-1*result;
      final setperc5=fb.reference().child("ENGLEBERT SCHOOL/ALLSTUDENTS/${widget.value}/carry forward balance");
      setperc5.set('$carryforward');
      final setperc6=fb.reference().child("ENGLEBERT SCHOOL/ALLSTUDENTS/${widget.value}/amount owed");
      setperc6.set('0.0');
      newamountowed="0.000000000001";
    }
    else{
      final setperc2=fb.reference().child("ENGLEBERT SCHOOL/ALLSTUDENTS/${widget.value}/amount owed");
      setperc2.set('$result');
      final setperc5=fb.reference().child("ENGLEBERT SCHOOL/ALLSTUDENTS/${widget.value}/carry forward balance");
      setperc5.set('0');
      newamountowed="$result";

    }



    double fire2 = AMOUNTPAID;
    double result2 = fire2+cashout;
    final setperc3=fb.reference().child("ENGLEBERT SCHOOL/ALLSTUDENTS/${widget.value}/amount paid");
    setperc3.set('$result2');


    var myInt30 = double.parse(newamountowed);
    assert(myInt30 is double);
    print("av");
    numberamount=myInt30;
    print(TOTALFEES);
    percenttt = (1-(numberamount/TOTALFEES))*100;
    print("a");


    print(cashout);
    final setperc10 = fb.reference().child("ENGLEBERT SCHOOL/ALLSTUDENTS/${widget.value}/combined");
    setperc10.set('${widget.value}!$nname@$cclass#$result2%$newamountowed&${TOTALFEES}_$CARRYFORWARD-$percenttt');
    final setperc90=fb.reference().child("ENGLEBERT SCHOOL/ALLSTUDENTS/${widget.value}/fees updated");
    setperc90.set('true');


    print(
        "Transaction message ==> ${transaction.message}, Ref ${transaction.refrenceNumber}");
    var alertStyle = AlertStyle(
      overlayColor: Colors.black87,
      animationType: AnimationType.fromTop,
      isCloseButton: false,
      isOverlayTapDismiss: false,
      descStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
      animationDuration: Duration(milliseconds: 200),
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
        side: BorderSide(
          color: Colors.grey,
        ),
      ),
      titleStyle: TextStyle( fontSize: 18,
        color: Color.fromRGBO(0, 255, 0, 1.0),
      ),
    );
    Alert(
      context: context,
      style: alertStyle,
      type: AlertType.success,
      title: "Payment Successful Boss",
      desc: "payment will be reflected on the dashboard ",
      buttons: [
        DialogButton(
          child: Text(
            "Proceed",
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600, fontSize: 20),
          ),
          onPressed: () {
            setState(() {

              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) => HomePage(value: widget.value,),
                  transitionDuration: Duration(seconds: 0),
                ),);

            });
          },
          color: Color.fromRGBO(91, 55, 185, 1.0),
          radius: BorderRadius.circular(10.0),
        ),
      ],
    ).show();

  }

  void _onPaymentPending(Transaction transaction) {
    print('Transaction Pending');
    print("Transaction Ref ${transaction.refrenceNumber}");
  }

  void _onPaymentFailed(Transaction transaction) {
    print('Transaction Failed');
    print("Transaction message ==> ${transaction.message}");
  }

  void _onCancel(Transaction transaction) {
    print('Transaction Cancelled');
  }
  void calc(data1,AmountOwedPrev){
    print("lll$data1");
    var myInt2 = double.parse(AmountOwedPrev);
    assert(myInt2 is double);

    var myInt = double.parse(data1);
    assert(myInt is double);
    AMOUNTOWED=myInt;
    AmountOwedPreviously=myInt2;


  }

  void calcname(data){
    nname = data;
  }
  void calcclass(data){
    cclass = data;
  }
  void calc1(data2){
    print("lll$data2");
    var myInt = double.parse(data2);
    assert(myInt is double);
    TOTALFEES=myInt;

  }

  void calc3(data3){
    var myInt3 = double.parse(data3);
    assert(myInt3 is double);
    AMOUNTPAID=myInt3;


  }
  void carryfo(data7){
    CARRYFORWARD=data7;
  }

}

