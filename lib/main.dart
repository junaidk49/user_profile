import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 450,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black,
                            Colors.black.withOpacity(.3),
                          ],
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              "Junaid Khan",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: <Widget>[
                                Text(
                                  "60 Videos",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 50),
                                Text(
                                  "240K Subscribers",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          "As an enthusiastic Flutter Developer, I'm looking for a dynamic, innovative work setting that will allow me to grow professionally and providing with an opportunity to pick up new, crucial skills. I am motivated by challenges and committed to delivering high-quality, efficient, and scalable mobile solutions. By making sure that my efforts are in line with the objectives of the projects I work on, my focus is on making a positive impact on the company's overall success as well as my own personal growth.",
                          style: TextStyle(
                            color: Colors.grey,
                            height: 1.4,
                          ),
                        ),
                        const SizedBox(height: 40),
                        const Text(
                          "Born",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "March, 08th 2002, Pakistan",
                          style: TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Nationality",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Pakistani",
                          style: TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Videos",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              makeVideo(image: 'assets/images/profile-1.jpg'),
                              makeVideo(image: 'assets/images/profile-2.jpg'),
                              makeVideo(image: 'assets/images/profile-3.jpg'),
                            ],
                          ),
                        ),
                        const SizedBox(height: 120),
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          ),
          Positioned.fill(
            bottom: 50,
            child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.yellow[700],
                  ),
                  child: const Align(
                    child: Text(
                      "Follow",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget makeVideo({image}) {
    return AspectRatio(
      aspectRatio: 1.5 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.3),
              ],
            ),
          ),
          child: const Align(
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 70,
            ),
          ),
        ),
      ),
    );
  }
}


