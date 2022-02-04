import 'package:flutter/material.dart';
import 'package:icharm_web/utilities/utilities.dart';

class VirtualConsultIndex extends StatelessWidget {
  final Function onPressedNextButton;
  VirtualConsultIndex({Key? key, required this.onPressedNextButton})
      : super(key: key);

  final _formKey = GlobalKey<FormState>();

  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _clinicOrHospitalNameController = TextEditingController();
  final _provinceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.3),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text('ข้อมูลคนไข้'),
            ),
            TextFormField(
              controller: _firstNameController,
              decoration: const InputDecoration(
                hintText: 'First name',
              ),
              validator: (value) =>
                  Validations().validationNormalTextField(someText: value),
            ),
            TextFormField(
              controller: _lastNameController,
              decoration: const InputDecoration(
                hintText: 'Last name',
              ),
              validator: (value) =>
                  Validations().validationNormalTextField(someText: value),
            ),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
              validator: (value) =>
                  Validations().validationNormalTextField(someText: value),
            ),
            TextFormField(
              controller: _clinicOrHospitalNameController,
              decoration: const InputDecoration(
                hintText: 'Clinic / Hospital',
              ),
              validator: (value) =>
                  Validations().validationNormalTextField(someText: value),
            ),
            TextFormField(
              controller: _provinceController,
              decoration: const InputDecoration(
                hintText: 'Province',
              ),
              validator: (value) =>
                  Validations().validationNormalTextField(someText: value),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                child: const Text('Next'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    onPressedNextButton();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
