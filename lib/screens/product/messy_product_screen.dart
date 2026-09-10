import 'package:flutter/material.dart';

class MessyProductScreen extends StatefulWidget {
  const MessyProductScreen({super.key});
  @override
  State<MessyProductScreen> createState() => _MessyProductScreenState();
}

class _MessyProductScreenState extends State<MessyProductScreen> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network('https://picsum.photos/600/400'),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('កាហ្វេមណ្ឌលគិរី',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  const Text('៨,០០០ ៛', style: TextStyle(fontSize: 20)),
                  const SizedBox(height: 16),
                  const Text('គ្រាប់កាហ្វេ Arabica ដាំដុះនៅខេត្តមណ្ឌលគិរី...'),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () => setState(() => quantity--),
                        icon: const Icon(Icons.remove),
                      ),
                      Text('$quantity'),
                      IconButton(
                        onPressed: () => setState(() => quantity++),
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}