
import 'package:flutter/material.dart';
//import 'package:fluttertry5/main.dart';
//import 'first.dart';
//import 'third.dart';
class ThirddPage extends StatefulWidget{
  @override
  _ThirddPageState createState() => _ThirddPageState();
}
// 毒蛇資訊(ThirdPage)
class _ThirddPageState extends State<ThirddPage> {
  bool _visibleone = false; // button 1
  bool _visibletwo = false; // button 2
  bool _visiblethree = false; // button 3
  bool _visiblefour = false; // button 4
  bool _visiblefive = false; // button 5
  bool _visiblesix = false; // button 6
//  bool _display = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home:
      Scaffold(
//          appBar: AppBar(
//            leading:
//            IconButton(
//              icon: Icon(Icons.arrow_back,
//                  color:Colors.white),
//              onPressed: () {
//                Navigator.pop(context);
//                Navigator.push(
//                    context,
//                    MaterialPageRoute(
//                        builder: (context) => MyDrawerPage(), maintainState: false));
//              },
//            ),
////          Alignment.topCenter,
//            title: Text('血清列表'),
//            backgroundColor: Color(0xff0D2A66),
//          ),
//
          body:
          ListView(
              children: <Widget>[
//                Row(
////                mainAxisAlignment: MainAxisAlignment.center,
////                crossAxisAlignment: CrossAxisAlignment.center,
//                  children: <Widget>[
//
//                    Container(
//                      margin: EdgeInsets.only(
//                          left: 0, top: 0, right: 0, bottom: 0),
//                      child: Expanded(
//                        child:Stack(
//                          children: <Widget>[
//                            Positioned(
////                          left: 120,
//                              child:SizedBox(
//                                height: 60,
//                                width: 131,
//                                child:RaisedButton(
//
//                                  onPressed: () {
//                                    Navigator.push(
//                                        context,
//                                        MaterialPageRoute(
//                                            builder: (context) => FirstPage(), maintainState: false));
//                                  },
////                child: const Text('Enabled Button', style: TextStyle(fontSize: 20)),
//                                  child:Text('血清列表',style:TextStyle(color:Colors.white,fontSize: 20)),
////                            shape: CircleBorder(),
//                                  color: Colors.red,
////                                color:Color(0xff006D77),
//                                ),
//                              ),
//
//                            ),
//                          ],
//                        ),
//                      ),
//                    ),
//
//                    Container(
//                      margin: EdgeInsets.only(
//                          left: 0, top: 0, right: 0, bottom: 0),
//                      child: Expanded(
//                        child:Stack(
//                          children: <Widget>[
//                            Positioned(
////                          left: 120,
//                              child:SizedBox(
//                                height: 60,
//                                width: 130.5,
//                                child:RaisedButton(
//
//                                  onPressed: () {
//                                    Navigator.push(
//                                        context,
//                                        MaterialPageRoute(
//                                            builder: (context) => ThirdPage(), maintainState: false));
//                                  },
////                child: const Text('Enabled Button', style: TextStyle(fontSize: 20)),
//                                  child:Text('簡易處理',style:TextStyle(color:Colors.white,fontSize: 20)),
////                            shape: CircleBorder(),
//                                  color: Colors.orange,
////                                color:Color(0xff006D77),
//                                ),
//                              ),
//
//                            ),
//                          ],
//                        ),
//                      ),
//                    ),
//                    SizedBox(
//
//                      child: Expanded(
//
//                        child:Stack(
//                          children: <Widget>[
//                            Positioned(
//                              child:Container(
//                                alignment: Alignment.center,
//                                color:Colors.green,
//                                margin: EdgeInsets.only(
//                                    left: 0, top: 0, right: 0, bottom: 0),
//                                height: 60,
//                                width: 131,
////                              child:Container(
////                                onPressed: () {
////
////                                },
////                child: const Text('Enabled Button', style: TextStyle(fontSize: 20)),
//                                child:Text('毒蛇資訊',
//                                    style:TextStyle(color:Colors.white,fontSize: 20)
//
//                                ),
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//                    ),
//                  ],
//                ),
                SingleChildScrollView(
                  child:Column(
                      children: <Widget>[
                        Container(

                          padding: EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 40),
//                    width: double.infinity,

                          child: Wrap(
                            runSpacing: 10,
                            children: <Widget>[
                              // 標題: 台灣常見毒蛇
                              Container(

                                decoration: BoxDecoration(
//                                  border: Border.all(width: 2, color: Color(0xff663f29)), // 邊框
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xffa4cbcb),

                                ),
                                child:Stack(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        // step one
                                        Expanded(
                                          child: Stack(
                                            children: <Widget>[
                                              Container(

                                                child: new Image.asset('Images/glasses.jfif',height: 100,),
                                                margin: EdgeInsets.only(
                                                    left: 10, top: 10, right: 20, bottom: 10),
                                                height: 100.0,

                                              )
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Stack(
                                            children: <Widget>[
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '眼鏡蛇',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xff28577b)),
                                                  ),
                                                  Text('俗名 : 飯匙倩',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Color(0xff28577b)),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),

                                      ],
                                    ),
                                    // Raisedbutton
                                    Container(
                                      margin: EdgeInsets.only(left: 285, top: 70, right: 0, bottom: 0),
                                      child:RaisedButton(

                                        highlightColor: Color(0xffe9eff3),
//                                          disabledTextColor:Colors.red,
                                        onPressed: () {
                                          setState(() {
                                            _visibleone = !_visibleone;
                                          });
                                        },
//                child: const Text('Enabled Button', style: TextStyle(fontSize: 20)),
                                        child:Text('更多',style:TextStyle(color:Colors.black,fontSize: 18),),
                                        shape: CircleBorder(),
                                        color:Colors.white,
                                      ),
                                    ),
                                    // FloatingActionButton
                                  ],
                                ),


                              ),
                              // one plus
                              Visibility(
                                visible: _visibleone,
                                child:Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xfffcf6c5),
                                  ),
                                  child:Stack(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          // step one
                                          Expanded(
                                            child:Stack(
                                              children: <Widget>[
                                                Container(
                                                    alignment: Alignment.center,
                                                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 30),
//                                                    height: MediaQuery.of(context).size.height,// 500
//                                                    width: MediaQuery.of(context).size.width,
                                                    margin: EdgeInsets.only(
                                                        left: 10, top: 10, right: 10, bottom: 10),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
//                                                    mainAxisSize: MainAxisSize.min,
                                                      children: <Widget>[
                                                        Text(
                                                          '學名 : Naja naja atra',
                                                          style: TextStyle(fontSize: 16),
                                                        ),
                                                        Text(
                                                            '俗名：飯匙倩、蝙蝠蛇、脹頸蛇、眼鏡紅。\n'
                                                                '毒性：神經性毒',
                                                            style: TextStyle(fontSize: 16)),
                                                        Text( '常見地點：',
                                                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
                                                        ),
                                                        Text(
                                                            '  喜好夜晚活動，平地較多，全台低窪地區近郊草叢、田埂上',
                                                            style: TextStyle(fontSize: 16)
                                                        ),
                                                        Text( '辨認特徵：',
                                                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
                                                        ),
                                                        Text(
                                                            '  受驚嚇時上身仰起，頭頸昂仰賁張，狀似飯匙。頸部有一寬白斑紋，內有黑點，頸部擴張時背看似戴副眼鏡，所以叫做眼鏡蛇。被激怒時會發出噴氣聲，頭小頸大，體呈棕色略帶黃色斑點，口內有對溝牙長約1-3 mm。',
                                                            style: TextStyle(fontSize: 16)
                                                        ),
                                                        Text( '症狀特徵：',
                                                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
                                                        ),
                                                        Text(
                                                            '1. 咬傷局部會紅、腫、痛及組織壞死，牙痕小不易辨識。\n'
                                                                '2. 全身性症狀則有頭昏、噁心、嘔吐、腹痛、腹瀉、眼皮下垂、吞嚥困難等神經症狀。\n'
                                                                '3. 因吞嚥困難，口水可能流入氣管造成吸入性肺炎。',

                                                            style: TextStyle(fontSize: 16)
                                                        ),
                                                      ],
                                                    )
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),



                              // step two
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xffa4cbcb),
                                ),
//                          color: Colors.teal[300],
                                child:Stack(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Stack(
                                            children: <Widget>[
                                              Container(
//                                                decoration: BoxDecoration(
//                                                  borderRadius: BorderRadius.circular(15),
////                                             color: Color(0xff006D77),
//                                                  color: Colors.amber,
//                                                ),
                                                alignment: Alignment.center,

                                                child: new Image.asset('Images/try.jpg',height: 130,width:140),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10),
                                                height: 100.0,

                                              )
//                                            Image.asset('snake.jpg',height: 30,)

                                            ],
                                          ),
                                        ),
//                                        Expanded(
//                                          child: Text(
//                                            '雨傘節\n'
//                                                'Bungarus multicincyus\n',
////                                        '記住咬傷時間，慌亂及緊張反而加速蛇毒的吸收。告訴自已，目前醫學發達，在台灣因毒蛇咬傷死亡者，已經很少了。',
//                                            textAlign: TextAlign.left,
//                                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),
//                                          ),
//                                        ),
                                        Expanded(
                                          child: Stack(
                                            children: <Widget>[
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '雨傘節',
//                                        '記住咬傷時間，慌亂及緊張反而加速蛇毒的吸收。告訴自已，目前醫學發達，在台灣因毒蛇咬傷死亡者，已經很少了。',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xff28577b)),
                                                  ),
                                                  Text('俗名 : 簸箕甲',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Color(0xff28577b)),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 285, top: 70, right: 0, bottom: 0),
                                      child:RaisedButton(

                                        onPressed: () {
                                          setState(() {
                                            _visibletwo = !_visibletwo;
                                          });
                                        },
//                child: const Text('Enabled Button', style: TextStyle(fontSize: 20)),
                                        child:Text('更多',style:TextStyle(color:Colors.black,fontSize: 18)),
                                        shape: CircleBorder(),
                                        color:Colors.white,
                                      ),
                                    ),
                                  ],
                                ),

                              ),
                              // two plus
                              Visibility(
                                visible: _visibletwo,
                                child:Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xfffcf6c5),
                                  ),
