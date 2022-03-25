part of 'menu3.dart';

class Deskripsi33 extends StatelessWidget {
  final String tab = '\t\t\t\t';
  const Deskripsi33({Key? key}) : super(key: key);

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
                  DeskripsiTitle(text: 'Dampak Perilaku Berisiko'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Nah, perilaku seksual yang berisiko dapat dikatakan tidak aman karena memiliki risiko yang dapat membahayakanmu dan pasangan. Risikonya adalah bisa terjangkit Infeksi Menular Seksual (IMS) dan HIV/AIDS atau penyakit menular seksual yang lain serta kehamilan remaja.'''),
                  SubtitleDeskripsi(subtitle: '1. IMS'),
                  CustomDeskripsi(
                      deskripsi:
                          '''Berikut adalah beberapa jenis IMS yang sering ditemui :'''),
                  DeskripsiImage(image: 'assets/images/ims3.png'),
                  SubtitleDeskripsi(subtitle: '2. HIV/AIDS'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Acquired Immune Deficiency Syndrom (AIDS) disebabkan oleh Human Immunodeficiency Virus (HIV) yang merusak kekebalan tubuh, yang membuat tidak dapat melawan penyakit berat maupun ringan. Jadi AIDS adalah kumpulan gejalanya, HIV adalah virus yang menyebabkan AIDS. HIV hanya dapat hidup di dalam sel tubuh manusia yang didapat atau tertular atau terinfeksi virus HIV.'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab HIV dapat hidup di dalam darah, cairan vagina, cairan sperma dan air susu ibu. HIV / AIDS perlu mendapat perhatian khusus, karena belum dapat disembuhkan.'''),
                  SubtitleDeskripsi(subtitle: '$tab Tanda gejala HIV /AIDS'),
                  CustomListDeskripsi(
                      deskripsi:
                          '''-	Penurunan 10% berat badan dalam waktu satu bulan tanpa sebab yang jelas\n-	Diare lebih dari satu bulan tanpa sebab yang  jelas\n-	Demam berkepanjangan lebih dari satu bulan\n-	Batuk yang tidak sembuh-sembuh\n-	Kulit gatal di seluruh tubuh\n-	Infeksi jamur kandida pada mulit, lidah atau tenggorokan\n-	Pembengkakan kelenjar getah bening di leher, ketiak atau selangkangan'''),
                  SubtitleDeskripsi(
                      subtitle: '$tab Pencegahan HIV dengan metode “ABCDE” :'),
                  DeskripsiImage(image: 'assets/images/pencegahan_hiv.png'),
                  SubtitleDeskripsi(
                      subtitle: '3. Kehamilan tidak diinginkan (KTD)'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Yaitu kehamilan yang terjadi karena alasan waktu yang tidak tepat atau ketika perempuan tidak menginginkan kehamilan yang terjadi dengan berbagai alasan, dan tidak ingin ada kehamilan di kemudian hari.'''),
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
