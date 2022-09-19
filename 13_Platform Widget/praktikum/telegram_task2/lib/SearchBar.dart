// ignore: file_names
import 'package:flutter/cupertino.dart';


class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 0),
      color: CupertinoColors.white,
      height: 50,
      width: double.infinity,
      child: CupertinoSearchTextField(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color.fromARGB(255, 240, 240, 240),
        ),
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
        placeholder: "Search Here",
        prefixIcon: const Icon(
          CupertinoIcons.search,
          color: CupertinoColors.systemGrey,
        ),
      ),
    );
  }
}
