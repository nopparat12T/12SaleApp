import 'package:flutter/material.dart';
import 'package:_12sale_app/styles/gobalStyle.dart';

class Policyaddnewshop extends StatefulWidget {
  const Policyaddnewshop({super.key});

  @override
  State<Policyaddnewshop> createState() => _PolicyaddnewshopState();
}

class _PolicyaddnewshopState extends State<Policyaddnewshop> {
  final ScrollController _scrollController = ScrollController();
  bool isChecked = false;
  bool _isCheckboxEnabled = false;
  bool _isCheckboxChecked = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  final TextEditingController _controller = TextEditingController(
    text: "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "dawd55555555555555555555555555555555555555555"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "dawd55555555555555555555555555555555555555555"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "dawd55555555555555555555555555555555555555555"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "dawd55555555555555555555555555555555555555555"
        "dawd55555555555555555555555555555555555555555"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "dawd55555555555555555555555555555555555555555"
        "dawd55555555555555555555555555555555555555555"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า"
        "dawd55555555555555555555555555555555555555555"
        "ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า", // Long text for testing
  );
  @override
  void dispose() {
    // Remove the listener when the widget is disposed
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  // Check if the user has scrolled to the bottom
  void _onScroll() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      setState(() {
        _isCheckboxEnabled = true; // Enable the checkbox
      });
    }
  }

  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth, // Fixed width
      height: screenWidth,
      padding: EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 16.0,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with close button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('ขอความยินยอม', style: GobalStyles.headlineblack2),
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.of(context).pop(); // Close bottom sheet
                },
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'ข้อมูลร้านค้า ข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้าข้อมูลร้านค้า',
            style: GobalStyles.textbBlack3,
          ),
          SizedBox(height: 16),
          // Store Information (scrollable container)

          // Scrollable TextField with Scrollbar
          Container(
            height: screenWidth / 1.8,
            child: Scrollbar(
              thumbVisibility: true, // Make scrollbar visible while scrolling
              controller: _scrollController, // Controller for scrolling
              child: SingleChildScrollView(
                controller: _scrollController,
                child: TextField(
                  controller: _controller,
                  maxLines: null, // Allows the text field to expand vertically
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.all(16),
                  ),
                ),
              ),
            ),
          ),
          // Checkbox with label
          Row(
            children: [
              Checkbox(
                value: _isCheckboxChecked,
                onChanged: _isCheckboxEnabled
                    ? (value) {
                        setState(() {
                          _isCheckboxChecked = value ?? false;
                        });
                      }
                    : null, // Disable checkbox until scrolled to bottom
              ),
              Text(
                'ฉันยินยอมให้เก็บข้อมูล',
                style: TextStyle(
                    fontSize: 18,
                    color: _isCheckboxEnabled
                        ? Colors.black
                        : Colors.grey), // Disable the text as well
              ),
            ],
          ),
          // Buttons at the bottom
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: screenWidth / 4,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => Orderscreen(
                      //         customerNo: widget.customerNo,
                      //         customerName: widget.customerName,
                      //         status: widget.status),
                      //   ),
                      // );
                    },
                    child: Text('กลับ', style: GobalStyles.text3),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: GobalStyles.primaryColor,
                      padding: EdgeInsets.symmetric(
                          vertical: screenWidth / 85,
                          horizontal: screenWidth / 17),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: screenWidth / 4,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('ถัดไป', style: GobalStyles.text3),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: GobalStyles.successButtonColor,
                      padding: EdgeInsets.symmetric(
                          vertical: screenWidth / 80,
                          horizontal: screenWidth / 11),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
