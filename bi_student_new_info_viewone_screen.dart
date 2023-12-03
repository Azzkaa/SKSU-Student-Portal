import 'package:flutter/material.dart';
import 'package:sksu_fv1/core/app_export.dart';
import 'package:sksu_fv1/widgets/app_bar/appbar_subtitle.dart';
import 'package:sksu_fv1/widgets/app_bar/appbar_title.dart';
import 'package:sksu_fv1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sksu_fv1/widgets/app_bar/custom_app_bar.dart';
import 'package:sksu_fv1/widgets/custom_elevated_button.dart';
import 'package:sksu_fv1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class BiStudentNewInfoViewoneScreen extends StatelessWidget {
  BiStudentNewInfoViewoneScreen({Key? key}) : super(key: key);

  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  TextEditingController editTextController2 = TextEditingController();

  TextEditingController editTextController3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 37.v),
                    child: SizedBox(
                        height: 733.v,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              ImageConstant.imgGroup222),
                                          fit: BoxFit.cover)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 44.h,
                                                vertical: 43.v),
                                            decoration: AppDecoration
                                                .fillSecondaryContainer1,
                                            child: Column(children: [
                                              SizedBox(height: 17.v),
                                              Container(
                                                  margin: EdgeInsets.only(
                                                      right: 1.h),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 16.h,
                                                      vertical: 21.v),
                                                  decoration: AppDecoration
                                                      .outlinePrimary
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder12),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgProfilePicture,
                                                            height: 92.v,
                                                            width: 96.h),
                                                        SizedBox(height: 16.v),
                                                        _buildUploadProfilePicture(
                                                            context),
                                                        SizedBox(height: 19.v),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 4
                                                                            .h),
                                                                child: Text(
                                                                    "Address",
                                                                    style: theme
                                                                        .textTheme
                                                                        .titleMedium))),
                                                        _buildEditText(context),
                                                        SizedBox(height: 7.v),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Text("City",
                                                                style: theme
                                                                    .textTheme
                                                                    .titleMedium)),
                                                        _buildEditText1(
                                                            context),
                                                        SizedBox(height: 6.v),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Text("State",
                                                                style: theme
                                                                    .textTheme
                                                                    .titleMedium)),
                                                        _buildEditText2(
                                                            context),
                                                        SizedBox(height: 9.v),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 4
                                                                            .h),
                                                                child: Text(
                                                                    "Postal Code",
                                                                    style: theme
                                                                        .textTheme
                                                                        .titleMedium))),
                                                        _buildEditText3(
                                                            context),
                                                        SizedBox(height: 6.v),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 4
                                                                            .h),
                                                                child: Text(
                                                                    "Contact Number",
                                                                    style: theme
                                                                        .textTheme
                                                                        .titleMedium))),
                                                        Container(
                                                            height: 32.v,
                                                            width: 309.h,
                                                            decoration: BoxDecoration(
                                                                color: appTheme
                                                                    .gray50,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(10
                                                                            .h),
                                                                border: Border.all(
                                                                    color: appTheme
                                                                        .gray800,
                                                                    width:
                                                                        1.h)))
                                                      ]))
                                            ])),
                                        _buildFour(context)
                                      ]))),
                          _buildNavigator(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: Padding(
            padding: EdgeInsets.only(left: 55.h),
            child: Column(children: [
              AppbarTitle(text: "Cikgu Zarina"),
              AppbarSubtitle(
                  text: "Welcome Back!", margin: EdgeInsets.only(right: 109.h))
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgProfilePicture,
              margin: EdgeInsets.only(left: 11.h, right: 70.h))
        ]);
  }

  /// Section Widget
  Widget _buildUploadProfilePicture(BuildContext context) {
    return CustomElevatedButton(text: "Upload Profile Picture");
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return CustomTextFormField(controller: editTextController);
  }

  /// Section Widget
  Widget _buildEditText1(BuildContext context) {
    return CustomTextFormField(controller: editTextController1);
  }

  /// Section Widget
  Widget _buildEditText2(BuildContext context) {
    return CustomTextFormField(controller: editTextController2);
  }

  /// Section Widget
  Widget _buildEditText3(BuildContext context) {
    return CustomTextFormField(
        controller: editTextController3, textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
        width: 144.h,
        text: "Next",
        onPressed: () {
          onTapNext(context);
        });
  }

  /// Section Widget
  Widget _buildFour(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 64.h, vertical: 16.v),
        decoration: AppDecoration.fillBlueGray,
        child: _buildNext(context));
  }

  /// Section Widget
  Widget _buildNavigator(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 89.h, vertical: 14.v),
            decoration: AppDecoration.fillOnErrorContainer,
            child: CustomImageView(
                imagePath: ImageConstant.imgFrame1,
                height: 21.v,
                width: 244.h)));
  }

  /// Navigates to the biiStudentNewInfoViewoneScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.biiStudentNewInfoViewoneScreen);
  }
}