//                          color: Colors.teal[300],
                                  child:Stack(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          // step one
                                          Expanded(
                                            child:Stack(
                                              children: <Widget>[
                                                Container(
//                                                  decoration: BoxDecoration(
//                                                    borderRadius: BorderRadius.circular(15),
////                                             color: Color(0xff006D77),
//                                                    color: Colors.amber,
//                                                  ),
                                                  alignment: Alignment.center,

                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: <Widget>[
//                                                      Text('俗名：雨傘蛇、簸箕甲、白節蛇、百節蛇、手巾蛇。\n'
//                                                          '毒性：神經性毒\n'
//                                                          '常見地點：\n'
//                                                          '  夜行性動物，喜游水、在溪邊活動，夜晚出來入侵民眾住家。分布全台灣。\n'
//                                                          '辨認特徵：\n'
//                                                          '  全身有黑寬白窄相間的斑紋，頭圓而小不呈三角形，口內有一對大溝牙、二對小溝牙。\n'
//                                                          '症狀特徵：\n'
//                                                          '1. 咬傷時，局部可能只感覺針刺感，不太痛，隨後局部可能會有麻木感，咬痕常不明顯。\n'
//                                                          '2. 全身性症狀以肌肉無力為主，可能有瞳孔放大合併光反射異常、眼皮下垂、吞嚥困難、發音困難乃至全身肌肉無力。\n',
//
//                                                          style: TextStyle(fontSize: 16),
//                                                      ),
                                                      Text('俗名：雨傘蛇、簸箕甲、白節蛇、百節蛇、手巾蛇。\n'
                                                          '毒性：神經性毒',
                                                          style: TextStyle(fontSize: 16)),
                                                      Text( '常見地點：',
                                                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
                                                      ),
                                                      Text(
                                                          '  夜行性動物，喜游水、在溪邊活動，夜晚出來入侵民眾住家。分布全台灣。',
                                                          style: TextStyle(fontSize: 16)
                                                      ),
                                                      Text( '辨認特徵：',
                                                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
                                                      ),
                                                      Text(
                                                          '  全身有黑寬白窄相間的斑紋，頭圓而小不呈三角形，口內有一對大溝牙、二對小溝牙。',
                                                          style: TextStyle(fontSize: 16)
                                                      ),
                                                      Text( '症狀特徵：',
                                                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
                                                      ),
                                                      Text(
                                                          '1. 咬傷時，局部可能只感覺針刺感，不太痛，隨後局部可能會有麻木感，咬痕常不明顯。\n'
                                                              '2. 全身性症狀以肌肉無力為主，可能有瞳孔放大合併光反射異常、眼皮下垂、吞嚥困難、發音困難乃至全身肌肉無力。',

                                                          style: TextStyle(fontSize: 16)
                                                      ),
                                                    ],
                                                  ),
                                                  margin: EdgeInsets.only(
                                                      left: 10, top: 10, right: 10, bottom: 10),
//                                                  height: 375,
                                                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 30),
//                                                  height: MediaQuery.of(context).size.height,
                                                )
//                                            Image.asset('snake.jpg',height: 30,)

                                              ],
                                            ),
                                          ),

