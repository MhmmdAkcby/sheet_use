import 'package:flutter/material.dart';
import 'package:sheet_use/porduct/colors/project_colors.dart';

mixin BottomSheetMixin {
  Future<T?> showCustomSheet<T>(BuildContext context, Widget child) async {
    return showModalBottomSheet(
      context: context,
      //backgroundColor: ProjectColors.bottomSheetColor,
      //isDismissible: false,
      builder: (context) {
        return _CustomSheet(child: child);
      },
    );
  }
}

class _CustomSheet extends StatelessWidget {
  const _CustomSheet({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Divider(
          color: ProjectColors.whiteColor,
          indent: MediaQuery.of(context).size.width * 0.4,
          endIndent: MediaQuery.of(context).size.width * 0.4,
          thickness: _BottomSheetSizes().thicknessSize,
        ),
        SizedBox(
          height: _BottomSheetSizes().sizedBoxHeight,
          width: MediaQuery.of(context).size.width,
        ),
        child,
      ],
    );
  }
}

class _BottomSheetSizes {
  final double sizedBoxHeight = 150.0;
  final double thicknessSize = 3.0;
}
