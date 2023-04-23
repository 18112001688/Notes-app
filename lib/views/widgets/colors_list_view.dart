import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});

  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 34,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 34,
            backgroundColor: color,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({
    super.key,
  });

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xff79B473),
    Color(0xff41658A),
    Color(0xff414073),
    Color(0xff4C3957),
    Color(0xffDBF9F4),
    Color(0xffE6FDFF),
    Color(0xffD9D7DD),
    Color(0xffB07BAC),
    Color(0xff5F7367),
  ];
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
                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index,
                color: colors[index],
              ),
            )),
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
