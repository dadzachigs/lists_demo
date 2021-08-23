
import 'package:flutter/material.dart';
import 'package:lists_demo/quotes.dart';
import 'quotes.dart';

class QuoteCard extends StatelessWidget {

  final Quotes quote;
  final Function delete;
  const QuoteCard({required this.quote,required this.delete}) ;

  @override
  Widget build(BuildContext context) {
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
            
            SizedBox(height: 3.0,),

            TextButton.icon(

              onPressed: () => delete,

                label:Text("deletequote"),
              icon:Icon (Icons.delete),
            style: ButtonStyle(

            ),


            ),
          ],

        ),
      ),

    );
  }
}