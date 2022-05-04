import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nlw_return/app/modules/home/controllers/home_controller.dart';

class FirstModalBottomSheetPage extends StatelessWidget {
  const FirstModalBottomSheetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ModalBottomSheetCard(
          index: 0,
          imageAssetUrl: 'assets/images/Bug.png',
          title: 'Problema',
        ),
        const SizedBox(
          width: 8,
        ),
        ModalBottomSheetCard(
          index: 1,
          imageAssetUrl: 'assets/images/Idea.png',
          title: 'Ideia',
        ),
        const SizedBox(
          width: 8,
        ),
        ModalBottomSheetCard(
          index: 2,
          imageAssetUrl: 'assets/images/Thought.png',
          title: 'Outro',
        ),
      ],
    );
  }
}

class ModalBottomSheetCard extends StatelessWidget {
  final int index;
  final String title;
  final String imageAssetUrl;

  ModalBottomSheetCard({
    Key? key,
    required this.index,
    required this.title,
    required this.imageAssetUrl,
  }) : super(key: key);

  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          controller.currentView.value++;
          controller.selectedCard.value = index;
        },
        child: Container(
          height: 112,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            color: Color(0xFF27272A),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: AssetImage(imageAssetUrl),
              ),
              Text(
                title,
                style: const TextStyle(
                  color: Color(0xFFF4F4F5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
