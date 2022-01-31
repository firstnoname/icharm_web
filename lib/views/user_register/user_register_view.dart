import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icharm_web/blocs/blocs.dart';
import 'package:icharm_web/models/user.dart';
import 'package:icharm_web/services/services.dart';

class UserRegisterView extends StatelessWidget {
  UserRegisterView({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  final _firstnameController = TextEditingController();
  final _lastnameController = TextEditingController();
  final _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.3),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: _firstnameController,
                decoration: const InputDecoration(hintText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _lastnameController,
                decoration: const InputDecoration(hintText: 'Lastname'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _phoneNumberController,
                decoration: const InputDecoration(hintText: 'Phone number'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Text('signup'),
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      User userInfo = await UserAPI().addUser(
                        User(
                          id: auth.FirebaseAuth.instance.currentUser!.uid,
                          firstName: _firstnameController.text,
                          lastName: _lastnameController.text,
                          phoneNumber: _phoneNumberController.text,
                        ),
                      );

                      if (userInfo.id != null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('เพิ่มข้อมูลสำเร็จ'),
                          ),
                        );
                        BlocProvider.of<IcharmManagerBloc>(context).add(
                            ICharmManagerEventSaveUserInfo(userInfo: userInfo));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content:
                                Text('เกิดข้อผิดพลาด. เพิ่มข้อมูลไม่สำเร็จ'),
                          ),
                        );
                      }
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
