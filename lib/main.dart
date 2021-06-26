import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Crypto wallet'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    String dropdownValue = 'INR';


  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
       body: Container(
         color: Colors.blue,
         child:Column(
           children: [
             Padding(
               padding: const EdgeInsets.only(top: 80),
               child: Row(
                 children: [
                   Text("Crypto Wallet"),
                   Container(
                     color: Colors.white30,
                     child: DropdownButton( 
                     value: dropdownValue,
                     items: <String>['INR', 'USD',]
                      .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                           child: Text(value),
                       );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                        dropdownValue = newValue!;
                        });},
                        underline: Container(height:0 ,),
                        focusColor: Colors.white30,
                        dropdownColor: Colors.white30,
                
                     ),
                   ),

                   
                 ],
               ),

             ),
             Text('\$28,248'),
             Text("Your balance is equilent"),

             

             Spacer(flex: 2,),
                Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(topLeft: Radius.circular(30) ,topRight:Radius.circular(30) ),
                 color: Colors.white,
               ),
               height: 441,
               child: Column(
                 children: [
                   Text("Today"),
                   Column(
                     children: [
                       Container(
                         height: 235,
                         width: 350,
                         child: ListView(scrollDirection: Axis.horizontal,
                           shrinkWrap: true,
                         padding: const EdgeInsets.all(8),
                         children: <Widget>[
                           Card(),
                           Card(),
                           Card(),
               
                             
                           ],
                         ),
                       ),
                       Text("Transaction history"),
               
                          SizedBox(height: 20,),
                       Container(
                         height: 100,
                         child: ListView(
                           shrinkWrap: true,
                           scrollDirection: Axis.vertical,
               
                           children: [
                             Transaction(),
                             Transaction(),
                             Transaction(),
                           ],
                         ),
                       )
                     ],
                   ),
                 ],
               ),
               ),
             

           ],
         ), 
       ),
    );
  }
}

class Transaction extends StatelessWidget {
  const Transaction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(color: Colors.amber,height: 65,width: 55,),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Income"),
              Text("March 31,2021")
            ],
          ),

          Text("\$145")
        ],
      ),
    );
  }
}










class Card extends StatelessWidget {
  const Card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical:20 ,horizontal:20 ),
      height: 235,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10),),
        color: Colors.blueGrey,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 30),
            child: Container(
              height: 50,
              width: 45,
              color: Colors.amber,
            ),
          ),


          Text("Bitcoin"),
          Text("2.73 BTC"),
          Text("+125(7%)"),
          
          
                  ],
      ),


      );
  }
}
