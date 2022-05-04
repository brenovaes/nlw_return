import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nlw_return/app/ui/theme/phosphor_icons.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF27272A),
        iconTheme: const IconThemeData(
          color: Color(0xFF3F3F46),
        ),
        actions: const [
          CircleAvatar(
            backgroundColor: Color(0xFF3F3F46),
          ),
          SizedBox(
            width: 16,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isDismissible: false,
            backgroundColor: const Color(0xFF18181B),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            context: context,
            builder: (BuildContext context) {
              return _buildModalBottomSheet();
            },
          );
        },
        child: const Icon(Phosphor.chat_teardrop_dots),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFF18181B),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 124,
              decoration: const BoxDecoration(
                color: Color(0xFF27272A),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    8,
                  ),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(32.0),
                child: Center(
                  child: Text(
                    'Experimente enviar um feedback de um bug na aplicação  🐛 ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFA1A1AA),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox _buildModalBottomSheet() {
    return SizedBox(
      height: 280,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 4,
              decoration: const BoxDecoration(
                color: Color(0x19F4F4F5),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    4,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 24,
                  height: 24,
                  child: Obx(
                    () => controller.currentView.value == 1
                        ? IconButton(
                            onPressed: () => controller.currentView.value--,
                            icon: const Icon(Icons.arrow_back),
                            iconSize: 24,
                            color: const Color(0xFFA1A1AA),
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                          )
                        : const SizedBox.shrink(),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: Center(
                      child: Obx(
                        () => Text(
                          controller.currentView.value != 1
                              ? controller.currentView.value == 2
                                  ? ''
                                  : 'Deixe seu feedback'
                              : controller.pagesDescription[
                                      controller.selectedCard.value as int]
                                  ['title'] as String,
                          style: const TextStyle(
                            color: Color(0xFFF4F4F5),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 160,
              child: Obx(() => controller.pages[controller.currentView.value]),
            ),
            RichText(
              text: TextSpan(
                text: 'Feito com ♥ pela ',
                style: const TextStyle(
                  color: Color(0xFFA1A1AA),
                ),
                children: [
                  TextSpan(
                    text: 'Rocketseat',
                    recognizer: TapGestureRecognizer()
                      //TODO: configurar abrir url
                      ..onTap = () => print('teste'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
