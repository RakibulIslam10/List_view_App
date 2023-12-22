import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const rakib());
}

class rakib extends StatelessWidget {
  const rakib({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  MySnackber(context, String msg) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("$msg"),
        backgroundColor: Colors.lightGreen,
      ),
    );
  }

  var MyItems = [
  {"Name": "Sara", "Age": "28", "City": "Stockholm", "ImageURL": "https://cdn.pixabay.com/photo/2018/08/28/13/29/avatar-3637561_960_720.png"},
  {"Name": "Jacob", "Age": "25", "City": "Copenhagen", "ImageURL": "https://cdn.pixabay.com/photo/2017/03/01/22/18/avatar-2109804_960_720.png"},
  {"Name": "Aiden", "Age": "30", "City": "Dublin", "ImageURL": "https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_640.png"},
  {"Name": "Grace", "Age": "22", "City": "Vienna", "ImageURL": "https://cdn.pixabay.com/photo/2017/01/31/21/23/avatar-2027369_640.png"},
  {"Name": "Lucas", "Age": "27", "City": "Amsterdam", "ImageURL": "https://cdn.pixabay.com/photo/2017/01/31/21/23/avatar-2027366_960_720.png"},
  {"Name": "Lily", "Age": "24", "City": "Seville", "ImageURL": "https://res.cloudinary.com/dz209s6jk/image/upload/v1663222594/Avatars/rmxkvbdtrp5v0rcosrev.png"},
  {"Name": "Elijah", "Age": "29", "City": "Oslo", "ImageURL": "https://symbola.net/wp-content/uploads/2021/03/avatar2.png"},
  {"Name": "Chloe", "Age": "26", "City": "Athens", "ImageURL": "https://cdn.pixabay.com/photo/2018/08/28/13/29/avatar-3637561_960_720.png"},
  {"Name": "Alexander", "Age": "23", "City": "Helsinki", "ImageURL": "https://cdn.pixabay.com/photo/2017/01/31/21/23/avatar-2027366_960_720.png"},
  {"Name": "Madison", "Age": "31", "City": "Brussels", "ImageURL": "https://res.cloudinary.com/dz209s6jk/image/upload/v1663222594/Avatars/rmxkvbdtrp5v0rcosrev.png"},
  {"Name": "Logan", "Age": "21", "City": "Warsaw", "ImageURL": "https://res.cloudinary.com/dz209s6jk/image/upload/v1663222594/Avatars/rmxkvbdtrp5v0rcosrev.png"},
  {"Name": "Ella", "Age": "32", "City": "Budapest", "ImageURL": "https://cdn.pixabay.com/photo/2017/01/31/21/23/avatar-2027366_960_720.png"},
  {"Name": "Mason", "Age": "28", "City": "Prague", "ImageURL": "https://cdn.pixabay.com/photo/2017/01/31/21/23/avatar-2027366_960_720.png"},
  {"Name": "Avery", "Age": "25", "City": "Lisbon", "ImageURL": "https://cdn.pixabay.com/photo/2017/01/31/21/23/avatar-2027366_960_720.png"},
    {"Name": "Ryan", "Age": "27", "City": "Edinburgh", "ImageURL": "https://cdn.pixabay.com/photo/2017/01/31/21/23/avatar-2027366_960_720.png"},
    {"Name": "Scarlett", "Age": "29", "City": "Berlin", "ImageURL": "https://cdn.pixabay.com/photo/2018/08/28/13/29/avatar-3637561_960_720.png"},
    {"Name": "Luke", "Age": "26", "City": "Barcelona", "ImageURL": "https://cdn.pixabay.com/photo/2017/01/31/21/23/avatar-2027369_640.png"},
    {"Name": "Hannah", "Age": "30", "City": "Paris", "ImageURL": "https://cdn.pixabay.com/photo/2017/01/31/21/23/avatar-2027369_640.png"},

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student data"),
        backgroundColor: Colors.lightGreen,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Image.asset("images/14.png"),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: GridView.builder(
        itemCount: MyItems.length,
        itemBuilder: (context, index) {
          return InkWell(
            child: Card(
              child: ListTile(
                title: Text(MyItems[index]["Name"]!),
                titleTextStyle:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                leading: Image.network(MyItems[index]["ImageURL"].toString()),
                subtitle: Text(MyItems[index]["City"]!),
                onTap: () {
                  MySnackber(context, MyItems[index]["Age"].toString());
                },
              ),
            ),
          );
        }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing:5,mainAxisSpacing:5,mainAxisExtent: 80 ),
      ),
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.wrong_location_rounded), label: "Adress"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        backgroundColor: Colors.white,
      ),
    );
  }
}