//                                          Expanded(
//                                              child:Text(
//                                                '雨傘節\nBungarus multicincyus\n俗名:白節\n',
////                                        '記住咬傷時間，慌亂及緊張反而加速蛇毒的吸收。告訴自已，目前醫學發達，在台灣因毒蛇咬傷死亡者，已經很少了。',
//                                                textAlign: TextAlign.left,
//                                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
//                                              )
//                                          ),

                                        ],
                                      ),
                                    ],
                                  ),

                                ),
                              ),


                              // step three
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xffa4cbcb),
                                ),
//                            color: Colors.teal[300],
                                child:Stack(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Stack(
                                            children: <Widget>[
                                              Container(
//                                                decoration: BoxDecoration(
//                                                  borderRadius: BorderRadius.circular(15),
////                                             color: Color(0xff006D77),
//                                                  color: Colors.amber,
//                                                ),
                                                alignment: Alignment.center,

                                                child: new Image.asset('Images/green.jfif',height: 100,),
                                                margin: EdgeInsets.only(
                                                    left: 10, top: 15, right: 20, bottom: 10),
                                                height: 100.0,

                                              )
//                                            Image.asset('snake.jpg',height: 30,)

                                            ],
                                          ),
                                        ),

//                                        Expanded(
//                                          child: Text(
//                                            '赤尾青竹絲\n'
//                                                'Trimeresurus \n'
//                                                'stejnegeri\n',
////                                        '記住咬傷時間，慌亂及緊張反而加速蛇毒的吸收。告訴自已，目前醫學發達，在台灣因毒蛇咬傷死亡者，已經很少了。',
//                                            textAlign: TextAlign.left,
//                                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),
//                                          ),
//                                        ),
                                        Expanded(
                                          child: Stack(
                                            children: <Widget>[
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '赤尾青竹絲',
//                                        '記住咬傷時間，慌亂及緊張反而加速蛇毒的吸收。告訴自已，目前醫學發達，在台灣因毒蛇咬傷死亡者，已經很少了。',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xff28577b)),
                                                  ),
                                                  Text('俗名 : 赤尾鮐',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Color(0xff28577b)),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 285, top: 70, right: 0, bottom: 0),
                                      child:RaisedButton(

                                        onPressed: () {
                                          setState(() {
                                            _visiblethree = !_visiblethree;
                                          });
                                        },
//                child: const Text('Enabled Button', style: TextStyle(fontSize: 20)),
                                        child:Text('更多',style:TextStyle(color:Colors.black,fontSize: 18)),
                                        shape: CircleBorder(),
                                        color:Colors.white,
                                      ),
                                    ),
                                  ],
                                ),

                              ),
                              // three plus
                              Visibility(
                                visible: _visiblethree, // 一開始不要顯示
                                child:Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xfffcf6c5),
                                  ),
