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
     Quotes(quote:"Watch in silence", author:"pfumbu"),
     Quotes(quote:"If you really want it sacrifice for it", author:"fumbu"),
     Quotes(quote:"Those who are determined will get to the finishing line", author:"umbu"),



  ];
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
        children: quotes.map((quote) =>Text('${quote.quote}-${quote.author}')).toList(),
      ),
    );
  }
}

