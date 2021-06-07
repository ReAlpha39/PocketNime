import 'package:anipocket/utils/widget_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimeOverviewCard extends StatefulWidget {
  final String? titleCard;
  final String? value;
  final String nullMessage;
  const AnimeOverviewCard({
    Key? key,
    this.titleCard,
    this.value,
    this.nullMessage = "none",
  }) : super(key: key);

  @override
  _AnimeOverviewCardState createState() => _AnimeOverviewCardState();
}

class _AnimeOverviewCardState extends State<AnimeOverviewCard> {
  Size? textSize;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        child: Column(
          children: [
            Center(
              child: Container(
                width: textSize?.width == null ? 50 : textSize!.width + 20,
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade50,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                ),
                height: 30,
                child: Center(
                  child: Text(widget.titleCard!),
                ),
              ),
            ),
            WidgetSize(
              onChange: (Size size) {
                setState(() {
                  textSize = size;
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                height: 40,
                width: Get.width <= 1000 ? null : 225,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
                child: Center(
                  child: Text(widget.value == null
                      ? widget.nullMessage
                      : widget.value!),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
