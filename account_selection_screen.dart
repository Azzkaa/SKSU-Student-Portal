import 'package:flutter/material.dart';
import 'package:sksu_fv1/core/app_export.dart';
import 'package:sksu_fv1/widgets/custom_elevated_button.dart';

class AccountSelectionScreen extends StatelessWidget {
  const AccountSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onError.withOpacity(1),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup156),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 157.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(right: 1.h),
                                  child: Column(children: [
                                    SizedBox(
                                        height: 171.v,
                                        width: 174.h,
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      height: 171.v,
                                                      width: 174.h,
                                                      decoration: BoxDecoration(
                                                          color: theme
                                                              .colorScheme
                                                              .onError
                                                              .withOpacity(1),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      87.h),
                                                          boxShadow: [
                                                            BoxShadow(
                                                                color: theme
                                                                    .colorScheme
                                                                    .primary,
                                                                spreadRadius:
                                                                    2.h,
                                                                blurRadius: 2.h,
                                                                offset: Offset(
                                                                    0, 4))
                                                          ]))),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgLencanaSekolah,
                                                  height: 127.adaptSize,
                                                  width: 127.adaptSize,
                                                  alignment: Alignment.center)
                                            ])),
                                    SizedBox(height: 16.v),
                                    SizedBox(
                                        width: 169.h,
                                        child: Text(
                                            "Sekolah Kebangsaan Saujana Utama ",
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: CustomTextStyles
                                                .headlineSmallBold)),
                                    SizedBox(height: 59.v),
                                    Text("Login as:",
                                        style:
                                            CustomTextStyles.titleLargeSegoeUI),
                                    SizedBox(height: 10.v),
                                    CustomElevatedButton(
                                        height: 53.v,
                                        width: 152.h,
                                        text: "STUDENT",
                                        buttonStyle:
                                            CustomButtonStyles.fillYellowA,
                                        buttonTextStyle: CustomTextStyles
                                            .titleMediumSecondaryContainer,
                                        onPressed: () {
                                          onTapSTUDENT(context);
                                        }),
                                    SizedBox(height: 19.v),
                                    CustomElevatedButton(
                                        height: 53.v,
                                        width: 152.h,
                                        text: "TEACHER",
                                        buttonStyle:
                                            CustomButtonStyles.fillYellowA,
                                        buttonTextStyle: CustomTextStyles
                                            .titleMediumSecondaryContainer,
                                        onPressed: () {
                                          onTapTEACHER(context);
                                        }),
                                    SizedBox(height: 166.v),
                                    _buildNavigator(context)
                                  ]))))
                    ])))));
  }

  /// Section Widget
  Widget _buildNavigator(BuildContext context) {
    return Container(
        width: 429.h,
        padding: EdgeInsets.symmetric(horizontal: 88.h, vertical: 14.v),
        decoration: AppDecoration.fillOnErrorContainer,
        child: CustomImageView(
            imagePath: ImageConstant.imgFrame1, height: 21.v, width: 244.h));
  }

  /// Navigates to the loginpageOneScreen when the action is triggered.
  onTapSTUDENT(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginpageOneScreen);
  }

  /// Navigates to the loginpageScreen when the action is triggered.
  onTapTEACHER(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginpageScreen);
  }
}
