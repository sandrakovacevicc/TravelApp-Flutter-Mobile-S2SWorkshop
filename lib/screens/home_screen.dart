import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:s2s_radionica/custom_widgets/custom_card.dart';
import 'package:s2s_radionica/custom_widgets/custom_navbar.dart';
import 'package:s2s_radionica/models/destination.dart';
import 'package:s2s_radionica/services/destination_service.dart';
import 'package:s2s_radionica/utils/api_handler.dart';
import 'package:s2s_radionica/utils/global_colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Destination> destinations = [];

  Future<void> fetchDestinationsFromSerpapi() async {
    DestinationService service = DestinationService(api: BaseApi.api);
    List<Destination> fetched = await service.fetchDestinations();
    
    setState(() {
      destinations = fetched;
    });
  }

  @override
  void initState() {
    fetchDestinationsFromSerpapi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Center(
            child: Column(
              children: [
                AutoSizeText(
                  'Explore the world',
                  minFontSize: 10,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: GlobalColors.black,
                  ),
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: destinations.length,
                  itemBuilder: (context, index) {
                    final destination = destinations[index];
                    return CustomCard(
                        title: destination.title, imageUrl: destination.link);
                  },
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const Navbar(currentIndex: 0),
    );
  }
}
