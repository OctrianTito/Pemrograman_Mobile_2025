import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/item.dart';
import '../widgets/product_card.dart';
import '../widgets/footer_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      imageUrl: 'https://www.shutterstock.com/shutterstock/photos/2463705563/display_1500/stock-photo-granulated-sugar-in-a-wooden-cup-a-scattering-of-refined-sugar-cubes-2463705563.jpg',
      stok: 50,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      imageUrl: 'https://www.shutterstock.com/shutterstock/photos/2650860507/display_1500/stock-photo-iodized-salt-is-in-a-metal-container-bowl-laying-on-a-small-pile-of-salt-version-i-2650860507.jpg',
      stok: 100,
      rating: 4.8,
    ),
    Item(
      name: 'Rice',
      price: 50000,
      imageUrl: 'https://images.unsplash.com/photo-1586201375761-83865001e31c?w=400',
      stok: 30,
      rating: 4.7,
    ),
    Item(
      name: 'Cooking Oil',
      price: 25000,
      imageUrl: 'https://images.unsplash.com/photo-1474979266404-7eaacbcd87c5?w=400',
      stok: 45,
      rating: 4.3,
    ),
    Item(
      name: 'Eggs',
      price: 28000,
      imageUrl: 'https://images.unsplash.com/photo-1582722872445-44dc5f7e3c8f?w=400',
      stok: 60,
      rating: 4.6,
    ),
    Item(
      name: 'Milk',
      price: 15000,
      imageUrl: 'https://images.unsplash.com/photo-1550583724-b2692b85b150?w=400',
      stok: 75,
      rating: 4.9,
    ),
    Item(
      name: 'Bread',
      price: 12000,
      imageUrl: 'https://images.unsplash.com/photo-1509440159596-0249088772ff?w=400',
      stok: 40,
      rating: 4.4,
    ),
    Item(
      name: 'Coffee',
      price: 35000,
      imageUrl: 'https://images.unsplash.com/photo-1559056199-641a0ac8b55e?w=400',
      stok: 25,
      rating: 4.8,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Kulu-Kulu Marketplace',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(12),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return ProductCard(
                  item: item,
                  onTap: () {
                    // Pengiriman data menggunakan GoRouter dengan extra
                    context.push('/item', extra: item);
                  },
                );
              },
            ),
          ),
          const FooterWidget(
            name: 'Octrian Adiluhung Tito Putra',
            nim: '2341720078',
          ),
        ],
      ),
    );
  }
}