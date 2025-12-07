import 'package:flutter/material.dart';
import 'dart:io';
import '../widgets/filter_carousel.dart';

class FilterScreen extends StatefulWidget {
  final String imagePath;

  const FilterScreen({super.key, required this.imagePath});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  final _filterColor = ValueNotifier<Color>(Colors.white);

  void _onFilterChanged(Color color) {
    _filterColor.value = color;
  }

  @override
  void dispose() {
    _filterColor.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Apply Filter'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          // Gambar dengan filter warna
          Positioned.fill(
            child: _buildPhotoWithFilter(),
          ),
          // Filter carousel di bawah
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: _buildFilterSelector(),
          ),
        ],
      ),
    );
  }

  Widget _buildPhotoWithFilter() {
    return ValueListenableBuilder<Color>(
      valueListenable: _filterColor,
      builder: (context, color, child) {
        return Image.file(
          File(widget.imagePath),
          color: Color.fromRGBO(
            (color.r * 255.0).round() & 0xff,
            (color.g * 255.0).round() & 0xff,
            (color.b * 255.0).round() & 0xff,
            0.5,
          ),
          colorBlendMode: BlendMode.color,
          fit: BoxFit.cover,
        );
      },
    );
  }

  Widget _buildFilterSelector() {
    return FilterCarousel(
      imagePath: widget.imagePath,
      onFilterChanged: _onFilterChanged,
    );
  }
}