import 'package:flutter/material.dart';

const String YoutubeUrl = 'https://www.youtube.com/';
const String TwitchUrl = 'https://www.twitch.tv/';

class ViewModelSelectPage extends StatelessWidget {
  const ViewModelSelectPage({
    super.key,
    required this.onInput,
  });

  final void Function(String Url) onInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ViewSelectButton(
              backgroundColor: Colors.red,
              foregroundColor: Colors.black,
              TextColor: Colors.white,
              viewmodel: 'Youtube',
              onSelect: (Url) => onInput(Url),
            ),
            ViewSelectButton(
              backgroundColor: Colors.purple,
              foregroundColor: Colors.black,
              TextColor: Colors.white,
              viewmodel: 'Twitch',
              onSelect: (Url) => onInput(Url),
            ),
          ],
        ),
      ),
    );
  }
}

class ViewSelectButton extends StatelessWidget {
  const ViewSelectButton({
    super.key,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.TextColor,
    required this.viewmodel,
    required this.onSelect,
  });

  final Color backgroundColor;
  final Color foregroundColor;
  final Color TextColor;
  final String viewmodel;
  final void Function(String Url) onSelect;

  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (viewmodel == 'Youtube') {
          onSelect(YoutubeUrl);
        } else {
          onSelect(TwitchUrl);
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
      ),
      child: Text(
        viewmodel,
        style: TextStyle(
          color: TextColor,
        ),
      ),
    );
  }
}
