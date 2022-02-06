import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icharm_web/views/index_part/virtual_consult/virtual_consult_index.dart';
import 'package:icharm_web/views/index_part/virtual_consult/virtual_consult_photos.dart';

import 'bloc/virtual_consult_bloc.dart';
import 'virtual_consult_estimate.dart';

class VirtualConsultView extends StatefulWidget {
  const VirtualConsultView({Key? key}) : super(key: key);

  @override
  State<VirtualConsultView> createState() => _VirtualConsultViewState();
}

class _VirtualConsultViewState extends State<VirtualConsultView> {
  final PageController controller = PageController(initialPage: 0);
  late var allPages;

  @override
  void initState() {
    allPages = [
      VirtualConsultIndex(
        onPressedNextButton: () {
          if (controller.hasClients) {
            controller.animateToPage(
              1,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
            );
          }
        },
      ),
      VirtualConsultEstimate(
        onPressedNextButton: () {
          if (controller.hasClients) {
            controller.animateToPage(
              2,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
            );
          }
        },
      ),
      const VirtualConsultPhotos(),
    ];
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => VirtualConsultBloc(),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: controller,
                itemCount: allPages.length,
                itemBuilder: (context, position) {
                  return allPages[position];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
