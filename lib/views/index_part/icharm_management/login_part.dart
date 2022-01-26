import 'package:flutter/material.dart';

class LoginPart extends StatefulWidget {
  const LoginPart({Key? key}) : super(key: key);

  @override
  State<LoginPart> createState() => _LoginPartState();
}

class _LoginPartState extends State<LoginPart> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          Flexible(
            child: Image.network(
                'https://firebasestorage.googleapis.com/v0/b/icharm-566eb.appspot.com/o/element_image%2Ficon%2Fbig_icon_icharm.png?alt=media&token=b3a26a08-cbb0-49ba-bd9e-ca204ab7d27a'),
          ),
          Flexible(
            child: Column(
              children: [
                const Text('Your Code ID'),
                const Text('''We'll send your ID from
                icharm@hexaceram.com'''),
                const Text('Code ID'),
                TextFormField(
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    errorText: "Error",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 1.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.grey,
                    //make hint text
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontFamily: "verdana_regular",
                      fontWeight: FontWeight.w400,
                    ),
                    //create lable
                    labelText: 'Enter your code ID',
                    //lable style
                    labelStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontFamily: "verdana_regular",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                ElevatedButton(onPressed: () {}, child: const Text('Login')),
                Text('Don\'t have an account? Register here')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
