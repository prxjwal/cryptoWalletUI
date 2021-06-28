import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
// import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto wallet',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        fontFamily: "Poppins",
        textTheme: TextTheme(
          headline1:TextStyle(fontSize: 30,fontWeight: FontWeight.w100,),
          headline2:TextStyle(fontSize: 10,fontWeight: FontWeight.w700,),
          headline3:TextStyle(fontSize: 10,fontWeight: FontWeight.w100,),


        )
        
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
    String dropdownValue = 'USD';


  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      
       body: Container(
         
         color: Colors.blue.withOpacity(0.8),
         child:Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             SizedBox(height: 15,),

             Padding(
               padding: const EdgeInsets.only(top: 80),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Text("Crypto Wallet",style: Theme.of(context).textTheme.headline1,),
                   Container(
                     height: 30,
                     width: 62,
                     decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),color: Colors.white),
                     child: Padding(
                       padding: const EdgeInsets.only(left:5.0),
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
                          dropdownColor: Colors.white,
                          elevation: 90,
                       ),
                     ),
                   ),

                   
                 ],
               ),

             ),
             Padding(
               padding: const EdgeInsets.only(left: 30,top: 35),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('\$28,248',style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 40),),
                   Padding(
                     padding: const EdgeInsets.only(left:8.0),
                     child: Text("Your balance is equivalent",style: Theme.of(context).textTheme.headline3!.copyWith(fontSize: 15),),
                   ),

                 ],
               ),
             ),

             

             Spacer(flex: 2,),
                Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(topLeft: Radius.circular(30) ,topRight:Radius.circular(30) ),
                 color: Colors.white.withOpacity(0.9),
               ),
               height: 468,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(top:15,left:30),
                     child: Text("Today",style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 20),),
                   ),
                   Column(
                     children: [
                       Container(
                         height: 235,
                         width: 350,
                         child: ListView(scrollDirection: Axis.horizontal,
                           shrinkWrap: true,
                         padding: const EdgeInsets.all(8),
                         children: <Widget>[
                           Card(image: "images/bitcoin.png",coin: "Bitcoin",coinVal:"2.73 BTC",coinPer:"+125(7%)"),
                           Card(image: "images/ethereum.png",coin:"Ethereum",coinVal:"2.73 ETH",coinPer:"+110(5.4%)"),
                           Card(image: "images/monero.png",coin:"Monero",coinVal:"2.73 MNO",coinPer:"+93(3.2%)"),
               
                             
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left:30.0),
                         child: Align(
                           alignment: Alignment.centerLeft,
                         child: Text("Transaction history",style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 15),)),
                       ),
               
                          SizedBox(height: 0,),
                       Container(
                         height: 162,
                         child: ListView(
                           shrinkWrap: true,
                           scrollDirection: Axis.vertical,
               
                           children: [
                             Transaction(image: "images/left-down.png",color: Colors.red,title: "Car service",date: "14 March 2021",amount: "+\$200",),
                             Transaction(image: "images/right-up.png",color: Colors.green,title: "Trading",date: "13 March 2021",amount: "+\$8000",),
                             Transaction(image: "images/right-up.png",color: Colors.green,title: "Insurance",date: "13 March 2021",amount: "+\$100",),
                             Transaction(image: "images/left-down.png",color: Colors.red,title: "Medic bills",date: "12 March 2021",amount: "-\$100",),
                             Transaction(image: "images/right-up.png",color: Colors.green,title: "Income",date: "10 March 2021",amount: "+\$600",),
                             
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

// ignore: must_be_immutable
class Transaction extends StatelessWidget {

  Transaction({required this.image,required this.color,required this.title,required this.date,required this.amount});
  String image;
  Color color;
  String title;
  String date;
  String amount;



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
            child: Container(height: 45,width: 35,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.05),
              borderRadius: BorderRadius.all(Radius.circular(5))
            ),
            child: Image.asset(image,color: color,),),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title,style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 20),),
              Text(date,style: Theme.of(context).textTheme.headline3!.copyWith(fontSize: 11),)
            ],
          ),

          Text(amount,style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16),),

        ],
      ),
    );
  }
}








// ignore: must_be_immutable
class Card extends StatelessWidget {
  
  Card({required this.image, required this.coin,required this.coinVal,required this.coinPer});

  String image;
  String coin;
  String coinVal;
  String coinPer;

 

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical:20 ,horizontal:20 ),
      height: 235,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10),),
        color: Colors.black.withOpacity(0.050),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 30),
            child: Container(
              height: 50,
              width: 45,
              child: Image.asset(image),
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(top: 10,left: 30),
            child: Text(coin,style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 18),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(coinVal,style: Theme.of(context).textTheme.headline3!.copyWith(fontSize: 13),),
          ),
          Padding(
          padding: const EdgeInsets.only(top: 8,left: 30),
            child: Text(coinPer,style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 13),),
          ),
          
                  ],
      ),


      );
  }
}
