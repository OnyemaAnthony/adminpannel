import 'package:admin_panel/models/user_request_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UserRequestDetailScreen extends StatelessWidget {
  final UserRequestModel user;

  const UserRequestDetailScreen({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users details',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'Name : ${user.name}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 300,
              width: double.infinity,
              child: CachedNetworkImage(
                imageUrl: user.profilePicture,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10,),


            Text('${user.name} is requesting approval, click on Approve to Approve and Reject to reject ${user.name}',style: TextStyle(
              fontSize: 20
            ), ),

            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonTheme(
                    child: FlatButton(
                        color: Theme.of(context).accentColor,
                        textColor: Colors.white,
                        onPressed: (){

                    }, child: Text('Approve')),
                  ),

                  ButtonTheme(
                    child: FlatButton(
                        color: Theme.of(context).accentColor,
                        textColor: Colors.white,
                        onPressed: (){


                    }, child: Text('Reject')),
                  )
                ],

              ),
            )
          ],
        ),
      ),
    );
  }
}
