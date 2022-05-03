import 'package:flutter/material.dart';
import 'package:nlw_return/app/ui/theme/phosphor_icons.dart';

class SecondModalBottomSheetPage extends StatelessWidget {
  const SecondModalBottomSheetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF8257E5),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFA1A1AA),
                ),
              ),
              contentPadding: EdgeInsets.all(8),
              hintText:
                  'Algo não está funcionando bem? Queremos corrigir. Conte com detalhes o que está acontecendo...',
              hintStyle: TextStyle(
                color: Color(0xFFA1A1AA),
              ),
            ),
            style: const TextStyle(
              color: Color(0xFFF4F4F5),
              fontSize: 14,
            ),
            minLines: 4,
            maxLines: 4,
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
                    onPressed: () => print('teste'),
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
