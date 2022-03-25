part of 'widgets.dart';

class CustomMenuButton extends StatelessWidget {
  final Function onPressed;
  final String image;
  final String title;
  final Color backgroundColor;

  const CustomMenuButton({
    Key? key,
    required this.onPressed,
    required this.image,
    required this.title,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed != null
          ? () {
              if (onPressed != null) {
                onPressed();
              }
            }
          : null,
      child: SizedBox(
        height: 130,
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Image(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              title,
              style: mediumBlackFont,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(backgroundColor),
      ),
    );
  }
}
