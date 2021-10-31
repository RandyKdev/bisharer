import 'package:flutter/material.dart';
import 'package:bisharer/color.dart';
import 'package:bisharer/screens/account/text_fields/email_text_field.dart';
import 'package:bisharer/screens/account/utils/form_props.dart';
import 'package:bisharer/screens/account/text_fields/full_name_text_field.dart';
import 'package:bisharer/screens/account/utils/image_upload.dart';

// todo: make this file to work as expected
class EditProfileDetails extends StatefulWidget {
  const EditProfileDetails({Key? key}) : super(key: key);

  @override
  _EditProfileDetailsState createState() => _EditProfileDetailsState();
}

class _EditProfileDetailsState extends State<EditProfileDetails> {
  @override
  void initState() {
    super.initState();

    emailController = TextEditingController();
    fullNameController = TextEditingController();
  }

  @override
  void dispose() {
    emailController?.dispose();
    fullNameController?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding:
                  EdgeInsets.only(left: 25, top: 25, right: 25, bottom: 10),
              width: double.infinity,
              child: Text(
                "Profile details",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            Divider(indent: 25, endIndent: 25),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
              child: FullNameTextField(),
            ),
            // Padding(
            //   padding:
            //       const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
            //   child: EmailTextField(),
            // ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
              child: ImageUpload(),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: primaryTheme),
                  onPressed: () {},
                  child: Text("Done"),
                ),
              ),
            ),
            MediaQuery.of(context).viewInsets.bottom != 0
                ? Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom + 70),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
