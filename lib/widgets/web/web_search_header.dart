import 'package:flutter/material.dart';
import 'package:google_search_engine/colors.dart';
import 'package:google_search_engine/screens/search_screen.dart';

class WebSearchHeader extends StatelessWidget {
  const WebSearchHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 28.0, right: 15, top: 4),
            child: Image.asset(
              'assets/images/google-logo.png',
              height: 30,
              width: 92,
            ),
          ),
          const SizedBox(width: 25),
          Container(
            width: size.width * 0.55,
            decoration: BoxDecoration(
              color: searchColor,
              borderRadius: BorderRadius.circular(22),
              border: Border.all(
                color: searchColor,
              ),
            ),
            height: 40,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                onSubmitted: (text) {
                  if (text.trim() != "") {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SearchScreen(
                          searchQuery: text.trim(),
                        ),
                      ),
                    );
                  }
                },
                style: const TextStyle(fontSize: 12),
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Icon(
            Icons.search,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
