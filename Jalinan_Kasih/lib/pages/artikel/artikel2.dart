part of 'menuartikel.dart';

class Artikel2 extends StatelessWidget {
  final String tab = '\t\t\t\t';
  const Artikel2({Key? key}) : super(key: key);

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
                  DeskripsiTitle(
                      text:
                          'Pernikahan Dini di Indonesia Meningkat di Masa Pandemi'),
                  DeskripsiImage(image: 'assets/images/artikel2.jpg'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab [unpad.ac.id, 8/7/2020] Di tengah masa pandemi Covid-19 yang belum usai, terjadi lonjakan angka pernikahan dini di Indonesia.  Jawa Barat salah satunya menjadi provinsi penyumbang angka perkawinan bawah umur tertinggi di Indonesia berdasarkan data Badan Perencanaan dan Pembangunan Nasional tahun 2020.'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Praktik pernikahan dini tetap marak, meskipun pemerintah sudah merevisi batas usia minimal perkawinan di Indonesia menjadi 19 tahun melalui Undang-undang Nomor 19 tahun 2019. Selain itu, ada aturan yang menetapkan penyimpangan batas usia minimal dalam pernikahan hanya bisa dimohonkan dispensasi ke pengadilan.'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Faktanya, regulasi ini belum menekan praktik pernikahan dini di Indonesia. Dispensasi ke pengadilan semakin meningkat.'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Menurut Dosen Departemen Hukum Perdata Fakultas Hukum Universitas Padjadjaran Dr. Susilowati Suparto, M.H., peningkatan angka pernikahan dini di masa pandemi Covid-19 salah satunya ditengarai akibat masalah ekonomi. Kehilangan mata pencaharian berdampak pada sulitnya kondisi ekonomi keluarga.
'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab “Para pekerja yang juga orang tua tersebut seringkali mengambil alternatif jalan pintas dengan menikahkan anaknya pada usia dini karena dianggap dapat meringankan beban keluarga,” ungkap Susilowati dalam Webinar “Dispensasi Nikah pada Masa Pandemi Covid-19: Tantangan Terhadap Upaya Meminimalisir Perkawinan Anak di Indonesia” yang digelar FH Unpad, Jumat (3/7).'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Kebijakan penutupan sekolah dan pemberlakuan belajar di rumah juga menjadi salah satu pemicu maraknya pernikahan dini. Susilowati menuturkan, aktivitas belajar di rumah mengakibatkan remaja memiliki keleluasaan dalam bergaul di lingkungan sekitar. Ini terjadi bila pengawasan orangtua terhadap anaknya sangat lemah.'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab “Tidak dapat dihindari terjadinya pergaulan bebas yang mengakibatkan Kehamilan di Luar Nikah dan menyebabkan angka dispensasi meningkat di masa pandemi ini” tambahnya.'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Dosen FH Unpad lainnya, Dr. Sonny Dewi Judiasih, M.H.CN., menjelaskan, praktik perkawinan di bawah umum rentan terjadi pada perempuan di pedesaan yang berasal dari keluarga miskin serta tingkat pendidikan yang rendah.
'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Sejumlah faktor yang memengaruhi praktik pernikahan dini ini di antaranya adanya faktor geografis, terjadinya insiden hamil di luar nikah, pengaruh kuat dari adat istiadat dan agama, hingga minimnya akses terhadap informasi kesehatan reproduksi.
'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Semestinya, kata Sonny, pengadilan jangan mempermudah izin dispensasi kawin. Fakta di lapangan, hampir 90 persen permohonan dispensasi perkawinan dikabulkan oleh hakim. Hal ini menjadikan Indonesia kerap bertahan di jajaran negara dengan angka pernikahan dini tertinggi di dunia.'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Hakim sepatutnya mempertimbangkan alasan yang menjadi dasar permohonan dispensasi. Sonny menjelaskan, pertimbangan mengadili permohonan dispensasi kawin harus mengacu pada Peraturan Mahkamah Agung Nomor 5 Tahun 2019.
'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab “Apakah alasan tersebut merupakan alasan yang mendesak atau dapat ditunda, serta mempertimbangkan perlindungan dan kepentingan terbaik bagi anak dalam peraturan perundang-undangan dan hukum tidak tertulis dalam bentuk nilai-nilai hukum, kearifan lokal, dan rasa keadilan yang hidup dalam masyarakat,” tandasnya.(art)*'''),
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
  }
}
