import 'package:flutter/material.dart';
import 'package:icharm_web/views/index_part/home/widget/button_main.dart';

class HomePage extends StatelessWidget {
  final PageController pageController;
  const HomePage({Key? key, required this.pageController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.network(
                'https://firebasestorage.googleapis.com/v0/b/icharm-566eb.appspot.com/o/element_image%2Fmain_page%2Fmain_image.jpg?alt=media&token=38a3bb11-cc1c-4d8c-b931-47693b8f36a0'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonMain(
                imageUrl:
                    'https://firebasestorage.googleapis.com/v0/b/icharm-566eb.appspot.com/o/element_image%2Ficon%2Fpartner_icon.png?alt=media&token=e4da0341-cfdd-4186-938d-467cac74694f',
                buttonText: 'ICHARM Partner',
                onPress: () {
                  if (pageController.hasClients) {
                    pageController.animateToPage(
                      2,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.elasticInOut,
                    );
                  }
                },
              ),
              ButtonMain(
                imageUrl:
                    'https://firebasestorage.googleapis.com/v0/b/icharm-566eb.appspot.com/o/element_image%2Ficon%2Fmanagement_icon.png?alt=media&token=e9f0cf6e-42d8-42e4-bbb4-e56ae191390a',
                buttonText: 'ICHARM Management',
                onPress: () {
                  if (pageController.hasClients) {
                    pageController.animateToPage(
                      4,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.elasticInOut,
                    );
                  }
                },
              ),
              ButtonMain(
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/icharm-566eb.appspot.com/o/element_image%2Ficon%2Fvirsual_consult_icon.png?alt=media&token=47a679d3-1dc2-41a4-b3bd-7558b2c31498',
                  buttonText: 'Virtual consult',
                  onPress: () {}),
              ButtonMain(
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/icharm-566eb.appspot.com/o/element_image%2Ficon%2Fwaranty_icon.png?alt=media&token=1a7ef467-9243-424b-b957-282175510106',
                  buttonText: 'Warranty',
                  onPress: () {}),
              ButtonMain(
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/icharm-566eb.appspot.com/o/element_image%2Ficon%2Fdental_supply_icon.png?alt=media&token=a2c363e7-e923-4557-868f-2c1a686f8eaf',
                  buttonText: 'Dental supplies',
                  onPress: () {})
            ],
          )
        ],
      ),
    );
  }
}
