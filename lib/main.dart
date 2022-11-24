import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tweet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Twikker",
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Twitter(),
    );
  }
}

class Twitter extends StatefulWidget {
  const Twitter({super.key});

  @override
  State<Twitter> createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  var tweetList = [];
  var range = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  var count = 0;
  var tweetList_pr = [
    Tweet(
      state: "text",
      time: "3h",
      name: '@kannotgun',
      avatar_url:
          '',
      postText: 'Hello World, my name is kan.',
      avatar_pro:
          'https://i.redd.it/f9uo92nt7z691.jpg',
    ),
    Tweet(
      state: "text",
      time: "3h",
      name: '@kannotgun',
      avatar_url:
          '',
      postText: 'I am study at BU.',
      avatar_pro:
          'https://i.redd.it/f9uo92nt7z691.jpg',
    ),
    Tweet(
      state: "text",
      time: "3h",
      name: '@kannotgun',
      avatar_url:
          '',
      postText: 'I study at the Faculty of Engineering.',
      avatar_pro:
          'https://i.redd.it/f9uo92nt7z691.jpg',
    ),
    Tweet(
      state: "text",
      time: "3h",
      name: '@kannotgun',
      avatar_url:
          '',
      postText: 'Department of Computer and Robotics.',
      avatar_pro:
          'https://i.redd.it/f9uo92nt7z691.jpg',
    ),
    Tweet(
      state: "text",
      time: "3h",
      name: '@kannotgun',
      avatar_url:
          '',
      postText: 'This year I am a senior.',
      avatar_pro:
          'https://i.redd.it/f9uo92nt7z691.jpg',
    ),
    Tweet(
      state: "image",
      time: "3h",
      name: '@kannotgun',
      avatar_url:
          'img/agc01.JPG',
      postText: 'This is my Thesis project',
      avatar_pro:
          'https://i.redd.it/f9uo92nt7z691.jpg',
    ),
    Tweet(
      state: "text",
      time: "3h",
      name: '@kannotgun',
      avatar_url:
          'https://www.ekathimerini.com/wp-content/uploads/2021/01/robot_logistics_web.jpg',
      postText: 'It is a automatics robot for warehouse.',
      avatar_pro:
          'https://i.redd.it/f9uo92nt7z691.jpg',
    ),
    Tweet(
      state: "image",
      time: "3h",
      name: '@kannotgun',
      avatar_url:
          'https://pbs.twimg.com/media/FO_qoHMXIAYjDq1?format=jpg&name=4096x4096',
      postText: 'My favorite thing is Gundam',
      avatar_pro:
          'https://i.redd.it/f9uo92nt7z691.jpg',
    ),
    Tweet(
      state: "text",
      time: "3h",
      name: '@kannotgun',
      avatar_url:
          '',
      postText: 'Its name is Gundam Aerial',
      avatar_pro:
          'https://i.redd.it/f9uo92nt7z691.jpg',
    ),
    Tweet(
      state: "image",
      time: "3h",
      name: '@kannotgun',
      avatar_url:
          'https://pbs.twimg.com/media/FcAyJC_acAAenKo?format=jpg&name=900x900',
      postText: '',
      avatar_pro:
          'https://i.redd.it/f9uo92nt7z691.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          // ignore: prefer_const_constructors
          margin: const EdgeInsets.all(10.0),
          // ignore: prefer_const_constructors
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://i.redd.it/f9uo92nt7z691.jpg'),
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: Text(
          "Feed",
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildIconButton(Icons.home, Colors.blue),
            buildIconButton(Icons.search_outlined, Colors.grey),
            buildIconButton(Icons.notifications_outlined, Colors.grey),
            buildIconButton(Icons.email_outlined, Colors.grey),
          ],
        ),
      ),
      body: listofTweet(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(FontAwesomeIcons.pen),
        onPressed: () {
          setState(() {
            if (count == 9) {
              tweetList.insert(0, tweetList_pr[9]);
              count = 0;
            } else {
              tweetList.insert(0, tweetList_pr[count]);
              count++;
            }
          });
        },
      ),
    );
  }

  Widget listofTweet() {
    return Container(
        color: Colors.white,
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return tweetList[index];
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
                  height: 10,
                ),
            itemCount: tweetList.length));
  }

  Widget buildIconButton(IconData icon, Color color) {
    return IconButton(
      icon: Icon(
        icon,
        color: color,
      ),
      onPressed: () {},
    );
  }
}
