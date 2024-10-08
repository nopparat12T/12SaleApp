import 'package:flutter/material.dart';
import 'package:_12sale_app/styles/gobalStyle.dart';

class Header extends StatelessWidget {
  final String? title;
  // final String? subtitle;
  final Widget? leading;
  final Widget? leading2;
  // final List<Widget>? actions;
  // final Color backgroundColor;
  // final Color textColor;
  // final double height;
  // final bool centerTitle;

  const Header({
    Key? key,
    this.title,
    // this.subtitle,
    this.leading,
    this.leading2,
    // this.backgroundColor = Colors.blue,
    // this.textColor = Colors.white,
    // this.height = 100.0,
    // this.centerTitle = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GobalStyles.screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: GobalStyles.primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 1,
          ),
          Container(
            height: GobalStyles.screenWidth / 15,
            padding: const EdgeInsets.symmetric(horizontal: 50),
            color: Colors.amber,
            child: leading2,
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.vertical(top: Radius.circular(100))),
            child: leading!,
          ),
        ],
      ),
    );
  }
}
