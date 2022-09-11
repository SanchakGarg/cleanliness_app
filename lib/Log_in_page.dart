import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:firebase_database/firebase_database.dart';
import 'form.dart';


class Clogin extends StatefulWidget {
  const Clogin({Key? key}) : super(key: key);

  @override
  State<Clogin> createState() => _CloginState();
}

class _CloginState extends State<Clogin> {
  static Future<User?> loginUsingEmailPassword({required String email,required String password,required BuildContext context}) async{
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try{
      UserCredential userCredential = await auth.signInWithEmailAndPassword(email: email,password:password);
      user = userCredential.user;
    } on FirebaseAuthException catch(e){
      if(e.code =="user-not-found"){

      }
    }
    return user;
  }
  TextEditingController _password =TextEditingController();
  String email="cleanbbps@gmail.com";

  String message="";
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
                        Padding(child: RichText(text: TextSpan(style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.08,color: Colors.black,fontFamily: 'ubuntu-Title'),text: "cleanliness form")),padding: EdgeInsets.fromLTRB(0, 5, 0, 0),)
                        //cleanliness form button
                        ,
                        Center(child: Column(children: [Padding(padding:EdgeInsets.fromLTRB(width*0.05, 0, width*0.05, 0),child:  TextField(controller: _password,obscureText: true,decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'password'),),),
                          Padding(padding: EdgeInsets.fromLTRB(0, 10, width/100, 50),child: RichText(text: TextSpan(style: TextStyle(fontSize: 20,color: Colors.red,fontFamily: 'ubuntu-Title'),text:'$message')),),Padding(padding: EdgeInsets.fromLTRB(0, 15, width*0.06, 0),child: Center(child: Row(mainAxisAlignment: MainAxisAlignment.end,children: [Container(child:ElevatedButton(child: Center(child: RichText(text:TextSpan(style: TextStyle(fontSize: width*0.04,color: Colors.black,fontFamily: 'ubuntu-Title'),text: 'Log-in')),),onPressed: () async {
                            setState(() {
                              message="trying password...";
                            });
                            User? user =await loginUsingEmailPassword(email: email, password: _password.text, context: context);
                             print(user);
                             if (user!=null){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=> form()));
                             }else{
                               setState(() {
                                 message="";
                                 Future.delayed(Duration(milliseconds: 1000));
                                 message="Error! Try Again";
                               });
                             }

                          }

                            ,style:ButtonStyle(shape:MaterialStateProperty.all(StadiumBorder()),backgroundColor: MaterialStateProperty.all(HexColor("99E1D9"))),),height: height*0.1,width: width*0.4,decoration: BoxDecoration(color: HexColor("99E1D9"),borderRadius: BorderRadius.circular(40),boxShadow: [BoxShadow(color: HexColor("99E1d9"),blurRadius: 10,offset: Offset(5,5))]),)],),),)


                        ],)),
                        //Row for alignment
                        Row(children:[

                        ])

                      ],
                    ),




                  ),)
            )],)
          ],


        ),)
    );
  }
}
