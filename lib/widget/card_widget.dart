import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sheet_use/porduct/colors/project_colors.dart';
import 'package:sheet_use/porduct/language/language_item.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: _CardWidgetSize().crossAxisSize),
      scrollDirection: Axis.vertical,
      itemCount: _CardWidgetSize().itemCountSize,
      itemBuilder: (context, index) {
        return const _CardWidget();
      },
    );
  }
}

class _CardWidget extends StatelessWidget {
  const _CardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: const Card(
        color: ProjectColors.bottomSheetColor,
        child: Column(
          children: [
            _ListTile(),
          ],
        ),
      ),
    );
  }
}

class _ListTile extends StatelessWidget {
  const _ListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(LanguageItem.exampleString1.languageItem()),
      leading: const Icon(Icons.note_alt_sharp),
      subtitle: Text(LanguageItem.exampleString2.languageItem()),
    );
  }
}

class _CardWidgetSize {
  final int itemCountSize = 5;
  final int crossAxisSize = 2;
}
