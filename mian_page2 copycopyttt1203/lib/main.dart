import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
//import './first.dart' ;
//import './third.dart';
// import 'homepage.dart';
// import 'weather.dart';
// import 'route.dart';
// import 'box.dart';
import 'aboutus.dart';
import 'mainpage.dart';
import 'HomeMenu.dart';
import 'package:geolocator/geolocator.dart';
// import 'package:geolocator/geolocator.dart';
void main() {
  runApp(Try());
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var _scaffoldkey = new GlobalKey<ScaffoldState>();
//  MyHomePage({Key key, this.title}) : super(key: key);
  GoogleMapController _mapController;
  String searchAddr;
  static const LatLng _center = const LatLng(24.181068, 120.598360); // 中心點座標
  final Set<Marker> _markers ={};
  LatLng _lastMapPosition = _center;
  MapType _currentMapType = MapType.normal;
    final Geolocator _geolocator = Geolocator();
  Position _currentPosition;

  static final CameraPosition _position1 = CameraPosition(
    bearing: 192.833,
    target: LatLng(24.191068, 120.598360),
    tilt: 59.440,
    zoom: 11.0,
  );
  // fianl Set<Polyline> polyline = {};
//  Future<void> _goToPosition1() async{
//    final GoogleMapController mapController = await _mapController.future;
//  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }
  void _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
  }
  void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }
  void _onAddMarkerButtonPressed() {
    setState(() {
      _markers.add(Marker(
        // draggable: true,
        markerId: MarkerId(_lastMapPosition.toString()),
        position: _lastMapPosition,
        infoWindow: InfoWindow(
          title: 'This is a title',
          snippet: 'This is a snippet',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ),
      );
    });
  }
  void searchandNavigate() {
    Geolocator().placemarkFromAddress(searchAddr).then((result) {
      _mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
          target:
          LatLng(result[0].position.latitude, result[0].position.longitude),
          zoom: 10.0)));
    });
  }

    _getCurrentLocation() async {
    await _geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) async {
      setState(() {
        // Store the position in the variable
        _currentPosition = position;

        print('CURRENT POS: $_currentPosition');

        // For moving the camera to current location
        _mapController.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(position.latitude,position.longitude),// 24.181068, 120.598360
              zoom: 18.0,
            ),
          ),
        );
      });
    }).catchError((e) {
      print(e);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        key: _scaffoldkey,
        body: Container(
          // height: 300,
          child: Stack(
            children: <Widget>[
              GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,

//            target: LatLng(23.952437, 120.930794),  //中心點座標
                  zoom: 11.0, // camera縮放尺寸，越近數值越大，越遠數值越小，預設0
                  tilt: 90,
                ),
                mapType: _currentMapType,
                markers: _markers,
                onCameraMove: _onCameraMove,
              ),
              Positioned(
                // padding: EdgeInsets.all(50.0),
                top: 200,
                left: 300,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    children: <Widget>[
                      // button(_onMapTypeButtonPressed, Icons.map),

                      FloatingActionButton(

                        heroTag: "one",
                        child: Icon(
                          Icons.add_location,
                          size: 36.0,
                        ),
                          onPressed: _onAddMarkerButtonPressed,
                        backgroundColor: Color(0xff0D2A66),
                          // _onAddMarkerButtonPressed, Icons.add_location
                      ),

                      SizedBox(height: 16.0,),
                      FloatingActionButton(
                        heroTag: "two",
                        child: Icon(
                          Icons.map,
                          size: 36.0,
                        ),
                        onPressed: _onMapTypeButtonPressed,
                        backgroundColor: Color(0xff0D2A66),
                        // _onAddMarkerButtonPressed, Icons.add_location
                      ),

                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                right: 0,
                child: Column(
                  children: <Widget>[
                    AppBar(
//          title: Text('Maps Sample App'),
                      backgroundColor: Color(0xff65a2cd),
                      leading: FlatButton(
                          onPressed: () {
                            print("click menu");
                            _scaffoldkey.currentState.openDrawer();
                          },
                          child: Image.asset("Images/menu.png"),color: Color(0xff65a2cd)),
//                      actions: <Widget>[],
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
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20,left: 20,right: 20),
                      // child: Box(),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 100.0,
                right: 15.0,
                left: 15.0,
                child:Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter Address',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 15.0,top: 15.0),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.search),
                          onPressed: searchandNavigate,
                          iconSize: 30.0,
                        )
                    ),
                    onChanged: (val){
                      setState(() {
                        searchAddr = val;
                      });
                    },
                  ),
                ),
              ),
          Positioned(
              top: 600,
              left: 300,
              child: ClipOval(

                child: Material(
                  color: Colors.orange[100], // button color
                  child: InkWell(
                    splashColor: Colors.orange, // inkwell color
                    child: SizedBox(
                      width: 56,
                      height: 56,
                      child: Icon(Icons.my_location),
                    ),
                    onTap: () {
                      // TODO: Add the operation to be performed
                      // on button tap
                      _mapController.animateCamera(
                        CameraUpdate.zoomIn(),
                      );
                      _mapController.animateCamera(
                        CameraUpdate.zoomOut(),
                      );
                      _mapController.animateCamera(
                        CameraUpdate.newCameraPosition(
                          CameraPosition(
                            target: LatLng(
                              // Will be fetching in the next step
                                24.181068, 120.598360
                            ),
                            zoom: 18.0,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),

            ],
          ),
        ),
        drawer: Drawer(
          child: HomeMenu(),
        ),

      ),
    );
  }
}
//
//
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:geolocator/geolocator.dart';
// import 'box.dart';
// import 'HomeMenu.dart';
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Maps',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MapView(),
//     );
//   }
// }
//
// class MapView extends StatefulWidget {
//   @override
//   _MapViewState createState() => _MapViewState();
// }
//
// class _MapViewState extends State<MapView> {
//   final startAddressController = TextEditingController();
//   CameraPosition _initialLocation = CameraPosition(target: LatLng(0.0, 0.0));
//   GoogleMapController mapController;
//   final Geolocator _geolocator = Geolocator();
//   Position _currentPosition;
//   Set<Marker> markers = {};
//     var _scaffoldkey = new GlobalKey<ScaffoldState>();
//     final Set<Marker> _markers ={};
//     static const LatLng _center = const LatLng(24.181068, 120.598360); // 中心點座標
//   LatLng _lastMapPosition = _center;
//   MapType _currentMapType = MapType.normal;
//
//
//
//   _getCurrentLocation() async {
//     await _geolocator
//         .getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
//         .then((Position position) async {
//       setState(() {
//         // Store the position in the variable
//         _currentPosition = position;
//
//         print('CURRENT POS: $_currentPosition');
//
//         // For moving the camera to current location
//         mapController.animateCamera(
//           CameraUpdate.newCameraPosition(
//             CameraPosition(
//               target: LatLng(24.181068, 120.598360),
//               zoom: 18.0,
//             ),
//           ),
//         );
//       });
//     }).catchError((e) {
//       print(e);
//     });
//   }
//
//
//   void _onMapTypeButtonPressed() {
//     setState(() {
//       _currentMapType = _currentMapType == MapType.normal
//           ? MapType.satellite
//           : MapType.normal;
//     });
//   }
//   void _onAddMarkerButtonPressed() {
//     setState(() {
//       _markers.add(Marker(
//         // draggable: true,
//         markerId: MarkerId(_lastMapPosition.toString()),
//         position: _lastMapPosition,
//         infoWindow: InfoWindow(
//           title: 'This is a title',
//           snippet: 'This is a snippet',
//         ),
//         icon: BitmapDescriptor.defaultMarker,
//       ),
//       );
//     });
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     _getCurrentLocation();
//   }
//   Widget build(BuildContext context) {
//     // Determining the screen width & height
//     var height = MediaQuery.of(context).size.height;
//     var width = MediaQuery.of(context).size.width;
//
//     return Container(
//       height: height,
//       width: width,
//       child: Scaffold(
//         body: Stack(
//           children: <Widget>[
//             GoogleMap(
//               initialCameraPosition: _initialLocation,
//               myLocationEnabled: true,
//               myLocationButtonEnabled: false,
//               mapType: MapType.normal,
//               zoomGesturesEnabled: true,
//               zoomControlsEnabled: false,
//               onMapCreated: (GoogleMapController controller) {
//                 mapController = controller;
//               },
//             ),
//             Positioned(
//               top: 600,
//               left: 300,
//               child: ClipOval(
//
//                 child: Material(
//                   color: Colors.orange[100], // button color
//                   child: InkWell(
//                     splashColor: Colors.orange, // inkwell color
//                     child: SizedBox(
//                       width: 56,
//                       height: 56,
//                       child: Icon(Icons.my_location),
//                     ),
//                     onTap: () {
//                       // TODO: Add the operation to be performed
//                       // on button tap
//                       mapController.animateCamera(
//                         CameraUpdate.zoomIn(),
//                       );
//                       mapController.animateCamera(
//                         CameraUpdate.zoomOut(),
//                       );
//                       mapController.animateCamera(
//                         CameraUpdate.newCameraPosition(
//                           CameraPosition(
//                             target: LatLng(
//                               // Will be fetching in the next step
//                                 24.181068, 120.598360
//                             ),
//                             zoom: 18.0,
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//                     left: 0,
//                     top: 0,
//                     right: 0,
//                     child: Column(
//                       children: <Widget>[
//                         AppBar(
//     //          title: Text('Maps Sample App'),
//                           backgroundColor: Color(0xff65a2cd),
//                           leading: FlatButton(
//                               onPressed: () {
//                                 print("click menu");
//                                 _scaffoldkey.currentState.openDrawer();
//                               },
//                               child: Image.asset("Images/menu.png"),color: Color(0xff65a2cd)),
//     //                      actions: <Widget>[],
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(top: 20,left: 20,right: 20),
//                           child: Box(),
//                         ),
//                       ],
//                     ),
//             ),
//         Positioned(
//                 // padding: EdgeInsets.all(50.0),
//                 top: 200,
//                 left: 300,
//                 child: Align(
//                   alignment: Alignment.bottomLeft,
//                   child: Column(
//                     children: <Widget>[
//                       // button(_onMapTypeButtonPressed, Icons.map),
//
//                       FloatingActionButton(
//
//                         heroTag: "one",
//                         child: Icon(
//                           Icons.add_location,
//                           size: 36.0,
//                         ),
//                           onPressed: _onAddMarkerButtonPressed,
//                         backgroundColor: Color(0xff0D2A66),
//                           // _onAddMarkerButtonPressed, Icons.add_location
//                       ),
//
//                       SizedBox(height: 16.0,),
//                       FloatingActionButton(
//                         heroTag: "two",
//                         child: Icon(
//                           Icons.map,
//                           size: 36.0,
//                         ),
//                         onPressed: _onMapTypeButtonPressed,
//                         backgroundColor: Color(0xff0D2A66),
//                         // _onAddMarkerButtonPressed, Icons.add_location
//                       ),
//
//                     ],
//                   ),
//                 ),
//               ),
//
//             // TODO: Add Map View
//           ],
//         ),
//         drawer: Drawer(
//           child: HomeMenu(),
//         ),
//       ),
//     );
//   }
// }
