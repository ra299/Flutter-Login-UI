import "package:flutter/material.dart";

import 'Animation/FadeAnimation.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage()
  )
);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.fill
                  )
                ),
                child: Stack(
                  children:[
                    Positioned(
                      left: 30,
                      width: 80,
                      height: 180,
                      child: FadeAnimation(1.5, Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/light-1.png")
                          )
                        ),
                      )),
                    ),
                    Positioned(
                      left: 140,
                      width: 80,
                      height: 130,
                      child: FadeAnimation(1.8, Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/light-2.png")
                            )
                        ),
                      )),
                    ),
                    Positioned(
                      right: 30,
                      top: 10,
                      width: 80,
                      height: 130,
                      child: FadeAnimation(2.3, Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/clock.png")
                            )
                        ),
                      )),
                    ),
                    Positioned(
                      child: Container(
                        margin: EdgeInsets.only(top: 90),
                        child: Center(
                          child: Text("Unlock your Future", style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          )),
                        )
                      )
                    )
                  ]
                ),
              ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: [
                FadeAnimation(1.8, Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(143, 148, 251, 1),
                          blurRadius: 10.0,
                          offset: Offset(0,10),
                        )
                      ]
                    ),
                    child: Column(
                      children: [
                        Container(
                            padding: EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                                  hintText: "Email or Phone number",
                              hintStyle: TextStyle(color: Colors.grey[400])
                            )
                          )
                        ),
                        Container(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                )
                            )
                        )
                      ]
                    )
                  )),
                  SizedBox(height: 30),
                FadeAnimation(2, Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(143, 60, 251, 1),
                          Color.fromRGBO(143, 148, 251, 50),
                        ]
                      )
                    ),
                    child: Center(
                      child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25))
                    )
                  )),
                  SizedBox(height: 20),
                FadeAnimation(1.5, Text("Forgot Password.?", style: TextStyle( color: Color.fromRGBO(143, 148, 251, 1)),)),
                ],
              )
            )
          ]
        ),
      )
    );
  }
}
