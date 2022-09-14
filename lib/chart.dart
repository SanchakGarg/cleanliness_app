
import 'package:cleanliness_app/main.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'Log_in_page.dart';
import 'package:intl/intl.dart';

class chart extends StatefulWidget {
  const chart({Key? key}) : super(key: key);

  @override
  State<chart> createState() => _chartState();
}

class _chartState extends State<chart> {
  @override
  Widget build(BuildContext context) {
    final DateRangePickerController _controller = DateRangePickerController();
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;


    void selectionChanged(DateRangePickerSelectionChangedArgs args) {
      final List<PickerDateRange> dateRanges = (args.value as List<PickerDateRange>);
      final DateTime? date = dateRanges.isNotEmpty ? dateRanges[dateRanges.length - 1].startDate! : null;

      if (date != null && _controller.selectedRanges != null && dateRanges[dateRanges.length - 1].endDate == null) {
        _controller.selectedRanges  = <PickerDateRange>[
          PickerDateRange(date.add(Duration(days: -4)),
              date.add(Duration(days: 0))),

        ];
      }
    }

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
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children:[IconButton(
                        icon: Icon(
                        Icons.arrow_circle_left,
                        ),
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));},
                        ),RichText(text: TextSpan(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black,fontFamily: 'ubuntu-Title'),text:'create chart')),Container()
                        ]),//cleanliness form button
                      SfDateRangePicker(
                      view: DateRangePickerView.month,
                      controller: _controller,
                      monthViewSettings: DateRangePickerMonthViewSettings(
                      enableSwipeSelection: false),
                      selectionMode: DateRangePickerSelectionMode.multiRange,
                      onSelectionChanged:selectionChanged
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 10, 10, 10),child: Container(
                        height: height*0.1,width: width*0.7,
                        decoration: BoxDecoration(color: HexColor("99E1D9"),
                            borderRadius: BorderRadius.circular(45),
                            boxShadow: [BoxShadow(color: HexColor("99E1D9"),blurRadius: 15,offset: Offset(5,5)) ]
                        ),
                        child: ElevatedButton(style:ButtonStyle(shape:MaterialStateProperty.all(StadiumBorder()),backgroundColor: MaterialStateProperty.all(HexColor("99E1D9"))),onPressed: (){print(_controller);}, child: Center(child: RichText(text: TextSpan(style: TextStyle(fontSize: width*0.05,color: Colors.black,fontFamily: 'ubuntu-Title'),text:"Make chart"),),),
                        ),),
                      )
                                                          ]),




                ),)
          )],)
        ],


      ),
    );
  }
}
