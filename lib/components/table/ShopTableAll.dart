import 'package:_12sale_app/page/route/OrderDetailScreen.dart';
import 'package:_12sale_app/page/shop/DetailShopScreen.dart';
import 'package:_12sale_app/styles/gobalStyle.dart';
import 'package:flutter/material.dart';

class ShopTableAll extends StatefulWidget {
  const ShopTableAll({super.key});

  @override
  State<ShopTableAll> createState() => _ShopTableAll();
}

class _ShopTableAll extends State<ShopTableAll> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        height: screenWidth / 2.5,
        margin: EdgeInsets.all(
            screenWidth / 50), // Adds space around the entire table
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
              16), // Rounded corners for the outer container
          border: Border.all(color: Colors.grey, width: 1), // Outer border
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Fixed header
            Container(
              decoration: const BoxDecoration(
                color: GobalStyles.backgroundTableColor,
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(16)), // Rounded corners at the top
              ),
              child: Row(
                children: [
                  _buildHeaderCell('รหัสร้านค้า'),
                  _buildHeaderCellName('ชื่อร้านค้า', screenWidth / 3.5),
                  _buildHeaderCell('เส้นทาง'),
                  _buildHeaderCell('ที่อยู่'),
                ],
              ),
            ),
            // Scrollable content
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    _buildDataRow(
                        'MBE23000001', 'เจ๊กุ้ง', 'R01', 'สวนหลวง', 0, context),
                    _buildDataRow('MBE23000002', 'บริษัท ขายของชำไม่จำกัด',
                        'R03', 'บางกะปิ', 1, context),
                    _buildDataRow('MBE23000003', 'บริษัท ขายส้มตำ จำกัด', 'R01',
                        'ดินแดง', 2, context),
                    _buildDataRow('MBE23000004', 'บริษัท ขายส้มตำภาษี จำกัด',
                        'R01', 'คลองสาน', 3, context),
                    _buildDataRow('MBE23000005', 'บริษัท เก่งกำไรจำกัด มหาชน',
                        'R10', 'จตุจักร', 4, context),
                    _buildDataRow('MBE23000006', 'ร้านลุงอ่อย ขายส้มตำ', 'R08',
                        'ดินแดง', 5, context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDataRow(String customerNo, String customerName, String route,
      String address, int index, BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // Alternate row background color
    Color rowBgColor =
        (index % 2 == 0) ? Colors.white : GobalStyles.backgroundTableColor;

    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailShopScreen(
                  customerNo: customerNo, customerName: customerName)),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: rowBgColor,
        ),
        child: Row(
          children: [
            Expanded(child: _buildTableCell(customerNo, Alignment.centerLeft)),
            _buildTableCellName(customerName, screenWidth / 3.5),
            Expanded(child: _buildTableCell(route, Alignment.center)),
            Expanded(child: _buildTableCell(address, Alignment.center)),
          ],
        ),
      ),
    );
  }

  Widget _buildTableCellName(String text, double width) {
    return Container(
      alignment: Alignment.centerLeft,
      width: width,
      padding: EdgeInsets.all(8),
      child: Text(text, style: GobalStyles.kanit18),
    );
  }

  Widget _buildTableCell(String text, Alignment alignment) {
    return Container(
      alignment: alignment,
      padding: EdgeInsets.all(8),
      child: Text(text, style: GobalStyles.kanit18),
    );
  }

  Widget _buildHeaderCellName(String text, double width) {
    return Container(
      width: width,
      alignment: Alignment.center,
      padding: EdgeInsets.all(8),
      child: Text(
        text,
        style: GobalStyles.tableHeaderOrder,
      ),
    );
  }

  Widget _buildHeaderCell(String text) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(8),
        child: Text(
          text,
          style: GobalStyles.tableHeaderOrder,
        ),
      ),
    );
  }
}
