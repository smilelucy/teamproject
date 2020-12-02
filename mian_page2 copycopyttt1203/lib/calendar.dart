import 'package:flutter/material.dart';
import 'location.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart' show CalendarCarousel;


class Calendar extends StatefulWidget{
  @override
  _CalendarState createState() => _CalendarState();
}

// const MaterialColor _buttonTextColor = MaterialColor(0xffe9c46a, <int,Color>{
//
// });

class _CalendarState extends State<Calendar>{
  String title = 'Date Picker';
  DateTime _date = DateTime.now();
  // DateTime _date1 = _date+1;
  Future<Null>_selectDate(BuildContext context) async{
    DateTime _datePicker = await showDatePicker(
        context: context,
        initialDate: _date, // current date
        firstDate: DateTime(1947), // firstdate
        lastDate: DateTime(2030), // lastdate
        textDirection: TextDirection.ltr, // 字靠左邊還是右邊
        // initialDatePickerMode: DatePickerMode.year, // 一開始進去先選擇是哪年的 // day or year mode

        // color change and picked color change
        builder: (BuildContext context, Widget child) {
          return Theme(
            data: ThemeData(
              // primarySwatch: _buttonTextColor,
              primaryColor: Color(0xffe9c46a), // picked or select date color
              accentColor: Color(0xffe9c46a) , // picked or select date color
            ),
            child: child,
          );
        }
    );

    if(_datePicker != null && _datePicker != _date){
      setState(() {
        _date = _datePicker;
        print(
          _date.toString(),
        );
      });
    }
  }

  @override

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Calendar'),
        centerTitle: true,
        leading: IconButton(
             icon: Icon(Icons.arrow_back,
                 color:Colors.white),
             onPressed: () {
               Navigator.pop(context);
               Navigator.push(
                   context,
                   MaterialPageRoute(
                       builder: (context) => Location(), maintainState: false));
             },
           ),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                setState(() {
                  _selectDate(context);
                });
              },
              color: Color(0xffe9c46a),
              child: Text(
                'Date Picker',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(  _date.toString(),style: TextStyle(fontSize: 20),),
            ), // picked date
          ],
        ),

      )
    );
  }
}




