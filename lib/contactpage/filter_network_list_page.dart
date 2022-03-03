import 'dart:async';

import 'package:fsa/contactpage/books_api.dart';
import 'package:fsa/contactpage/book.dart';
import 'package:fsa/widget/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FilterNetworkListPage extends StatefulWidget {
  @override
  FilterNetworkListPageState createState() => FilterNetworkListPageState();
}

class FilterNetworkListPageState extends State<FilterNetworkListPage> {
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
  var great='0262360230';
  launchcommand(command) async {

      await launch(command);

  }

  void debounce(
    VoidCallback callback, {
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
  Widget build(BuildContext context) => Scaffold(

        body: Column(
          children: <Widget>[
            buildSearch(),
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
        ),
      );

  Widget buildSearch() => SearchWidget(
        text: query,
        hintText: 'Title or Author Name',
        onChanged: searchBook,
      );

  Future searchBook(String query) async => debounce(() async {
        final books = await BooksApi.getBooks(query);

        if (!mounted) return;

        setState(() {
          this.query = query;
          this.books = books;
        });
      });

 /* Widget buildBook(Book book) => ListTile(
        leading: Image.network(
          book.urlImage,
          fit: BoxFit.cover,
          width: 50,
          height: 50,
        ),
        title: Text(book.title),
        subtitle: Text(book.author),
      );*/
  GestureDetector buildBook(Book book) {
    return GestureDetector(
      child: InkWell(
        onTap: ()
        {
          //
        },
        highlightColor: Colors.grey[350],
        splashColor: Colors.grey[300],

      child: Container(
      padding: EdgeInsets.symmetric(vertical: 9),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.grey),
        ),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(book.urlImage),
                radius: 25,
              ),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {

                  launchcommand('tel:'+great);
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
                launchcommand('https://wa.me/233262360290');
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

  Container buildBook1(Book book,IconData icon) {
    return Container(


      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(book.urlImage),
                radius: 25,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
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
}

