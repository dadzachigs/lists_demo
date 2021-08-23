import 'package:flutter/material.dart';
import 'package:lists_demo/quotes.dart';
import 'quotes.dart';
import 'quote_card.dart';

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
     Quotes(quote:"Watch in silence so that you dont disturb your enermy while making mistakes", author:"Darlington Chigumbu"),



    Quotes(quote:"The value of money is not in the money, but in what the money can buy..use your money to get value", author:"Darlington Chigumbu"),

    Quotes(quote:"Your mind is like your garden, if you dont work on it it will produce weeds, if you work on it it will give you good plants..either way you get something.", author:"Darlington Chigumbu"),
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

      body: Container(
        color: Colors.grey[300],

        child: Column(
          children: quotes.map((quote) =>QuoteCard(
              quote: quote,
            delete: (){
                setState(() {
                 quotes.remove(quote);
                });
            },
          )).toList(),
        ),
      ),

    );
  }
}



