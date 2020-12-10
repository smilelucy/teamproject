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

class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  _getAddress(List data, List data_la, List data_lo, BitmapDescriptor markimg) async {
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
        Marker destinationMarker = Marker(
          markerId: MarkerId('${data[i]}'),
          position: LatLng(
            data_la[i],
            data_lo[i],
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


RaisedButton markeroption(String heading, List data,List data_la, List data_lo, BitmapDescriptor markimg, var color) {
  return RaisedButton(
    color: setcolor[color] ? Color(0xff0a89ff) : Color(0xfffdecf2),
    splashColor: Colors.blue[100],
    onPressed: () {
     setState(() {
       setcolor = [false,false,false,false,false,false,false,false,false,false,false,false];
       setcolor[color] = !setcolor[color];
       markers.clear();
       _getAddress(data, data_la, data_lo,  markimg);
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
    var scenic_la = [23.857334200000004,23.945332,23.7394499];
    var scenic_lo = [120.91591310000001,121.18278099999999,120.75958249999998];
    
    var view = ["清境高空觀景步道","雙籠瀑布七彩吊橋","竹山天梯","名間新街冷泉濕地","龍鳳瀑布","烏松崙觀光梅園","雲龍瀑布","碧湖(萬大水庫)","集集綠色隧道","糯米橋","坪瀨琉璃光之橋健行園區","忘憂森林","梅峰–台大山地農場","清境農場","惠蓀林場","九份二山地震紀念園區","軟鞍八卦茶園(大鞍竹海風景區)","德興瀑布","麒麟潭","大崙山銀杏茶園","仙洞坪棋盤石","集集大山","集集攔河堰","仙峰日月洞","軍功綠美橋","風櫃斗梅園","二坪山","夫妻樹","雙十吊橋","人止關","LaLu島(拉魯) ","天空之橋-猴探井風景區","集集神仙瀑布","芙蓉谷瀑布","彩虹瀑布"];//自然風景
    var view_la = [24.0483992,23.7806656,23.669172,23.879001,23.9423699,23.680015599999997,23.5552688,23.9991367,23.8288132,24.0585088,23.681821,23.648981,24.089552400000002,24.058510700000003,24.091196999999998,23.9605735,23.6787143,23.6951,23.7512306,23.679715899999998,23.901652499999997,23.854553,23.818334999999998,23.8822482,23.914834799999998,23.6690814,23.8139924,23.5121885,23.9844793,24.007665,23.855556,23.908447799999998,23.835730899999998,24.0916832,23.566945699999998];
    var view_lo = [121.1568039,120.94982069999999,120.734196,120.69224700000001,120.81672549999998,120.8482079,120.95263769999998,121.1352393,120.75754970000001,120.9065125,120.83871099999998,120.79459739999999,121.17430770000001,121.1628284,121.03372799999998,120.8497297,120.7390324,120.75595000000001,120.7734972,120.76236819999998,120.79928869999999,120.83829399999999,120.7633291,120.73191639999997,120.69489949999999,120.8565955,120.8575722,120.8909383,120.7806944,121.10953900000001,120.911111,120.63159920000001,120.783766,120.93620560000001,120.9377451];

    var culture = ["雞朝文創故事館","南投自然史教育館","王英信美術館","鹿谷鄉農會茶樂文化館","炭雕藝術博物館","南投野雞溫泉菁英溫泉","澀水窯","坑內坑森林步道","武嶺","鳶峰","永興水火同源","錦吉昆蟲館","南投縣國姓客家打石文化園區","林圮墓","九族文化村","林圮埔老街","合歡山國家森林遊樂區","莫那魯道紀念公園","南投國際沙雕藝術文化園區","寶島時代村","國立臺灣工藝研究發展中心","果寶歡酵觀光工廠 GuoBAO","水里蛇窯陶藝文化園區","竹山文化園區","台灣省政資料館","草鞋墩人文觀光夜市","白木全－心陶園","曾明男陶藝工作室","林家養鹿場","打鐵巷","韭菜溪湖(偃塞湖)","毓繡美術館","敷榮堂","觀音瀑布","南投農田水利教育園區","東埔吊橋"];//文化
    var culture_la = [23.973412099999997, 24.0210538, 23.989065699999998, 23.7413049, 23.9653358, 24.0307864, 23.920921, 23.828682999999998, 24.137103399999997, 24.1176961, 23.783846999999998, 23.9977223, 24.0555964, 23.7559356, 23.8691502, 23.7541433, 24.1424116, 24.020452, 23.927017799999998, 23.987949999999998, 23.980774699999998, 23.9417162, 23.801291199999998, 23.747723399999998, 23.9557878, 23.9880686, 23.96745, 23.979486500000004, 23.9441, 23.7562157, 23.946735, 23.992797, 23.9960558, 23.990656299999998, 23.9725088, 23.5602192];
    var culture_lo = [120.96998, 121.1341913, 120.80714460000002, 120.75699499999999, 120.9462814, 121.19754220000002, 120.92071399999999, 120.6145885, 121.27583849999998, 121.2373438, 120.85350229999999, 121.04230369999999, 120.88206579999999, 120.67973690000001, 120.9478302, 120.68648309999999, 121.28418989999999, 121.132614, 120.68129189999999, 120.68676669999999, 120.69185669999999, 120.95407900000001, 120.86440439999998, 120.6799422, 120.68632889999999, 120.6864882, 120.669901, 120.7049481, 120.86579319999998, 120.6843782, 120.85037399999999, 120.76658460000002, 120.66501229999999, 121.03618360000002, 120.6791369, 120.9228655];

    var recreation = ["瑞龍瀑布","國立暨南國際大學","青竹竹文化園區","集集火車站","車埕車站","水里鵲橋","杉林溪森林生態渡假園區","草屯九九峰健行步道","造紙龍手創館","廣興紙寮","小半天石馬公園","妖怪村","內湖森林小學","米田貢觀光烘焙園區/埔里花卉有限公司","七星陣地公園(碉堡)","松柏嶺遊客中心","國史館臺灣文獻館","日月老茶廠","和雅谷","照鏡台","明湖水庫","台灣地理中心碑","日月潭伊達邵","桂花森林","龍興吊橋","國姓驛站","遊山茶訪","蟬脫雅筑"];//遊憩
    var recreation_la = [23.6646669, 23.9511431, 23.8111261, 23.826451, 23.8326153, 23.7347583, 23.639469599999998, 23.998208299999998, 23.9477975, 23.9761806, 23.7262515, 23.67412, 23.713025, 23.985770000000002, 23.8310224, 23.8338964, 23.936752199999997, 23.892350699999998, 23.711737, 23.769454099999997, 23.854443999999997, 23.973837, 23.849535900000003, 23.8307783, 23.9098141, 24.019202099999998, 23.768494, 23.557782];
    var recreation_lo = [120.68870049999998, 120.9306649, 120.7485143, 120.78488999999999, 120.86611690000001, 120.8568232, 120.79221189999998, 120.771772, 120.95841089999999, 120.93870699999998, 120.75821040000001, 120.795914, 120.780238, 120.959637, 120.63852820000001, 120.63599869999999, 120.69973999999999, 120.92292289999999, 120.77962499999998, 120.7078614, 120.870278, 120.97969179999998, 120.9287513, 120.64773079999999, 120.81115960000001, 120.8231586, 120.702895, 120.922959];

    var fitness = ["日月潭大竹湖步道","水社大山步道","日月潭青龍山步道","日月潭後尖山步道","日月潭水蛙頭步道","日月潭水社親水步道","日月潭涵碧步道","日月潭年梯步道","八通關社寮古道","日月潭伊達邵親水步道","日月潭-月潭車道","日月潭土亭仔步道"];//運動健身
    var fitness_la = [23.8637315, 23.8511073, 23.8502922, 23.8177618, 23.857507700000003, 23.868553499999997, 23.862239499999998, 23.869439, 23.7991365, 23.8495186, 23.840634, 23.851367999999997];
    var fitness_lo = [120.94074549999999, 120.94688939999999, 120.9139661, 120.90261039999999, 120.93976780000001, 120.91646580000001, 120.908695, 120.92695359999999, 120.73890619999999, 120.9328491, 120.9073665, 120.92247700000001];

    var ecology = ["楓香巨木群公園","桃米生態村","紙教堂 新故鄉見學園區","鳳凰谷鳥園生態園區","車籠埔斷層保存園區","台大下坪自然教育園區","長源圳生態步道-林爽文古戰場","溪頭自然教育園區","鳳凰自然教育園區(台大茶園)","特有生物研究保育中心","木屐寮生態園區","木生昆蟲博物館","豐年菇類靈芝生態農場"];//生態
    var ecology_la = [23.975960099999998, 23.9442563, 23.9413807, 23.729885, 23.794643999999998, 23.773717899999998, 23.718204, 23.6745178, 23.728384, 23.8283559, 23.783734799999998, 23.965556, 23.9433191];
    var ecology_lo = [120.9916722, 120.93014339999998, 120.92704189999999, 120.792132, 120.710755, 120.67272849999999, 120.77129120000001, 120.7972515, 120.78789519999998, 120.80121989999998, 120.70598109999999, 120.945833, 120.9856386];


    var hotspring = ["國姓北港溪溫泉","埔里溫泉","泰雅渡假村","東埔溫泉"];//溫泉
    var hotspring_la = [24.066696999999998, 23.9950218, 24.0683224, 23.561439];
    var hotspring_lo = [120.9412269, 121.03559879999999, 120.94329490000001, 120.93097200000001];

    var historic = ["竹山連興宮","藍田書院","八通關古道-萬年亨衢碣","明新書院","登瀛書院","竹山社寮敬聖亭","北港溪石橋","椰子防空壕","曲冰遺址"];//古蹟
    var historic_la = [23.7562009, 23.907338499999998, 23.7262162, 23.8274583, 23.9889486, 23.8143469, 24.0585088, 23.757292099999997, 23.9552551];
    var historic_lo = [120.6851407, 120.6844614, 120.7961637, 120.79963059999999, 120.66728940000002, 120.72217699999997, 120.9065125, 120.6819773, 121.0804218];

    var stringtemple = ["中台禪寺","武昌宮","松柏嶺受天宮","紫南宮","文武廟","鎮國寺(世界和平塔)","埔里寶湖宮地母廟"];//廟宇
    var stringtemple_la = [24.009088, 23.8308868, 23.831796, 23.8171616, 23.869967799999998, 23.850676, 23.951451799999997];
    var stringtemple_lo = [120.94459019999998, 120.79214479999997, 120.6309118, 120.72258760000001, 120.92755109999999, 120.80209199999999, 120.98946559999999];

    var stringart = ["中台世界博物館","九九峰生態藝術園區","添興窯","龍南天然漆博物館-徐玉明","白滄沂","竹藝博物館","璞園藝術坊"];//藝術
    var stringart_la = [24.0107622, 23.9934473, 23.832874999999998, 23.9677409, 23.9871677, 23.9079868, 23.765872899999998];
    var stringart_lo = [120.9450538, 120.76731050000001, 120.755491, 120.96563909999999, 120.7618836, 120.68157169999999, 120.71005249999999];

    var stringfarm = ["和菓森林","楓樺台一渡假村","奕青酒莊","草坪頭玉山茶園","信義鄉農會梅子夢工廠","福龜草莓園","臺灣菸酒股份有限公司-埔里酒廠展售中心","台光香草園","橫路古道-半天橋","豐丘葡萄觀光果園","茶葉改良場-魚池分場","茶二指故事館","集元果觀光工廠"];//休閒農業
    var stringfarm_la = [23.9223903, 23.9780586, 23.731818, 23.5490487, 23.688686699999998, 24.0199513, 23.968214099999997, 23.9770914, 23.721843999999997, 23.666453, 23.8761762, 23.8249073, 23.825049];
    var stringfarm_lo = [20.935666, 121.00631170000001, 120.8532055, 120.8719508, 120.86152740000001, 120.8230615, 120.960282, 120.9949009, 120.74632299999999, 120.8744859, 120.9135692, 120.64390279999999, 120.81428499999998];

    var stringothers = ["水雲橋","橋聳雲天(國道六號國姓交流道)","藏傘閣文化休閒園區","香里活力豬品牌文化館","采棉居寢飾文化舘","臺灣菸酒(股)公司南投觀光酒廠","家會香食品(股)公司-台灣麻糬主題館","軍史公園","南投縣農工商會展中心","林班道商圈"];//其他
    var stringothers_la = [23.8131423, 24.0043814, 23.767618, 23.924364999999998, 23.7688241, 23.919642099999997, 23.9215447, 23.827088099999997, 23.9254888, 23.8338881];
    var stringothers_lo = [120.84891789999999, 120.81200840000001, 120.7043426, 120.6750983, 120.704208, 120.7054933, 120.6688921, 120.79542660000001, 120.6874533, 120.8661209];


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
                        markeroption("國家公園",scenic,scenic_la,scenic_lo, nationpark, 0),
                        markeroption("自然風景",view,view_la,view_lo, scenery, 1),
                        markeroption("文化",culture,culture_la,culture_lo, museum, 2),
                        markeroption("遊憩",recreation,recreation_la,recreation_lo, fun, 3),
                        markeroption("運動健身",fitness,fitness_la,fitness_lo, jogging, 4),
                        markeroption("生態",ecology,ecology_la,ecology_lo, eco, 5),
                        markeroption("溫泉",hotspring,hotspring_la,hotspring_lo, hot, 6),
                        markeroption("古蹟",historic,historic_la,historic_lo, history, 7),
                        markeroption("廟宇",stringtemple,stringtemple_la,stringtemple_lo, temple, 8),
                        markeroption("藝術",stringart,stringart_la,stringart_lo, art, 9),
                        markeroption("休閒農業",stringfarm,stringfarm_la,stringfarm_lo, nationpark, 10),
                        markeroption("其他", stringothers,stringothers_la,stringothers_lo, pin, 11),
                        ],
                      ),   
                  ],
                ),
              ),

          ],
        ),
        /*
        drawer: Drawer(
          child: HomeMenu(),
        ),
        */
        drawer: Drawer(
          child: HomeMenu(),
        ),
      ),
    );
  }
}