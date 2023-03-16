import 'package:flutter/material.dart';

class CustomTournamentContainer extends StatelessWidget {
  final String iptitle;
  final String descritxt;
  final String imgpt;
  const CustomTournamentContainer(
      {super.key,
      this.iptitle = "English Primer League",
      this.descritxt =
          "Chelsea agree terms with Dejong but barca refuse to listen to offers",
      this.imgpt = "assets/chesla.png"});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Card(
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(screenWidth / 20),
        ),
        child: Padding(
          padding: EdgeInsets.all(screenWidth / 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.sports_football),
                  Text(
                    // "English Primer League"
                    iptitle,
                  ),
                  Row(
                    children: const [
                      Icon(Icons.share),
                      Icon(Icons.download),
                    ],
                  ),
                ],
              ),
              const Divider(
                thickness: 2.0,
              ),
              SizedBox(
                width: 8 * (screenWidth / 10),
                child: Text(
                  // "Chelsea agree terms with Dejong but barca refuse to listen to offers",
                  descritxt,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ),
              const Text("6h ago"),
              Center(
                  child: Image.asset(
                // "assets/chesla.png",
                imgpt,
                width: 9 * (screenWidth / 10),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
