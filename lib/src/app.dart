import 'package:flutter/material.dart';
import 'foodList.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  TabController tabController;

  @override
  void initState () {
    super.initState();
    tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 300,
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/counter.jpg'
                    ),
                    fit: BoxFit.cover
                  ),
                ),
              ),
              Positioned(
                top: 150,
                left: 25,
                child: Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(70),
                    image: DecorationImage(
                      image: AssetImage('assets/model.jpg'),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              ),
              Positioned(
                top: 225,
                left: 175,
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Sussan',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '1,974 Followers',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                      height: 30,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Color(0xFFEAF4EF),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'Follow',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF5A9776),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: TabBar(
              controller: tabController,
              indicatorColor: Color(0xFF469469),
              labelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelColor: Colors.grey.withOpacity(0.6),
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Recipe',
                    style: TextStyle(
                      fontFamily: 'Monserrat',
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Gallery',
                    style: TextStyle(
                      fontFamily: 'Monserrat',
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Story',
                    style: TextStyle(
                      fontFamily: 'Monserrat',
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 325,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                new FoodList(),
                new FoodList(),
                new FoodList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}