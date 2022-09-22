import 'package:flutter/material.dart';

class IconScreen extends StatefulWidget {
  const IconScreen({super.key});

  @override
  State<IconScreen> createState() => _IconScreenState();
}

class _IconItem {
  final IconData icon;

  _IconItem(this.icon);
}


class _IconScreenState extends State<IconScreen> {
  List iconList = [
    _IconItem(Icons.pets),
    _IconItem(Icons.pregnant_woman),
    _IconItem(Icons.spatial_audio_off_rounded),
    _IconItem(Icons.rounded_corner),
    _IconItem(Icons.rowing),
    _IconItem(Icons.timeline),
    _IconItem(Icons.update),
    _IconItem(Icons.access_time_filled),
    _IconItem(Icons.back_hand),
    _IconItem(Icons.euro),
    _IconItem(Icons.g_translate),
    _IconItem(Icons.remove_shopping_cart),
    _IconItem(Icons.restore_page),
    _IconItem(Icons.speaker_notes_off),
    _IconItem(Icons.delete_forever),
    _IconItem(Icons.accessibility),
    _IconItem(Icons.check_circle_outline),
    _IconItem(Icons.delete_outline),
    _IconItem(Icons.done_outline),
    _IconItem(Icons.maximize),
    _IconItem(Icons.minimize),
    _IconItem(Icons.offline_bolt_rounded),
    _IconItem(Icons.swap_horizontal_circle),
    _IconItem(Icons.accessible_forward)
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('GridView'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            itemBuilder: (context, position) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Center(
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),                              
                            ),
                            color: Colors.lightBlueAccent,
                            // elevation: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(
                                iconList[position].icon,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                          )
                        )
                      ],
                    )
                  ),
                );
            },
            itemCount: iconList.length,
          )
        )
      ),
    );
  }
}