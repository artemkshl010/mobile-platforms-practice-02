import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: DemoPage()));
}

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  int count = 0;
  bool usePadding = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Лічильник: $count'),
            ElevatedButton(
              onPressed: () => setState(() => count++),
              child: const Text('Змінити текст'),
            ),
            if (usePadding)
              Padding(
                padding: const EdgeInsets.all(20),
                child: const Text('Приклад віджета'),
              )
            else
              Align(
                alignment: Alignment.center,
                child: const Text('Приклад віджета'),
              ),
            ElevatedButton(
              onPressed: () => setState(() => usePadding = !usePadding),
              child: const Text('Змінити тип віджета'),
            ),
          ],
        ),
      ),
    );
  }
}
