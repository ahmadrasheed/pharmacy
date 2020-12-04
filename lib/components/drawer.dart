import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text('ahmadRasheed',style: TextStyle(color: Colors.white,fontSize: 18),),
              accountEmail: Text('Ahmad.raheed@yahoo.com',style: TextStyle(color: Colors.white,fontSize: 15),),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/1.jpg'),
              backgroundColor: Colors.orange[50],

            ),

          ),
           ListTile(
            title: Text('معلومات الصيدلية',style: TextStyle(color: Colors.black,fontSize: 18)),
            leading: Icon(Icons.place,size: 30,color: Colors.orangeAccent,),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text('اعلن عن فرصة عمل',style: TextStyle(color: Colors.black,fontSize: 18)),
            leading: Icon(Icons.perm_contact_cal_outlined,size: 30,color: Colors.orangeAccent,),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text('اضافة تخفيضات',style: TextStyle(color: Colors.black,fontSize: 18)),
            leading: Icon(Icons.stacked_bar_chart,size: 30,color: Colors.orangeAccent,),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text('اضافة فرصة عمل جديدة',style: TextStyle(color: Colors.black,fontSize: 18)),
            leading: Icon(Icons.wc,size: 30,color: Colors.orangeAccent,),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text('اعلن عن منتج',style: TextStyle(color: Colors.black,fontSize: 18)),
            leading: Icon(Icons.home_outlined,size: 30,color: Colors.orangeAccent,),
            onTap: () {
              // Update the state of the app.
              // ...
            },

          ),
          Divider(color:Colors.black38,thickness: 1),
          SizedBox(height: 200,),
          ListTile(
            title: Text('تسجيل الخروج',style: TextStyle(color: Colors.black,fontSize: 18)),
            leading: Icon(Icons.exit_to_app_sharp,size: 30,),
            onTap: () {
              // Update the state of the app.
              // ...
            },

          ),

        ],
      ),
    );
  }
}
