import 'package:flutter/material.dart';
import 'package:sksu_fv1/core/app_export.dart';
import 'package:sksu_fv1/widgets/app_bar/appbar_subtitle.dart';
import 'package:sksu_fv1/widgets/app_bar/appbar_title.dart';
import 'package:sksu_fv1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sksu_fv1/widgets/app_bar/custom_app_bar.dart';
import 'package:sksu_fv1/widgets/custom_elevated_button.dart';
import 'package:sksu_fv1/widgets/custom_icon_button.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key})
      : super(
          key: key,
        );

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
              image: AssetImage(
                ImageConstant.imgGroup222,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 26.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 52.h),
                  child: Text(
                    "User Information",
                    style: CustomTextStyles.titleLargeSegoeUI_1,
                  ),
                ),
                SizedBox(height: 8.v),
                _buildUserInformation(context),
                SizedBox(height: 28.v),
                Padding(
                  padding: EdgeInsets.only(left: 52.h),
                  child: Text(
                    "Curriculum/Acheivements",
                    style: CustomTextStyles.titleLargeSegoeUI_1,
                  ),
                ),
                SizedBox(height: 5.v),
                _buildCurriculumInfo(context),
                SizedBox(height: 23.v),
                _buildExaminationResults(context),
                _buildNavigator(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 55.h),
        child: Column(
          children: [
            AppbarTitle(
              text: "Azka Aftab",
            ),
            AppbarSubtitle(
              text: "Welcome Back!",
              margin: EdgeInsets.only(right: 83.h),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgProfilePicture,
          margin: EdgeInsets.only(
            left: 37.h,
            right: 70.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserInformation(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 39.h),
        padding: EdgeInsets.symmetric(
          horizontal: 9.h,
          vertical: 12.v,
        ),
        decoration: AppDecoration.fillSecondaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 173.h,
                          margin: EdgeInsets.only(right: 39.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Full Name      ",
                                style: theme.textTheme.labelLarge,
                              ),
                              Text(
                                "Azka Aftab",
                                style: CustomTextStyles.labelLargeOnErrorBold,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 9.v),
                        Container(
                          width: 163.h,
                          margin: EdgeInsets.only(right: 49.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Class              ",
                                style: theme.textTheme.labelLarge,
                              ),
                              Text(
                                "Tahun 6A",
                                style: CustomTextStyles.labelLargeOnErrorBold,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 9.v),
                        Container(
                          width: 150.h,
                          margin: EdgeInsets.only(right: 62.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "ID",
                                style: theme.textTheme.labelLarge,
                              ),
                              Text(
                                "497946",
                                style: CustomTextStyles.labelLargeOnErrorBold,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 9.v),
                        SizedBox(
                          width: 212.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "IC Number",
                                style: theme.textTheme.labelLarge,
                              ),
                              Text(
                                "386-46451-64847",
                                style: CustomTextStyles.labelLargeOnErrorBold,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 51.v),
                    child: CustomIconButton(
                      height: 50.adaptSize,
                      width: 50.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFrame2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.v),
            Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Row(
                children: [
                  Text(
                    "Date of Birth",
                    style: theme.textTheme.labelLarge,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 29.h),
                    child: Text(
                      "25/Mar/2002",
                      style: CustomTextStyles.labelLargeOnErrorBold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 9.v),
            Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Row(
                children: [
                  Text(
                    "Date of Entry",
                    style: theme.textTheme.labelLarge,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 26.h),
                    child: Text(
                      "02/Jan/2009",
                      style: CustomTextStyles.labelLargeOnErrorBold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 7.v),
            Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                right: 38.h,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 19.v),
                    child: Text(
                      "Address",
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  Container(
                    width: 175.h,
                    margin: EdgeInsets.only(left: 57.h),
                    child: Text(
                      "House No, Street, City, State,\nPostal Code, Country.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelLargeOnErrorBold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.v),
            Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.v),
                    child: Text(
                      "Contact No",
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 37.h,
                      top: 2.v,
                    ),
                    child: Text(
                      "+60123456789",
                      style: CustomTextStyles.labelLargeOnErrorBold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCurriculumInfo(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 39.h),
        padding: EdgeInsets.symmetric(
          horizontal: 9.h,
          vertical: 15.v,
        ),
        decoration: AppDecoration.fillSecondaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 22.h,
                top: 9.v,
                bottom: 9.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 192.h,
                    margin: EdgeInsets.only(right: 9.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Unit Beruniform",
                          style: theme.textTheme.labelLarge,
                        ),
                        Text(
                          "Puteri Islam",
                          style: CustomTextStyles.labelLargeOnErrorBold,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 9.v),
                  SizedBox(
                    width: 202.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Kelab/Persatuan",
                          style: theme.textTheme.labelLarge,
                        ),
                        Text(
                          "Seni Bundaya",
                          style: CustomTextStyles.labelLargeOnErrorBold,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Container(
                    width: 187.h,
                    margin: EdgeInsets.only(right: 14.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sukan",
                          style: theme.textTheme.labelLarge,
                        ),
                        Text(
                          "Badminton",
                          style: CustomTextStyles.labelLargeOnErrorBold,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Container(
                    width: 178.h,
                    margin: EdgeInsets.only(right: 23.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            "Nilam",
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        Text(
                          "5 Bintang",
                          style: CustomTextStyles.labelLargeOnErrorBold,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Container(
                    width: 161.h,
                    margin: EdgeInsets.only(right: 41.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Peringkat",
                          style: theme.textTheme.labelLarge,
                        ),
                        Text(
                          "Negeri",
                          style: CustomTextStyles.labelLargeOnErrorBold,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Container(
                    width: 188.h,
                    margin: EdgeInsets.only(right: 13.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Text(
                            "Pencapaian",
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        Text(
                          "Naib Johan",
                          style: CustomTextStyles.labelLargeOnErrorBold,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text(
                          "Ekstra Kurikulam",
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Text(
                          "Pengawas",
                          style: CustomTextStyles.labelLargeOnErrorBold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 152.v),
              child: CustomIconButton(
                height: 50.adaptSize,
                width: 50.adaptSize,
                padding: EdgeInsets.all(10.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgFrame2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildExaminationResults(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 61.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillBlueGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 109.h,
            child: Text(
              "Examination Results",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleLargeSegoeUI_2,
            ),
          ),
          CustomElevatedButton(
            width: 178.h,
            text: "DOWNLOAD RESULTS",
            margin: EdgeInsets.only(
              left: 17.h,
              top: 2.v,
              bottom: 9.v,
            ),
            buttonTextStyle: theme.textTheme.labelMedium!,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNavigator(BuildContext context) {
    return Container(
      width: 429.h,
      padding: EdgeInsets.symmetric(
        horizontal: 88.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer,
      child: CustomImageView(
        imagePath: ImageConstant.imgFrame1,
        height: 21.v,
        width: 244.h,
      ),
    );
  }
}
