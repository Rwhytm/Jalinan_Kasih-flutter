part of 'widgets.dart';

class CustomSublistButton extends StatelessWidget {
  final Function onPressed;
  final String image;
  final String title;

  const CustomSublistButton({
    Key? key,
    required this.onPressed,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 12,
      ),
      child: SizedBox(
        height: 100,
        child: ElevatedButton(
          onPressed: onPressed != null
              ? () {
                  if (onPressed != null) {
                    onPressed();
                  }
                }
              : null,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 4,
              ),
              Container(
                width: 65,
                height: 65,
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                title,
                style: semiBlackFont.copyWith(fontSize: 13),
              )
            ],
          ),
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.white),
          ),
        ),
      ),
    );
  }
}
