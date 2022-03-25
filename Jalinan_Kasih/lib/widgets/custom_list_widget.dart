part of 'widgets.dart';

class CustomListDeskripsi extends StatelessWidget {
  final String deskripsi;
  const CustomListDeskripsi({Key? key, required this.deskripsi})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
        left: 35,
        right: 20,
      ),
      child: Text(
        deskripsi,
        style: regularBlackFont,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
