import 'package:flutter/material.dart';
import 'package:sksu_fv1/core/app_export.dart';
import 'package:sksu_fv1/widgets/app_bar/appbar_subtitle.dart';
import 'package:sksu_fv1/widgets/app_bar/appbar_title.dart';
import 'package:sksu_fv1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sksu_fv1/widgets/app_bar/custom_app_bar.dart';
import 'package:sksu_fv1/widgets/custom_elevated_button.dart';

class StudentDataViewEditScreen extends StatelessWidget {
  const StudentDataViewEditScreen({Key? key})
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
            padding: EdgeInsets.only(top: 9.v),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 48.h),
                    child: Text(
                      "Student: Azka Aftab",
                      style: CustomTextStyles.titleLargeSegoeUI_1,
                    ),
                  ),
                ),
                SizedBox(height: 8.v),
                _buildFifteen(context),
                SizedBox(height: 11.v),
                _buildFourteen(context),
                SizedBox(height: 13.v),
                _buildUploadResults(context),
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
        padding: EdgeInsets.only(left: 48.h),
        child: Column(
          children: [
            AppbarTitle(
              text: "Cikgu Zarina",
            ),
            AppbarSubtitle(
              text: "Welcome Back!",
              margin: EdgeInsets.only(
                left: 3.h,
                right: 106.h,
              ),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgProfilePicture,
          margin: EdgeInsets.only(
            left: 40.h,
            right: 48.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFifteen(BuildContext context) {
    return Container(
      width: 352.h,
      margin: EdgeInsets.only(
        left: 35.h,
        right: 43.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillSecondaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Student Information",
            style: CustomTextStyles.titleLargeSegoeUI_1,
          ),
          SizedBox(height: 22.v),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Row(
              children: [
                Text(
                  "Full Name      ",
                  style: theme.textTheme.labelLarge,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 44.h),
                  child: Text(
                    "Azka Aftab",
                    style: CustomTextStyles.labelLargeOnErrorBold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Row(
              children: [
                Text(
                  "Class              ",
                  style: theme.textTheme.labelLarge,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 75.h),
                  child: Text(
                    "Tahun 6A",
                    style: CustomTextStyles.labelLargeOnErrorBold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Row(
              children: [
                Text(
                  "ID",
                  style: theme.textTheme.labelLarge,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 91.h),
                  child: Text(
                    "497946",
                    style: CustomTextStyles.labelLargeOnErrorBold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Row(
              children: [
                Text(
                  "IC Number",
                  style: theme.textTheme.labelLarge,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40.h),
                  child: Text(
                    "386-46451-64847",
                    style: CustomTextStyles.labelLargeOnErrorBold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
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
            padding: EdgeInsets.only(left: 10.h),
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
              left: 10.h,
              right: 34.h,
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
            padding: EdgeInsets.only(left: 10.h),
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
          SizedBox(height: 3.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFourteen(BuildContext context) {
    return Container(
      width: 352.h,
      margin: EdgeInsets.only(
        left: 35.h,
        right: 43.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillSecondaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Curriculum/Acheivements",
            style: CustomTextStyles.titleLargeSegoeUI_1,
          ),
          SizedBox(height: 29.v),
          Padding(
            padding: EdgeInsets.only(left: 18.h),
            child: Row(
              children: [
                Text(
                  "Unit Beruniform",
                  style: theme.textTheme.labelLarge,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "Puteri Islam",
                    style: CustomTextStyles.labelLargeOnErrorBold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(left: 18.h),
            child: Row(
              children: [
                Text(
                  "Kelab/Persatuan",
                  style: theme.textTheme.labelLarge,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 23.h),
                  child: Text(
                    "Seni Bundaya",
                    style: CustomTextStyles.labelLargeOnErrorBold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 18.h),
            child: Row(
              children: [
                Text(
                  "Sukan",
                  style: theme.textTheme.labelLarge,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 83.h),
                  child: Text(
                    "Badminton",
                    style: CustomTextStyles.labelLargeOnErrorBold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(left: 18.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text(
                    "Nilam",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 84.h),
                  child: Text(
                    "5 Bintang",
                    style: CustomTextStyles.labelLargeOnErrorBold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(left: 18.h),
            child: Row(
              children: [
                Text(
                  "Peringkat",
                  style: theme.textTheme.labelLarge,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 63.h),
                  child: Text(
                    "Negeri",
                    style: CustomTextStyles.labelLargeOnErrorBold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 18.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "Pencapaian",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 52.h),
                  child: Text(
                    "Naib Johan",
                    style: CustomTextStyles.labelLargeOnErrorBold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 18.h),
            child: Row(
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
          ),
          SizedBox(height: 14.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUploadResults(BuildContext context) {
    return SizedBox(
      height: 125.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(bottom: 49.v),
              padding: EdgeInsets.symmetric(
                horizontal: 57.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.fillBlueGray,
              child: Row(
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
                    text: "Upload Results",
                    margin: EdgeInsets.only(
                      left: 22.h,
                      top: 2.v,
                      bottom: 9.v,
                    ),
                    buttonTextStyle: theme.textTheme.labelMedium!,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 89.h,
                vertical: 14.v,
              ),
              decoration: AppDecoration.fillOnErrorContainer,
              child: CustomImageView(
                imagePath: ImageConstant.imgFrame1,
                height: 21.v,
                width: 244.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
