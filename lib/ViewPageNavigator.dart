import 'package:flutter/material.dart';
import 'ViewPage.dart';
import 'ViewModelSelectPage.dart';

class ViewPageNavigator extends StatelessWidget {
  const ViewPageNavigator({
    super.key,
    required this.widgetNumber,
  });

  final int widgetNumber;

  void _pushViewPage(BuildContext context, String Url) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {
          return ViewPage(
            Url: Url,
            controllerNumber: widgetNumber,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: ((settings) {
        return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
              return ViewModelSelectPage(
                  onInput: (Url) => _pushViewPage(context, Url),
              );
            },
        );
      }),
    );
  }
}
