import 'package:flutter/material.dart';
import 'package:nickers/src/const/const_colors.dart';
import 'package:nickers/src/const/images.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset(backBtn)),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Profile",style: TextStyle(color: titleColor,fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Icon(Icons.edit,color: primaryColor,),
          )
        ],
      ),
    );
  }
}