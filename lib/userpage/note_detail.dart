import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fsa/SizeConfig.dart';
import 'package:intl/intl.dart';
import 'package:fsa/userpage/note.dart';
import 'package:fsa/userpage/database_helper.dart';


class LoginScreen extends StatefulWidget {
	final String appBarTitle;
	final Note note;
	LoginScreen(this. note, this.appBarTitle);


	@override
	State<StatefulWidget> createState() {

		return _LoginScreenState(this.note, this.appBarTitle,);
	}
}

class _LoginScreenState extends State<LoginScreen> {
	static var _priorities = ['Place Above', 'Place Below'];
	final fb = FirebaseDatabase.instance;
	var retrievedName="";
	var retrievedpassword="";
	var retrievedclass="";
	var NAME="";
	String PASSWORD="";
	var AMOUNTOWED="";
	var AMOUNTPAID="";
	var CARRYFORWARDBALANCE="";
	String CLASS="";
	var PERCENTAGEPAID="";
	var STUDENTID="";
	var TOTALFEES="";
	String name = "";


	DatabaseHelper helper = DatabaseHelper();
	bool ishidden=true;

	String appBarTitle;
	Note note;

	TextEditingController titleController = TextEditingController();
	TextEditingController descriptionController = TextEditingController();

	_LoginScreenState(this.note, this.appBarTitle);
	bool _rememberMe = false;


	@override
	Widget build(BuildContext context) {

		final ref=fb.reference().child("ENGLEBERT SCHOOL");

		TextStyle textStyle = Theme.of(context).textTheme.subtitle1;
		titleController.text = note.title;
		descriptionController.text = note.description;
		SizeConfig().init(context);
		return WillPopScope(
			onWillPop: () {
				// Write some code to control things, when user press Back navigation button in device navigationBar
				moveToLastScreen();
			},
			child: Scaffold(
				appBar: AppBar(

					leading: IconButton(
						icon: Icon(Icons.arrow_back, color: Colors.black),
						onPressed: () => Navigator.of(context).pop(),
					),
					title: Text(
						'ADD STUDENT',
						style: TextStyle(color: Colors.black),
					),
					backgroundColor: Colors.transparent,
					elevation: 0.0,


					centerTitle: true,
				),
				body: AnnotatedRegion<SystemUiOverlayStyle>(
					value: SystemUiOverlayStyle.light,
					child: GestureDetector(
						onTap: () => FocusScope.of(context).unfocus(),
						child: Stack(
							children: <Widget>[
								Container(
									height: double.infinity,
									width: double.infinity,
									decoration: BoxDecoration(
										gradient: LinearGradient(
											begin: Alignment.topCenter,
											end: Alignment.bottomCenter,
											colors: [
												Color(0xFFFFFFFF),
												Color(0xFFFFFFFF),
												Color(0xFFC0C6CB),
												Color(0xFFC0C6CB),
												Color(0xFF3B5284),
												Color(0xFF3B5284),
												Color(0xFF24323D),
											],
											stops: [0.1, 0.4,0.5, 0.3, 0.7,0.4, 0.9],
										),
									),
									child: Padding(

										padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
										child: ListView(
											children: <Widget>[
												Container(
													child: Image.asset("assets/englebert.png"),
													height: SizeConfig.safeBlockVertical*30,
													width: SizeConfig.safeBlockHorizontal*100,
													padding: EdgeInsets.only( top: SizeConfig.safeBlockVertical * 1),

												),

												// Second Element
												Padding(
													padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
													child: TextField(
														controller: titleController,
														style: textStyle,
														onChanged: (value) {
															debugPrint('Something changed in Title Text Field');
															updateTitle();
														},
														decoration: InputDecoration(
																hintText: 'Student ID',
																labelStyle: textStyle,
																border: OutlineInputBorder(
																		borderRadius: BorderRadius.circular(15.0)
																)
														),
													),
												),

												// Third Element
												Padding(
													padding: EdgeInsets.only(top: SizeConfig.safeBlockVertical*1.5, bottom: SizeConfig.safeBlockVertical*1.5),
													child: TextField(
														obscureText: ishidden,
														controller: descriptionController,
														style: textStyle,
														onChanged: (value) {
															debugPrint('Something changed in Description Text Field');

														},
														decoration: InputDecoration(
																hintText: 'Password',
																labelStyle: textStyle,
																suffixIcon: InkWell(
																	onTap: _toggleview,
																	child: Icon(Icons.visibility),
																),
																border: OutlineInputBorder(
																		borderRadius: BorderRadius.circular(15.0)
																)
														),
													),
												),

												// Fourth Element
												Padding(
													padding: EdgeInsets.only(left:SizeConfig.safeBlockHorizontal*0.5 ,top: 20,right:SizeConfig.safeBlockHorizontal*0.5),

													child: Row(
														children: <Widget>[
															Expanded(

																child: RaisedButton(
																	elevation: 5.0,

																	onPressed: () {
																		ref.child("ALLSTUDENTS/${titleController.text}/class").once().then((DataSnapshot data6){retrievedclass=data6.value;});
																		ref.child("ALLSTUDENTS/${titleController.text}/NAME").once().then((DataSnapshot data2){retrievedName=data2.value;});
																		ref.child("ALLSTUDENTS/${titleController.text}/password").once().then((DataSnapshot data){
																			setState(() {
																				debugPrint("Save ID button clicked");
																				retrievedpassword=data.value;
																				if(retrievedpassword==descriptionController.text){
																					_save();
																					updateDescription();
																					print(titleController.text);
																					print(retrievedName);
																				}
																				else{print(titleController.text);
																				wrongid();

																				}});});},


																	padding: EdgeInsets.all(15.0),
																	shape: RoundedRectangleBorder(
																		borderRadius: BorderRadius.circular(30.0),
																	),
																	color: Color(0XFF203354),
																	child: Text(
																		'SAVE ID',
																		style: TextStyle(
																			color: Colors.white,
																			letterSpacing: 1.5,
																			fontSize: 18.0,
																			fontWeight: FontWeight.bold,
																			fontFamily: 'OpenSans',
																		),
																	),
																),
															),

															Container(width: SizeConfig.safeBlockHorizontal*3),

															Expanded(

																child: RaisedButton(
																	elevation: 5.0,
																	onPressed: () {
																		setState(() {
																			debugPrint("delete button clicked");
																			_delete();
																		});
																	},
																	padding: EdgeInsets.all(15.0),
																	shape: RoundedRectangleBorder(
																		borderRadius: BorderRadius.circular(30.0),
																	),
																	color: Color(0XFF203354),
																	child: Text(
																		'CLEAR ID',
																		style: TextStyle(
																			color: Colors.white,
																			letterSpacing: 1.5,
																			fontSize: 18.0,
																			fontWeight: FontWeight.bold,
																			fontFamily: 'OpenSans',
																		),
																	),
																),
															),

														],
													),
												),

											],
										),
									),






								),








							],
						),
					),


				),
			),

		);

	}
	void _toggleview(){
		if(ishidden==true){ishidden=false;}
		else{ishidden=true;}
		setState(() {});
	}
	void moveToLastScreen() {
		Navigator.pop(context, true);
	}

