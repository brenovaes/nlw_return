import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nlw_return/app/modules/home/controllers/home_controller.dart';

class ThirdModalBottomSheetPage extends StatelessWidget {
  const ThirdModalBottomSheetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildContent();
  }

  Column _buildContent() {
    final controller = Get.find<HomeController>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Image(
          image: AssetImage(
            'assets/images/Success.png',
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Agradecemos o feedback!',
          style: TextStyle(
            color: Color(0xFFF4F4F5),
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          width: 173,
          height: 40,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(
                4,
              ),
            ),
          ),
          child: ElevatedButton(
            onPressed: () => controller.currentView.value = 0,
            child: const Text(
              'Quero enviar outro',
              style: TextStyle(
                color: Color(0xFFF4F4F5),
                fontSize: 14,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                const Color(0xFF27272A),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
