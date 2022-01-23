import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: const Text('Index'),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Login(),
              ),
            ),
            child: const Text('Login', style: TextStyle(color: Colors.white)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Contact us'),
              ),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: Column(
        children: [
          _buildNavigationBar(),
          _buildBody(),
        ],
      ),
    );
  }

  Expanded _buildBody() {
    return Expanded(
      child: PageView(
        controller: _pageController,
        children: const [
          Center(
            child: Text('Home'),
          ),
          AboutUs(),
          Center(
            child: Text('iCharm partner'),
          ),
          Center(
            child: Text('Virtual consult'),
          ),
          Center(
            child: Text('iCharm management'),
          ),
          Center(
            child: Text('Warrnty'),
          ),
          Center(
            child: Text('Q & A'),
          ),
          Center(
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
                6,
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