	// Convert the String priority in the form of integer before saving it to Database
	void updatePriorityAsInt(String value) {
		switch (value) {
			case 'Place Above':
				note.priority = 1;
				break;
			case 'Place Below':
				note.priority = 2;
				break;
		}
	}

	// Convert int priority to String priority and display it to user in DropDown
	String getPriorityAsString(int value) {
		String priority;
		switch (value) {
			case 1:
				priority = _priorities[0];  // 'High'
				break;
			case 2:
				priority = _priorities[1];  // 'Low'
				break;
		}
		return priority;
	}

	// Update the title of Note object
	void updateTitle(){
		note.title = titleController.text;
	}

	// Update the description of Note object
	void updateDescription() {
		note.description = '$retrievedclass:$retrievedName';

	}

	void wrongid(){

		_showAlertDialog('Status', 'wrong ID or Password');
	}

	// Save data to database
	void _save() async {

		moveToLastScreen();


		note.date = DateFormat.yMMMd().format(DateTime.now());
		int result;
		if (note.id != null) {  // Case 1: Update operation
			result = await helper.updateNote(note);
		} else { // Case 2: Insert Operation
			result = await helper.insertNote(note);
		}

		if (result != 0) {  // Success
			_showAlertDialog('Status', 'student profile saved successfully');
		} else {  // Failure
			_showAlertDialog('Status', 'wrong ID or Password');
		}

	}
	void _saveposition(SharedPreferences) async {
		final prefs = await SharedPreferences.getInstance();

// set value
		prefs.setInt('counter', 87);


	}

	void _delete() async {

		moveToLastScreen();

		// Case 1: If user is trying to delete the NEW NOTE i.e. he has come to
		// the detail page by pressing the FAB of NoteList page.
		if (note.id == null) {
			_showAlertDialog('Status', 'No Note was deleted');
			return;
		}

		// Case 2: User is trying to delete the old note that already has a valid ID.
		int result = await helper.deleteNote(note.id);
		if (result != 0) {
			_showAlertDialog('Status', 'Note Deleted Successfully');
		} else {
			_showAlertDialog('Status', 'Error Occured while Deleting Note');
		}
	}

	void _showAlertDialog(String title, String message) {

		AlertDialog alertDialog = AlertDialog(

			title: Text(title),
			content: Text(message),
		);
		showDialog(
				context: context,
				builder: (_) => alertDialog
		);
	}

}




