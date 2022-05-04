import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nlw_return/app/modules/home/controllers/home_controller.dart';
import 'package:nlw_return/app/ui/theme/phosphor_icons.dart';

class SecondModalBottomSheetPage extends StatelessWidget {
  SecondModalBottomSheetPage({Key? key}) : super(key: key);

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return _buildContent();
  }

  Padding _buildContent() {
    final controller = Get.find<HomeController>();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Scrollbar(
            controller: _scrollController,
            isAlwaysShown: true,
            radius: const Radius.circular(4),
            child: Obx(
              () => TextFormField(
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF8257E5),
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFA1A1AA),
                    ),
                  ),
                  contentPadding: const EdgeInsets.all(8),
                  hintText: controller.pagesDescription[
                          controller.selectedCard.value as int]['placeholder']
                      as String,
                  hintStyle: const TextStyle(
                    color: Color(0xFFA1A1AA),
                  ),
                ),
                minLines: 4,
                maxLines: 4,
                style: const TextStyle(
                  color: Color(0xFFF4F4F5),
                  fontSize: 14,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF27272A),
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                width: 40,
                height: 40,
                child: IconButton(
                  onPressed: () => print('camera'),
                  icon: const Icon(
                    Phosphor.camera,
                    color: Color(0xFFF4F4F5),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xFF8257E5),
                      ),
                    ),
                    onPressed: () => controller.currentView.value++,
                    child: const Text(
                      'Enviar feedback',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
