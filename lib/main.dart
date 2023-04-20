import 'package:flutter/material.dart';
import 'package:flutter_application_carrot/detail_page.dart';
import 'carrot_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<CarrotItem> items = [];
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    items.add(
      CarrotItem(title: '피자팝니다1.', addr: '성남시 중원구1', price: 10021300),
    );
    items.add(
      CarrotItem(title: '피자팝니다2.', addr: '성남시 중원구2', price: 10003210),
    );
    items.add(
      CarrotItem(title: '피자팝니다3.', addr: '성남시 중원구3', price: 10123000),
    );
    items.add(
      CarrotItem(title: '피자팝니다5.', addr: '성남시 중원구4', price: 10000123),
    );
    items.add(
      CarrotItem(title: '피자팝니다6.', addr: '성남시 중원구5', price: 10000123),
    );
    items.add(
      CarrotItem(title: '피자팝니다7.', addr: '성남시 중원구6', price: 10000123),
    );
    items.add(
      CarrotItem(title: '피자팝니다8.', addr: '성남시 중원구7', price: 10000123),
    );
    items.add(
      CarrotItem(title: '피자팝니다9.', addr: '성남시 중원구8', price: 10000123),
    );
    return MaterialApp(home: HomePage(items: items));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.items,
  });

  final List<CarrotItem> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Malbob market'),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var item in items)
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(price: item.price),
                        ));
                  },
                  child: item)
          ],
        ),
      ),
    );
  }
}
