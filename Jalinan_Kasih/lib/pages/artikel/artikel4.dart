part of 'menuartikel.dart';

class Artikel4 extends StatelessWidget {
  final String tab = '\t\t\t\t';
  const Artikel4({Key? key}) : super(key: key);

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
                          'Tekan Angka Pernikahan Usia Dini, DP3AP2 DIY Soroti Peran Keluarga dan Batas Umur Minimal'),
                  DeskripsiImage(image: 'assets/images/artikel4.jpg'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab SuaraJogja.id - Dinas Pemberdayaan Perempuan, Perlindungan Anak dan Pengendalian Penduduk (DP3AP2) DIY terus berupaya untuk menekan angka pernikahan usia dini di wilayahnya. Keluarga dinilai menjadi faktor penting guna mengantisipasi hal tersebut.'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Kepala Seksi Keluarga Berencana DP3AP2 DIY Budi Sartono tidak memungkiri bahwa pernikahan usia dini masih menjadi isu yang perlu diperhatikan secara serius, tidak hanya dari pemerintah provinsi saja, tetapi juga hingga pemerintah terendah di wilayah serta masyarakat.'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab "Di DIY ada sekitar 24,8 persen penduduk yang diisi oleh anak usia di bawah 18 tahun. Hal tersebut kemudian isu pernikahan dini diharapkan menjadi perhatian kita semua," kata Budi kepada awak media, Senin (14/3/2022).'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Sehingga, lanjut Budi, keluarga tidak bisa dilepaskan dalam persoalan ini. Perlu ada sinergi dan harmoni yang baik dari semua pihak di dalamnya.
'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Bahkan tidak melulu hanya berfokus dalam peran di internal keluarga saja. Melainkan hubungan dengan masyarakat sekitarnya pun juga perlu diperhatikan lebih jauh.'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Mengingat potensi dampak jangka panjang akibat pernikahan dini itu sendiri jika memang kemudian dilakukan. Khususnya terkait dengan persoalan stunting.'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab "Pernikahan dini yang masih terjadi dikhawatirkan menghasilkan generasi stunting karena perencanaan kehamilan yang kurang sempurna," terangnya.'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Budi menjelaskan sebenarnya pemerintah telah mengatur batas usia minimal perempuan untuk menikah yakni 16 tahun. Aturan tersebut terdapat dalam UU Nomor 1 Tahun 1974 tentang Perkawinan.
'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Namun, kemudian tepatnya dua tahun lalu aturan m tersebut diperbarui dengan pengubahan batas minimal usia menikah. Aturan yang tertuang dalam UU Nomor 16 Tahun 2019 yang berlaku sejak 15 Oktober 2019 itu menuliskan bahwa usia minimal untuk menikah adalah 19 tahun.
'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Hingga saat ini, Budi berujar pihaknya senantiasa mendorong pernikahan bagi generasi muda bisa lebih dari batas minimal di aturan tersebut. Setidaknya usia nikah bagi pasangan di DIY yaitu 21 tahun bagi perempuan dan 25 tahun bagi laki-laki.'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Ia menuturkan bahwa anjuran itu dibuat bukan tanpa alasan. Pasalnya, kata Budi, sudah ada penelitian yang dilakukan tim ahli dari DP3AP2 DIY terkait anjuran itu. Walaupun memang anjuran atau imbauan itu tidak bersifat wajib.
'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab "Kepala BKKBN Hasto Wardoyo menyampaikan pemeriksaan kesehatan pra nikah tersebut bertujuan guna terus menekan angka stunting atau gizi buruk terhadap anak Indonesia.'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab "Remaja kita ini ternyata 37 persen yang putri itu anemia. HB (hemoglobin) kurang dari 11,5 persen. Setelah hamil, mereka ini 48 persen jadi anemia. Ketika ibu hamilnya anemia, bayi yang dikandungnya pertumbuhannya tidak subur, pendek, dan stunting," kata Hasto di Kantor Bupati Bantul, Jumat (11/3/2022).'''),
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
