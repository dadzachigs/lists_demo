import 'package:flutter/material.dart';
import 'package:lists_demo/quotes.dart';
import 'quotes.dart';

void main() =>runApp(MaterialApp(
    home: MyCards()
));



class MyCards extends StatefulWidget {
  const MyCards({Key? key}) : super(key: key);

  @override
  _MyCardsState createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {

  List<Quotes> quotes = [
     Quotes(quote:"Watch in silence", author:"Darlington Chigumbu"),
     Quotes(quote:"If you really want it sacrifice for it", author:"Darlington Chigumbu"),
     Quotes(quote:"Those who are determined will get to the finishing line", author:"Darlington Chigumbu"),
  ];

  Widget quoteTemplate(quote){

    return Card(
    margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(

        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Text(
              quote.quote,
              style: TextStyle(
                color:Colors.black54,
                fontSize: 18.0

              ),

            ),
        SizedBox(height: 3.0),

            Text(
              quote.author,
              style: TextStyle(
                color:Colors.red[600]

              ),
            ),
          ],

        ),
      ),

    );



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("My Awesome Quotes",

          style: TextStyle(
            color: Colors.grey[100],
            //fontSize: 15.0,
          ),

        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent[400],
      ),

      body: Column(
        children: quotes.map((quote) =>quoteTemplate(quote)).toList(),
      ),
    );
  }
}

