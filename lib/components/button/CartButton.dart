import 'package:_12sale_app/styles/gobalStyle.dart';
import 'package:flutter/material.dart';

class Cartbutton extends StatefulWidget {
  final String count;
  final Widget screen;

  const Cartbutton({super.key, required this.count, required this.screen});

  @override
  State<Cartbutton> createState() => _CartbuttonState();
}

class _CartbuttonState extends State<Cartbutton> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      child: FittedBox(
        child: Stack(
          alignment: Alignment(1.5, -1.5),
          children: [
            SizedBox(
              width: screenWidth / 7, // Set the width of the button
              height: screenWidth / 7, // Set the height of the button
              child: FloatingActionButton(
                // Your actual Fab
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => widget.screen,
                    ),
                  );
                },
                backgroundColor: GobalStyles.primaryColor,
                shape: CircleBorder(),
                child: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 60,
                ),
              ),
            ),
            Container(
              width: screenWidth / 15, // Set the width of the button
              height: screenWidth / 15,
              padding: EdgeInsets.all(8),
              constraints: BoxConstraints(minHeight: 32, minWidth: 32),
              decoration: BoxDecoration(
                // This controls the shadow
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 1,
                      blurRadius: 5,
                      color: Colors.black.withAlpha(50))
                ],
                borderRadius: BorderRadius.circular(180),
                color: Colors.red, // This would be color of the Badge
              ),
              // This is your Badge
              child: Center(
                // Here you can put whatever content you want inside your Badge
                child: Text(widget.count,
                    style: TextStyle(color: Colors.white, fontSize: 22)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
