import 'package:flutter/material.dart';
import 'package:nickers/src/const/const_colors.dart';
import 'package:nickers/src/const/icons.dart';
import 'package:nickers/src/const/padding.dart';
import 'package:nickers/src/const/shoes_category.dart';
import 'package:nickers/src/custom/customTextfiled/custom_textfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white70,
        leading: Image.asset(
          menuIcon,
          width: 60,
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Store Location",
              style: TextStyle(color: subTtileColor, fontSize: 12),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.pin_drop_sharp,
                  color: primaryColor,
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  "Pakistan",
                  style:
                      TextStyle(color: titleColor, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Image.asset(
              shoppingIcon,
              width: 40,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding, vertical: verticalPadding),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              width: size.width,
              hintText: "Search for shoes",
              preffixIcon: Icon(
                Icons.search,
                color: subTtileColor,
              ),
            ),
            //
            SizedBox(
              height: size.height * 0.04,
            ),
            //
            SizedBox(
              width: size.width,
              height: size.height * 0.06,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: shoesCategory.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: horizontalPadding),
                    child: Container(
                      height: size.height * 0.06,
                      width: size.width * 0.25,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(25)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          shoesCategory[index],
                          Text(shoesCategoryName[index])
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
