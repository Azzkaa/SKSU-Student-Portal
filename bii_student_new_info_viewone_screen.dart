import 'package:flutter/material.dart';
import 'package:sksu_fv1/core/app_export.dart';
import 'package:sksu_fv1/widgets/app_bar/appbar_subtitle.dart';
import 'package:sksu_fv1/widgets/app_bar/appbar_title.dart';
import 'package:sksu_fv1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sksu_fv1/widgets/app_bar/custom_app_bar.dart';
import 'package:sksu_fv1/widgets/custom_elevated_button.dart';
import 'package:sksu_fv1/widgets/custom_text_form_field.dart';

class BiiStudentNewInfoViewoneScreen extends StatelessWidget {
  BiiStudentNewInfoViewoneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController curriculumAchievementsController =
      TextEditingController();

  TextEditingController chevronDownController = TextEditingController();

  TextEditingController chevronDownController1 = TextEditingController();

  TextEditingController chevronDownController2 = TextEditingController();

  TextEditingController chevronDownController3 = TextEditingController();

  TextEditingController chevronDownController4 = TextEditingController();

  TextEditingController chevronDownController5 = TextEditingController();

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
            padding: EdgeInsets.only(top: 38.v),
            child: SizedBox(
              height: 732.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgGroup222,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 53.h,
                              vertical: 33.v,
                            ),
                            decoration: AppDecoration.fillGray,
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: 175.h,
                                    margin: EdgeInsets.only(left: 15.h),
                                    child: Text(
                                      "Curriculum / Achievements".toUpperCase(),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.headlineSmall,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 14.v),
                                SizedBox(
                                  height: 48.v,
                                  width: 319.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          height: 48.v,
                                          width: 158.h,
                                          margin: EdgeInsets.only(left: 1.h),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 13.h,
                                            vertical: 11.v,
                                          ),
                                          decoration: AppDecoration.outlineGray
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder24,
                                          ),
                                          child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgChevronDown,
                                            height: 22.v,
                                            width: 15.h,
                                            radius: BorderRadius.circular(
                                              7.h,
                                            ),
                                            alignment: Alignment.bottomRight,
                                          ),
                                        ),
                                      ),
                                      _buildCurriculumAchievements(context),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 19.v),
                                _buildChevronDown(context),
                                SizedBox(height: 17.v),
                                _buildChevronDown1(context),
                                SizedBox(height: 21.v),
                                _buildChevronDown2(context),
                                SizedBox(height: 21.v),
                                _buildChevronDown3(context),
                                SizedBox(height: 19.v),
                                _buildChevronDown4(context),
                                SizedBox(height: 18.v),
                                _buildChevronDown5(context),
                                SizedBox(height: 12.v),
                              ],
                            ),
                          ),
                          _buildOne(context),
                        ],
                      ),
                    ),
                  ),
                  _buildNavigator(context),
                ],
              ),
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
              text: "Cikgu Zarina",
            ),
            AppbarSubtitle(
              text: "Welcome Back!",
              margin: EdgeInsets.only(right: 109.h),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgProfilePicture,
          margin: EdgeInsets.only(
            left: 11.h,
            right: 70.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCurriculumAchievements(BuildContext context) {
    return CustomTextFormField(
      width: 319.h,
      controller: curriculumAchievementsController,
      hintText: "Unit Beruniform",
      alignment: Alignment.center,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 14.v, 16.h, 12.v),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            7.h,
          ),
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgChevronDown,
          height: 22.v,
          width: 15.h,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 48.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlineGrayTL24,
    );
  }

  /// Section Widget
  Widget _buildChevronDown(BuildContext context) {
    return CustomTextFormField(
      controller: chevronDownController,
      hintText: "Kelab / Persatuan",
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 13.v, 16.h, 13.v),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            7.h,
          ),
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgChevronDown22x14,
          height: 22.v,
          width: 14.h,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 48.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlineGrayTL24,
    );
  }

  /// Section Widget
  Widget _buildChevronDown1(BuildContext context) {
    return CustomTextFormField(
      controller: chevronDownController1,
      hintText: "Sukan ",
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 14.v, 16.h, 13.v),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            7.h,
          ),
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgChevronDown22x14,
          height: 21.v,
          width: 14.h,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 48.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlineGrayTL24,
    );
  }

  /// Section Widget
  Widget _buildChevronDown2(BuildContext context) {
    return CustomTextFormField(
      controller: chevronDownController2,
      hintText: "Nilam",
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 14.v, 16.h, 12.v),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            7.h,
          ),
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgChevronDown22x14,
          height: 22.v,
          width: 14.h,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 48.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlineGrayTL24,
    );
  }

  /// Section Widget
  Widget _buildChevronDown3(BuildContext context) {
    return CustomTextFormField(
      controller: chevronDownController3,
      hintText: "Peringkat",
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 15.v, 16.h, 11.v),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            7.h,
          ),
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgChevronDown22x14,
          height: 22.v,
          width: 14.h,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 48.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlineGrayTL24,
    );
  }

  /// Section Widget
  Widget _buildChevronDown4(BuildContext context) {
    return CustomTextFormField(
      controller: chevronDownController4,
      hintText: "Pencapaian",
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 13.v, 16.h, 13.v),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            7.h,
          ),
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgChevronDown22x14,
          height: 22.v,
          width: 14.h,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 48.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlineGrayTL24,
    );
  }

  /// Section Widget
  Widget _buildChevronDown5(BuildContext context) {
    return CustomTextFormField(
      controller: chevronDownController5,
      hintText: "Ekstra kurikulum",
      textInputAction: TextInputAction.done,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 12.v, 15.h, 14.v),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            7.h,
          ),
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgChevronDown,
          height: 22.v,
          width: 15.h,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 48.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlineGrayTL24,
    );
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
      width: 144.h,
      text: "Save",
    );
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 64.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillBlueGray,
      child: _buildSave(context),
    );
  }

  /// Section Widget
  Widget _buildNavigator(BuildContext context) {
    return Align(
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
    );
  }
}
