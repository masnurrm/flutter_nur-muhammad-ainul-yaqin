import 'package:flutter/material.dart';

class PreviewPost extends StatefulWidget {
  const PreviewPost({Key? key}) : super(key: key);

  @override
  State<PreviewPost> createState() => _PreviewPostState();
}

class _PreviewPostState extends State<PreviewPost> {
  // PreviewPostData(
  //     {Key? key,
  //     required this.imageFIle,
  //     required this.date,
  //     required this.selectionColor,
  //     required this.caption})
  //     : super(key: key);

  // final File imageFIle;
  // final String date;
  // final Map<String, dynamic> selectionColor;
  // final String caption;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Preview Post'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            // image
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(10),
              ),
              child: Image.network(
                'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/05/12/2540019708.jpg',
                width: 600,
                height: 400,
                fit: BoxFit.cover,
              ),
            ),
            
            // title section
            Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: const Text(
                            'Published: 02/03/2022',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
                  ),
                  const Text('Color: '),
                  const Icon(
                    Icons.circle,
                    color: Colors.red,
                  ),
                ]
              ),
            ),
            // text section
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Shin Ryu-jin atau lebih dikenal sebagai Ryujin, adalah seorang penyanyi rap, dan penari asal Korea Selatan. Ia merupakan anggota dari grup vokal wanita, ITZY di bawah kontrak JYP Entertainment.',
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      )
    );
  }
}