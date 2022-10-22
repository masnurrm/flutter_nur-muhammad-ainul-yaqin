import 'package:flutter/material.dart';
import 'ShowPhotosModal.dart';
import 'GalleryBottomSheet.dart';
import 'package:cached_network_image/cached_network_image.dart';

class imageItem {
  final String image;
  final String description;

  imageItem(this.image, this.description);
}

class GalleryScreen extends StatelessWidget {
  List imageList = [
    // imageItem("./assets/ryujin1.jpg", "Ryujin merupakan member dari salah satu grup KPOP terkenal bernama ITZY"),
    // imageItem("./assets/ryujin2.jpg", "Ryujin merupakan member dari salah satu grup KPOP terkenal bernama ITZY"),
    // imageItem("./assets/ryujin3.jpg", "Ryujin merupakan member dari salah satu grup KPOP terkenal bernama ITZY"),
    // imageItem("./assets/ryujin4.jpg", "Ryujin merupakan member dari salah satu grup KPOP terkenal bernama ITZY"),
    // imageItem("./assets/ryujin5.jpg", "Ryujin merupakan member dari salah satu grup KPOP terkenal bernama ITZY"),
    // imageItem("./assets/ryujin6.jpg", "Ryujin merupakan member dari salah satu grup KPOP terkenal bernama ITZY"),
    // imageItem("./assets/ryujin7.jpg", "Ryujin merupakan member dari salah satu grup KPOP terkenal bernama ITZY"),
    // imageItem("./assets/ryujin8.jpg", "Ryujin merupakan member dari salah satu grup KPOP terkenal bernama ITZY"),
    // imageItem("./assets/ryujin9.jpg", "Ryujin merupakan member dari salah satu grup KPOP terkenal bernama ITZY"),
    // imageItem("./assets/ryujin10.jpg", "Ryujin merupakan member dari salah satu grup KPOP terkenal bernama ITZY"),
    // imageItem("./assets/ryujin11.jpg", "Ryujin merupakan member dari salah satu grup KPOP terkenal bernama ITZY"),
    // imageItem("./assets/ryujin12.jpg", "Ryujin merupakan member dari salah satu grup KPOP terkenal bernama ITZY"),
    // imageItem("./assets/ryujin13.jpg", "Ryujin merupakan member dari salah satu grup KPOP terkenal bernama ITZY"),
    // imageItem("./assets/ryujin14.jpg", "Ryujin merupakan member dari salah satu grup KPOP terkenal bernama ITZY"),
    // imageItem("./assets/ryujin15.jpg", "Ryujin merupakan member dari salah satu grup KPOP terkenal bernama ITZY"),
    imageItem("https://img.celebrities.id/okz/700/46YC3M/master_48t3I3KE4S_554_ryujin_itzy.jpg", "Ryujin merupakan member dari salah satu grup KPOP terkenal bernama ITZY"),
    imageItem("https://img.celebrities.id/okz/700/46YC3M/master_48t3I3KE4S_554_ryujin_itzy.jpg", "Ryujin merupakan member dari salah satu grup KPOP terkenal bernama ITZY"),
    imageItem("https://img.celebrities.id/okz/700/46YC3M/master_48t3I3KE4S_554_ryujin_itzy.jpg", "Ryujin merupakan member dari salah satu grup KPOP terkenal bernama ITZY"),
    imageItem("https://img.celebrities.id/okz/700/46YC3M/master_48t3I3KE4S_554_ryujin_itzy.jpg", "Ryujin merupakan member dari salah satu grup KPOP terkenal bernama ITZY"),
    imageItem("https://img.celebrities.id/okz/700/46YC3M/master_48t3I3KE4S_554_ryujin_itzy.jpg", "Ryujin merupakan member dari salah satu grup KPOP terkenal bernama ITZY"),
    imageItem("https://img.celebrities.id/okz/700/46YC3M/master_48t3I3KE4S_554_ryujin_itzy.jpg", "Ryujin merupakan member dari salah satu grup KPOP terkenal bernama ITZY"),
    imageItem("https://img.celebrities.id/okz/700/46YC3M/master_48t3I3KE4S_554_ryujin_itzy.jpg", "Ryujin merupakan member dari salah satu grup KPOP terkenal bernama ITZY"),
    imageItem("https://img.celebrities.id/okz/700/46YC3M/master_48t3I3KE4S_554_ryujin_itzy.jpg", "Ryujin merupakan member dari salah satu grup KPOP terkenal bernama ITZY"),
    
  ];  
  
  GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text(
            'Ryujin Album', 
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontFamily: 'Helvetica'),
          ),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 0,
            mainAxisSpacing: 0,
            crossAxisCount: 3,
          ),
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onLongPress: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return ShowPhotosModal(
                      image: imageList[index].image,
                      // description: imageList[index].description,
                    );
                  },
                );
              },
              onTap: () {
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    )
                  ),
                  context: context, 
                  builder: (context) {
                    return GalleryBottomSheet(
                      image: imageList[index].image,
                      description: imageList[index].description,
                    );
                  },
                );
              },
              child: SizedBox(
                width: 100,
                height: 100,
                child: CachedNetworkImage(
                  imageUrl: imageList[index].image,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              // child: CachedNetworkImage(
              //   key: UniqueKey(),
              //   imageUrl: imageList[index].image,
              //   fit: BoxFit.cover,
              //   placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
              //   errorWidget: (context, url, error) => const Icon(Icons.error),
              //   // maxHeightDiskCache: 100,
              // ),
              // child: Container(
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       fit: BoxFit.cover,
              //       image: NetworkImage(imageList[index].image),
              //     ),
              //   ),
              // ),
            );
          },
        ),
      ),
    );
  }
}