import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopHomePage();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth >= 1200) {
        return DesktopHomePage();
      } else {
        return MobileHomePage();
      }
    });
  }
}

class DesktopHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Expanded(
          child: Column(children: [
        Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1518770660439-4636190af475?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"),
                    fit: BoxFit.cover)),
            child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 3),
                child: DesktopNavBar())),
        Container(width: size.width, height: 200, color: Colors.green)
      ])),
    ));
  }
}

class MobileHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class DesktopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Hello World",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Row(children: [
              DNavBarItem(text: "Home"),
              SizedBox(width: 20.0),
              DNavBarItem(text: "Posts"),
              SizedBox(width: 20.0),
              DNavBarItem(text: "Contact")
            ]),
          )
        ]),
      )
    ]);
  }
}

class DNavBarItem extends StatelessWidget {
  final String text;
  DNavBarItem({this.text});
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w400));
  }
}
