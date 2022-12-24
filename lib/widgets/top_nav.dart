import 'package:flutter/material.dart';
import 'package:web_one/constants/style.dart';
import 'package:web_one/helpers/responsiveness.dart';
import 'package:web_one/widgets/custom_text.dart';

AppBar topNavBar(context, GlobalKey<ScaffoldState> key) =>
  AppBar(
    backgroundColor: Colors.white,
    elevation: 1,
    shadowColor: Colors.blue[300],
    iconTheme: IconThemeData(
      color: dark.withOpacity(.7),
      size: 25
    ),
    leading: !ResponsiveWidget.isSmallScreen(context) ? 
      Row(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15),
            child: Image.asset("assets/icon/logo2.png", width: 40),
          ),
        ],
      ) : TextButton(
        onPressed: (){
          key.currentState!.openDrawer();
        },
        child: const Icon(
          Icons.menu,
          size: 25,
          color: Colors.black,
        ),
      ),
    title: Row(
      children: [
        Visibility(child: CustomText(text: "Dash", color: lightGrey, fontSize: 20, fontWeight: FontWeight.bold)),
        Expanded(child: Container()),
        TextButton(
          onPressed: (){}, 
          child: Icon(
            Icons.settings,
            color: dark.withOpacity(.7),
          ),
        ),
        Stack(
          children: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(
                Icons.notifications,
                color: dark.withOpacity(.7),
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: CircleAvatar(
                radius: 6,
                backgroundColor: light,
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: active,
                ),
              ),
            ),
          ],
        ),
        Container(
          width: 1,
          height: 22,
          color: lightGrey,
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.02),
        CustomText(text: "Code K254", color: lightGrey),
        SizedBox(width: MediaQuery.of(context).size.width * 0.01),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            border:  Border.all(
              color: active.withOpacity(.7),
              width: 1,
            )
          ),
          child: Container(
            padding: const EdgeInsets.all(2),
            margin: const EdgeInsets.all(2),
            child: CircleAvatar(
              backgroundColor: light,
              child: Icon(
                Icons.person_outline,
                color: dark,
              ),
            ),
          ),
        )
      ],
    ),
  );