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
          const SizedBox(
            width: 20,
          ),
          Flexible(
            flex: 1,
            child: SizedBox(
              height: 150,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('피자팝니다.',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const Divider(),
                  const Text(
                    '성남시 중원구',
                    style: TextStyle(
                        fontSize: 17, decoration: TextDecoration.underline),
                  ),
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