//                            color: Colors.teal[300],
                                  child:Stack(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          // step one
                                          Expanded(
                                            child:Stack(
                                              children: <Widget>[
                                                Container(
//                                                  decoration: BoxDecoration(
//                                                    borderRadius: BorderRadius.circular(15),
////                                             color: Color(0xff006D77),
//                                                    color: Colors.amber,
//                                                  ),
//                                                  alignment: Alignment.center,

                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: <Widget>[
//                                                      Text('俗名：赤尾鮐、青竹絲、竹葉青、青竹鏢、焦尾仔\n'
//                                                          '毒性:出血性毒\n'
//                                                          '常見地點：\n'
//                                                          '  離地數尺樹間叢林之間\n'
//                                                          '辨認特徵：\n'
//                                                          '  背部鮮綠色，腹面呈黃綠色，尾部為磚紅色，故又稱焦尾仔，頭呈三角形，有頰窩，口有一對大管牙，長約2公分。\n'
//                                                          '症狀特徵：\n'
//                                                          '  咬傷時，毒牙痕明顯，局部會疼痛、腫脹，皮下可見瘀血，少數有水泡或血泡(延遲就醫時較明顯)。\n',
//                                                        style: TextStyle(fontSize: 16),
//                                                      ),
                                                      Text('俗名：赤尾鮐、青竹絲、竹葉青、青竹鏢、焦尾仔\n'
                                                          '毒性:出血性毒',
                                                          style: TextStyle(fontSize: 16)),
                                                      Text( '常見地點：',
                                                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
                                                      ),
                                                      Text(
                                                          '  離地數尺樹間叢林之間',
                                                          style: TextStyle(fontSize: 16)
                                                      ),
                                                      Text( '辨認特徵：',
                                                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
                                                      ),
                                                      Text(
                                                          '  背部鮮綠色，腹面呈黃綠色，尾部為磚紅色，故又稱焦尾仔，頭呈三角形，有頰窩，口有一對大管牙，長約2公分。',
                                                          style: TextStyle(fontSize: 16)
                                                      ),
                                                      Text( '症狀特徵：',
                                                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
                                                      ),
                                                      Text(
                                                          '  咬傷時，毒牙痕明顯，局部會疼痛、腫脹，皮下可見瘀血，少數有水泡或血泡(延遲就醫時較明顯)。',

                                                          style: TextStyle(fontSize: 16)
                                                      ),
                                                    ],
                                                  ),
                                                  margin: EdgeInsets.only(
                                                      left: 10, top: 10, right: 10, bottom: 10),
//                                                  height: 330,
                                                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 30),
                                                )
//                                            Image.asset('snake.jpg',height: 30,)

                                              ],
                                            ),
                                          ),

