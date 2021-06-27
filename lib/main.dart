import 'package:flutter/material.dart';
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
    String dropdownValue = 'INR';


  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      
       body: Container(
         
         color: Colors.blue,
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
                 color: Colors.white,
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
                           Card(),
                           Card(),
                           Card(),
               
                             
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Income",style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 20),),
              Text("March 31,2021",style: Theme.of(context).textTheme.headline3!.copyWith(fontSize: 11),)
            ],
          ),

          Text("\$456",style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16),),

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


          Padding(
            padding: const EdgeInsets.only(top: 10,left: 30),
            child: Text("Bitcoin",style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 18),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text("2.73 BTC",style: Theme.of(context).textTheme.headline3!.copyWith(fontSize: 13),),
          ),
          Padding(
          padding: const EdgeInsets.only(top: 8,left: 30),
            child: Text("+125(%7%)",style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 13),),
          ),
          
                  ],
      ),


      );
  }
}
