import 'package:flutter/material.dart';

//void main() {
//  runApp(MyApp());
//}

class Weather extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Weather' ,
      home: Scaffold(
        appBar: PreferredSize(
          child: AppBar(
            backgroundColor: Color(0xff65a2cd),

            leading: Padding(
              padding: EdgeInsets.only(left: 12),
              child: IconButton(

              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
              ),
            ),

           // title: Text('天氣資訊', style:TextStyle(
           //    letterSpacing: 10,
           //    fontSize: 25,
           //    fontStyle: FontStyle.italic,
           //    fontWeight: FontWeight.bold,
           //    )
           // ),
            centerTitle: true,
            
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                // onPressed: () => Navigator.of(context).pop(),
                onPressed: () {
                  print('Click search');
                },
              ),
              IconButton(
                icon: Icon(Icons.view_headline),
                // onPressed: () => Navigator.of(context).pop(),
                onPressed: () {
                  print('Click search');
                },
              ),
            ],
          ),
        preferredSize: Size.fromHeight(50)
        ),

        body : Column(
          children: <Widget>[
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: Container(

                    height: 190,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("Images/sun.jpg"),
                        fit : BoxFit.fill,
                        colorFilter: ColorFilter.mode(
                          Colors.black12.withOpacity(0.5),
                          BlendMode.dstATop,
                        )
                      )
                    ),
                    
                    child: Stack(
                      children: <Widget>[
                        Center(child: 
                          Text("27°C",
                            style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 70,
                            color: Colors.black)  
                          )
                        ),
                        Positioned(
                          left:130,
                          top: 135,
                          child:Text("晴時多雲",
                            style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            letterSpacing: 3,
                            color: Color(0xffe5e5e5)))
                        ),
                        Positioned(
                          left:125,
                          child:Text("埔里鎮",
                            style: TextStyle(
                            fontSize: 45,
                            letterSpacing: 3,
                            color: Colors.black87)),
                        ),
                      ],
                    ),
                  )
                ),
              ],
            ),

            Column(
              children: <Widget>[
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      child: Container(
//                          width: MediaQuery.of(context).size.width,
//                          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 20),
                        height: 220,
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(width: 1.0, color: Colors.grey),
                            bottom: BorderSide(width: 1.0, color: Colors.grey),
                          ),
                          color: Color(0xffade8f4)
                        ),
                        child: Stack(
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 15, top: 10),
                                  child: Text("今日26/30°C",
                                    style: TextStyle(
                                      letterSpacing: 2.0,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 90, top: 10),
                                  child: Container(
                                    width: 160,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: Color(0xff8d99ae),
                                      gradient: new LinearGradient(
                                        colors: [
                                          const Color(0xffffffff),
                                          const Color(0xff011627),
                                        ],
                                        begin: const FractionalOffset(0.0, 0.0),
                                        end: const FractionalOffset(1.0, 0.0),
                                        stops: [0.4,0.0]
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),

                                    child: Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(left:20),
                                          child: Container(
                                            child: Text("氣溫", 
                                              style: TextStyle(
                                                letterSpacing: 3.0,
                                                color: Colors.black
                                                )
                                              ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left:25),
                                          child: Text("降雨機率",
                                            style: TextStyle(
                                              letterSpacing: 3.0,
                                              color: Colors.white
                                            )
                                          ),
                                        ),
                                      ],
                                  ),),
                                ),
                              ],
                            ),
                            
                            Padding(
                              padding: const EdgeInsets.only(top:45),
                              child: Row(
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text("9:00", 
                                    style: TextStyle(
                                      fontSize: 16,
                                  ),),
                                  Text("10:00", 
                                    style: TextStyle(
                                      fontSize: 16,
                                  ),),
                                  Text("11:00", 
                                    style: TextStyle(
                                      fontSize: 16,
                                  ),),
                                  Text("12:00", 
                                    style: TextStyle(
                                      fontSize: 16,
                                  ),),
                                  Text("13:00", 
                                    style: TextStyle(
                                      fontSize: 16,
                                  ),),
                                  Text("14:00", 
                                    style: TextStyle(
                                      fontSize: 16,
                                  ),),
                                  Text("15:00", 
                                    style: TextStyle(
                                      fontSize: 16,
                                  ),),
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top:70, bottom: 35),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Container(
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: Color(0xff8d99ae),
                                      gradient: new LinearGradient(
                                        colors: [
                                          const Color(0xff8d99ae),
                                          const Color(0xff0353A4),
                                        ],
                                        begin: const FractionalOffset(0.0, 0.0),
                                        end: const FractionalOffset(0.0, 1.0),
                                        stops: [0.75,0.0]),
                                      borderRadius: BorderRadius.circular(15)
                                     ),
                                  ),

                                  Container(
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: Color(0xff8d99ae),
                                      gradient: new LinearGradient(
                                        colors: [
                                          const Color(0xff8d99ae),
                                          const Color(0xff0353A4),
                                        ],
                                        begin: const FractionalOffset(0.0, 0.0),
                                        end: const FractionalOffset(0.0, 1.0),
                                        stops: [0.75,0.0]),
                                      borderRadius: BorderRadius.circular(15)
                                     ),
                                  ),

                                  Container(
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: Color(0xff8d99ae),
                                      gradient: new LinearGradient(
                                        colors: [
                                          const Color(0xff8d99ae),
                                          const Color(0xff0353A4),
                                        ],
                                        begin: const FractionalOffset(0.0, 0.0),
                                        end: const FractionalOffset(0.0, 1.0),
                                        stops: [0.65,0.0]),
                                      borderRadius: BorderRadius.circular(15)
                                     ),
                                  ),

                                  Container(
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: Color(0xff8d99ae),
                                      gradient: new LinearGradient(
                                        colors: [
                                          const Color(0xff8d99ae),
                                          const Color(0xff0353A4),
                                        ],
                                        begin: const FractionalOffset(0.0, 0.0),
                                        end: const FractionalOffset(0.0, 1.0),
                                        stops: [0.0,0.0]),
                                      borderRadius: BorderRadius.circular(15)
                                     ),
                                  ),

                                  Container(
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: Color(0xff8d99ae),
                                      gradient: new LinearGradient(
                                        colors: [
                                          const Color(0xff8d99ae),
                                          const Color(0xff0353A4),
                                        ],
                                        begin: const FractionalOffset(0.0, 0.0),
                                        end: const FractionalOffset(0.0, 1.0),
                                        stops: [0.0,0.0]),
                                      borderRadius: BorderRadius.circular(15)
                                     ),
                                  ),

                                  Container(
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: Color(0xff8d99ae),
                                      gradient: new LinearGradient(
                                        colors: [
                                          const Color(0xff8d99ae),
                                          const Color(0xff0353A4),
                                        ],
                                        begin: const FractionalOffset(0.0, 0.0),
                                        end: const FractionalOffset(0.0, 1.0),
                                        stops: [0.2,0.0]),
                                      borderRadius: BorderRadius.circular(15)
                                     ),
                                  ),

                                  Container(
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: Color(0xff8d99ae),
                                      gradient: new LinearGradient(
                                        colors: [
                                          const Color(0xff8d99ae),
                                          const Color(0xff0353A4),
                                        ],
                                        begin: const FractionalOffset(0.0, 0.0),
                                        end: const FractionalOffset(0.0, 1.0),
                                        stops: [0.65,0.0]),
                                      borderRadius: BorderRadius.circular(15)
                                     ),
                                  ),
                                ]
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top:186),
                              child: Row(
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text("25%", 
                                    style: TextStyle(
                                      fontSize: 16,
                                  ),),
                                  Text("35%", 
                                    style: TextStyle(
                                      fontSize: 16,
                                  ),),
                                  Text("80%", 
                                    style: TextStyle(
                                      fontSize: 16,
                                  ),),
                                  Text("100%", 
                                    style: TextStyle(
                                      fontSize: 16,
                                  ),),
                                  Text("100%", 
                                    style: TextStyle(
                                      fontSize: 16,
                                  ),),
                                  Text("80%", 
                                    style: TextStyle(
                                      fontSize: 16,
                                  ),),
                                  Text("35%", 
                                    style: TextStyle(
                                      fontSize: 16,
                                  ),),
                                ],
                              ),
                            ),
                          ],
                        )
                      ),
                    ),
                  ]
                ),
              ],
            ),


            Column(
              children: <Widget>[
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 180,
                        decoration: BoxDecoration(
                          border: Border(
                            //top: BorderSide(width: 0.0, color: Colors.black),
                            bottom: BorderSide(width: 1.0, color: Colors.grey[700]),
                          ),
                          color: Color(0xffade8f4)
                        ),
                        child: Stack(
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 15, top: 10),
                                  child: Icon(Icons.warning, color: Colors.red),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15, top:5),
                                  child: Text("大雨特報",
                                    style: TextStyle(
                                      letterSpacing: 2.0,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.red
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 90, top: 10),
                                  child: Container(
                                    width: 160,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: Color(0xff8d99ae),
                                      gradient: new LinearGradient(
                                        colors: [
                                          const Color(0xff011627),
                                          const Color(0xffffffff),
                                        ],
                                        begin: const FractionalOffset(0.0, 0.0),
                                        end: const FractionalOffset(1.0, 0.0),
                                        stops: [0.5,0.0]
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),

                                    child: Padding(
                                      padding: const EdgeInsets.only(left:7.0),
                                      child: Row(
                                        children: <Widget>[
                                          Text("詳細資訊 ", 
                                              style: TextStyle(
                                              letterSpacing: 3.0,
                                              color: Colors.white
                                            )
                                          ),
                                          
                                          Text("一週預報", 
                                              style: TextStyle(
                                              letterSpacing: 3.0,
                                              color: Colors.black
                                            )
                                          ),

                                        ],
                                  ),
                                    ),),
                                ),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top:45),
                              child: Padding(
                                padding: const EdgeInsets.only(top:5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(width: 1.0, color: Colors.grey),
                                    )
                                  ),
                                  child: Row(
                                    //crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Text("紫外線指數  3", 
                                        style: TextStyle(
                                          fontSize: 22,
                                          letterSpacing: 2
                                      ),),
                                      Text("體感溫度 28°C", 
                                        style: TextStyle(
                                          fontSize: 22,
                                          letterSpacing: 2
                                      ),),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top:90),
                              child: Padding(
                                padding: const EdgeInsets.only(top:5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(width: 1.0, color: Colors.grey),
                                    )
                                  ),
                                  child: Row(
                                    //crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Text("濕度         80%", 
                                        style: TextStyle(
                                          fontSize: 22,
                                          letterSpacing: 2
                                      ),),
                                      Text("能見度     8KM", 
                                        style: TextStyle(
                                          fontSize: 22,
                                          letterSpacing: 2
                                      ),),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top:135, left: 35, bottom: 5),
                              child: Container(
                                width: 320,
                                decoration: BoxDecoration(
                                  color: Color(0xff13CE66),
                                  borderRadius: BorderRadius.circular(15)
                                ),
                                child: Text("空氣品質指數  30", 
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 5,
                                    color: Colors.white
                                  ),),
                              ),
                            ),
                           
                          ],
                        )
                      ),
                    ),
                  ]
                ),
              ],
            ),
            

            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 95,
                    decoration: BoxDecoration(
                      color: Color(0xff90E0EF)
                    ),
                  )
                ),
              ],
            ),


          ],
        ),
      
      )
    );
  }
}