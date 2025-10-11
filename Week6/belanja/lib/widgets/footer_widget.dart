import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  final String name;
  final String nim;

  const FooterWidget({
    super.key,
    required this.name,
    required this.nim,
  });

  @override
 Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.blue,
      child: Container(
        padding: const EdgeInsets.all(8),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Octrian Adiluhung Tito Putra'
              '\n2341720054',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}