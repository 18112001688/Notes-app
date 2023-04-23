import 'package:flutter/material.dart';
import 'package:notes_app/constant/constant.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/colors_list_view.dart';

class EditNotesColorsList extends StatefulWidget {
  const EditNotesColorsList({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNotesColorsList> createState() => _EditNotesColorsListState();
}

class _EditNotesColorsListState extends State<EditNotesColorsList> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kcolors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kcolors[index].value;
                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index,
                color: kcolors[index],
              ),
            )),
        itemCount: kcolors.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
