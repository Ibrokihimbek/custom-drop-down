import 'package:flutter/material.dart';

class CustomDropDownPage extends StatefulWidget {
  const CustomDropDownPage({super.key});

  @override
  State<CustomDropDownPage> createState() => _CustomDropDownPageState();
}

class _CustomDropDownPageState extends State<CustomDropDownPage> {
  bool isTapExpensionTile = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Drop Dwon'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Material(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('INTER NATION SCHOOL С1'),
                const SizedBox(height: 12),
                const Text('INTER NATION SCHOOL С1'),
                const SizedBox(height: 24),
                Visibility(
                  visible: isTapExpensionTile,
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('INTER NATION SCHOOL С1'),
                        SizedBox(height: 12),
                        Text('INTER NATION SCHOOL С1'),
                        SizedBox(height: 12),
                        Text('INTER NATION SCHOOL С1'),
                        SizedBox(height: 12),
                        Text('INTER NATION SCHOOL С1'),
                        SizedBox(height: 12),
                        Text('INTER NATION SCHOOL С1'),
                        SizedBox(height: 12),
                        Text('INTER NATION SCHOOL С1'),
                        SizedBox(height: 12),
                        Text('INTER NATION SCHOOL С1'),
                        SizedBox(height: 12),
                        Text('INTER NATION SCHOOL С1'),
                        SizedBox(height: 12),
                        Text('INTER NATION SCHOOL С1'),
                        SizedBox(height: 12),
                        Text('INTER NATION SCHOOL С1'),
                        SizedBox(height: 12),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isTapExpensionTile = !isTapExpensionTile;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text('Подробно'),
                      const SizedBox(width: 8),
                      Icon(
                        isTapExpensionTile
                            ? Icons.keyboard_arrow_up_rounded
                            : Icons.keyboard_arrow_down,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
