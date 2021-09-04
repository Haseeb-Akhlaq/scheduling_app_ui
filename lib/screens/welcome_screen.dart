import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';
import 'package:scheduling_app/screens/registration_screen.dart';
import 'package:scheduling_app/styles/colors.dart';

// ignore: must_be_immutable
class WelcomeScreen extends StatelessWidget {
  static const String id = 'welcome_screen';

  // //TODO Verify that the observer in main is akin to what i'm trying below
  // final FirebaseAnalytics analytics = FirebaseAnalytics();
  //
  // final signInController = Get.find<SignInController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/MainLogo.png',
                  fit: BoxFit.contain,
                ),
                // kBuildLogo(),
                SizedBox(height: 12.0),
                // alphaTextField(
                //     'Email', signInController.emailController, false),
                SizedBox(
                  height: 6,
                ),
                // alphaTextField(
                //     'Password', signInController.passwordController, true),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        // GetBuilder<SignInController>(
                        //   //init: SignInController(),
                        //   builder: (_) => Switch(
                        //       value: _.rememberUser.value,
                        //       activeColor: kThemeColor,
                        //       onChanged: (newValue) {
                        //         signInController.setRememberUserFlag(newValue);
                        //       }),
                        // ),
                        Text(
                          'Stay Signed In',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    // GetBuilder<>(
                    //   builder: (_) => ButtonBar(
                    //     children: <Widget>[
                    //       TextButton(
                    //         style: TextButton.styleFrom(
                    //           primary: kThemeColor,
                    //         ),
                    //         child: Text(
                    //           'Forgot Password?',
                    //           style: TextStyle(
                    //             fontSize: 15,
                    //           ),
                    //         ),
                    //         onPressed: () async {
                    //           print('User Forgot Password');
                    //           // signInController.resetUserPasswordWithEmail();
                    //         },
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(210.0, 42.0),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                  ),
                  child: Text(
                    'Sign in'.toUpperCase(),
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  onPressed: () async {
                    //await signInController.signInUser(kUserLoginType.Email);
                  },
                ),

                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text("OR"),
                    SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                SignInButton(
                  Buttons.Facebook,
                  text: 'Sign in with Facebook',
                  onPressed: () async {
                    // await signInController
                    //     .signInUser(kUserLoginType.Facebook);
                    // // buildNotificationDialog(
                    // //     context, "Support for Facebook Login is coming!", true);
                    // analytics.logEvent(
                    //     name: 'facebook_login',
                    //     parameters: {'user_tried': true});
                    // //print('Sign In with Facebook');
                  },
                  padding: EdgeInsets.all(9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),

                SizedBox(
                  height: 12,
                ),
                SignInButton(
                  Buttons.Google,
                  //text: 'Sign in with Google',
                  onPressed: () async {
                    // await signInController.signInUser(kUserLoginType.Google);
                    // // buildNotificationDialog(
                    // //     context, "Support for Google Login is coming!", true);
                    // //print('Sign In with Google');
                  },
                  padding: EdgeInsets.all(4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),

                SizedBox(
                  height: 12,
                ),
                // GetBuilder<SignInController>(
                //   builder: (_) =>
                SignInButton(
                  Buttons.Apple,
                  onPressed: () async {
                    // await signInController.signInUser(kUserLoginType.Apple);
                  },
                  padding: EdgeInsets.all(4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),

                SizedBox(height: 44),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Get.to(RegistrationScreen());
                        },
                        child: Text(
                          '  Create an account',
                          style: TextStyle(
                            fontSize: 13,
                            color: AppColors.mainRed,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                /*RaisedButton.icon(
                  label: Text('Register'.toUpperCase()),
                  onPressed: () {
                    print('register new User');
                    Navigator.pushNamed(context, RegistrationScreen.id);
                  },
                  icon: Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                ),*/
              ],
            ),
          ],
        ),
      ),
    );
  }
}
