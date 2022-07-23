import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  var images = [
    'assets/image9.jpg',
    'assets/image7.jpg',
    'assets/image8.jpg',
    'assets/image2.jpg',
    'assets/image1.jpg',
    'assets/image3.jpg',
    'assets/image6.jpg',
    'assets/image4.jpg',
    'assets/image5.jpg',
    'assets/download.jpg',
  ];

  var img = [
    'assets/img0.jpg',
    'assets/img8.jpg',
    'assets/img2.jpg',
    'assets/img1.jpg',
    'assets/img3.jpg',
    'assets/img4.jpg',
    'assets/img5.jpg',
    'assets/img6.jpg',
    'assets/img7.jpg',
    'assets/img9.jpg',
  ];
  var hollywood = [
    'assets/holly9.jpg',
    'assets/holly1.jpg',
    'assets/holly2.jpg',
    'assets/holly0.jpg',
    'assets/holly3.jpg',
    'assets/holly4.jpg',
    'assets/holly5.jpg',
    'assets/holly6.jpg',
    'assets/holly7.jpg',
    'assets/holly8.jpg',
  ];
  var horror = [
    'assets/horror0.jpg',
    'assets/horror1.jpg',
    'assets/horror2.jpg',
    'assets/horror3.jpg',
    'assets/horror4.jpg',
    'assets/horror5.jpg',
    'assets/horror6.jpg',
    'assets/horror7.jpg',
    'assets/horror6.jpg',
    'assets/horror7.jpg',
  ];
  var bollywood = [
    'assets/bolly0.jpg',
    'assets/bolly1.jpg',
    'assets/bolly2.jpg',
    'assets/bolly3.jpg',
    'assets/bolly4.jpg',
    'assets/bolly5.jpg',
    'assets/bolly6.jpg',
    'assets/images.jpg',
    'assets/bolly6.jpg',
    'assets/images.jpg',
  ];

  var punjabi = [
    'assets/punj1.jpg',
    'assets/punj0.jpg',
    'assets/punj2.jpg',
    'assets/punj3.jpg',
    'assets/punj4.jpg',
    'assets/punj5.jpg',
    'assets/punj6.jpg',
    'assets/punj7.jpg',
    'assets/punj1.jpg',
    'assets/punj4.jpg',
  ];
  var drames = [
    'assets/drames.jpg',
    'assets/drames1.jpg',
    'assets/drames0.jpg',
    'assets/drames2.jpg',
    'assets/drames3.jpg',
    'assets/drames4.jpg',
    'assets/drames8.jpg',
    'assets/drames5.jpg',
    'assets/drames.jpg',
    'assets/drames1.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 40,
        bottom: TabBar(
          labelColor: Colors.white,
          labelPadding: const EdgeInsets.all(5),
          controller: _tabController,
          tabs: const [
            CircleAvatar(
              backgroundImage: AssetImage('assets/netflix.png'),
            ),
            Tab(text: 'TvShows'),
            Tab(text: 'Movies'),
            Tab(text: 'MyList'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.black87,
              child: const Text(
                'Popular on Netflix',
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              color: const Color.fromRGBO(58, 66, 66, 1.0),
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Card(
                    margin: const EdgeInsets.all(3),
                    elevation: 15,
                    shadowColor: Colors.white,
                    child: Image(
                      image: AssetImage(images[index].toString()),
                      fit: BoxFit.cover,
                    ),
                  );
                }),
                itemCount: images.length,
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.black87,
              child: const Text(
                'Trending Now',
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              color: const Color.fromRGBO(58, 66, 66, 1.0),
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Card(
                    margin: const EdgeInsets.all(3),
                    elevation: 15,
                    shadowColor: Colors.white,
                    child: Image(
                      image: AssetImage(img[index].toString()),
                      fit: BoxFit.cover,
                    ),
                  );
                }),
                itemCount: images.length,
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.black87,
              child: const Text(
                'Hollywood Movies',
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              color: const Color.fromRGBO(58, 66, 66, 1.0),
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Card(
                    margin: const EdgeInsets.all(3),
                    elevation: 15,
                    shadowColor: Colors.white,
                    child: Image(
                      image: AssetImage(hollywood[index].toString()),
                      fit: BoxFit.cover,
                    ),
                  );
                }),
                itemCount: images.length,
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.black87,
              child: const Text(
                'Horror Movies',
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              color: const Color.fromRGBO(58, 66, 66, 1.0),
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Card(
                    margin: const EdgeInsets.all(3),
                    elevation: 15,
                    shadowColor: Colors.white,
                    child: Image(
                      image: AssetImage(horror[index].toString()),
                      fit: BoxFit.cover,
                    ),
                  );
                }),
                itemCount: images.length,
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.black87,
              child: const Text(
                'Bollywood Movies',
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              color: const Color.fromRGBO(58, 66, 66, 1.0),
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Card(
                    margin: const EdgeInsets.all(3),
                    elevation: 15,
                    shadowColor: Colors.white,
                    child: Image(
                      image: AssetImage(bollywood[index].toString()),
                      fit: BoxFit.cover,
                    ),
                  );
                }),
                itemCount: images.length,
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.black87,
              child: const Text(
                'Punjabi Movies',
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              color: const Color.fromRGBO(58, 66, 66, 1.0),
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Card(
                    margin: const EdgeInsets.all(3),
                    elevation: 15,
                    shadowColor: Colors.white,
                    child: Image(
                      image: AssetImage(punjabi[index].toString()),
                      fit: BoxFit.cover,
                    ),
                  );
                }),
                itemCount: images.length,
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.black87,
              child: const Text(
                'Drames',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              color: const Color.fromRGBO(58, 66, 66, 1.0),
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Card(
                    margin: const EdgeInsets.all(3),
                    elevation: 15,
                    shadowColor: Colors.white,
                    child: Image(
                      image: AssetImage(drames[index].toString()),
                      fit: BoxFit.cover,
                    ),
                  );
                }),
                itemCount: images.length,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.black87,
        height: 65.0,
        child: BottomAppBar(
          color: Colors.black87,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.home, color: Colors.white),
                    onPressed: () {},
                  ),
                  const Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.search, color: Colors.white),
                    onPressed: () {},
                  ),
                  const Text(
                    'Search',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.ondemand_video_sharp,
                        color: Colors.white),
                    onPressed: () {},
                  ),
                  const Text(
                    'Comming Soon',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.file_download_outlined,
                        color: Colors.white),
                    onPressed: () {},
                  ),
                  const Text(
                    'Downloads',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.menu, color: Colors.white),
                    onPressed: () {},
                  ),
                  const Text(
                    'menus',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
