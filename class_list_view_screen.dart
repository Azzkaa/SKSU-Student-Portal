import '../class_list_view_screen/widgets/complete_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:sksu_fv1/core/app_export.dart';
import 'package:sksu_fv1/widgets/app_bar/appbar_subtitle.dart';
import 'package:sksu_fv1/widgets/app_bar/appbar_title.dart';
import 'package:sksu_fv1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sksu_fv1/widgets/app_bar/custom_app_bar.dart';
import 'package:sksu_fv1/widgets/custom_elevated_button.dart';

class ClassListViewScreen extends StatelessWidget {
  const ClassListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: _buildAppBar(context),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onError.withOpacity(1),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup222),
                        fit: BoxFit.cover)),
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 41.v),
                    child: Column(children: [
                      Container(
                          margin: EdgeInsets.only(right: 1.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 18.v),
                          decoration: AppDecoration.fillSecondaryContainer1,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Padding(
                                        padding: EdgeInsets.only(bottom: 38.v),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 1.h),
                                                  child: Text("1 Al-Battani",
                                                      style: theme.textTheme
                                                          .headlineLarge)),
                                              SizedBox(height: 47.v),
                                              _buildComplete(context)
                                            ]))),
                                Container(
                                    height: 140.v,
                                    width: 8.h,
                                    margin: EdgeInsets.only(
                                        left: 17.h, top: 110.v, bottom: 317.v),
                                    decoration: BoxDecoration(
                                        color: appTheme.blueGray10077
                                            .withOpacity(0.5),
                                        borderRadius:
                                            BorderRadius.circular(4.h)))
                              ])),
                      _buildTwentyTwo(context),
                      _buildNavigator(context)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: Padding(
            padding: EdgeInsets.only(left: 57.h),
            child: Column(children: [
              AppbarTitle(text: "Cikgu Zarina"),
              AppbarSubtitle(
                  text: "Welcome Back!", margin: EdgeInsets.only(right: 109.h))
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgProfilePicture,
              margin: EdgeInsets.only(left: 11.h, right: 68.h))
        ]);
  }

  /// Section Widget
  Widget _buildComplete(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 10.v);
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return CompleteItemWidget(onTapPreview: () {
            onTapPreview(context);
          });
        });
  }

  /// Section Widget
  Widget _buildAddNewStudent(BuildContext context) {
    return CustomElevatedButton(
        width: 146.h,
        text: "Add New Student",
        margin: EdgeInsets.only(bottom: 1.v),
        buttonTextStyle: theme.textTheme.labelMedium!);
  }

  /// Section Widget
  Widget _buildDeleteStudent(BuildContext context) {
    return CustomElevatedButton(
        width: 144.h,
        text: "Delete Student",
        margin: EdgeInsets.only(right: 6.h),
        buttonTextStyle: theme.textTheme.labelMedium!,
        onPressed: () {
          onTapDeleteStudent(context);
        });
  }

  /// Section Widget
  Widget _buildTwentyTwo(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 50.h, vertical: 16.v),
        decoration: AppDecoration.fillBlueGray,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildAddNewStudent(context),
              _buildDeleteStudent(context)
            ]));
  }

  /// Section Widget
  Widget _buildNavigator(BuildContext context) {
    return Container(
        width: 429.h,
        margin: EdgeInsets.only(right: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 88.h, vertical: 14.v),
        decoration: AppDecoration.fillOnErrorContainer,
        child: CustomImageView(
            imagePath: ImageConstant.imgFrame1, height: 21.v, width: 244.h));
  }

  /// Navigates to the studentDataViewEditScreen when the action is triggered.
  onTapPreview(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.studentDataViewEditScreen);
  }

  /// Navigates to the aStudentListViewDeleteScreen when the action is triggered.
  onTapDeleteStudent(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.aStudentListViewDeleteScreen);
  }
}
