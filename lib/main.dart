import 'package:cleanliness_app/chart.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'Log_in_page.dart';
import 'form.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(milliseconds: 300));

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cleanliness App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted
        primarySwatch: Colors.grey,
      ),
      home: const firebase(),
    );
  }
}



class firebase extends StatefulWidget {
  const firebase({Key? key}) : super(key: key);

  @override
  State<firebase> createState() => _firebaseState();
}

class _firebaseState extends State<firebase> {
  Future<FirebaseApp>  _initalizeFirebase() async{
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _initalizeFirebase(),
        builder: (context,snapshot){
          if(snapshot.connectionState==ConnectionState.done){
            return const HomePage();
          }
          return const Center(child: CircularProgressIndicator(),);
        }
      ),
    );
  }
}





class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(

      backgroundColor: HexColor("#705D56"),
      body:Column(
        children: [
          Padding(child:Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children:
          [Image(image: AssetImage('assets/images/logo.png'),height: height * 0.1,width: width * 0.4),Image(image: AssetImage('assets/images/logo2.png'),height: height * 0.1,width: width * 0.4)],) ,
            padding: EdgeInsets.fromLTRB(width*0.005, height*0.037,0,0),)

          ,

          Row(children:
          [Container(
              color: HexColor("#705D56"),
              height: height*0.863,
              width: width,
              child: Center(
                child:
                Container(
                  height: height*0.7,
                  width: width*0.8,

                  decoration: BoxDecoration(color: HexColor("F0F7F4"),
                      borderRadius: BorderRadius.circular(40),
                      boxShadow:[ BoxShadow(color: HexColor("32292F"), blurRadius: 20, offset: Offset(20,20),)]),
                  //now box cantainer
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //heading
                      Padding(child: RichText(text: TextSpan(style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.08,color: Colors.black,fontFamily: 'ubuntu-Title'),text: "MENU")),padding: EdgeInsets.fromLTRB(0, 5, 0, 0),)
                      //cleanliness form button
                      ,//onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Clogin()));},
                      Center(child: Column(children: [Container(
                        height: height*0.1,width: width*0.7,
                        decoration: BoxDecoration(color: HexColor("99E1D9"),
                            borderRadius: BorderRadius.circular(45),
                            boxShadow: [BoxShadow(color: HexColor("99E1D9"),blurRadius: 15,offset: Offset(5,5)) ]
                        ),
                        child: ElevatedButton(style:ButtonStyle(shape:MaterialStateProperty.all(StadiumBorder()),backgroundColor: MaterialStateProperty.all(HexColor("99E1D9"))),onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Clogin()));}, child: Center(child: RichText(text: TextSpan(style: TextStyle(fontSize: width*0.05,color: Colors.black,fontFamily: 'ubuntu-Title'),text:"cleanliness form"),),),
                        ),),
                        Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0),child: Container(
                          height: height*0.1,width: width*0.7,
                          decoration: BoxDecoration(color: HexColor("99E1D9"),
                              borderRadius: BorderRadius.circular(45),
                              boxShadow: [BoxShadow(color: HexColor("99E1D9"),blurRadius: 15,offset: Offset(5,5)) ]
                          ),
                          child: ElevatedButton(style:ButtonStyle(shape:MaterialStateProperty.all(StadiumBorder()),backgroundColor: MaterialStateProperty.all(HexColor("99E1D9"))),onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> chart()));}, child: Center(child: RichText(text: TextSpan(style: TextStyle(fontSize: width*0.05,color: Colors.black,fontFamily: 'ubuntu-Title'),text:"create chart"),),),
                          ),),
                            )

                      ],),
                           ),
                      //Row for alignment
                      Row()


                    ],
                  ),




                ),)
          )],)
        ],


      ),
    );
  }
}



