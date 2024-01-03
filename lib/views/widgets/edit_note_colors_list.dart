import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/color_item.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  List<Color> colors = const [
    Color(0xff227c9d),
    Color(0xff17c3b2),
    Color(0xffffcb77),
    Color(0xffa4a9ad),
    Color(0xfffe6d73)
  ];

  late int currentIndex;
  @override
  void initState() {
    // TODO: implement initState
    currentIndex = colors.indexOf(Color(widget.note.color));
    super.initState();
  }

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
                    widget.note.color = colors[index].value;
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
