part of 'widgets.dart';

class DeskripsiTitle extends StatelessWidget {
  final String text;
  const DeskripsiTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 100,
        left: 24,
        right: 24,
      ),
      child: Text(
        text,
        style: semiBlackFont.copyWith(
          fontSize: 16,
        ),
      ),
    );
  }
}
