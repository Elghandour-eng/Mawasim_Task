import 'package:flutter/material.dart';

class PopScaffold extends StatelessWidget {
  final Widget? child;
  const PopScaffold({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: SafeArea(
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Scaffold(
                body: child ?? const SizedBox()),
          ),
        ),
        onTap:
            // Platform.isIOS ?
            () => FocusScope.of(context)
              ..unfocus()
              ..requestFocus(FocusNode())
        // : null,
        );
  }
}
