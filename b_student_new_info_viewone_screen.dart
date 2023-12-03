import 'package:flutter/material.dart';
import 'package:sksu_fv1/core/app_export.dart';
import 'package:sksu_fv1/widgets/app_bar/appbar_subtitle.dart';
import 'package:sksu_fv1/widgets/app_bar/appbar_title.dart';
import 'package:sksu_fv1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sksu_fv1/widgets/app_bar/custom_app_bar.dart';
import 'package:sksu_fv1/widgets/custom_elevated_button.dart';
import 'package:sksu_fv1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class BStudentNewInfoViewoneScreen extends StatelessWidget {
  BStudentNewInfoViewoneScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

  TextEditingController dateController = TextEditingController();

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
                    padding: EdgeInsets.only(top: 36.v),
                    child: SizedBox(
                        height: 734.v,
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
                                                horizontal: 42.h,
                                                vertical: 17.v),
                                            decoration: AppDecoration
                                                .fillSecondaryContainer1,
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 7.h),
                                                      child: Text("New Student",
                                                          style: theme.textTheme
                                                              .headlineLarge)),
                                                  SizedBox(height: 18.v),
                                                  Container(
                                                      width: 334.h,
                                                      margin: EdgeInsets.only(
                                                          right: 12.h),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 8.h,
                                                              vertical: 12.v),
                                                      decoration: AppDecoration
                                                          .outlinePrimary
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder12),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("Full Name",
                                                                style: theme
                                                                    .textTheme
                                                                    .titleMedium),
                                                            SizedBox(
                                                                height: 5.v),
                                                            _buildFullName(
                                                                context),
                                                            SizedBox(
                                                                height: 2.v),
                                                            Text("Class Name",
                                                                style: theme
                                                                    .textTheme
                                                                    .titleMedium),
                                                            SizedBox(
                                                                height: 2.v),
                                                            _buildName(context),
                                                            SizedBox(
                                                                height: 10.v),
                                                            Text(
                                                                "Identification Number",
                                                                style: theme
                                                                    .textTheme
                                                                    .titleMedium),
                                                            SizedBox(
                                                                height: 5.v),
                                                            _buildEditText(
                                                                context),
                                                            SizedBox(
                                                                height: 3.v),
                                                            Text(
                                                                "Identity Card",
                                                                style: theme
                                                                    .textTheme
                                                                    .titleMedium),
                                                            SizedBox(
                                                                height: 16.v),
                                                            _buildEditText1(
                                                                context)
                                                          ])),
                                                  SizedBox(height: 20.v),
                                                  Container(
                                                      width: 334.h,
                                                      margin: EdgeInsets.only(
                                                          left: 1.h,
                                                          right: 11.h),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 8.h,
                                                              vertical: 10.v),
                                                      decoration: AppDecoration
                                                          .outlinePrimary
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder12),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "Date of Birth",
                                                                style: theme
                                                                    .textTheme
                                                                    .titleMedium),
                                                            SizedBox(
                                                                height: 7.v),
                                                            _buildDateOfBirth(
                                                                context),
                                                            SizedBox(
                                                                height: 3.v),
                                                            Text(
                                                                "Date of Entry",
                                                                style: theme
                                                                    .textTheme
                                                                    .titleMedium),
                                                            SizedBox(
                                                                height: 2.v),
                                                            _buildDate(context),
                                                            SizedBox(
                                                                height: 13.v)
                                                          ])),
                                                  SizedBox(height: 43.v)
                                                ])),
                                        _buildNineteen(context)
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
  Widget _buildFullName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 9.h),
        child: CustomTextFormField(controller: fullNameController));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 9.h),
        child: CustomTextFormField(controller: nameController));
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 9.h),
        child: CustomTextFormField(controller: editTextController));
  }

  /// Section Widget
  Widget _buildEditText1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 9.h),
        child: CustomTextFormField(controller: editTextController1));
  }

  /// Section Widget
  Widget _buildDateOfBirth(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 9.h),
        child: CustomTextFormField(controller: dateOfBirthController));
  }

  /// Section Widget
  Widget _buildDate(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 9.h),
        child: CustomTextFormField(
            controller: dateController, textInputAction: TextInputAction.done));
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
  Widget _buildNineteen(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 64.h, vertical: 16.v),
        decoration: AppDecoration.fillBlueGray,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [SizedBox(height: 3.v), _buildNext(context)]));
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

  /// Navigates to the biStudentNewInfoViewoneScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.biStudentNewInfoViewoneScreen);
  }
}
