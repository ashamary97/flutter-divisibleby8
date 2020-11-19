import 'package:flutter/material.dart';

class Divisible extends StatefulWidget {
  @override
  _DivisibleState createState() => _DivisibleState();
}

class _DivisibleState extends State<Divisible> {

  TextEditingController getnum=TextEditingController();
  String checkresult="";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.0,right: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            controller: getnum,
            decoration: InputDecoration(
              hintText: "Enter a number",
              border: OutlineInputBorder()
            ),

          ),
          SizedBox(height: 10.0,),
          RaisedButton(
            color: Colors.deepPurple,
            onPressed: (){
            double num=double.parse(getnum.text);
            setState(() {

              if(num%8==0){
                checkresult="This number is divisible by 8";
              }
              else{
                checkresult="Not divisible by 8";
              }

            });

          },
          child: Text("Check"),
          ),
          Text(checkresult),

        ],
      ),
    );
  }
}
