import 'dart:convert';

import 'package:_12sale_app/core/components/Appbar.dart';
import 'package:_12sale_app/core/components/card/CartCard.dart';
import 'package:_12sale_app/core/components/table/CartSTable.dart';
import 'package:_12sale_app/core/page/route/OrderScreen.dart';
import 'package:_12sale_app/core/page/route/PromotionScreen.dart';

import 'package:_12sale_app/core/styles/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShoppingCartScreen extends StatefulWidget {
  final String customerNo;
  final String customerName;
  final String status;

  const ShoppingCartScreen(
      {super.key,
      required this.customerNo,
      required this.customerName,
      required this.status});
  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  Map<String, dynamic>? _jsonString;
  int count = 4;
  double price = 2000.0;
  @override
  void initState() {
    super.initState();
    _loadJson();
  }

  Future<void> _loadJson() async {
    String jsonString = await rootBundle.loadString('lang/main-th.json');
    setState(() {
      _jsonString = jsonDecode(jsonString)["route"]["shop_cart_screen"];
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppbarCustom(
            title: " ${_jsonString?["title"] ?? 'Order Cart'}",
            icon: Icons.shopping_cart_outlined),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("รหัสร้าน ${widget.customerNo}",
                style: Styles.black24(context)),
            Text("ร้าน ${widget.customerName}", style: Styles.black24(context)),
            Align(
              alignment: Alignment.center,
              child: Text(
                "${_jsonString?["item_selected"] ?? 'Item Selected'}",
                style: Styles.black24(context),
              ),
            ),
            Expanded(
              flex: 8,
              child: Row(
                children: [
                  Expanded(
                    // Use Expanded here for the container to take available width
                    child: Container(
                      height: double
                          .infinity, // Expands to the maximum height availableF
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(
                                0.2), // Shadow color with transparency
                            spreadRadius: 2, // Spread of the shadow
                            blurRadius: 8, // Blur radius of the shadow
                            offset: const Offset(0,
                                4), // Offset of the shadow (horizontal, vertical)
                          ),
                        ],
                        // border: Border.all(color: Colors.grey),
                        // borderRadius: BorderRadius.circular(10),
                      ),
                      child: CartCard(onDetailsPressed: () {}),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: screenWidth / 2.3,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Orderscreen(
                              customerNo: widget.customerNo,
                              customerName: widget.customerName,
                              status: widget.status),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Styles.primaryColor,
                      // padding: EdgeInsets.symmetric(
                      //     vertical: screenWidth / 85,
                      //     horizontal: screenWidth / 17),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                        '${_jsonString?["select_item"] ?? 'Select Item'}',
                        style: Styles.white18(context)),
                  ),
                ),
                SizedBox(
                  width: screenWidth / 2.3,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Promotionscreen(
                            customerName: widget.customerName,
                            customerNo: widget.customerNo,
                            status: widget.status,
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Styles.successButtonColor,
                      // padding: EdgeInsets.symmetric(
                      //     vertical: screenWidth / 80,
                      //     horizontal: screenWidth / 17),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                        '${_jsonString?["create_order"] ?? 'Create Order'}',
                        style: Styles.white18(context)),
                  ),
                ),
              ],
            ),
            const Divider(
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${_jsonString?["qty"] ?? 'Quantity'}",
                    style: Styles.black24(context)),
                Row(
                  children: [
                    Text("$count    ", style: Styles.black24(context)),
                    Text("${_jsonString?["item"] ?? '    Items'}",
                        style: Styles.black24(context)),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${_jsonString?["amount"] ?? 'Amount'}",
                    style: Styles.black24(context)),
                Row(
                  children: [
                    Text("$price          ", style: Styles.black24(context)),
                    Text("${_jsonString?["bath"] ?? 'Bath'}",
                        style: Styles.black24(context)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
