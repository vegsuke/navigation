import 'package:drawer_app/screens/Screen_one.dart';
import 'package:drawer_app/screens/screen_two.dart';
import 'package:flutter/material.dart';

class Drawers extends StatelessWidget {
  const Drawers({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff764abc)
              ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg'),
                ),
                accountName: Text('Salman Anwar'),
                accountEmail: Text('salmankhan999755@gmail.com')),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Screen One'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ScreenOne()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Screen Two'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ScreenTwo()));
              },
            ),
          ],
        ),
      ),
    ));
  }
}
