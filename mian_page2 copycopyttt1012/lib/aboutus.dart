import 'package:flutter/material.dart';
import 'HomeMenu.dart';

class Aboutus extends StatelessWidget {

  final PageController ctrl = PageController();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff65a2cd),

            leading: Padding(
              padding: EdgeInsets.only(left: 12),
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ),
          body: PageView(
              controller: ctrl,
              children: [
                Container(
                  height: 120.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'Images/sure1.jpg'),
                      // fit: BoxFit.fill,
                    ),
                    // shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 120.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'Images/sure2.jpg'),
                      // fit: BoxFit.fill,
                    ),
                    // shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 120.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'Images/sure3.jpg'),
                      // fit: BoxFit.fill,
                    ),
                    // shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 120.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'Images/sure4.jpg'),
                      // fit: BoxFit.fill,
                    ),
                    // shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 120.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'Images/sure5.jpg'),
                      // fit: BoxFit.fill,
                    ),
                    // shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 120.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'Images/sure6.jpg'),
                      // fit: BoxFit.fill,
                    ),
                    // shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 120.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'Images/sure7.jpg'),
                      // fit: BoxFit.fill,
                    ),
                    // shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 120.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'Images/sure8.jpg'),
                      // fit: BoxFit.fill,
                    ),
                    // shape: BoxShape.circle,
                  ),
                ),
              ]
          ),
        // drawer: Drawer(
        //   child: HomeMenu(),
        // ),
      ),
    );

  }
}