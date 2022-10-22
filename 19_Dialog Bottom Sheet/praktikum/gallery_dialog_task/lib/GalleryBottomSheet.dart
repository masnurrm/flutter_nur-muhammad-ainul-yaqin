import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class GalleryBottomSheet extends StatelessWidget {
  const GalleryBottomSheet({super.key, required this.image, required this.description});
  final String image;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          // Container(
          //   width: (MediaQuery.of(context).size.width)/2.5,
          //   height: (MediaQuery.of(context).size.width)/2.5,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(10),
          //     image: DecorationImage(
          //       image: NetworkImage(image),
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          SizedBox(
            width: (MediaQuery.of(context).size.width)/2.5,
            height: (MediaQuery.of(context).size.width)/2.5,
            child: CachedNetworkImage(
              imageUrl: image,
              fit: BoxFit.cover,
              placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          SizedBox(
            width: (MediaQuery.of(context).size.width)/2,
            child: Text(description),
          ),
        ],
      ),

      // child: Column(
      //   children: [
      //      Container(
      //       width: 360,
      //       height: 640,
      //       decoration: BoxDecoration(
      //         image: DecorationImage(
      //           image: NetworkImage(image),
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //     ),
      //     const SizedBox(
      //       height: 16,
      //     ),
      //     Text(description),
      //   ],
      // ),
    );
  }
}