import 'package:cafe/constants.dart';
import 'package:cafe/screens/otp/otp_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Text("OTP Verification", style: headingStyle),
              Text("We sent your code to +977 98 000 *****"),
              BuildTimer(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              OTPForm(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Resend OTP Code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row BuildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: Duration(seconds: 30),
          builder: (BuildContext context, double value, Widget? child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: primaryColor),
          ),
          onEnd: () {},
        )
      ],
    );
  }
}
