import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget{
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListWheelScrollView(
        itemExtent: 200,
        //squeeze: 1,
        diameterRatio: 20,
        offAxisFraction: 0.3,
        
      children: [

        Padding(
          padding: const EdgeInsets.only(left:10, right:10, bottom:10),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff006D77),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("Images/glasses.jfif"),
                          fit : BoxFit.fill,
                        )
                      ), 
                    ),
                  )
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text("\n眼鏡蛇\nNaja naja atra\n俗名: 飯匙倩", 
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:8, right: 18),
                        child: RaisedButton(
                          onPressed : () {
                            showdetail(context);
                          },
                          child: Text("More", 
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            //side: BorderSide(color: Colors.white54)
                          ),
                          color: Colors.blueAccent,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ),
        ),


        Padding(
          padding: const EdgeInsets.only(left:10, right:10, bottom:10),
          child: InkWell(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff006D77),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("Images/umbrella.jfif"),
                          fit : BoxFit.fill,
                        )
                      ), 
                    ),
                  )
                ),
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:8.0, left: 15),
                        child: Text("雨傘節\nBungarus multicincyus\n俗名:白節", 
                          style: TextStyle(
                            fontSize: 23,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 18),
                        child: RaisedButton(
                          child: Text("More", 
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Colors.white54),
                          ),
                          color: Colors.blueAccent,
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ),
          ),
        ),
          


        Padding(
          padding: const EdgeInsets.only(left:10, right:10, bottom:10),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff006D77),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("Images/green.jfif"),
                          fit : BoxFit.fill,
                        )
                      ), 
                    ),
                  )
                ),
                Expanded(
                  child: Text("赤尾青竹絲\nTrimeresurus stejnegeri\n俗名: 赤尾鮐\n", 
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  )
                )
              ],
            )
          ),
        ),



        Padding(
          padding: const EdgeInsets.only(left:10, right:10, bottom:10),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff006D77),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("Images/chain.jfif"),
                          fit : BoxFit.fill,
                        )
                      ), 
                    ),
                  )
                ),
                Expanded(
                  child: Text("鎖鏈蛇\nDaboia siamensis\n俗名: 七步蛇\n", 
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  )
                )
              ],
            )
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left:10, right:10, bottom:10),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff006D77),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("Images/flower.jfif"),
                          fit : BoxFit.fill,
                        )
                      ), 
                    ),
                  )
                ),
                Expanded(
                  child: Text("龜殼花\nTrimeresurus mucrosquamatus\n俗名: 筍殼班\n\n", 
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  )
                )
              ],
            )
          ),
        ),


        Padding(
          padding: const EdgeInsets.only(left:10, right:10, bottom:10),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff006D77),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("Images/step.jfif"),
                          fit : BoxFit.fill,
                        )
                      ), 
                    ),
                  )
                ),
                Expanded(
                  child: Text("百步蛇\nDeinagkistrodon\n俗名: 破風板\n\n", 
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  )
                )
              ],
            )
          ),
        ),


        ],
      ),
    );
  }
  void showdetail(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("hello"),
      content: Text("success"),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      }  
    );
  }
}