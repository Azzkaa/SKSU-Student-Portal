import 'package:flutter/material.dart';
import 'package:sksu_fv1/core/app_export.dart';
import 'package:sksu_fv1/widgets/custom_elevated_button.dart';
import 'package:sksu_fv1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginpageOneScreen extends StatelessWidget {
  LoginpageOneScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onError.withOpacity(1),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup222),
                        fit: BoxFit.cover)),
                child: Form(
                    key: _formKey,
                    child: SizedBox(
                        width: double.maxFinite,
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          SizedBox(height: 102.v),
                          Expanded(
                              child: SingleChildScrollView(
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 1.h),
                                      child: Column(children: [
                                        SizedBox(
                                            height: 622.v,
                                            width: 368.h,
                                            child: Stack(
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Container(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      51.h,
                                                                  vertical:
                                                                      99.v),
                                                          decoration: AppDecoration
                                                              .fillPrimaryContainer
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder55),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                SizedBox(
                                                                    height:
                                                                        4.v),
                                                                Text("Login",
                                                                    style: CustomTextStyles
                                                                        .displaySmallSemiBold),
                                                                Text(
                                                                    "Please log in to continue.",
                                                                    style: CustomTextStyles
                                                                        .titleMediumGray600),
                                                                SizedBox(
                                                                    height:
                                                                        17.v),
                                                                CustomTextFormField(
                                                                    controller:
                                                                        userNameController,
                                                                    hintText:
                                                                        "Username",
                                                                    prefix: Container(
                                                                        margin: EdgeInsets.fromLTRB(
                                                                            27
                                                                                .h,
                                                                            17
                                                                                .v,
                                                                            6.h,
                                                                            13
                                                                                .v),
                                                                        child: CustomImageView(
                                                                            imagePath: ImageConstant
                                                                                .imgUser,
                                                                            height: 21
                                                                                .adaptSize,
                                                                            width: 21
                                                                                .adaptSize)),
                                                                    prefixConstraints:
                                                                        BoxConstraints(
                                                                            maxHeight: 51
                                                                                .v),
                                                                    contentPadding: EdgeInsets.only(
                                                                        top: 14
                                                                            .v,
                                                                        right: 30
                                                                            .h,
                                                                        bottom: 14
                                                                            .v),
                                                                    borderDecoration:
                                                                        TextFormFieldStyleHelper
                                                                            .fillBlueGray,
                                                                    fillColor: appTheme
                                                                        .blueGray10077
                                                                        .withOpacity(0.7)),
                                                                SizedBox(
                                                                    height:
                                                                        12.v),
                                                                CustomTextFormField(
                                                                    controller:
                                                                        passwordController,
                                                                    hintText:
                                                                        "Password",
                                                                    textInputAction: TextInputAction
                                                                        .done,
                                                                    textInputType: TextInputType
                                                                        .visiblePassword,
                                                                    prefix: Container(
                                                                        margin: EdgeInsets.fromLTRB(
                                                                            27
                                                                                .h,
                                                                            14
                                                                                .v,
                                                                            6.h,
                                                                            15
                                                                                .v),
                                                                        child: CustomImageView(
                                                                            imagePath: ImageConstant
                                                                                .imgIconKey,
                                                                            height: 21
                                                                                .adaptSize,
                                                                            width: 21
                                                                                .adaptSize)),
                                                                    prefixConstraints: BoxConstraints(
                                                                        maxHeight: 50
                                                                            .v),
                                                                    obscureText:
                                                                        true,
                                                                    contentPadding: EdgeInsets.only(
                                                                        top: 14
                                                                            .v,
                                                                        right: 30
                                                                            .h,
                                                                        bottom: 14
                                                                            .v),
                                                                    borderDecoration:
                                                                        TextFormFieldStyleHelper.fillBlueGray,
                                                                    fillColor: appTheme.blueGray10077.withOpacity(0.7)),
                                                                SizedBox(
                                                                    height:
                                                                        19.v),
                                                                CustomElevatedButton(
                                                                    height:
                                                                        53.v,
                                                                    width:
                                                                        152.h,
                                                                    text:
                                                                        "LOGIN",
                                                                    buttonStyle:
                                                                        CustomButtonStyles
                                                                            .fillYellowA,
                                                                    buttonTextStyle:
                                                                        CustomTextStyles
                                                                            .titleMediumSecondaryContainer,
                                                                    onPressed:
                                                                        () {
                                                                      onTapLOGIN(
                                                                          context);
                                                                    })
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: SizedBox(
                                                          height: 215.v,
                                                          width: 219.h,
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Container(
                                                                        height: 215.v,
                                                                        width: 219.h,
                                                                        decoration: BoxDecoration(color: theme.colorScheme.onError.withOpacity(1), borderRadius: BorderRadius.circular(109.h), boxShadow: [
                                                                          BoxShadow(
                                                                              color: theme.colorScheme.primary,
                                                                              spreadRadius: 2.h,
                                                                              blurRadius: 2.h,
                                                                              offset: Offset(0, 4))
                                                                        ]))),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgLencanaSekolah,
                                                                    height: 160
                                                                        .adaptSize,
                                                                    width: 160
                                                                        .adaptSize,
                                                                    alignment:
                                                                        Alignment
                                                                            .center)
                                                              ])))
                                                ])),
                                        SizedBox(height: 109.v),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgVector,
                                            height: 50.v,
                                            width: 429.h)
                                      ]))))
                        ]))))));
  }

  /// Navigates to the userProfileScreen when the action is triggered.
  onTapLOGIN(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.userProfileScreen);
  }
}
