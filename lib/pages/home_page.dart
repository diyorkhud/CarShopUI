

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = 'home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Cars', style: TextStyle(fontSize: 25, color: Colors.pink, fontWeight: FontWeight.bold),),
        brightness: Brightness.light,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.pink,), onPressed: () {  },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.pink,), onPressed: () {  },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              //#categories
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true, 'All'),
                    singleTab(false, 'Red'),
                    singleTab(false, 'Green'),
                    singleTab(false, 'Blue'),
                    singleTab(false, 'Black'),
                  ],
                ),
              ),

              SizedBox(height: 20,),
              makeItem('assets/images/ic_car1.jpg'),
              makeItem('assets/images/ic_car2.jpeg'),
              makeItem('assets/images/ic_car3.jpg'),
              makeItem('assets/images/ic_car4.jpg'),
              makeItem('assets/images/ic_car5.jpg'),
              makeItem('assets/images/ic_car6.jpg'),

            ],
          ),
        ),
      ),
    );
  }

  Widget singleTab(bool type, String text){
    return  AspectRatio(aspectRatio: 2.2/1,
        child: Container(
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            color: type ? Colors.pink: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(text,
              style: TextStyle(
                fontSize: type ? 20: 17,color: type ? Colors.white : Colors.black),
            ),
          ),
        )
    );

  }

  Widget makeItem(String image){
    return Container(
      height: 250,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
          color: Colors.grey[400]!,
          blurRadius: 10,
          offset: Offset(0,10),
        ),
      ]
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.2),
            ]
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Luxury Car', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                      SizedBox(width: 10,),
                      Text('Electric', style: TextStyle(color: Colors.pink, fontSize: 20, fontWeight: FontWeight.bold),),
                    ],
                  ),
              ],
            ),
            SizedBox(height: 5,),
            Text("100k \$", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
            SizedBox(height: 110,),
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pink,
              ),
              child: Center(
                child: Icon(Icons.favorite_border, size: 20, color: Colors.white,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
