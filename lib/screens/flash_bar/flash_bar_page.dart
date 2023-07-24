import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';

class FlashBarPage extends StatefulWidget {
  const FlashBarPage({super.key});

  @override
  State<FlashBarPage> createState() => _FlashBarPageState();
}

class _FlashBarPageState extends State<FlashBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flash bar'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.showToast(const Text('message (Queue)'));
          },
          child: const Text('Click me'),
        ),
      ),
    );
  }
}
