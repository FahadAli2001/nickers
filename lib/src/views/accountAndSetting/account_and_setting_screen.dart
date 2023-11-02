import 'package:flutter/material.dart';
import 'package:nickers/src/const/const_colors.dart';
import 'package:nickers/src/const/icons.dart';
import 'package:nickers/src/const/padding.dart';

class AccountAndSettingScreen extends StatefulWidget {
  const AccountAndSettingScreen({super.key});

  @override
  State<AccountAndSettingScreen> createState() =>
      _AccountAndSettingScreenState();
}

class _AccountAndSettingScreenState extends State<AccountAndSettingScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          "Account & Settings",
          style: TextStyle(color: titleColor, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding, vertical: verticalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Account",
              style: TextStyle(
                  color: titleColor, fontWeight: FontWeight.w600, fontSize: 18),
            ),
            //
            SizedBox(
              height: size.height * 0.02,
            ),
            //

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Image.asset(profileIcon),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(
                            color: subTtileColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: subTtileColor,
                )
              ],
            ),
            Divider(
              thickness: 0.2,
              color: subTtileColor,
            ),
            //
            SizedBox(
              height: size.height * 0.02,
            ),
            //

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Image.asset(shoppingCartIcon),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Shipping Address",
                        style: TextStyle(
                            color: subTtileColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: subTtileColor,
                )
              ],
            ),
            Divider(
              thickness: 0.2,
              color: subTtileColor,
            ),
            //
            SizedBox(
              height: size.height * 0.02,
            ),
            //

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Image.asset(paymentIcon),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Payment Info",
                        style: TextStyle(
                            color: subTtileColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: subTtileColor,
                )
              ],
            ),
            Divider(
              thickness: 0.2,
              color: subTtileColor,
            ),
            //
            SizedBox(
              height: size.height * 0.02,
            ),
            //

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Image.asset(deleteIcon),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Delete Account",
                        style: TextStyle(
                            color: subTtileColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: subTtileColor,
                )
              ],
            ),
            Divider(
              thickness: 0.2,
              color: subTtileColor,
            ),
            //
             SizedBox(
              height: size.height * 0.02,
            ),
            //
                Text(
              "App Settings",
              style: TextStyle(
                  color: titleColor, fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
