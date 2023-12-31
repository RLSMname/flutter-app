import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../utils/auth.dart';
import '../../utils/constants.dart';


class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: Column(
        children: [
          FormBuilderTextField(
            name: 'email',
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: 'Email',
            ),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.email(),
            ]),
          ),
          const SizedBox(
            height: 16,
          ),
          FormBuilderTextField(
            name: 'password',
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: 'Password',
            ),
            obscureText: true,
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 135, vertical: 16),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState == null ||
                    !_formKey.currentState!.validate()) return;
                Map<String, dynamic>? value =
                    _formKey.currentState?.instantValue;

                Auth().registerWithEmailAndPassword(
                    value?['email'], value?['password']);
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 0),
                shape: const StadiumBorder(),
                foregroundColor: Colors.white,
                backgroundColor: kSecondaryColor,
                elevation: 8,
                shadowColor: Colors.black87,
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
