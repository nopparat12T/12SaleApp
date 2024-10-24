import 'package:_12sale_app/page/route/RouteScreen.dart';
import 'package:_12sale_app/styles/gobalStyle.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String title;
  // final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.title,
    // required this.onPressed,
  }) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _isPressed = false; // State to keep track of button pressed status

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _isPressed = true; // Set the button to pressed state
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _isPressed = false; // Set the button back to unpressed state
    });
    // widget.onPressed(); // Perform the button action
  }

  void _handleTapCancel() {
    setState(() {
      _isPressed = false; // Set the button back to unpressed state
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancel,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        decoration: BoxDecoration(
          color: _isPressed
              ? GobalStyles.secondaryColor
              : GobalStyles.primaryColor, // Darker color when pressed
          borderRadius: BorderRadius.circular(30),
          boxShadow: _isPressed
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: Offset(0, 1), // Slightly sunken shadow
                    blurRadius: 3,
                    spreadRadius: 1,
                  ),
                ]
              : [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(0, 3), // Elevated shadow
                    blurRadius: 5,
                    spreadRadius: 2,
                  ),
                ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class ButtonFullWidth extends StatefulWidget {
  final String text;
  final TextStyle textStyle;
  final Color blackGroundColor;
  final Function? onPressed;
  final Widget? screen;
  const ButtonFullWidth(
      {super.key,
      required this.text,
      required this.textStyle,
      required this.blackGroundColor,
      this.screen,
      this.onPressed});

  @override
  State<ButtonFullWidth> createState() => _ButtonFullWidthState();
}

class _ButtonFullWidthState extends State<ButtonFullWidth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          if (widget.screen != null) {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => widget.screen!),
            );
          }
          if (widget.onPressed != null) {
            widget.onPressed!();
          }
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 6),
          backgroundColor: widget.blackGroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(widget.text, style: widget.textStyle),
      ),
    );
  }
}
