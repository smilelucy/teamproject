import 'package:flutter/material.dart';
import 'location.dart';
// import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';



class Calendar extends StatefulWidget{
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar>{


  @override

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Calendar'),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}

