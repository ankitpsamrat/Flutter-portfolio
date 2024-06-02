import 'package:flutter/material.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({
    Key? key,
    required this.aboutText,
  }) : super(key: key);

  final String aboutText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 220,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        color: const Color(0xff262628),
        child: Container(
          margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                aboutText,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );

//     return Padding(
//       padding: const EdgeInsets.all(0),
//       child: DecoratedBox(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12),
//           color: const Color(0xff262628),
//         ),
//         child: SizedBox(
//           width: 650,
//           height: 600,
//           child: Column(
//             children: [
//               // Padding(
//               //   padding: const EdgeInsets.all(8),
//               //   child: Image.network(techUrl, height: 50),
//               // ),
//               Text(
//                 aboutText,
//                 textAlign: TextAlign.start,
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 25,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
  }
}
