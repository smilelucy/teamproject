import 'package:flutter/material.dart';

// 簡易處理
class ColorContainerView extends StatelessWidget {
  // This widget is the root of your application.
//  String _value;
  final String title;
  final Color colorName;
  //final Image image;

  ColorContainerView({
    @required this.title,
    @required this.colorName,
    //@required this.image,

  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
//          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 8),
          height: 230,
          width: 320,
//          width: MediaQuery.of(context).size.width,
//          height: MediaQuery.of(context).size.height,
          color: colorName,
          child:Positioned(
              child: Text(title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              )
          ),
        ),
        //Image.asset('Images/noice.png',height:100,width:100),
      ],
    );
  }
}


class ThirdPage extends StatefulWidget{
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {

  bool _visibleA = false; // button 1
  bool _visibleB = false; // button 2
  bool _visibleC = false; // button 3
  bool _visibleD = false; // button 4
  bool _visibleE = false; // button 5
  bool _visibleF = false; // button 6

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            SizedBox(height:20,),
            // STEP 1 冷靜
            new Align(
              alignment:new FractionalOffset(0.0, 0.0),
              child:Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child:Stack(
                          children: <Widget>[
                            Positioned(

                              child:RaisedButton(
                                onPressed: () {
                                  setState(() {
                                    _visibleA = !_visibleA;
                                  });
                                },
//                child: const Text('Enabled Button', style: TextStyle(fontSize: 20)),
                                child:Text('1',style:TextStyle(color:Color(0xff3d596d),fontSize: 20)),
                                shape: CircleBorder(),
                                color:Color(0xffe2cfc4),// 0xff005082
                              ),
                            ),
                            Positioned(
                              left:65,
                              child:Text("冷靜",
                                style:TextStyle(
                                  fontSize: 30,
//                                        color: Color(0xff0d0f0f)
//                                    color: Colors.red
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),


                    ],
                  ),
                  Padding(
                    padding: new EdgeInsets.only(left:20),
                    child:Container(
//                            width: MediaQuery.of(context).size.width ,
//                            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 30),
                      child:Visibility(
                        visible: _visibleA, // 一開始要不要顯示
                        child:Row(
                          children: <Widget>[
                            Stack(
                              children: <Widget>[

                                ColorContainerView(
                                    title: '保持冷靜，記住蛇的特徵',
                                    colorName: Color(0xffFDFCDC)

                                ),
                                Positioned(
                                  top:-10,
                                  left:40,
                                  child: new Image.asset(
                                      'Images/calmdown1.png',
                                      height: 280,
                                      width: 280
                                    //                                  fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height:20,),
            // STEP 2 卸物
            new Align(
              alignment:new FractionalOffset(0.0, 0.0),
              child:Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child:Stack(
                          children: <Widget>[
                            Positioned(
                              child:RaisedButton(
                                onPressed: () {
                                  setState(() {
                                    _visibleB = !_visibleB;
                                  });
                                },
//                child: const Text('Enabled Button', style: TextStyle(fontSize: 20)),
                                child:Text('2',style:TextStyle(color:Color(0xff3d596d),fontSize: 20)),
                                shape: CircleBorder(),
                                color:Color(0xffe2cfc4),
                              ),
                            ),
                            Positioned(
                              left:65,
                              child:Text("卸物",
                                style:TextStyle(fontSize: 30),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: new EdgeInsets.only(left:20),
                    child:Container(
                      child:Visibility(
                        visible: _visibleB, // 一開始要不要顯示
                        child:Row(
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                ColorContainerView(title: '脫掉戒指、手鐲、手錶等物品',colorName: Color(0xffFED9B7)),
                                Positioned(
                                  top:-20,
                                  left:20,
                                  child: new Image.asset(
                                      'Images/takeoff.png',
                                      height: 280, width: 280
                                    //                                  fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height:20,),
            // STEP 3 包紮
            new Align(
              alignment:new FractionalOffset(0.0, 0.0),
              child:Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child:Stack(
                          children: <Widget>[
                            Positioned(
                              child:RaisedButton(
                                onPressed: () {
                                  setState(() {
                                    _visibleC = !_visibleC;
                                  });
                                },
//                child: const Text('Enabled Button', style: TextStyle(fontSize: 20)),
                                child:Text('3',style:TextStyle(color:Color(0xff3d596d),fontSize: 20)),
                                shape: CircleBorder(),
                                color:Color(0xffe2cfc4),
                              ),
                            ),
                            Positioned(
                              left:65,
                              child:Text("包紮",
                                style:TextStyle(fontSize: 30),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: new EdgeInsets.only(left:20),
                    child:Container(
                      child:Visibility(
                        visible: _visibleC, // 一開始要不要顯示
                        child:Row(
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                ColorContainerView(title: '使用彈性繃帶包紮患部，鬆緊度以能夠插入一根手指頭為原則，目的是減少毒液經由淋巴回流，並避免產生患肢缺血症狀，這點對於神經性毒蛇的咬傷尤其重要',colorName: Color(0xffFDFCDC)),
                                Positioned(
                                  top:0,
                                  left:20,
                                  child: new Image.asset(
                                      'Images/bandage1.png',
                                      height: 280, width: 280
                                    //                                  fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height:20,),
            // STEP 4 低於心臟
            new Align(
              alignment:new FractionalOffset(0.0, 0.0),
              child:Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child:Stack(
                          children: <Widget>[
                            Positioned(
                              child:RaisedButton(
                                onPressed: () {
                                  setState(() {
                                    _visibleD = !_visibleD;
                                  });
                                },
//                child: const Text('Enabled Button', style: TextStyle(fontSize: 20)),
                                child:Text('4',style:TextStyle(color:Color(0xff3d596d),fontSize: 20)),
                                shape: CircleBorder(),
                                color:Color(0xffe2cfc4),
                              ),
                            ),
                            Positioned(
                              left:65,
                              child:Text("低於心臟",
                                style:TextStyle(fontSize: 30),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: new EdgeInsets.only(left:20),
                    child:Container(
                      child:Visibility(
                        visible: _visibleD, // 一開始要不要顯示
                        child:Row(
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                ColorContainerView(title: '將患肢儘可能保持低於心臟的位置',colorName:  Color(0xffFED9B7)),
                                Positioned(
                                  top:-10,
                                  left:20,
                                  child: new Image.asset(
                                      'Images/heart.png',
                                      height: 320, width: 320
                                    //                                  fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height:20,),
            // STEP 5 不要冰敷
            new Align(
              alignment:new FractionalOffset(0.0, 0.0),
              child:Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child:Stack(
                          children: <Widget>[
                            Positioned(
                              child:RaisedButton(
                                onPressed: () {
                                  setState(() {
                                    _visibleE = !_visibleE;
                                  });
                                },
//                child: const Text('Enabled Button', style: TextStyle(fontSize: 20)),
                                child:Text('5',style:TextStyle(color:Color(0xff3d596d),fontSize: 20)),
                                shape: CircleBorder(),
                                color:Color(0xffe2cfc4),
                              ),
                            ),
                            Positioned(
                              left:65,
                              child:Text("不要冰敷",
                                style:TextStyle(fontSize: 30),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: new EdgeInsets.only(left:20),
                    child:Container(
                      child:Visibility(
                        visible: _visibleE, // 一開始要不要顯示
                        child:Row(
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                ColorContainerView(
                                  title: '不要冰敷，冰敷腫脹局部會使循環變差，造成組織大量壞死',
                                  colorName: Color(0xffFDFCDC),
                                ),
                                Positioned(
                                  top:10,
                                  left:55,
                                  child: new Image.asset(
                                      'Images/noice.png',
                                      height: 260, width: 260
                                    //                                  fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height:20,),
            // STEP 6 盡速送醫
            new Align(
              alignment:new FractionalOffset(0.0, 0.0),
              child:Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child:Stack(
                          children: <Widget>[
                            Positioned(
                              child:RaisedButton(
                                onPressed: () {
                                  setState(() {
                                    _visibleF = !_visibleF;
                                  });
                                },
//                child: const Text('Enabled Button', style: TextStyle(fontSize: 20)),
                                child:Text('6',style:TextStyle(color:Color(0xff3d596d),fontSize: 20)),
                                shape: CircleBorder(),
                                color:Color(0xffe2cfc4),
                              ),
                            ),
                            Positioned(
                              left:65,
                              child:Text("盡速送醫",
                                style:TextStyle(fontSize: 30),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: new EdgeInsets.only(left:20),
                    child:Container(
                      child:Visibility(
                        visible: _visibleF, // 一開始要不要顯示
                        child:Row(
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                ColorContainerView(title: '初步處置後，應儘速送醫，接受必要的治療',colorName: Color(0xffFED9B7)),
                                Positioned(
                                  top:10,
                                  left:50,
                                  child: new Image.asset(
                                      'Images/ambulance.png',
                                      height: 260, width: 260
                                    //                                  fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}