import 'package:flutter/material.dart';

final ValueNotifier<int> number = ValueNotifier(0);

class notifi extends StatelessWidget {
  const notifi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 400),
              child: FloatingActionButton(
                backgroundColor: Colors.blueGrey,
                onPressed: () {
                  number.value += 1;
                },
                child: Icon(Icons.add),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ValueListenableBuilder(
              valueListenable: number,
              builder: (context, value, child) {
                return Text(
                  '$value',
                  style: TextStyle(fontSize: 30),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
