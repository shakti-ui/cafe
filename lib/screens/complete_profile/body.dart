import 'package:cafe/constants.dart';
import 'package:cafe/screens/complete_profile/complete_profile_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
          child: Column(
        children: [
          Text("Complete Profile", style: headingStyle),
          Text("Complete your details or continue \nwith social media",
              textAlign: TextAlign.center),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05
          ),
          CompleteProfileForm(),
          SizedBox(height: 30),
          Text(
            "By continuing your confirm that you agree \nwith our Term and Condition",
            textAlign: TextAlign.center,
          )
        ],
      )),
    );
  }
}
