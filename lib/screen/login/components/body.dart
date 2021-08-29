import 'package:car_world_flutter_project/constants.dart';
import 'package:car_world_flutter_project/size_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: Column(
                children: [
                  const Spacer(),
                  Text(
                    "Car World",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(36),
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Welcome to Car World, Let's sign in!",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(16),
                    ),
                  ),
                  const Spacer(flex: 1),
                  Image.asset(
                    "assets/images/login.gif",
                    height: getProportionateScreenHeight(430),
                    width: getProportionateScreenWidth(375),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(23)!,
                    vertical: getProportionateScreenWidth(45)!),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: getProportionateScreenHeight(56),
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("Sign in with Google"),
                            SizedBox(width: 1),
                            Icon(
                              Icons.g_mobiledata_outlined,
                              size: 35,
                            ),
                          ],
                        ),
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(56),
                          ),
                          primary: Colors.white,
                          backgroundColor: kPrimaryColor,
                          textStyle: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontFamily: "Muli",
                          ),
                        ),
                      ),
                    ),
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
