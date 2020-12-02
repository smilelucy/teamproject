import 'package:flutter/material.dart';
import 'first.dart';
import 'secondddd.dart';
import 'third.dart';
import 'mainpage.dart';
import 'aboutus.dart';
import 'HomeMenu.dart';
import 'blood.dart';
// tabar
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Color(0xff65a2cd),
        // leading: Padding(
        //   padding: EdgeInsets.only(left: 12),
        //   child: IconButton(
        //     icon: Icon(Icons.arrow_back),
        //     onPressed: () => Navigator.of(context).pop(),
        //   ),
        // ),

        title: Text('毒蛇小知識', style:TextStyle(
            letterSpacing: 10,
            fontSize: 25,
//          fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Color(0xfff3f6f8)
        )),
        actions: <Widget>[
          IconButton(
            // icon: Icon(Icons.settings),
            icon: ImageIcon(AssetImage("Images/homepage.png")),
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Mainpage(), maintainState: false));
            },
          ),
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Aboutus(), maintainState: false));
            },
          ),

        ],
        centerTitle: true,

        bottom: TabBar(
          indicatorColor: Color(0xfff9c6c9), // 點到那頁底下那條線的顏色
          labelColor: Color(0xfff9c6c9), // 點到那頁時候的顏色0xfff0b849
          unselectedLabelColor: Color(0xfff3f6f8), // 還沒點到的時候icon和字的顏色
          controller: controller,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.local_hospital),
//            icon: Image.asset('Images/injection.png',width: 30,color: Colors.white,),
              text: '血清儲備處',
            ),
            Tab(
              icon: Icon(Icons.gesture),
              text: '毒蛇資訊',
            ),
            Tab(
              icon: Icon(Icons.healing),
              text: '簡易處理',
            ),
          ],
        ),
      ),

      body: TabBarView(
        controller: controller,
        children: <Widget>[
          new blood(),
          new  ThirddPage(),
          new ThirdPage(),
        ],
      ),
      drawer: Drawer(
        child: HomeMenu(),
      ),
    );
  }
}