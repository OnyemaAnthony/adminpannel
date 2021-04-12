import 'package:admin_panel/models/user_request_model.dart';
import 'package:admin_panel/screens/user_request_detail.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UserRequestScreen extends StatelessWidget {
  List<UserRequestModel> users = [
    UserRequestModel(
        'Onyema Anthony',
        'https://avatars.githubusercontent.com/u/50530242?s=400&u=bc610e04e9bed46464ef8e2c228464ac4b2b75a4&v=4',
        DateTime.now(),
        DateTime.now()),
    UserRequestModel(
        "Tommy merlin ",
        'https://images.unsplash.com/photo-1508908324153-d1a219719814?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDR8fHxlbnwwfHx8&auto=format&fit=crop&w=500&q=60',
        DateTime.now(),
        DateTime.now()),
    UserRequestModel(
        'Micheal Austin',
        'https://images.unsplash.com/photo-1529068755536-a5ade0dcb4e8?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEwfHx8ZW58MHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        DateTime.now(),
        DateTime.now()),
    UserRequestModel(
        'micheal janemary',
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDZ8fHxlbnwwfHx8&auto=format&fit=crop&w=500&q=60',
        DateTime.now(),
        DateTime.now()),
    UserRequestModel(
        'Ana joy',
        'https://images.unsplash.com/photo-1578774296842-c45e472b3028?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDd8fHxlbnwwfHx8&auto=format&fit=crop&w=500&q=60',
        DateTime.now(),
        DateTime.now()),
    UserRequestModel(
        'Felicity bill',
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE3fHx8ZW58MHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        DateTime.now(),
        DateTime.now()),
    UserRequestModel(
        'John smith',
        'https://images.unsplash.com/photo-1561677843-39dee7a319ca?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxjb2xsZWN0aW9uLXRodW1ibmFpbHx8MTA3NTQwNTh8fGVufDB8fHw%3D&dpr=1&auto=format&fit=crop&w=525&q=60',
        DateTime.now(),
        DateTime.now()),
    UserRequestModel(
        'Mary nathan',
        'https://images.unsplash.com/photo-1519699047748-de8e457a634e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        DateTime.now(),
        DateTime.now()),
    UserRequestModel(
        'johanna bliss',
        'https://images.unsplash.com/photo-1575739967915-f06fdc268a5b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8ZmFjZXN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        DateTime.now(),
        DateTime.now()),
    UserRequestModel(
        'Justin wale',
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDJ8fHxlbnwwfHx8&auto=format&fit=crop&w=500&q=60',
        DateTime.now(),
        DateTime.now()),
    UserRequestModel(
        'william uche',
        'https://images.unsplash.com/photo-1560856218-0da41ac7c66a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fGZhY2VzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        DateTime.now(),
        DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'User Requests',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            UserRequestModel user = users[index];
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>UserRequestDetailScreen()));
              },
              child: Padding(
                padding: EdgeInsets.all(10),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(user.profilePicture),
                    backgroundColor: Colors.transparent,
                  ),
                  title: Text(user.name),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
