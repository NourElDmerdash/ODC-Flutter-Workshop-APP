import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_html_css/simple_html_css.dart';
import 'package:untitled4/View/pages/Settings/Settings.dart';

import '../../../Model/TermsModel/TermsModel.dart';
import '../../../ViewModel/bloc/Terms_Conditions/terms_conditions_cubit.dart';

class Terms_Conditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TermsConditionsCubit()..getData(),
      child: BlocConsumer<TermsConditionsCubit, TermsConditionsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          TermsConditionsCubit myCubit = TermsConditionsCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.white,
              title: Text(
                'Terms & Conditions',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                ),
              ),
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingsScreen()));
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: Colors.black,
                  )),
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: myCubit.model == null
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : SingleChildScrollView(
                      child: Container(
                        child: RichText(
                          text: HTML.toTextSpan(
                              context, myCubit.model!.data!.terms.toString()),
                          maxLines: 4,
                          //...
                        ),
                      ),
                    ),
            ),
          );
        },
      ),
    );
  }
}
