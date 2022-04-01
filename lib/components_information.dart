import 'package:flutter/material.dart';
import 'package:lmonshor_tech_tips/settings_page.dart';

//page builder
Widget _buildPage(
    BuildContext context, String title, String explanation, String urlimage) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: light ? lightTheme : darkTheme,
    darkTheme: darkTheme,
    home: Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.home))
        ],
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: Image.asset(urlimage),
              width: 500,
            ),
            const Divider(),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: Text(
                explanation,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

//class pagename
class MotherboardInformation extends StatelessWidget {
  const MotherboardInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildPage(
        context,
        'Motherboard',
        "İlk defa 1982'de IBM bilgisayarlarında kullanılmış olan anakart, teknolojinin gelişmesiyle birlikte daha da önemli hale geldi. Bir insan iskeleti o insan için ne kadar önemliyse, bir anakart da bilgisayar için o kadar önemli. Anakartınız ne kadar gelişmiş ve güçlü olursa, bilgisayarınızın kaldırabileceği yük veya üzerinde barındıracağı donanım da o kadar güçlü ve dayanıklı olur. Kısaca anakart için bilgisayarın iskeleti olduğunu söyleyebiliriz. Anakart yalnızca bilgisayarlarda değil, diğer birçok elektronik cihazlarda da bulunur. Tüm bu anakartların hemen hemen hepsi aynı görevi yerine getirir. Anakart denilince akıllara ilk bilgisayarların gelmesinin sebebinin bilgisayarların genel kullanım alanlarının çeşitli ve daha fazla olmasından dolayı olduğunu söyleyebiliriz.",
        'images/motherboard.png');
  }
}

class CpuInformation extends StatelessWidget {
  const CpuInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildPage(
        context,
        'CPU (Central Process Unit)',
        "Merkezi işlem birimi olarak adlandırılan ve terminolojik kısaltması CPU olan işlemciler, 1970’li yıllarda ilk defa hayatımıza girdiğinde binlerce transistöre ev sahipliği yaparken şimdi milyonlarca transistörün silikon bir çip üzerinde birleştirilmesi ile meydana gelmektedir. Aritmetik ve mantıksal işlem yapma yeteneğine sahip olan işlemciler, kısaca bilgisayarların verileri işleyen ve yazılım komutlarını gerçekleştiren bölümü olarak ifade edilebilir. İlk mikroişlemci Intel 4004’ün 1970’te, geniş çaplı bir mikroişlemci olan Intel 8080’in ise 1974’te tanıtılmasının ardından günümüze kadar uzanan gelişim, MİB teriminin mikroişlemciler yerine kullanılmasına neden oldu. Çalışma hızları kullanılan mimari ve üretim teknolojisine bağlı olarak değişkenlik gösteren işlemcilerin hız birimleri HZ, MHZ ve GHZ olarak ifade edilirken, gelişen teknoloji ile birlikte günümüzde genellikle hız birimi GHz olan işlemcileri görmekteyiz.",
        "images/cpu.png");
  }
}

class GpuInformation extends StatelessWidget {
  const GpuInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildPage(
        context,
        'GPU (Graphics Processing Unit)',
        "Grafik işlemci birimi ya da kısaca GPU (İngilizce'de Graphics Processing Unit kelimesinin kısaltılmışı), kişisel bilgisayar, iş istasyonları veya oyun konsollarında grafik yaratımı için kullanılan aygıttır. Modern GPU'lar bilgisayar grafiklerini işleme ve göstermekte son derece verimlidir ve yüksek paralel yapıları kompleks algoritmalar için CPU'dan daha etkin kılar. GPU ekran kartının hemen üstünde olabileceği gibi anakarta entegrede halde de olabilir. Yeni masaüstü bilgisayarların ve laptopların %90'ından fazlasında özel GPU'lardan çok daha güçsüz olan entegre GPU'lar kullanılmaktadır. GPU'ların en kuvvetli tipi olup, genellikle anakart üstündeki PCI Express (PCIe) ya da Accelerated Graphics Port (AGP) gibi genişleme slotlarına takılır ve bu sayede kolayca değiştirilebilir veya üst bir sürüme yükseltilebilir. Çok az grafik kartı şu anda Peripheral Component Interconnect (PCI) slotlarını kullanmaktadır. Bunun nedeni bant genişliklerinin çok sınırlı olmasıdır. Bu nedenle sadece PCIe ya da AGP slotu bulunmadığında tercih edilir.",
        "images/gpu.png");
  }
}

