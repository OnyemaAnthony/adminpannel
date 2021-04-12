import 'package:admin_panel/screens/user_request_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AdminPanel extends StatefulWidget {
  @override
  _AdminPanelState createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin panel',style: TextStyle(
          color: Colors.white
        ),),
        centerTitle: true,
      ),
      body: Material(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(
            left: 3.0,
            right: 3.0,
            top: 30.0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildProfileDetails(),
              SizedBox(
                height: 30.0,
              ),
              // ProfileCategories(),
              // SizedBox(
              //   height: 3.0,
              // ),
              Flexible(child: Menu()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileDetails() {
    List profileItems = [
      {'count': '100', 'name': 'Users'},
      {'count': '20', 'name': 'admins'},
      {'count': '10', 'name': 'Users request'},
      {'count': '70', 'name': 'Number of \norganization'},
    ];
    Size deviceSize = MediaQuery.of(context).size;
    return Material(
      borderRadius: BorderRadius.all(
        Radius.circular(20.0),
      ),
      elevation: 10.0,
      child: Container(
        height: deviceSize.height * 0.3,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    //margin: EdgeInsets.only(top: 10),
                    child: ClipOval(
                      child: Container(
                        width: 100,
                        height: 100,
                        child: Image.asset('assets/images/talawaLogo.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            width: 200,
                            child: Text(
                              'Palisadoes Foundation',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                        ],
                      ),
                      Container(
                        width: 200,
                        child: Text(
                          'P.O. Box 518 Cupertino,\n CA, 95015, USA',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  for (var item in profileItems)
                    Column(
                      children: <Widget>[
                        Text(
                          item['count'],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          item['name'],
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileCategories extends StatelessWidget {
  Widget buildCategory({String name, int number, IconData icon}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            GestureDetector(
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFF6F5F8),
                ),
                child: Icon(
                  icon,
                  // size: 20.0,
                ),
              ),
            ),
            number > 0
                ? Positioned(
                    right: -5.0,
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        number.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                        ),
                      ),
                    ),
                  )
                : SizedBox(),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          name,
          style: TextStyle(
            fontSize: 13.0,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          buildCategory(name: 'hello', number: 2, icon: (Icons.people)),
          buildCategory(name: 'ho', number: 56, icon: Icons.timelapse),
          buildCategory(name: 'howfr', number: 10, icon: Icons.add),
        ],
      ),
    );
  }
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            ProfileMenu(context,
                onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>UserRequestScreen()));
                },
                title: 'Users Request',
                subTitle: 'You have 10 users requests ',
                iconColor: Theme.of(context).accentColor,
                icon: Icons.person),
            ProfileMenu(
              context,
              onTap: () {},
              title: 'Admins',
              subTitle: 'We have 20 registered admins',
              icon: Icons.people,
              iconColor: Theme.of(context).accentColor,
            ),
            ProfileMenu(context,
                onTap: () {},
                title: 'Organizations',
                subTitle: 'We have 70 registered organization ',
                iconColor: Theme.of(context).accentColor,
                icon: Icons.people),
            ProfileMenu(context,
                onTap: () {},
                title: 'Today events',
                subTitle: 'We have 16 events today',
                iconColor: Theme.of(context).accentColor,
                icon: Icons.event),
            ProfileMenu(context,
                onTap: () {},
                title: 'Admin requests',
                subTitle: 'We have 5 people requesting to be admin',
                iconColor: Theme.of(context).accentColor,
                icon: Icons.people),

          ],
        ),
      ],
    );
  }
}

class ProfileMenu extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  final Function onTap;
  final Color iconColor;

  ProfileMenu(BuildContext context,
      {this.title, this.icon, this.onTap, this.subTitle, this.iconColor});

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        GestureDetector(
          onTap: onTap,
          child: Container(
            margin: EdgeInsets.only(bottom: 9),
            height: deviceSize.height * 0.09,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFD1DCFF),
                  blurRadius: 20.0,
                  spreadRadius: 5.0,
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                20.0,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: iconColor,
                        ),
                        child: Icon(
                          icon,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              title,
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              subTitle,
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Color(0xFFC4C5C9),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Color(0xFFC4C5C9),
                    //color: Color(0xFF3775FD),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
