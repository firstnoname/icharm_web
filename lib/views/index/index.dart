import 'package:flutter/material.dart';
import 'package:icharm_web/models/models.dart';
import 'package:icharm_web/views/index_part/home/home.dart';
import 'package:icharm_web/views/index_part/icharm_management/icharm_management.dart';
import 'package:icharm_web/views/index_part/icharm_management/part/icharm_management_login_part.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icharm_web/blocs/blocs.dart';
import 'package:icharm_web/views/index_part/icharm_partner/icharm_partner_main_part.dart';
import 'package:icharm_web/views/views.dart';
import 'package:icharm_web/widget/navBar/navbarButton.dart';
import 'package:icharm_web/widget/navBar/navbarItem.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  User? _userInfo;
  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  double collapsableHeight = 0.0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    _userInfo = BlocProvider.of<IcharmManagerBloc>(context).currentUser;
    return Scaffold(
      body: Column(
        children: [
          _header(),
          _buildNavigationBar(withScreen: width),
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
              _userInfo != null
                  ? Text('${_userInfo?.firstName} ${_userInfo?.lastName}')
                  : TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ),
                      ),
                      child: const Text('Login',
                          style: TextStyle(color: Colors.orange)),
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
        controller: pageController,
        children: [
          Center(
            child: HomePage(
              pageController: pageController,
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
            child: IcharmManagement(),
          ),
          const Center(
            child: Text('Warrnty'),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/icharm-566eb.appspot.com/o/element_image%2FQ%26A%2Fq_a_icharm-A4-01.svg?alt=media&token=e0d6f92c-145a-4c4d-a746-a07b52499a59'),
                  Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/icharm-566eb.appspot.com/o/element_image%2FQ%26A%2Fq_a_icharm-A4-02.svg?alt=media&token=f2373364-cca0-422f-9d13-229a519990e8'),
                  Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/icharm-566eb.appspot.com/o/element_image%2FQ%26A%2Fq_a_icharm-A4-03.svg?alt=media&token=09176422-352a-4a10-9ac5-500c53a621da')
                ],
              ),
            ),
          ),
          const Center(
            child: Text('Advertis manager'),
          )
        ],
      ),
    );
  }

  Widget _buildNavigationBar({required double withScreen}) {
    return Stack(
      children: [
        AnimatedContainer(
          margin: const EdgeInsets.only(top: 79.0),
          duration: const Duration(milliseconds: 375),
          curve: Curves.ease,
          height: (withScreen < 1000.0) ? collapsableHeight : 0.0,
          width: double.infinity,
          color: const Color(0xff121212),
          child: SingleChildScrollView(
            child: Column(
              children: [
                NavBarItem(
                  text: 'Home',
                  onPress: () {
                    if (pageController.hasClients) {
                      pageController.animateToPage(
                        0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.elasticInOut,
                      );
                    }
                  },
                ),
                NavBarItem(
                  text: 'About us',
                  onPress: () {
                    if (pageController.hasClients) {
                      pageController.animateToPage(
                        1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.elasticInOut,
                      );
                    }
                  },
                ),
                NavBarItem(
                  text: 'iCharm Partner',
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
                NavBarItem(
                  text: 'Virtual consult',
                  onPress: () {
                    if (pageController.hasClients) {
                      pageController.animateToPage(
                        3,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.elasticInOut,
                      );
                    }
                  },
                ),
                NavBarItem(
                  text: 'iCharm management',
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
                NavBarItem(
                  text: 'Warranty',
                  onPress: () {
                    if (pageController.hasClients) {
                      pageController.animateToPage(
                        5,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.elasticInOut,
                      );
                    }
                  },
                ),
                NavBarItem(
                  text: 'Q & A',
                  onPress: () {
                    if (pageController.hasClients) {
                      pageController.animateToPage(
                        6,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.elasticInOut,
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
        Container(
          color: const Color(0xff121212),
          height: 80.0,
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LayoutBuilder(builder: (context, constraints) {
                if (withScreen < 1000) {
                  return NavBarButton(
                    onPressed: () {
                      if (collapsableHeight == 0.0) {
                        setState(() {
                          collapsableHeight = 240.0;
                        });
                      } else if (collapsableHeight == 240.0) {
                        setState(() {
                          collapsableHeight = 0.0;
                        });
                      }
                    },
                  );
                } else {
                  return Row(
                    children: [
                      NavBarItem(
                        text: 'Home',
                        onPress: () {
                          if (pageController.hasClients) {
                            pageController.animateToPage(
                              0,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.elasticInOut,
                            );
                          }
                        },
                      ),
                      NavBarItem(
                        text: 'About us',
                        onPress: () {
                          if (pageController.hasClients) {
                            pageController.animateToPage(
                              1,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.elasticInOut,
                            );
                          }
                        },
                      ),
                      NavBarItem(
                        text: 'iCharm Partner',
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
                      NavBarItem(
                        text: 'Virtual consult',
                        onPress: () {
                          if (pageController.hasClients) {
                            pageController.animateToPage(
                              3,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.elasticInOut,
                            );
                          }
                        },
                      ),
                      NavBarItem(
                        text: 'iCharm management',
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
                      NavBarItem(
                        text: 'Warranty',
                        onPress: () {
                          if (pageController.hasClients) {
                            pageController.animateToPage(
                              5,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.elasticInOut,
                            );
                          }
                        },
                      ),
                      NavBarItem(
                        text: 'Q & A',
                        onPress: () {
                          if (pageController.hasClients) {
                            pageController.animateToPage(
                              6,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.elasticInOut,
                            );
                          }
                        },
                      ),
                    ],
                  );
                }
              })
            ],
          ),
        ),
      ],
    );
  }
}
