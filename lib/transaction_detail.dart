import 'package:flutter/material.dart';

class TransactionDetailPage extends StatelessWidget {
  final String provider;
  final String date;
  final String amount;

  TransactionDetailPage({
    required this.provider,
    required this.date,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction Details'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Icon(
                    Icons.check_circle_outline,
                    size: 100,
                    color: Colors.green,
                  ),
                  Text(
                    amount,
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Pembayaran Berhasil',
                    style: TextStyle(color: Colors.green, fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text('Provider: $provider'),
            Text('ID Pelanggan: 1123645718921'),
            Text('Paket Layanan: Nethome 100 Mbps'),
            Text('No. Transaksi: BC444724669887648110'),
            Text('Waktu Transaksi: $date'),
            Text('Jumlah Tagihan: Rp450.000'),
            Text('Convenience Fee: Rp5.000'),
            Text('Payment Method: BCA Virtual Account'),
            Spacer(),
            Text(
              'Proses verifikasi transaksi dapat memakan waktu hingga 1x24 jam.',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
