import 'package:flutter/material.dart';
import 'package:icharm_web/views/index_part/home/home.dart';
import 'package:icharm_web/views/index_part/icharm_partner_part/icharm_partner_main_part.dart';
import 'package:icharm_web/views/views.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _header(),
          _buildNavigationBar(),
          _buildBody(),
        ],
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Center(
              child: Image.network(
                  'https://firebasestorage.googleapis.com/v0/b/icharm-566eb.appspot.com/o/element_image%2Ficon%2FIcharm_icon.svg?alt=media&token=773d6f5c-6c4d-40e8-b2d1-61d3506489a3'),
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Login(),
                  ),
                ),
                child:
                    const Text('Login', style: TextStyle(color: Colors.orange)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('ติดต่อเรา'),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Expanded _buildBody() {
    return Expanded(
      child: PageView(
        controller: _pageController,
        children: [
          Center(
            child: HomePage(
              pageController: _pageController,
            ),
          ),
          const AboutUs(),
          const Center(
            child: ICHARMPartnerMainPage(),
          ),
          const Center(
            child: Text('Virtual consult'),
          ),
          const Center(
            child: Text('iCharm management'),
          ),
          const Center(
            child: const Text('Warrnty'),
          ),
          const Center(
            child: const Text('Q & A'),
          ),
          const Center(
            child: Text('Advertis manager'),
          )
        ],
      ),
    );
  }

  Row _buildNavigationBar() {
    return Row(
      children: [
        TextButton(
          child: const Text('Home'),
          onPressed: () {
            if (_pageController.hasClients) {
              _pageController.animateToPage(
                0,
                duration: const Duration(milliseconds: 300),
                curve: Curves.elasticInOut,
              );
            }
          },
        ),
        TextButton(
          child: const Text('About us'),
          onPressed: () {
            if (_pageController.hasClients) {
              _pageController.animateToPage(
                1,
                duration: const Duration(milliseconds: 300),
                curve: Curves.elasticInOut,
              );
            }
          },
        ),
        TextButton(
          child: const Text('iCharm Partner'),
          onPressed: () {
            if (_pageController.hasClients) {
              _pageController.animateToPage(
                2,
                duration: const Duration(milliseconds: 300),
                curve: Curves.elasticInOut,
              );
            }
          },
        ),
        TextButton(
          child: const Text('Virtual consult'),
          onPressed: () {
            if (_pageController.hasClients) {
              _pageController.animateToPage(
                3,
                duration: const Duration(milliseconds: 300),
                curve: Curves.elasticInOut,
              );
            }
          },
        ),
        TextButton(
          child: const Text('iCharm management'),
          onPressed: () {
            if (_pageController.hasClients) {
              _pageController.animateToPage(
                4,
                duration: const Duration(milliseconds: 300),
                curve: Curves.elasticInOut,
              );
            }
          },
        ),
        TextButton(
          child: const Text('Warranty'),
          onPressed: () {
            if (_pageController.hasClients) {
              _pageController.animateToPage(
                5,
                duration: const Duration(milliseconds: 300),
                curve: Curves.elasticInOut,
              );
            }
          },
        ),
        TextButton(
          child: const Text('Q & A'),
          onPressed: () {
            if (_pageController.hasClients) {
              _pageController.animateToPage(
                6,
                duration: const Duration(milliseconds: 300),
                curve: Curves.elasticInOut,
              );
            }
          },
        ),
        TextButton(
          child: const Text('Advertis manager'),
          onPressed: () {
            if (_pageController.hasClients) {
              _pageController.animateToPage(
                7,
                duration: const Duration(milliseconds: 300),
                curve: Curves.elasticInOut,
              );
            }
          },
        )
      ],
    );
  }
}
