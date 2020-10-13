import 'package:flutter/material.dart';
import 'route.dart';
// import 'main.dart';
// import 'secondddd.dart';
class Box extends StatefulWidget {
  @override
  _BoxState createState() => _BoxState();
}
class _BoxState extends State<Box> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Color(0x88999999),
                offset: Offset(0,5),
                blurRadius: 5.0,
              ),
            ]),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 50,
              child: FlatButton(

//                heroTag: "btn1",
                onPressed: () {
                 Navigator.pop(context);
                 Navigator.push(
                     context,
                     MaterialPageRoute(
                         builder: (context) => BoxBox(), maintainState: false)
                 );
                },
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Stack(
                    alignment: AlignmentDirectional.centerStart,
                    children: <Widget>[
                      SizedBox(
                        width: 30,
                        height: 30,
                        child: Center(
                          child: Image.asset("Images/pin.png"),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 12,
                        width: 20,
                        height: 20,
                        child: Center(
                          child: Image.asset("Images/remove.png"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40,right: 50),
                        child: Text(
                          "南投縣埔里鎮育英街207號",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff323643)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x88999999),
                      offset: Offset(0,5),
                      blurRadius: 5.0,
                    ),
                  ]),
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: FlatButton(
                      onPressed: () {

                      },
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: Stack(
                          alignment: AlignmentDirectional.centerStart,
                          children: <Widget>[
                            SizedBox(
                              width: 30,
                              height: 30,
                              child: Center(
                                child: Image.asset("Images/send.png"),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              top: 12,
                              width: 20,
                              height: 20,
                              child: Center(
                                child: Image.asset("Images/remove.png"),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 40,right: 50),
                              child: Text(
                                "南投縣埔里鎮大學路1號",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff323643)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
  }
}