class RamInformation extends StatelessWidget {
  const RamInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildPage(
        context,
        'RAM (Random Access Memory)',
        "RAM, 'Random Access Memory' (Rastgele Erişimli Bellek) kelimelerinin baş harflerinden oluşan bir kısaltmadır. RAM bilgilerin geçici olarak depolandığı bir hafıza türüdür. Bilgisayarlar genellikle o an üzerinde çalıştıkları programlar ve işlemlerle ilgili bilgileri RAM denen bu hafıza parçasında tutarlar. RAM ve sabit sürücü temel olarak aynı bilgileri saklarlar, ancak işlemcinin RAM deki bilgilere erişme ve onları işleme hızı, sabit sürücüdeki bilgilere erişme ve onları işleme hızından çok daha büyüktür. Bilgisayarlar işlem yaparken program kodları ve veri tutmak için RAM kullanırlar. RAM'in karakterini tanımlayan özelliği bütün hafıza noktaları neredeyse aynı hızda erişilebilir olmasıdır. Diğer teknolojilerin çoğu belirli bir bit veya byte okuduklarından gecikmelere sebebiyet verir. Birçok RAM türü uçucudur. Bunun anlamı disk ve kaset gibi hafıza depolama aygıtlarından farklı olarak bilgisayar kapatıldığında içerdiği veriyi kaybetmesidir. Yeni nesil RAM'ler, bir bitlik veriyi dinamik RAM'lerdeki gibi kapasitörde akım olarak ya da statik RAM'lerdeki gibi bir flip-flop'ta durum olarak saklar. Yazılımlar RAM'leri ayırarak bir kısmının daha hızlı sabit disk gibi çalışmasını sağlayabilir. Buna ‘RAM Disk’ denir. Kullanılan hafıza kaydedilmemiş ise, RAM disk bilgisayar kapandığında veriyi kaybeder. Ama kaydedilmemiş hafıza ayrı bir güç kaynağına sahip ise -pil gibi- veriyi kaybetmez.",
        "images/ram.png");
  }
}

class SsdInformation extends StatelessWidget {
  const SsdInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildPage(
        context,
        'SSD (Solid State Drive)',
        "Katı hâl sürücüsü (İngilizce: Solid-state drive, SSD), bilgisayar depolama hiyerarşisinde ikincil depolama sistemi olarak işlev gören, verileri kalıcı olarak depolamak için tümleşik devre tertibatlarını kullanan bir veri depolama aygıtı. Bir diğer tanımıyla, çeşitli biçimlerde görünen ve bilgileri depolamak için farklı bir yola başvuran cihaz. Elektromekanik sürücülerle karşılaştırıldığında SSD'ler, tipik fiziksel darbelere daha dayanıklıdır, sessiz çalışır, daha hızlı erişim ve daha düşük gecikme süresine sahiptir.",
        "images/ssd.png");
  }
}

class HddInformation extends StatelessWidget {
  const HddInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildPage(
        context,
        'HDD (Hard Disk Drive)',
        "Sabit disk ya da Hard disk kısaca HDD ya da Türkçesi ile sabit disk sürücüsü veri depolanması amacı ile kullanılan manyetik kayıt ortamlarıdır. Önceleri büyük boyutları ve yüksek fiyatları nedeni ile sadece bilgisayar merkezlerinde kullanılan sabit diskler, cep telefonları ve sayısal fotoğraf makineleri içine sığabilecek kadar küçülen boyutları ile günlük hayatımıza girmişlerdir. Sabit disklerin en yoğun kullanım yeri bilgisayarlardır. Ses, görüntü, yazılımlar, veritabanları gibi büyük miktarlarda bilgi, gerektiğinde kullanılmak üzere sabit disklerde saklanır. Günümüzde sabit diskler veri aktarımında son derece hızlanmış olsalar da elektromekanik yapıda olduklarından RAM'lara göre yavaştırlar. Bilgisayarlarda yardımcı ve kalıcı bellek olarak kullanılırlar. Bir bilgisayar yazılımı işletilmeye başladığında, yazılımın çalışması için gerekli olan bilgiler sabit diskten okunarak çok daha hızlı olan RAM belleğe aktarılır. Gereksinim duyulan kısım RAM'a sığmayacak kadar büyükse, bilgisayar sabit diskin bir bölümünü RAM bellek gibi kullanır.",
        "images/hdd.png");
  }
}

class PsuInformation extends StatelessWidget {
  const PsuInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildPage(
        context,
        'PSU (Power Supply Unit)',
        "Bilgisayar güç kaynağı, bilgisayarın dahili bileşenleri için şebeke AC'sini düşük voltajla düzenlenmiş DC gücüne dönüştüren bir kaynaktır. Modern kişisel bilgisayarlar evrensel olarak anahtarlamalı güç kaynaklarını kullanır. Bazı güç kaynaklarında giriş voltajını seçmek için manuel bir anahtar bulunurken, diğerleri otomatik olarak şebeke voltajına uyum sağlar.",
        "images/psu.png");
  }
}
