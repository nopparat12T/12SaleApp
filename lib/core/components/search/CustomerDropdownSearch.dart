import 'dart:convert';

import 'package:_12sale_app/data/models/Customer.dart';
import 'package:_12sale_app/core/styles/gobalStyle.dart';
import 'package:_12sale_app/data/repositories/apiService.dart';
import 'package:dio/dio.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class CustomerDropdownSearch extends StatefulWidget {
  // final List<CustomerModel> customerModel;
  // final VoidCallback onPressed;

  const CustomerDropdownSearch({
    Key? key,

    // required this.onPressed,
  }) : super(key: key);

  @override
  State<CustomerDropdownSearch> createState() => _CustomerDropdownSearchState();
}

class _CustomerDropdownSearchState extends State<CustomerDropdownSearch> {
  CustomerModel? _selectedCustomer;
  List<CustomerModel> customerList = [];
  @override
  Widget build(BuildContext context) {
    return DropdownSearch<CustomerModel>(
      items: customerList,

      dropdownButtonProps: const DropdownButtonProps(
        icon: Padding(
          padding: EdgeInsets.only(right: 2.0),
          child: Icon(
            Icons.search,
            size: 20,
            color: Colors.black54,
          ),
        ),
      ),
      dropdownDecoratorProps: const DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
          // labelText: "Customer",
          hintText: "Select Customer",
          labelStyle: const TextStyle(
            fontSize: 20, // Adjust the label font size
            color: Colors.black, // Set the color of the label
            fontWeight: FontWeight.bold, // Optional: Change font weight
          ),
          floatingLabelBehavior: FloatingLabelBehavior
              .always, // Always show the label above the dropdown
          filled: true,
          fillColor:
              Colors.white, // Optional: Set background color for the dropdown
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(8)), // Customize the border radius
            borderSide: BorderSide(
              color: Color.fromARGB(255, 100, 100, 100), // Border color
              width: 1, // Border width
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(8)), // Border radius when enabled
            borderSide: BorderSide(
              color: Color.fromARGB(
                  255, 100, 100, 100), // Border color for enabled state
              width: 1,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(8)), // Border radius when focused
            borderSide: BorderSide(
              color: Colors.indigo, // Border color for focused state
              width: 1.5,
            ),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 20), //
        ),
      ),
      onChanged: (CustomerModel? data) => setState(() {
        // Users.customer = data!.name.toString();
        _selectedCustomer = data;
      }),
      selectedItem: _selectedCustomer,
      asyncItems: (filter) => getCustomers(),
      // compareFn: (i, s) => i.isEqual(s),
      popupProps: PopupPropsMultiSelection.menu(
        showSearchBox: true,
        itemBuilder: _customCustomer,
      ),
    );
  }

  Future<List<CustomerModel>> getCustomers() async {
    try {
      ApiService apiService = ApiService();
      await apiService.init(); // Load .env before making any API calls

      var response = await apiService.request(
        endpoint:
            'erp/customer/', // You only need to pass the endpoint, the base URL is handled
        method: 'POST',
        body: {
          "customerNo": "VB20700031",
        },
      );
      print("ApiService: $response}");

      // // Checking if data is not null and returning the list of CustomerModel
      if (response != null) {
        return CustomerModel.fromJsonList(response);
      }
      return [];
    } catch (e) {
      print("Error occurred: $e");
      return [];
    }
  }

  Widget _customCustomer(
      BuildContext context, CustomerModel item, bool isSelected) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 0),
          padding: const EdgeInsets.symmetric(vertical: 0),
          decoration: !isSelected
              ? null
              : BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
          child: ListTile(
            selected: isSelected,
            title: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'ร้าน ${item.customerName}\n',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: GobalStyles.primaryColor,
                    ),
                  ),
                  const TextSpan(
                    text: 'รหัสร้าน : ',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: '${item.customerNo} \n',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[600],
                    ),
                  ),
                  const TextSpan(
                    text: 'เลขที่ : ',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: '${item.customerNo} \n',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[600],
                    ),
                  ),
                  const TextSpan(
                    text: 'ที่อยู่ : ',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: '${item.customerAddress1} ${item.customerPoscode}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const Divider(
          color: Colors.grey, // Color of the divider line
          thickness: 1, // Thickness of the line
          indent: 16, // Left padding for the divider line
          endIndent: 16, // Right padding for the divider line
        ),
      ],
    );
  }
}