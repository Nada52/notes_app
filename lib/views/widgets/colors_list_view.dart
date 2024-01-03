import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xff227c9d),
    Color(0xff17c3b2),
    Color(0xffffcb77),
    Color(0xffa4a9ad),
    Color(0xfffe6d73)
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                child: ColorItem(
                  isActive: currentIndex == index,
                  color: colors[index],
                )),
          );
        },
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
