import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';


class ShowPhotosModal extends StatelessWidget {
  const ShowPhotosModal({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Container(
          //   width: 360,
          //   height: 640,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: NetworkImage(image),
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          SizedBox(
            width: 360,
            height: 640,
            child: CachedNetworkImage(
              imageUrl: image,
              fit: BoxFit.cover,
              placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.close,
              size: 20.0,
            ),
            label: const Text('Close'),
          )
        ],
      ),

    );
  }
}