import 'package:flutter/material.dart';
import 'first.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool isExpanded1 = false;
  bool isExpanded2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internet'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              color: Colors.yellow[100],
              child: Row(
                children: [
                  SizedBox(width: 8.0),
                  Expanded(
                    child: Text(
                      'Perlu diketahui, proses verifikasi transaksi dapat memakan waktu hingga 1x24 jam.',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            ExpansionTile(
              title: Text('Rp450.000'),
              subtitle: Text('Due date on 16 Feb 2024'),
              trailing: Checkbox(
                value: true,
                onChanged: (bool? value) {},
              ),
              onExpansionChanged: (bool expanded) {
                setState(() {
                  isExpanded1 = expanded;
                });
              },
              children: isExpanded1
                  ? [
                      ListTile(
                        title: Center(child: Text('Provider: Nethome')),
                      ),
                      ListTile(
                        title:
                            Center(child: Text('ID Pelanggan: 1123645718921')),
                      ),
                      ListTile(
                        title: Center(
                            child: Text('Paket Layanan: Nethome 100 Mbps')),
                      ),
                    ]
                  : [],
            ),
            SizedBox(height: 16.0),
            ExpansionTile(
              title: Text('Rp240.000'),
              subtitle: Text('Due date on 20 Feb 2024'),
              trailing: Checkbox(
                value: false,
                onChanged: (bool? value) {},
              ),
              onExpansionChanged: (bool expanded) {
                setState(() {
                  isExpanded2 = expanded;
                });
              },
              children: isExpanded2
                  ? [
                      ListTile(
                        title: Center(child: Text('Provider: Bizzcom')),
                      ),
                      ListTile(
                        title:
                            Center(child: Text('ID Pelanggan: 2233645718921')),
                      ),
                      ListTile(
                        title: Center(
                            child: Text('Paket Layanan: Bizzcom 50 Mbps')),
                      ),
                    ]
                  : [],
            ),
            SizedBox(height: 16.0),
            ListTile(
              title: Text('Transaction History'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TransactionHistoryPage(),
                  ),
                );
              },
            ),
            Spacer(),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Payment'),
                Text('Rp450.000',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 8.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(244, 67, 54, 1),
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {},
              child: Text('PAY NOW', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