//                                          Expanded(
//                                              child:Text(
//                                                '赤尾青竹絲\nTrimeresurus stejnegeri\n俗名: 赤尾鮐\n',
////                                        '記住咬傷時間，慌亂及緊張反而加速蛇毒的吸收。告訴自已，目前醫學發達，在台灣因毒蛇咬傷死亡者，已經很少了。',
//                                                textAlign: TextAlign.left,
//                                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
//                                              )
//                                          ),

                                        ],
                                      ),
                                    ],
                                  ),

                                ),
                              ),

                              // step four
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xffa4cbcb),
                                ),
//                            color: Colors.teal[300],
                                child:Stack(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Stack(
                                            children: <Widget>[
                                              Container(
//                                                decoration: BoxDecoration(
//                                                  borderRadius: BorderRadius.circular(15),
////                                             color: Color(0xff006D77),
//                                                  color: Colors.amber,
//                                                ),
                                                alignment: Alignment.center,

                                                child: new Image.asset('Images/chain.jfif',height: 100,),
                                                margin: EdgeInsets.only(
                                                    left: 10, top: 15, right: 20, bottom: 10),
                                                height: 100.0,

                                              )
//                                            Image.asset('snake.jpg',height: 30,)

                                            ],
                                          ),
                                        ),
//                                        Expanded(
//                                          child: Text(
//                                            '鎖鏈蛇\n'
//                                                'Daboia siamensis\n',
////                                        '記住咬傷時間，慌亂及緊張反而加速蛇毒的吸收。告訴自已，目前醫學發達，在台灣因毒蛇咬傷死亡者，已經很少了。',
//                                            textAlign: TextAlign.left,
//                                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),
//                                          ),
//                                        ),
                                        Expanded(
                                          child: Stack(
                                            children: <Widget>[
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '鎖鏈蛇',
//                                        '記住咬傷時間，慌亂及緊張反而加速蛇毒的吸收。告訴自已，目前醫學發達，在台灣因毒蛇咬傷死亡者，已經很少了。',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xff28577b)),
                                                  ),
                                                  Text('俗名 : 鎖仔蛇',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Color(0xff28577b)),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 285, top: 70, right: 0, bottom: 0),
                                      child:RaisedButton(

                                        onPressed: () {
                                          setState(() {
                                            _visiblefour = !_visiblefour;
                                          });
                                        },
//                child: const Text('Enabled Button', style: TextStyle(fontSize: 20)),
                                        child:Text('更多',style:TextStyle(color:Colors.black,fontSize: 18)),
                                        shape: CircleBorder(),
                                        color:Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // four plus
                              Visibility(
                                visible: _visiblefour, // 一開始不要顯示
                                child:Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xfffcf6c5),
                                  ),
//                            color: Colors.teal[300],
                                  child:Stack(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          // step one
                                          Expanded(
                                            child:Stack(
                                              children: <Widget>[
                                                Container(
//                                                  decoration: BoxDecoration(
//                                                    borderRadius: BorderRadius.circular(15),
////                                             color: Color(0xff006D77),
//                                                    color: Colors.amber,
//                                                  ),
                                                  alignment: Alignment.center,

                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: <Widget>[
//                                                      Text('俗名：鎖仔蛇\n'
//                                                          '毒性：混和性毒\n'
//                                                          '常見地點：\n'
//                                                          '  主要在台灣東南部河邊礫石草叢間較為常見。常夜間活動，棲居中低山林近山麓樹叢林間。\n'
//                                                          '辨認特徵：\n'
//                                                          '  體背面有三縱列交錯的暗色或深褐色橢圓形斑紋，頭部呈三角形，背面為淡灰褐色，三列橢圓形斑中列較大，延伸至頭背部，背景的淡灰色看起來像鎖鏈狀。其花紋粗看易與龜殼花花紋混淆，所以常被誤認為龜殼花，易受驚嚇而攻擊人，受刺激時會發出低沉嘶嘶噴氣聲。\n'
//                                                          '症狀特徵：\n'
//                                                          '  咬傷後，局部會腫痛、瘀血、水泡、血泡或局部壞死，但全身性出血症狀常較局部症狀明顯且嚴重。\n',
//                                                        style: TextStyle(fontSize: 16),
//                                                      ),
                                                      Text('俗名：鎖仔蛇\n'
                                                          '毒性：混和性毒',
                                                          style: TextStyle(fontSize: 16)),
                                                      Text( '常見地點：',
                                                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
                                                      ),
                                                      Text(
                                                          '  主要在台灣東南部河邊礫石草叢間較為常見。常夜間活動，棲居中低山林近山麓樹叢林間。',
                                                          style: TextStyle(fontSize: 16)
                                                      ),
                                                      Text( '辨認特徵：',
                                                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
                                                      ),
                                                      Text(
                                                          '  體背面有三縱列交錯的暗色或深褐色橢圓形斑紋，頭部呈三角形，背面為淡灰褐色，三列橢圓形斑中列較大，延伸至頭背部，背景的淡灰色看起來像鎖鏈狀。其花紋粗看易與龜殼花花紋混淆，所以常被誤認為龜殼花，易受驚嚇而攻擊人，受刺激時會發出低沉嘶嘶噴氣聲。',
                                                          style: TextStyle(fontSize: 16)
                                                      ),
                                                      Text( '症狀特徵：',
                                                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
                                                      ),
                                                      Text(
                                                          '  咬傷後，局部會腫痛、瘀血、水泡、血泡或局部壞死，但全身性出血症狀常較局部症狀明顯且嚴重。',

                                                          style: TextStyle(fontSize: 16)
                                                      ),
                                                    ],
                                                  ),
                                                  margin: EdgeInsets.only(
                                                      left: 10, top: 10, right: 10, bottom: 10),
//                                                  height: 400,
                                                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 30),
                                                )
//                                            Image.asset('snake.jpg',height: 30,)

                                              ],
                                            ),
                                          ),

