import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Malbob market'),
        backgroundColor: Colors.orange,
      ),
      body: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image:
                    const DecorationImage(image: AssetImage('images/피자.jpg'))),
          ),
          Flexible(
            flex: 1,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('피자팝니다.'),
                  const Text('성남시 중원구'),
                  const Text('10,000원'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [Icon(Icons.favorite), Text('12')],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}