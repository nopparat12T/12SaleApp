import 'package:_12sale_app/components/Appbar.dart';
import 'package:_12sale_app/components/button/CartButton.dart';
import 'package:_12sale_app/components/table/CartTable.dart';
import 'package:_12sale_app/components/table/TableFullData.dart';
import 'package:_12sale_app/styles/gobalStyle.dart';
import 'package:flutter/material.dart';

class Orderscreen extends StatefulWidget {
  final String day;
  final String customerName;
  final String status;

  const Orderscreen(
      {super.key,
      required this.day,
      required this.customerName,
      required this.status});

  @override
  State<Orderscreen> createState() => _OrderscreenState();
}

class _OrderscreenState extends State<Orderscreen> {
  @override
  String dropdownValue = 'แบรนด์'; // Default value
  int cartItemCount = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppbarCustom(title: " การสั่งซื้อสินค้า", icon: Icons.event),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.all(8.0),
        // color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("รหัสร้าน 10334587", style: GobalStyles.kanit32),
            Text(
              "ร้าน เจริญพรค้าขาย",
              style: GobalStyles.kanit32,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.only(right: 10),
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[300], // Light grey background
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(5), // Rounded corners
                          borderSide: BorderSide.none, // Remove border
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8), // Padding for the dropdown
                      ),
                      value: dropdownValue,
                      icon: const Icon(
                        Icons.chevron_left,
                        size: 25,
                      ), // Icon on the right (chevron)
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      items: <String>[
                        'แบรนด์',
                        'Option 1',
                        'Option 2',
                        'Option 3'
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300], // Light grey background
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(5), // Rounded corners
                        borderSide: BorderSide.none, // Remove border
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8), // Padding for the dropdown
                    ),
                    value: dropdownValue,
                    icon: const Icon(
                      Icons.chevron_left,
                      size: 25,
                    ), // Icon on the right (chevron)
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    items: <String>[
                      'แบรนด์',
                      'Option 1',
                      'Option 2',
                      'Option 3'
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.only(right: 10),
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[300], // Light grey background
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(5), // Rounded corners
                          borderSide: BorderSide.none, // Remove border
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8), // Padding for the dropdown
                      ),
                      value: dropdownValue,
                      icon: const Icon(
                        Icons.chevron_left,
                        size: 25,
                      ), // Icon on the right (chevron)
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      items: <String>[
                        'แบรนด์',
                        'Option 1',
                        'Option 2',
                        'Option 3'
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300], // Light grey background
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(5), // Rounded corners
                        borderSide: BorderSide.none, // Remove border
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8), // Padding for the dropdown
                    ),
                    value: dropdownValue,
                    icon: const Icon(
                      Icons.chevron_left,
                      size: 25,
                    ), // Icon on the right (chevron)
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    items: <String>[
                      'แบรนด์',
                      'Option 1',
                      'Option 2',
                      'Option 3'
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: Text(
                "รายการสินค้า",
                style: GobalStyles.kanit32,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const CartTable(),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "รวมราคา 38000.00",
                style: GobalStyles.kanit32,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: const Cartbutton(),
    );
  }
}
