import 'package:flutter/material.dart';
import 'description.dart';

class catalog extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'title': 'Смартфон Vivo',
      'price': '25,000 ₽',
      'description': 'Смартфон с отличной камерой и производительностью. Смартфон Vivo',
      'image': 'https://via.placeholder.com/150',
    },
    {
      'title': 'Ноутбук Asus',
      'price': '60,000 ₽',
      'description': 'Мощный ноутбук для работы и игр.',
      'image': 'https://via.placeholder.com/150',
    },
    {
      'title': 'Наушники AirPods',
      'price': '20,000 ₽',
      'description': 'Беспроводные наушники с шумоподавлением.',
      'image': 'https://via.placeholder.com/150',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
          title: Text(
            "Товары",
            style: TextStyle(color: Colors.white),
          ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(product: product),
                ),
              );
            },
            child: Card(
              color: Colors.grey.shade800,
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              shadowColor: Colors.black.withOpacity(0.5),
              elevation: 6,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product['title'],
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      product['price'],
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.green.shade400,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      product['description'],
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade800,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Купить',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}


