import 'package:flutter/material.dart';
import 'package:healz/components/app_drawer.dart';
import 'package:healz/screens/make_appointment.dart';

class Healz extends StatefulWidget {
  const Healz({super.key});

  @override
  State<Healz> createState() => _HealzState();
}

class _HealzState extends State<Healz> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int currentIndex = 1;

  changeIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(200, 0, 173, 179),
      backgroundColor: Color.fromARGB(220, 17, 96, 105),
      drawer: appDrawer(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(225, 0, 173, 179),
        elevation: 0,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text('Heal Rural'),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset('assets/images/gift.gif'),
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyPage()),
          );
        },
        label: const Text('Make Appointment'),
        backgroundColor: Color.fromARGB(200, 0, 173, 179),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/zero.png',
                alignment: Alignment(-.2, 0),
                fit: BoxFit.fill,
              ),
              Column(
                children: [
                  Center(
                    child: Text(
                      '',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  // SizedBox(width: 1000),
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.album),
                          title: Text('Find Hospitals Near You'),
                          subtitle: Text(
                              'Get the list of hospitals by entering your location'),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: const Text('Find Now'),
                              onPressed: () {/* ... */},
                            ),
                            const SizedBox(width: 14),
                            TextButton(
                              child: const Text('Location'),
                              onPressed: () {/* ... */},
                            ),
                            const SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Card(
                      elevation: 0,
                      color: Theme.of(context).colorScheme.surfaceVariant,
                      child: const SizedBox(
                        width: 300,
                        height: 100,
                        child: Center(child: Text('Health Blogs')),
                      ),
                    ),
                  ),
                  Center(
                    child: Card(
                      child: SizedBox(
                        width: 300,
                        height: 100,
                        child: Center(child: Text('Availability')),
                      ),
                    ),
                  ),
                  Center(
                    child: Card(
                      child: SizedBox(
                        width: 300,
                        height: 100,
                        child: Center(child: Text('Gallery')),
                      ),
                    ),
                  ),
                  Center(
                    child: Card(
                      child: SizedBox(
                        width: 300,
                        height: 100,
                        child: Center(child: Text('Testimonials')),
                      ),
                    ),
                  ),
                  Center(
                    child: Card(
                      child: SizedBox(
                        width: 300,
                        height: 100,
                        child: Center(child: Text('Reach Us')),
                      ),
                    ),
                  ),
                  Center(
                    child: Card(
                      child: SizedBox(
                        width: 300,
                        height: 100,
                        child: Center(child: Text('About Us')),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color.fromARGB(220, 0, 173, 179),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_hospital_rounded),
              label: 'Medical',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Contact us',
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.medical_services),
              label: 'Medical Services',
              backgroundColor: Colors.pink,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
              backgroundColor: Color.fromARGB(220, 0, 177, 88),
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
