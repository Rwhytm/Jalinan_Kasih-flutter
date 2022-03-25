part of 'menu6.dart';

class Deskripsi61 extends StatelessWidget {
  final String tab = '\t\t\t\t';
  const Deskripsi61({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          // Deskripsi
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DeskripsiTitle(text: 'Berencana itu Keren'),
                  DeskripsiImage(image: 'assets/images/berencana1.jpg'),
                  SizedBox(
                    height: 20,
                  ),
                  SubtitleDeskripsi(
                      subtitle:
                          'Untuk Merencanakan Masa Depan, Maka Kamu Perlu : '),
                  SubtitleDeskripsi(subtitle: '$tab - Bangun Motivasi'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Motivasi bisa datang dari dalam atau dari luar diri kita, namun motivasi dari dalam diri jauh lebih baik dan mempunyai daya juang yang luar biasa. Kita bisa mulai dengan mengumpulkan banyak informasi mengenai objek cita-cita masa depan yang kita inginkan. Mulai belajar menyukai dan menekuni dari sekarang, sehingga kita mampu berkata : "Hei...ini tentang hidupku, jadi aku harus memperjuangkannya.."'''),
                  DeskripsiImage(image: 'assets/images/berencana2.jpg'),
                  SubtitleDeskripsi(subtitle: '$tab - Kenali Potensi Diri'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Dengan mengenali potensi diri, kita bisa mulai memilih dan merencanakan cita-cita. Caranya dengan melihat diri kita, apa yang kita senangi, bakat kita, kemampuan kita dan aspek lainnya yang kita punya, lalu mangasahnya. Jika ada hambatan, maka harus dicari solusi secara tepat.'''),
                  SubtitleDeskripsi(subtitle: '$tab - Rencanakan Target Karir'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Kita harus mengambil keputusan mengenai cita cita masa depan. Rencana masa depan dapat ditetapkan berupa jangka panjang dan jangka pendek. Jangka pendek bisa dalam rentang 1-5 tahun jangka panjang bisa berupa rencana 10 tahun ke depan. Artinya kita ingin menjadi seperti apa pada 5 atau 10 tahun ke depan.'''),
                  SubtitleDeskripsi(
                      subtitle: '$tab - Evaluasi Rencana Karir Kita'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Bisa saja di tangah jalan kita menemukan hal hal baru yang membuat kita ingin mengubah rencana masa depan kita, sehingga kita harus mengevaluasi rencana masa depan. Yang terpenting, apa yang kita rencanakan sesuai dengan diri kita dan memberikan dampak positif dan memungkinkan untuk kita capai. Jadi memiliki cita-cita masa depan sangat penting, apalagi dapat memandu kita untuk terus maju.'''),
                ],
              ),
            ),
          ),
          // Heading
          SafeArea(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 46),
                  width: 40,
                  height: 80,
                  color: Colors.white,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_outlined,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
