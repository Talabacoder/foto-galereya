import 'package:flutter/material.dart';

class PhotoDetailScreen extends StatelessWidget {
  final String imageUrl;

  const PhotoDetailScreen({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Fonni qora qilish
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: InteractiveViewer(
          // Foydalanuvchiga rasmni yaqinlashtirish (zoom) imkonini beradi
          child: Image.network(imageUrl),
        ),
      ),
    );
  }
}