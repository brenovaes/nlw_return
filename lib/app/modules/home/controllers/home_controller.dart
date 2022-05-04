import 'package:get/get.dart';
import 'package:nlw_return/app/modules/home/views/widgets/first_modal_bottom_sheet_page.dart';
import 'package:nlw_return/app/modules/home/views/widgets/second_modal_bottom_sheet_page.dart';
import 'package:nlw_return/app/modules/home/views/widgets/third_modal_bottom_sheet_page.dart';

class HomeController extends GetxController {
  final currentView = 0.obs;
  final selectedCard = Rxn<int>();
  final pages = [
    const FirstModalBottomSheetPage(),
    SecondModalBottomSheetPage(),
    const ThirdModalBottomSheetPage(),
  ];
  final pagesDescription = [
    {
      'title': 'Problema',
      'placeholder':
          'Algo não está funcionando bem? Queremos corrigir. Conte com detalhes o que está acontecendo...',
    },
    {
      'title': 'Ideia',
      'placeholder': 'Tem uma ideia legal? Conta pra a gente!',
    },
    {
      'title': 'Outro',
      'placeholder': 'É sobre outro assunto? Conta pra a gente!',
    },
  ];
}