//                                          Expanded(
//                                              child:Text(
//                                                '鎖鏈蛇\nDaboia siamensis\n俗名: 七步蛇\n',
////                                        '記住咬傷時間，慌亂及緊張反而加速蛇毒的吸收。告訴自已，目前醫學發達，在台灣因毒蛇咬傷死亡者，已經很少了。',
//                                                textAlign: TextAlign.left,
//                                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
//                                              )
//                                          ),

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              // step five
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xffa4cbcb),
                                ),
//                          color: Colors.teal[300],
                                child:Stack(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Stack(
                                            children: <Widget>[
                                              Container(
//                                                decoration: BoxDecoration(
//                                                  borderRadius: BorderRadius.circular(15),
////                                             color: Color(0xff006D77),
//                                                  color: Colors.amber,
//                                                ),
                                                alignment: Alignment.center,

                                                child: new Image.asset('Images/flower.jfif',height: 100,),
                                                margin: EdgeInsets.only(
                                                    left: 10, top: 15, right: 20, bottom: 10),
                                                height: 100.0,

                                              )
//                                            Image.asset('snake.jpg',height: 30,)

                                            ],
                                          ),
                                        ),

//                                        Expanded(
//                                          child: Text(
//                                            '龜殼花\n'
//                                                'Protobothrops \n'
//                                                'mucrosquamatus\n',
////                                        '記住咬傷時間，慌亂及緊張反而加速蛇毒的吸收。告訴自已，目前醫學發達，在台灣因毒蛇咬傷死亡者，已經很少了。',
//                                            textAlign: TextAlign.left,
//                                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),
//                                          ),
//                                        ),
                                        Expanded(
                                          child: Stack(
                                            children: <Widget>[
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '龜殼花',
//                                        '記住咬傷時間，慌亂及緊張反而加速蛇毒的吸收。告訴自已，目前醫學發達，在台灣因毒蛇咬傷死亡者，已經很少了。',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xff28577b)),
                                                  ),
                                                  Text('俗名 : 牛角蛇',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Color(0xff28577b)),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 285, top: 70, right: 0, bottom: 0),
                                      child:RaisedButton(

                                        onPressed: () {
                                          setState(() {
                                            _visiblefive = !_visiblefive;
                                          });
                                        },
//                child: const Text('Enabled Button', style: TextStyle(fontSize: 20)),
                                        child:Text('更多',style:TextStyle(color:Colors.black,fontSize: 18)),
                                        shape: CircleBorder(),
                                        color:Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // five plus
                              Visibility(
                                visible: _visiblefive, // 一開始不要顯示
                                child:Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xfffcf6c5),
                                  ),
//                          color: Colors.teal[300],
                                  child:Stack(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          // step one
                                          Expanded(
                                            child:Stack(
                                              children: <Widget>[
                                                Container(
//                                                  decoration: BoxDecoration(
//                                                    borderRadius: BorderRadius.circular(15),
////                                             color: Color(0xff006D77),
//                                                    color: Colors.amber,
//                                                  ),
//                                                  alignment: Alignment.center,

                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: <Widget>[
//                                                      Text('俗名：牛角蛇\n'
//                                                          '毒性：出血性毒\n'
//                                                          '常見地點：\n'
//                                                          '  草叢、雜木區。通常會在近人住居附近，甚至躲入屋中。\n'
//                                                          '辨認特徵：\n'
//                                                          '  背部中央有一行較大且具黑邊之暗茶色斑塊，前後連續並向左右彎曲而呈波浪狀。頭大成三角形、頸部細小、口內有一對大管牙，背脊為棕色，體兩側各有一列對應之較小斑塊。\n'
//                                                          '症狀特徵：\n'
//                                                          '1. 咬傷時，毒牙痕明顯，局部會疼痛、腫脹，皮下可見瘀血，少數有水泡或血泡。。\n'
//                                                          '2. 部分有續發感染或淋巴腺炎，延遲治療腫脹程度可能會迅速惡化，嚴重時造成腔室症候群，橫紋肌溶解症等。\n',
//
//                                                        style: TextStyle(fontSize: 16),
//                                                      ),
                                                      Text('俗名：牛角蛇\n'
                                                          '毒性：出血性毒',
                                                          style: TextStyle(fontSize: 16)),
                                                      Text( '常見地點：',
                                                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
                                                      ),
                                                      Text(
                                                          '  草叢、雜木區。通常會在近人住居附近，甚至躲入屋中。',
                                                          style: TextStyle(fontSize: 16)
                                                      ),
                                                      Text( '辨認特徵：',
                                                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
                                                      ),
                                                      Text(
                                                          '  背部中央有一行較大且具黑邊之暗茶色斑塊，前後連續並向左右彎曲而呈波浪狀。頭大成三角形、頸部細小、口內有一對大管牙，背脊為棕色，體兩側各有一列對應之較小斑塊。',
                                                          style: TextStyle(fontSize: 16)
                                                      ),
                                                      Text( '症狀特徵：',
                                                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
                                                      ),
                                                      Text(
                                                          '1. 咬傷時，毒牙痕明顯，局部會疼痛、腫脹，皮下可見瘀血，少數有水泡或血泡。。\n'
                                                              '2. 部分有續發感染或淋巴腺炎，延遲治療腫脹程度可能會迅速惡化，嚴重時造成腔室症候群，橫紋肌溶解症等。\n',
                                                          style: TextStyle(fontSize: 16)
                                                      ),
                                                    ],
                                                  ),
                                                  margin: EdgeInsets.only(
                                                      left: 10, top: 10, right: 10, bottom: 10),
//                                                  height: 410,
                                                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 30),
                                                )
//                                            Image.asset('snake.jpg',height: 30,)

                                              ],
                                            ),
                                          ),

