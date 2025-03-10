import 'package:flutter/material.dart';

import 'package:marketapp/core/functions/build_App_Bar.dart';
import 'package:marketapp/views/auth/ui/widgets/Custom_E_Button.dart';
import 'package:marketapp/views/auth/ui/widgets/Custom_text_Form_Field.dart';

class EditNameView extends StatelessWidget {
  const EditNameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildcustomAppBar(context , "Edit Name"),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            customTextFormField(
              Labeltext: "Enter Name",
            ),
            SizedBox(
              height: 25,
            ),
            CustomEButton(text: "UpDate", onTap: () {}),
          ],
        ),
      ),
    );
  }

}
