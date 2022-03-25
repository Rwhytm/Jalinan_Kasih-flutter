part of 'widgets.dart';

class DeskripsiImage extends StatelessWidget {
  final String image;
  const DeskripsiImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(
          top: 16,
          right: 24,
          left: 24,
        ),
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
