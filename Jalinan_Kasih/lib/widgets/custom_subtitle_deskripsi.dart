part of 'widgets.dart';

class SubtitleDeskripsi extends StatelessWidget {
  final String subtitle;
  const SubtitleDeskripsi({Key? key, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 30, right: 24),
      child: Text(
        subtitle,
        style: semiBlackFont.copyWith(
          fontSize: 14,
        ),
      ),
    );
  }
}