//                                          Expanded(
//                                              child:Text(
//                                                '龜殼花\nTrimeresurus mucrosquamatus\n俗名: 筍殼班\n\n',
////                                        '記住咬傷時間，慌亂及緊張反而加速蛇毒的吸收。告訴自已，目前醫學發達，在台灣因毒蛇咬傷死亡者，已經很少了。',
//                                                textAlign: TextAlign.left,
//                                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
//                                              )
//                                          ),

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              // step six
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xffa4cbcb),
                                ),
//                          color: Colors.teal[300],
                                child:Stack(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Stack(
                                            children: <Widget>[
                                              Container(
//                                                decoration: BoxDecoration(
//                                                  borderRadius: BorderRadius.circular(15),
////                                             color: Color(0xff006D77),
//                                                  color: Colors.amber,
//                                                ),
                                                alignment: Alignment.center,

                                                child: new Image.asset('Images/step.jfif',height: 100,),
                                                margin: EdgeInsets.only(
                                                    left: 10, top: 15, right: 20, bottom: 10),
                                                height: 100.0,

                                              )
//                                            Image.asset('snake.jpg',height: 30,)

                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Stack(
                                            children: <Widget>[
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '百步蛇',
//                                        '記住咬傷時間，慌亂及緊張反而加速蛇毒的吸收。告訴自已，目前醫學發達，在台灣因毒蛇咬傷死亡者，已經很少了。',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xff28577b)),
                                                  ),
                                                  Text('俗名 : 五步蛇',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Color(0xff28577b)),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
//                                        Expanded(
//                                          child: Text(
//                                            '百步蛇\n'
//                                                'Deinakistrodon acutus\n',
////                                        '記住咬傷時間，慌亂及緊張反而加速蛇毒的吸收。告訴自已，目前醫學發達，在台灣因毒蛇咬傷死亡者，已經很少了。',
//                                            textAlign: TextAlign.left,
//                                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),
//                                          ),
//                                        ),

                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 285, top: 70, right: 0, bottom: 0),
                                      child:RaisedButton(

                                        onPressed: () {
                                          setState(() {
                                            _visiblesix = !_visiblesix;
                                          });
                                        },
//                child: const Text('Enabled Button', style: TextStyle(fontSize: 20)),
                                        child:Text('更多',style:TextStyle(color:Colors.black,fontSize: 18)),
                                        shape: CircleBorder(),
                                        color:Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // six plus
                              Visibility(
                                visible: _visiblesix, // 一開始不要顯示
                                child:Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xfffcf6c5),
                                  ),
//                          color: Colors.teal[300],
                                  child:Stack(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          // step one
                                          Expanded(
                                            child:Stack(
                                              children: <Widget>[
                                                Container(
//                                                  decoration: BoxDecoration(
//                                                    borderRadius: BorderRadius.circular(15),
////                                             color: Color(0xff006D77),
//                                                    color: Colors.amber,
//                                                  ),
//                                                  alignment: Alignment.center,
//                                                  child:Stack(
//                                                    children: <Widget>[
                                                  child:Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,

                                                    children: <Widget>[
//                                                          Text('俗名：五步蛇、蝮蛇、山谷鱉\n'
//                                                              '毒性：出血性毒\n'
//                                                              '常見地點：\n'
//                                                              '  山區叢林地帶，尤其在山坡石縫中。\n'
//                                                              '辨認特徵：\n'
//                                                              '  體背兩側有黑褐色倒三角形斑、左右相對呈沙漏狀、嘴尖向上翹，頭大呈三角形，狀似鱉頭，頭頂呈暗綠色，頭側黃色，自眼至口角有一黑帶，口內有一對巨大且能自由伸縮的管牙，可長達3-4公分。\n'
//                                                              '症狀特徵：\n'
//                                                              '1. 咬傷時，局部有劇烈疼痛，皮下腫脹迅速，皮膚表面很快即出現多個大小不一的水泡及血泡，咬痕處會持續滲血。\n'
//                                                              '2. 病人凝血機能明顯受到抑制，可能合併其他器官的出血，例如牙齦出血、便血、尿血、甚至咳血或腦出血。\n',
//                                                            style: TextStyle(fontSize: 16),
//                                                          ),

                                                      Text('俗名：五步蛇、蝮蛇、山谷鱉\n'
                                                          '毒性：出血性毒',
                                                          style: TextStyle(fontSize: 16)),
                                                      Text( '常見地點：',
                                                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
                                                      ),
                                                      Text(
                                                          '  山區叢林地帶，尤其在山坡石縫中。',
                                                          style: TextStyle(fontSize: 16)
                                                      ),
                                                      Text( '辨認特徵：',
                                                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
                                                      ),
                                                      Text(
                                                          '  體背兩側有黑褐色倒三角形斑、左右相對呈沙漏狀、嘴尖向上翹，頭大呈三角形，狀似鱉頭，頭頂呈暗綠色，頭側黃色，自眼至口角有一黑帶，口內有一對巨大且能自由伸縮的管牙，可長達3-4公分。',
                                                          style: TextStyle(fontSize: 16)
                                                      ),
                                                      Text( '症狀特徵：',
                                                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
                                                      ),
                                                      Text(
                                                          '1. 咬傷時，局部有劇烈疼痛，皮下腫脹迅速，皮膚表面很快即出現多個大小不一的水泡及血泡，咬痕處會持續滲血。\n'
                                                              '2. 病人凝血機能明顯受到抑制，可能合併其他器官的出血，例如牙齦出血、便血、尿血、甚至咳血或腦出血。\n',
                                                          style: TextStyle(fontSize: 16)
                                                      ),
                                                    ],
                                                  ),

//                                                    ],
//                                                  ),

                                                  margin: EdgeInsets.only(
                                                      left: 10, top: 10, right: 10, bottom: 10),
//                                                  height: 440, // 440
                                                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 30),
                                                )
//                                            Image.asset('snake.jpg',height: 30,)

                                              ],
                                            ),
                                          ),

//                                          Expanded(
//                                              child:Text(
//                                                '百步蛇\nDeinagkistrodon\n俗名: 破風板\n\n',
////                                        '記住咬傷時間，慌亂及緊張反而加速蛇毒的吸收。告訴自已，目前醫學發達，在台灣因毒蛇咬傷死亡者，已經很少了。',
//                                                textAlign: TextAlign.left,
//                                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
//                                              )
//                                          ),

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]
                  ),
                ),
              ]
          )
      ),
    );
  }
}
