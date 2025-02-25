import 'package:flutter/material.dart';
import 'package:yt_short/assetss/widget.dart';

class ShortsPage extends StatefulWidget {
  final String tittleName;
  const ShortsPage({super.key,required this.tittleName});

  @override
  State<ShortsPage> createState() => _ShortsPageState();
}

class _ShortsPageState extends State<ShortsPage> {

  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Index 0: Home', style: optionStyle),
    Text('Index 1: Shorts', style: optionStyle),
    Text('Index 2: Explore', style: optionStyle), // Added missing text
    Text('Index 3: Subscriptions', style: optionStyle),
    Text('Index 4: You', style: optionStyle),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final PgController = PageController(
      initialPage: 0,
    );
    return Scaffold(
      appBar: AppBar(title: Text(widget.tittleName,style: TextStyle(
        fontSize: 30
      ),),actions: [
        Icon(Icons.search,size: 38,),
        SizedBox(width: 15,),
        Icon(Icons.menu,size: 38,),
      ],
      backgroundColor: Colors.black87,),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.video_library), label: 'Shorts'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.subscriptions), label: 'Subscriptions'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'You'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
      body: Stack(
        children: [
          PageView(
            scrollDirection: Axis.vertical,
            reverse: true,
            controller: PgController,
            children: [
              Shorts(color: Colors.indigo,),
              Shorts(color: Colors.red,),
              Shorts(color: Colors.purple)
            ],

          )
        ],
      )
    );
  }
}
