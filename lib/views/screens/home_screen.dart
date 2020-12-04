import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pharmacy/widgets/myCardAds.dart';
import 'package:pharmacy/widgets/myCircularCard.dart';
import 'package:pharmacy/widgets/myGridView.dart';
import '../../models/post.dart';
import '../../controllers/network_helper.dart';
import 'dart:convert';
import 'package:pharmacy/components/drawer.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeScreen extends StatefulWidget {
  static const String title = "PharmacyShop";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Future <List<Post>> _postList;
  @override
  void initState() {
    // TODO: implement initState
    _postList= fetchPost();
    super.initState();
  }
    @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
  }
  @override
List<String> _myList=['IRAQ','USA','Spain'];
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
              HomeScreen.title,
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        ),
        drawer: MyDrawer(),
        body: Container(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Colors.white,
                height: 200,
                child: FutureBuilder<List<Post>>(
                  future:_postList ,
                  builder: (BuildContext context, AsyncSnapshot snapshot){
                    if (snapshot.hasData) {
                      List<Post> data = snapshot.data;
                      return Expanded(
                        child: Container(
                          child: Swiper(
                            autoplay: true,
                            itemBuilder: (BuildContext context, int index) {
                              return myCardAds(data, index);
                            },
                            itemCount: data.length,

                            onTap: (int index){print(index);},
                            control: SwiperControl(),

                          ),
                        ),
                      );

                    } else if (snapshot.hasError) {
                      return Text("${snapshot.error}");
                    }
                    return CircularProgressIndicator();
                  },
                ),
              ),
              Divider(height: 1,thickness: 0.3,color:Colors.orange),
              SizedBox(height: 1,),
              Container(
                padding: EdgeInsets.all(2),
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,

                  children: [
                    myCircularCard(title: "ابحث عن صيدلية",icon: Icon(Icons.home_outlined,size: 40,)),
                    myCircularCard(title: "فرصة عمل",icon: Icon(Icons.work_outline_sharp,size: 40)),
                    myCircularCard(title: "تخفيضات",icon: Icon(Icons.add_location_alt_rounded,size: 40,)),
                    myCircularCard(title: "اخر البوستات",icon: Icon(Icons.wc_outlined,size: 40)),
                    myCircularCard(title: "اعلانات",icon: Icon(Icons.add_location_alt_rounded,size: 40,)),

                  ],
                ),
              ),
              Container(

                  alignment: Alignment.center,
                  width: 120,
                  height: 40,
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(10),),
                  child: Text("أخر التخفيضات",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Colors.black),)
              ),
              Expanded(
                child: Container(
                  child: FutureBuilder<List<Post>>(
                    future: _postList,
                    builder: (context,snapShot){
                      return myGridView(snapShot.data);
                    },
                  ),
                ),
              ),

            ],
          ),
        )

      ),
    );
  }
}


List <Widget> mapImages(List<String> imagesArray){
  return imagesArray.map((item)=>Image(image: NetworkImage(item))).toList();
}


Widget getTextWidgets(List<String> strings)
{
  return new Row(children: strings.map((item) => new Text(item)).toList());
}

//     FutureBuilder  -----------------
FutureBuilder _getPosts(var _postList){
  return FutureBuilder<List<Post>>(

    future:_postList ,
    builder: (BuildContext context, AsyncSnapshot snapshot){
      if (snapshot.hasData) {
        List<Post> data = snapshot.data;
        return _posts(data);
      } else if (snapshot.hasError) {
        return Text("${snapshot.error}");
      }
      return CircularProgressIndicator();
    },
  );
}//    End  FutureBuilder  ----------------------------------------

//     ListView -----------------
Widget _posts(data) {
  return Container(
    height: 200,
    child: ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Card(

          child: _tile(data[index].first_name, Icons.work)
        );
      }
    ),
  );
}//   End  ListView ---------------------------------------------

//     ListTile  -----------------
ListTile _tile(String title, IconData icon) {
  return ListTile(
    title: Text(title,
          style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        )),

    leading: Icon(
      icon,
      color: Colors.blue[500],
    ),
  );
}//     End ListTile  -------------------------------------------


  Widget horizontalList1 = new Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 200.0,
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(width: 160.0, color: Colors.red,),
          Container(width: 160.0, color: Colors.orange,),
          Container(width: 160.0, color: Colors.pink,),
          Container(width: 160.0, color: Colors.yellow,),
        ],
      )
  );
