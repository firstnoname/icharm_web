import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:icharm_web/utilities/color_hex.dart';
import 'package:icharm_web/views/index_part/icharm_management/bloc/icharm_management_bloc.dart';
import 'package:provider/src/provider.dart';

class LoginIcharmManagementPart extends StatefulWidget {
  const LoginIcharmManagementPart({Key? key}) : super(key: key);

  @override
  State<LoginIcharmManagementPart> createState() =>
      _LoginIcharmManagementPartState();
}

class _LoginIcharmManagementPartState extends State<LoginIcharmManagementPart> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Row(
          children: [
            Expanded(
              child: Container(
                color: HexColor('#FFE3DB'),
                child: Image.network(
                  'https://firebasestorage.googleapis.com/v0/b/icharm-566eb.appspot.com/o/element_image%2Ficon%2Fbig_icon_icharm.png?alt=media&token=b3a26a08-cbb0-49ba-bd9e-ca204ab7d27a',
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Your Code ID',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''We'll send your ID from icharm@hexaceram.com''',
                      style:
                          TextStyle(fontSize: 16, color: HexColor('#7E7777')),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Text('Code ID'),
                          ),
                          TextFormField(
                            style: const TextStyle(
                              fontSize: 24,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                            ),
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              focusColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.blue, width: 1.0),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              fillColor: Colors.grey,
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontFamily: "verdana_regular",
                                fontWeight: FontWeight.w400,
                              ),
                              labelText: 'Enter your code ID',
                              labelStyle: const TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontFamily: "verdana_regular",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Login')),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: RichText(
                        text: TextSpan(
                          text: 'Don\'t have an account? ',
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Register here',
                                mouseCursor: MaterialStateMouseCursor.clickable,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    context.read<IcharmManagementBloc>().add(
                                        IcharmManagementRedirectComponent(
                                            icharmPage: IcharmPage.register));
                                  },
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
