import 'package:cafe/components/default_button.dart';
import 'package:cafe/components/error_form.dart';
import 'package:cafe/constants.dart';
import 'package:cafe/screens/otp/otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error!);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            FirstNameField(),
            SizedBox(height: 30),
            LastNameField(),
            SizedBox(height: 30),
            PhoneField(),
            SizedBox(height: 30),
            AddressField(),
            FormError(errors: errors),
            SizedBox(height: 40),
            DefaultButton(
                text: "Continue",
                press: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, OTPScreen.routeName);
                  }
                })
          ],
        ),
      ),
    );
  }

  TextFormField AddressField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: addressNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: addressNullError);
          return " ";
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: 'Address',
          hintText: "Enter your Address",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(horizontal: 45, vertical: 20),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: textColor),
              gapPadding: 10),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: textColor),
              gapPadding: 10),
          suffixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 20, 20),
            child: Icon(
              Icons.location_on,
              size: 18,
            ),
          )),
    );
  }

  TextFormField PhoneField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phoneNumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: phoneNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: phoneNullError);
          return " ";
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: 'Phone Number',
          hintText: "Enter your Phone Number",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(horizontal: 45, vertical: 20),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: textColor),
              gapPadding: 10),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: textColor),
              gapPadding: 10),
          suffixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 20, 20),
            child: Icon(
              Icons.mobile_friendly,
              size: 18,
            ),
          )),
    );
  }

  TextFormField LastNameField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue,
      decoration: InputDecoration(
          labelText: 'Last Name',
          hintText: "Enter your Last Name",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(horizontal: 45, vertical: 20),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: textColor),
              gapPadding: 10),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: textColor),
              gapPadding: 10),
          suffixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 20, 20),
            child: Icon(
              Icons.person,
              size: 18,
            ),
          )),
    );
  }

  TextFormField FirstNameField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: nameNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: nameNullError);
          return " ";
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: 'First Name',
          hintText: "Enter your First Name",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(horizontal: 45, vertical: 20),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: textColor),
              gapPadding: 10),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: textColor),
              gapPadding: 10),
          suffixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 20, 20),
            child: Icon(
              Icons.person,
              size: 18,
            ),
          )),
    );
  }
}
