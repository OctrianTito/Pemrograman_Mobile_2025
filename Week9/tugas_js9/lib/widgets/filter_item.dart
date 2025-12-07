import 'package:flutter/material.dart';
import 'dart:io';

class FilterItem extends StatelessWidget {
  final Color color;
  final String imagePath;
  final VoidCallback onFilterSelected;

  const FilterItem({
    super.key,
    required this.color,
    required this.imagePath,
    required this.onFilterSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onFilterSelected,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ClipOval(
            child: Container(
              color: Colors.grey[900],
              child: Image.file(
                File(imagePath),
                color: Color.fromRGBO(
                  (color.r * 255.0).round() & 0xff,
                  (color.g * 255.0).round() & 0xff,
                  (color.b * 255.0).round() & 0xff,
                  0.5,
                ),
                colorBlendMode: BlendMode.hardLight,
                fit: BoxFit.cover,
                cacheWidth: 150,
                frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                  if (frame == null) {
                    return const Center(
                      child: SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white54),
                        ),
                      ),
                    );
                  }
                  return child;
                },
                errorBuilder: (context, error, stackTrace) {
                  return const Center(
                    child: Icon(
                      Icons.image,
                      color: Colors.white54,
                      size: 30,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}