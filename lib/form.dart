
import 'package:cleanliness_app/main.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'Log_in_page.dart';
import 'package:intl/intl.dart';

class form extends StatefulWidget {
  const form({Key? key}) : super(key: key);

  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {

  FirebaseDatabase database = FirebaseDatabase.instance;
  List <String> classes=["6","7","8","9","10","11","12"];
  List<String> section=["A","B","C","D","E","F","G","H","I"];
  double sanitation=1;
  double furniture=1;
  String message="";
  double water=1;
  String selectclass="6";
  String selectsection="A";

  String cdate = DateFormat("yyyy-MM-dd").format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;



    return Scaffold(

      backgroundColor: HexColor("#705D56"),
      body:SingleChildScrollView(child: Column(
        children: [
          Padding(child:Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children:
          [Image(image: AssetImage('assets/images/logo.png'),height: height * 0.1,width: width * 0.4),Image(image: AssetImage('assets/images/logo2.png'),height: height * 0.1,width: width * 0.4)],) ,
            padding: EdgeInsets.fromLTRB(width*0.005, height*0.037,0,0),)

          ,

          Padding(padding: EdgeInsets.fromLTRB(0, 50, 0, 0),child:  Row(mainAxisAlignment: MainAxisAlignment.center,children:
          [Container(
              color: HexColor("#705D56"),
              width: width,
              child: Center(
                child:
                Container(
                  width: width*0.8,

                  decoration: BoxDecoration(color: HexColor("F0F7F4"),
                      borderRadius: BorderRadius.circular(40),
                      boxShadow:[ BoxShadow(color: HexColor("32292F"), blurRadius: 20, offset: Offset(20,20),)]),
                  child:Column(children: [
                    Column(children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children:[IconButton(
                  icon: Icon(
                  Icons.arrow_circle_left,
                  ),
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));},
                ),RichText(text: TextSpan(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black,fontFamily: 'ubuntu-Title'),text:'Fill the form')),Container()
                      ]),
                      Row(children: [
                        Padding(padding: EdgeInsets.fromLTRB(10, 10, 0, 20),child: Row(mainAxisAlignment: MainAxisAlignment.start,children: [RichText(text: TextSpan(style: TextStyle(fontSize: 20,color: Colors.black,fontFamily: 'ubuntu-Title'),text:'Class:')),],),),
                        Padding(padding: EdgeInsets.fromLTRB(30, 1, 0, 1),child: DropdownButton(
                          value: selectclass,
                          onChanged: (value){setState(() {
                            selectclass=value.toString();
                          });},items:
                        classes.map((cla){return DropdownMenuItem(child: Text(cla),value: cla,);}).toList()




                          ,),)
                      ],),


                      Row(children: [
                        Padding(padding: EdgeInsets.fromLTRB(10, 10, 0, 20),child: Row(mainAxisAlignment: MainAxisAlignment.start,children: [RichText(text: TextSpan(style: TextStyle(fontSize: 20,color: Colors.black,fontFamily: 'ubuntu-Title'),text:'Section:')),],),),
                        Padding(padding: EdgeInsets.fromLTRB(30, 1, 0, 1),child: DropdownButton(
                          value: selectsection,
                          onChanged: (value){setState(() {
                            selectsection=value.toString();
                          });},items:
                        section.map((sec){return DropdownMenuItem(child: Text(sec),value: sec,);}).toList()




                          ,),)
                      ],)

                      //cleanliness slider
                      ,SingleChildScrollView(scrollDirection: Axis.horizontal,child:Row(children: [
                        Padding(padding: EdgeInsets.fromLTRB(10, 10, 0, 20),child: Row(mainAxisAlignment: MainAxisAlignment.start,children: [RichText(text: TextSpan(style: TextStyle(fontSize: 20,color: Colors.black,fontFamily: 'ubuntu-Title'),text:'Class Sanitations:')),],),),
                        Padding(padding: EdgeInsets.fromLTRB(10, 1, 0, 1),child:Slider(
                          value: sanitation,
                          min: 1,
                          max: 5,
                          divisions: 4,
                          activeColor: Colors.brown,
                          inactiveColor: Colors.white,
                          label: "$sanitation",
                          onChanged: (double newsvalue){setState(() {
                            sanitation=newsvalue;
                          });},
                        ),)
                        ,Padding(padding: EdgeInsets.fromLTRB(5, 10, 0, 20),child: Row(mainAxisAlignment: MainAxisAlignment.start,children: [RichText(text: TextSpan(style: TextStyle(fontSize: 20,color: Colors.black,fontFamily: 'ubuntu-Title'),text:'$sanitation')),],),),


                      ],))




                      ,SingleChildScrollView(scrollDirection: Axis.horizontal,child: Row(children: [
                        Padding(padding: EdgeInsets.fromLTRB(10, 10, 0, 20),child: Row(mainAxisAlignment: MainAxisAlignment.start,children: [RichText(text: TextSpan(style: TextStyle(fontSize: 20,color: Colors.black,fontFamily: 'ubuntu-Title'),text:'Water Spillage:')),],),),
                        Padding(padding: EdgeInsets.fromLTRB(10, 1, 0, 1),child: Slider(
                          value: water,
                          min: 1,
                          max: 5,
                          divisions: 4,
                          activeColor: Colors.brown,
                          inactiveColor: Colors.white,
                          label: "$water",
                          onChanged: (double newsvalue){setState(() {
                            water=newsvalue;
                          });},
                        ),)
                        ,Padding(padding: EdgeInsets.fromLTRB(5, 10, 0, 20),child: Row(mainAxisAlignment: MainAxisAlignment.start,children: [RichText(text: TextSpan(style: TextStyle(fontSize: 20,color: Colors.black,fontFamily: 'ubuntu-Title'),text:'$water')),],),),


                      ],)
                        ,)


                      //water spillage slider
                      ,SingleChildScrollView(scrollDirection: Axis.horizontal,child:Row(children: [
                        Padding(padding: EdgeInsets.fromLTRB(10, 10, 0, 20),child: Row(mainAxisAlignment: MainAxisAlignment.start,children: [RichText(text: TextSpan(style: TextStyle(fontSize: 20,color: Colors.black,fontFamily: 'ubuntu-Title'),text:'class arrangement:')),],),),
                        Padding(padding: EdgeInsets.fromLTRB(10, 1, 0, 1),child: Slider(
                          value: furniture,
                          min: 1,
                          max: 5,
                          divisions: 4,
                          activeColor: Colors.brown,
                          inactiveColor: Colors.white,
                          label: "$furniture",
                          onChanged: (double newfvalue){setState(() {
                            furniture=newfvalue;
                          });},
                        ),)
                        ,Padding(padding: EdgeInsets.fromLTRB(5, 10, 0, 20),child: Row(mainAxisAlignment: MainAxisAlignment.start,children: [RichText(text: TextSpan(style: TextStyle(fontSize: 20,color: Colors.black,fontFamily: 'ubuntu-Title'),text:'$furniture')),],),),


                      ],))
                      ,Padding(padding: EdgeInsets.fromLTRB(0, 20, width/5, 10),child: Row(mainAxisAlignment: MainAxisAlignment.end,children: [ElevatedButton(style:ButtonStyle(shape:MaterialStateProperty.all(StadiumBorder()),backgroundColor: MaterialStateProperty.all(HexColor("99E1D9"))),onPressed: () async {
                        DatabaseReference ref = FirebaseDatabase.instance.ref("Class/$selectclass/$selectsection/$cdate");

                        await ref.set({
                          "Sanitation":"$sanitation","Water-Spillage":"$water","Class-Arrangement":"$furniture"
                        });
                        setState(() {
                          message ="Data uploaded for class $selectclass th-$selectsection";

                        });

                      }, child: Center(child: RichText(text: TextSpan(style: TextStyle(fontSize: width*0.05,color: Colors.black,fontFamily: 'ubuntu-Title'),text:"Submit"),),),
                      ),],)
                        ,)
                      ,Padding(padding: EdgeInsets.fromLTRB(0, 10, width/100, 50),child: RichText(text: TextSpan(style: TextStyle(fontSize: 20,color: Colors.red,fontFamily: 'ubuntu-Title'),text:'$message')),)










                    ],)
                  ],),




                ),)
          )],),)
        ],


      ),)
    );
  }
}


