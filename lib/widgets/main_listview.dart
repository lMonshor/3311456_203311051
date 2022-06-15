import 'package:flutter/material.dart';
import 'package:lmonshor_tech_tips/pages/components_information.dart';
import 'package:lmonshor_tech_tips/widgets/card_widget.dart';

class ListViewMain extends StatelessWidget {
  const ListViewMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        //MotherBoard
        GestureDetector(
          child: cardBuild(
              image: "images/motherboard.png",
              title: 'Motherboard',
              subtitle: 'Ayrıntılı bilgi için basılı tutunuz.'),
          onLongPress: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MotherboardInformation(),
              ),
            );
          },
        ),
        //CPU
        GestureDetector(
            child: cardBuild(
                image: "images/cpu.png",
                title: "CPU (Central Process Unit)",
                subtitle: "Ayrıntılı bilgi için çift tıklayınız."),
            onDoubleTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CpuInformation(),
                ),
              );
            }),
        //GPU
        GestureDetector(
            child: cardBuild(
                image: "images/gpu.png",
                title: "GPU (Graphics Processing Unit)",
                subtitle: "Ayrıntılı bilgi için tıklayınız."),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GpuInformation(),
                ),
              );
            }),
        //RAM
        GestureDetector(
            child: cardBuild(
                image: "images/ram.png",
                title: "RAM (Random Access Memory)",
                subtitle: "Ayrıntılı bilgi için yatay kaydırınız."),
            onHorizontalDragStart: (e) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RamInformation(),
                ),
              );
            }),
        //SSD
        GestureDetector(
            child: cardBuild(
                image: "images/ssd.png",
                title: "SSD (Solid State Drive)",
                subtitle: "Ayrıntılı bilgi için dikey kaydırınız."),
            onVerticalDragStart: (e) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SsdInformation(),
                ),
              );
            }),
        //HDD
        GestureDetector(
            child: cardBuild(
                image: "images/hdd.png",
                title: "HDD (Hard Disk Drive)",
                subtitle:
                    "Ayrıntılı bilgi için tıklayıp kaydırınız ve bırakınız."),
            onScaleEnd: (e) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HddInformation(),
                ),
              );
            }),
        //PSU
        GestureDetector(
            child: cardBuild(
                image: "images/psu.png",
                title: "PSU (Power Suply Unit)",
                subtitle: "Ayrıntılı bilgi için basılı tutunuz ve bırakınız."),
            onLongPressEnd: (e) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PsuInformation(),
                ),
              );
            }),
      ],
    );
  }
}
