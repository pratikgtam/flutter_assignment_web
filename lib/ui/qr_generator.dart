import 'package:flutter/material.dart';
import 'package:qr_bar_code/qr/src/qr_code.dart';

class QrGenerator extends StatefulWidget {
  const QrGenerator({super.key});

  @override
  State<QrGenerator> createState() => _QrGeneratorState();
}

class _QrGeneratorState extends State<QrGenerator> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'Enter text to generate QR code',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              child: const Text('Generate QR code'),
            ),
            const SizedBox(height: 20),
            if (_controller.text.isNotEmpty)
              SizedBox(
                  height: 200,
                  width: 200,
                  child: QRCode(data: _controller.text)),
          ],
        ),
      )),
    );
  }
}
