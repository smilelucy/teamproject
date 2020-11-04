import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertry5/main.dart';
// import 'box.dart';
class BoxBox extends StatefulWidget {
  @override
  _BoxBoxState createState() => _BoxBoxState();
}
class _BoxBoxState extends State<BoxBox> {
  var _addressController;
  @override
  void initState() {
    _addressController = TextEditingController(text: "");
    super.initState();
  }
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff65a2cd),
          // leading: GestureDetector(child: Icon(Icons.arrow_back),onTap: (){
          //   Navigator.of(context).pop();
          // }),
         leading: Padding(

           padding: EdgeInsets.only(left: 12),
           child: IconButton(

             icon: Icon(Icons.arrow_back),
             onPressed: () {
               Navigator.of(context).pop();
               Navigator.push(
                   context,
                   MaterialPageRoute(
                       builder: (context) => MyApp(), maintainState: false)
               );
             },
           ),
         ),

        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          color: Color(0xfff8f8f8),
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    child: Stack(
                      alignment: AlignmentDirectional.centerStart,
                      children: <Widget>[
                        SizedBox(
                          width: 40,
                          height: 60,
                          child: Center(
                            child: Image.asset("Images/pin11.png"),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          width: 40,
                          height: 60,
                          child: Center(
                            child: FlatButton(
                              onPressed: () {
                                _addressController.text = "";
                              },
                              child: Image.asset("Images/remove1.png"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40,right: 50),
                          child: TextField(
                            controller: _addressController,
                            textInputAction: TextInputAction.search,
                            onSubmitted: (str) {},
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff323643),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
//              Container(
//                padding: EdgeInsets.only(top: 20),
//                child: StreamBuilder(
//                    stream: placeBloc.placeStream,
//                    builder: (context, snapshot) {
//                      if (snapshot.hasData) {
//                        print(snapshot.data.toString());
//                        if (snapshot.data == "start") {
//                          return Center(
//                            child: CircularProgressIndicator(),
//                          );
//                        }
//
//                        print(snapshot.data.toString());
//                        List<PlaceItemRes> places = snapshot.data;
//                        return ListView.separated(
//                            shrinkWrap: true,
//                            itemBuilder: (context, index) {
//                              return ListTile(
//                                title: Text(places.elementAt(index).name),
//                                subtitle: Text(places.elementAt(index).address),
//                                onTap: () {
//                                  print("on tap");
//                                },
//                              );
//                            },
//                            separatorBuilder: (context, index) => Divider(
//                              height: 1,
//                              color: Color(0xfff5f5f5),
//                            ),
//                            itemCount: places.length);
//                      } else {
//                        return Container();
//                      }
//                    }),
//              )
            ],
          ),
        ),
      );
  }
}