import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "SHOP APP",
          style: TextStyle(color: Colors.red, fontSize: 25),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.red,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.red,
              ),
              onPressed: () {}),
        ],
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      // #catigories and images
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true, "All"),
                    singleTab(false, "Red"),
                    singleTab(false, "Black"),
                    singleTab(false, "White"),
                    singleTab(false, "Pink"),
                    singleTab(false, "Orange"),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //
              marketItems("assets/images/im_car1.jpg"),
              marketItems("assets/images/im_car2.jpg"),
              marketItems("assets/images/im_car3.jpg"),
              marketItems("assets/images/im_car4.png"),
              marketItems("assets/images/im_car5.jpg"),
            ],
          ),
        ),
      ),
    );
  }

  Widget singleTab(bool type, String text) {
    // # Catigories's function
    return AspectRatio(
      aspectRatio: 2.2 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: type ? Colors.red.shade400 : Colors.grey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: type ? 20 : 17),
          ),
        ),
      ),
    );
  }

  Widget marketItems(String image) {
    // # images's function
    return Container(
        height: 250,
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            boxShadow: [
              BoxShadow(
                  color: Colors.orange.shade400,
                  blurRadius: 10,
                  offset: Offset(0, 10))
            ]),
        // #Gradient
        child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.6),
                  Colors.black.withOpacity(0.3),
                  Colors.black.withOpacity(0.2),
                ])),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "PDP Car",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Electric",
                            style: TextStyle(color: Colors.red, fontSize: 20),
                          ),
                        ],
                      ),
                      Text(
                        "100\$",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.favorite_border,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Expanded(
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text("PDP",style: TextStyle(color: Colors.white,fontSize: 25),),
// SizedBox(height: 10,),
// Text("Electric",style: TextStyle(color: Colors.white,fontSize: 20),),
// ],
// ),
// ),
// Container(
// width: 35,
// height: 35,
// decoration: BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.white
// ),
// child: Center(
// child: Icon(Icons.favorite_border,size: 20,),
// ),
// ),
// ],
// ),
//
// Text("100\$",style: TextStyle(color: Colors.white,fontSize: 25),),
// ],
// ),
// ),
// ); // if you want to change icon and int's location
// you can use comment's cod than child Row...

