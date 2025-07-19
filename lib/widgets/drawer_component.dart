import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerComponent extends StatelessWidget {
  final String name = "dukauwa.du@gmail.com";
  final TextStyle style = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.grey,
  );
  // final bool selected;
  DrawerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 42),
        children: [
          DrawerHeader(
            // decoration: BoxDecoration(
            //   color: Colors.green,
            // ),
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                Image.asset("assets/logo3.png"),
                Icon(Icons.person_3_rounded, size: 100),
                Text(
                  name,
                  style: GoogleFonts.bokor(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text('Explore', style: style),
            onTap: () {
              Navigator.pop(context); // Close drawer
            },
          ),
          ListTile(
            title: Text('Vapes', style: style),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(title: Text('Extacts', style: style), onTap: () {}),
          ListTile(title: Text('Edibles', style: style), onTap: () {}),
          ListTile(title: Text('Flowers', style: style), onTap: () {}),
          ListTile(title: Text('Acessories', style: style), onTap: () {}),
          Divider(),
          ListTile(
            title: Text('Log Out', style: TextStyle(color: Colors.red)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
