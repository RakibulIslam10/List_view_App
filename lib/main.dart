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
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("$msg")));
  }

  var MyItems = [
    {"Name": "Sara", "Age": "28", "City": "Stockholm"},
    {"Name": "Jacob", "Age": "25", "City": "Copenhagen"},
    {"Name": "Aiden", "Age": "30", "City": "Dublin"},
    {"Name": "Grace", "Age": "22", "City": "Vienna"},
    {"Name": "Lucas", "Age": "27", "City": "Amsterdam"},
    {"Name": "Lily", "Age": "24", "City": "Seville"},
    {"Name": "Elijah", "Age": "29", "City": "Oslo"},
    {"Name": "Chloe", "Age": "26", "City": "Athens"},
    {"Name": "Alexander", "Age": "23", "City": "Helsinki"},
    {"Name": "Madison", "Age": "31", "City": "Brussels"},
    {"Name": "Logan", "Age": "21", "City": "Warsaw"},
    {"Name": "Ella", "Age": "32", "City": "Budapest"},
    {"Name": "Mason", "Age": "28", "City": "Prague"},
    {"Name": "Avery", "Age": "25", "City": "Lisbon"},
    {"Name": "Ryan", "Age": "27", "City": "Edinburgh"},
    {"Name": "Scarlett", "Age": "29", "City": "Berlin"},
    {"Name": "Luke", "Age": "26", "City": "Barcelona"},
    {"Name": "Hannah", "Age": "30", "City": "Paris"},
    {"Name": "Dylan", "Age": "23", "City": "Rome"},
    {"Name": "Leah", "Age": "24", "City": "Tokyo"},
    {"Name": "Rakib", "Age": "20", "City": "Sirajganj"},
    {"Name": "Alice", "Age": "25", "City": "New York"},
    {"Name": "Bob", "Age": "30", "City": "London"},
    {"Name": "Emily", "Age": "22", "City": "Paris"},
    {"Name": "David", "Age": "28", "City": "Tokyo"},
    {"Name": "Sophia", "Age": "26", "City": "Sydney"},
    {"Name": "Michael", "Age": "23", "City": "Berlin"},
    {"Name": "Olivia", "Age": "27", "City": "Barcelona"},
    {"Name": "William", "Age": "29", "City": "Toronto"},
    {"Name": "Ava", "Age": "24", "City": "Rome"},
    {"Name": "Ethan", "Age": "31", "City": "Seoul"},
    {"Name": "Mia", "Age": "21", "City": "Mumbai"},
    {"Name": "Liam", "Age": "32", "City": "Cairo"},
    {"Name": "Charlotte", "Age": "23", "City": "Rio de Janeiro"},
    {"Name": "Noah", "Age": "28", "City": "Moscow"},
    {"Name": "Amelia", "Age": "25", "City": "Bangkok"},
    {"Name": "James", "Age": "27", "City": "Madrid"},
    {"Name": "Isabella", "Age": "29", "City": "Los Angeles"},
    {"Name": "Benjamin", "Age": "26", "City": "Dubai"},
    {"Name": "Emma", "Age": "30", "City": "Singapore"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview App"),
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
      body: ListView.builder(
        itemCount: MyItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(MyItems[index]["Name"]!),
            leading: Icon(Icons.person),
            subtitle: Text(MyItems[index]["City"]!),
            onTap: () {
              MySnackber(context, MyItems[index]["Age"].toString());
            },
          );
        },
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
