import 'package:flutter/material.dart';


class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Hichzat',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 40),
            ),
            Row(
              children: [
                Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'About Us',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Contact',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(
          children: [
            Text(
              'Hichzat',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'About Us',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Contact',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
