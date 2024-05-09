import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sheet_use/porduct/colors/project_colors.dart';
import 'package:sheet_use/porduct/language/language_item.dart';
import 'package:sheet_use/widget/bottom_sheet_widget.dart';
import 'package:sheet_use/widget/card_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with BottomSheetMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LanguageItem.appBarName.languageItem()),
        flexibleSpace: Padding(
          padding: _BottomSheetPadding().appBarWelcomeTextPadding,
          child: Text(LanguageItem.welcome.languageItem()),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))],
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            showCustomSheet(context, const _ContentCustomSheet());
          }),
      body: const Column(
        children: [
          Expanded(child: CardWidget()),
        ],
      ),
    );
  }
}

class _ContentCustomSheet extends StatelessWidget {
  const _ContentCustomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _BottomSheetPadding().onlyTopPadding,
      child: Card(
        color: ProjectColors.greyColor,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: TextButton(
            onPressed: () {},
            child: Text(
              LanguageItem.addYourNote.languageItem(),
              style: const TextStyle(color: ProjectColors.blackColor),
            ),
          ),
        ),
      ),
    );
  }
}

class _BottomSheetPadding {
  final onlyTopPadding = const EdgeInsets.only(top: 20);
  final appBarWelcomeTextPadding = const EdgeInsets.symmetric(horizontal: 17, vertical: 40);
}
