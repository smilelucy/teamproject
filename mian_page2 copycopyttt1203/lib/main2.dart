import 'package:flutter/material.dart';
// import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'mainpage.dart';
import 'aboutus.dart';
import 'HomeMenu.dart';
// void main() {
//   runApp(MyApp());
// }

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Maps',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MapView(),
    );
  }
}

class MapView extends StatefulWidget {
  @override
  _MapViewState createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  BitmapDescriptor pinLocationIcon, nationpark, art, eco, history, hot, jogging, museum, pin, fun, scenery, temple, flag;

  CameraPosition _initialLocation = CameraPosition(target: LatLng(0.0, 0.0));
  GoogleMapController mapController;

  final Geolocator _geolocator = Geolocator();

  Position _currentPosition;

  final startAddressController = TextEditingController();
  final destinationAddressController = TextEditingController();


  String _destinationAddress = '';

  Set<Marker> markers = {};

  // PolylinePoints polylinePoints;
  // Map<PolylineId, Polyline> polylines = {};
  // List<LatLng> polylineCoordinates = [];

  var setcolor = [false,false,false,false,false,false,false,false,false,false,false,false];


  final _scaffoldKey = GlobalKey<ScaffoldState>();


  // Method for retrieving the current location
  _getCurrentLocation() async {
    await _geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) async {
      setState(() {
        _currentPosition = position;
        print('CURRENT POS: $_currentPosition');
        mapController.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(position.latitude, position.longitude),
              zoom: 10.0,
            ),
          ),
        );
      });
      //await _getAddress();
    }).catchError((e) {
      print(e);
    });
  }

  // Method for retrieving the address
  _getAddress(List data, BitmapDescriptor markimg) async {

    try {
      List<Placemark> p = await _geolocator.placemarkFromCoordinates(
          _currentPosition.latitude, _currentPosition.longitude);

      markers.add(
          Marker(
            markerId: MarkerId('GPS'),
            position: LatLng(_currentPosition.latitude,_currentPosition.longitude),
            infoWindow: InfoWindow(
                title: "Your location"
            ),
            //icon: flag,
          )
      );



      for(var i = 0; i < data.length; i++) {
        List<Placemark> destinationPlacemark =
        await _geolocator.placemarkFromAddress(data[i]);

        Position destinationCoordinates = destinationPlacemark[0].position;

        Marker destinationMarker = Marker(
          markerId: MarkerId('$destinationCoordinates'),
          position: LatLng(
            destinationCoordinates.latitude,
            destinationCoordinates.longitude,
          ),
          infoWindow: InfoWindow(
            title: data[i],
            snippet: _destinationAddress,
          ),
          icon: markimg,
        );
        markers.add(destinationMarker);
      }


    } catch (e) {
      print(e);
    }
  }


  @override
  void initState() {
    super.initState();
    setCustomMapPin();
    _getCurrentLocation();
  }


  void setCustomMapPin() async {
    nationpark = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'Images/national-park.png');

    pinLocationIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'Images/destination_map_marker.png');

    art = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'Images/art.png');

    eco = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'Images/eco.png');

    history = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'Images/history.png');

    hot = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'Images/hot.png');

    fun = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'Images/fun.png');

    jogging = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'Images/jogging.png');

    museum = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'Images/museum.png');

    pin = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'Images/pin.png');

    scenery = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'Images/scenery.png');


    flag = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'Images/flag.png');

    temple = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'Images/temple.png');

  }


  RaisedButton markeroption(String heading, List data, BitmapDescriptor markimg, var color) {
    return RaisedButton(
      color: setcolor[color] ? Color(0xff0a89ff) : Color(0xfffdecf2),
      splashColor: Colors.blue[100],
      onPressed: () {
        setState(() {
          setcolor = [false,false,false,false,false,false,false,false,false,false,false,false];
          setcolor[color] = !setcolor[color];
          markers.clear();
          _getAddress(data, markimg);
          _getCurrentLocation();
        });
      },
      child: Text(heading,
          style: TextStyle(
            fontSize: 16,
            //color: const Color(0xffffffff),
            color: setcolor[color] ? Colors.white : Colors.black,
          )
      ),
    );    //transform: Matrix4.rotationZ(0.1),
  }


  @override
  Widget build(BuildContext context) {
    //createMarker(context);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    var scenic = ["日月潭","奧萬大國家森林遊樂區","鹿谷鄉遊客中心"];//國家風景區

    var view = ["清境高空觀景步道","雙籠瀑布七彩吊橋","竹山天梯","名間新街冷泉濕地","龍鳳瀑布","烏松崙觀光梅園","雲龍瀑布","碧湖(萬大水庫)","集集綠色隧道","糯米橋","坪瀨琉璃光之橋健行園區","忘憂森林","梅峰–台大山地農場","清境農場","惠蓀林場","九份二山地震紀念園區","軟鞍八卦茶園(大鞍竹海風景區)","德興瀑布","麒麟潭","大崙山銀杏茶園","仙洞坪棋盤石","集集大山","集集攔河堰","仙峰日月洞","軍功綠美橋","風櫃斗梅園","二坪山","夫妻樹","雙十吊橋","人止關","LaLu島(拉魯) ","天空之橋-猴探井風景區","集集神仙瀑布","芙蓉谷瀑布","彩虹瀑布"];//自然風景

    var culture = ["雞朝文創故事館","南投自然史教育館","王英信美術館","鹿谷鄉農會茶樂文化館","中興興村","炭雕藝術博物館","南投野雞溫泉菁英溫泉","澀水窯","坑內坑森林步道","武嶺","鳶峰","永興水火同源","錦吉昆蟲館","南投縣國姓客家打石文化園區","林圮墓","九族文化村","林圮埔老街","合歡山國家森林遊樂區","莫那魯道紀念公園","南投國際沙雕藝術文化園區","寶島時代村","國立臺灣工藝研究發展中心","果寶歡酵觀光工廠 GuoBAO","水里蛇窯陶藝文化園區","竹山文化園區","台灣省政資料館","草鞋墩人文觀光夜市","白木全－心陶園","曾明男陶藝工作室","林家養鹿場","打鐵巷","韭菜溪湖(偃塞湖)","毓繡美術館","敷榮堂","觀音瀑布","南投農田水利教育園區","東埔吊橋"];//文化

    var recreation = ["瑞龍瀑布","國立暨南國際大學","青竹竹文化園區","集集火車站","車埕車站","水里鵲橋","杉林溪森林生態渡假園區","草屯九九峰健行步道","造紙龍手創館","廣興紙寮","小半天石馬公園","妖怪村","內湖森林小學","米田貢觀光烘焙園區/埔里花卉有限公司","七星陣地公園(碉堡)","松柏嶺遊客中心","國史館臺灣文獻館","日月老茶廠","和雅谷","照鏡台","明湖水庫","台灣地理中心碑","日月潭伊達邵","桂花森林","龍興吊橋","國姓驛站","遊山茶訪","蟬脫雅筑"];//遊憩

    var fitness = ["日月潭大竹湖步道","水社大山步道","日月潭青龍山步道","日月潭後尖山步道","日月潭水蛙頭步道","日月潭水社親水步道","日月潭涵碧步道","日月潭年梯步道","八通關社寮古道","日月潭伊達邵親水步道","日月潭-月潭車道","日月潭土亭仔步道"];//運動健身

    var ecology = ["楓香巨木群公園","桃米生態村","紙教堂 新故鄉見學園區","鳳凰谷鳥園生態園區","車籠埔斷層保存園區","台大下坪自然教育園區","長源圳生態步道-林爽文古戰場","溪頭自然教育園區","鳳凰自然教育園區(台大茶園)","特有生物研究保育中心","木屐寮生態園區","木生昆蟲博物館","豐年菇類靈芝生態農場"];//生態

    var hotspring = ["國姓北港溪溫泉","埔里溫泉","泰雅渡假村","東埔溫泉"];//溫泉

    var historic = ["竹山連興宮","藍田書院","八通關古道-萬年亨衢碣","明新書院","登瀛書院","竹山社寮敬聖亭","北港溪石橋","椰子防空壕","曲冰遺址"];//古蹟

    var stringtemple = ["中台禪寺","武昌宮","松柏嶺受天宮","紫南宮","文武廟","鎮國寺(世界和平塔)","埔里寶湖宮地母廟"];//廟宇

    var stringart = ["中台世界博物館","九九峰生態藝術園區","添興窯","龍南天然漆博物館-徐玉明","白滄沂","竹藝博物館","璞園藝術坊"];//藝術

    var stringfarm = ["和菓森林","楓樺台一渡假村","奕青酒莊","草坪頭玉山茶園","信義鄉農會梅子夢工廠","福龜草莓園","臺灣菸酒股份有限公司-埔里酒廠展售中心","台光香草園","橫路古道-半天橋","豐丘葡萄觀光果園","茶葉改良場-魚池分場","茶二指故事館","集元果觀光工廠"];//休閒農業

    var stringothers = ["水雲橋","橋聳雲天(國道六號國姓交流道)","藏傘閣文化休閒園區","前山第一城石碣","香里活力豬品牌文化館","采棉居寢飾文化舘","臺灣菸酒(股)公司南投觀光酒廠","家會香食品(股)公司-台灣麻糬主題館","軍史公園","南投縣農工商會展中心","林班道商圈"];//其他

    return Container(
      height: height,
      width: width,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff65a2cd),
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

        key: _scaffoldKey,
        body: Stack(
          children: <Widget>[

            // Map View
            GoogleMap(
              markers: markers != null ? Set<Marker>.from(markers) : null,
              initialCameraPosition: _initialLocation,
              myLocationEnabled: true,
              myLocationButtonEnabled: false,
              mapType: MapType.normal,
              zoomGesturesEnabled: true,
              zoomControlsEnabled: false,
              // polylines: Set<Polyline>.of(polylines.values),
              onMapCreated: (GoogleMapController controller) {
                mapController = controller;
              },
            ),


            Container(
              // height: 55,
              height : (MediaQuery.of(context).size.height)/15,
              // alignment: Alignment.bottomCenter,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      markeroption("國家公園",scenic, nationpark, 0),
                      markeroption("自然風景",view, scenery, 1),
                      markeroption("文化",culture, museum, 2),
                      markeroption("遊憩",recreation, fun, 3),
                      markeroption("運動健身",fitness, jogging, 4),
                      markeroption("生態",ecology, eco, 5),
                      markeroption("溫泉",hotspring, hot, 6),
                      markeroption("古蹟",historic, history, 7),
                      markeroption("廟宇",stringtemple, temple, 8),
                      markeroption("藝術",stringart, art, 9),
                      markeroption("休閒農業",stringfarm, nationpark, 10),
                      markeroption("其他", stringothers, pin, 11),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),

        drawer: Drawer(
          child: HomeMenu(),
        ),

      ),
    );
  }
}