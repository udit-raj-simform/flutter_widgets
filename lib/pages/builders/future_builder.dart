import 'dart:convert';

import 'package:flutter_widgets/models/user_data_model.dart';
import 'package:flutter_widgets/utils/exports.dart';
import 'package:http/http.dart' as http;

class FutureBuilderPage extends StatefulWidget {
  const FutureBuilderPage({Key? key}) : super(key: key);

  @override
  State<FutureBuilderPage> createState() => _FutureBuilderPageState();
}

class _FutureBuilderPageState extends State<FutureBuilderPage> {
  String imageUrl = '';
  List<UserData> userData = [];

  @override
  void initState() {
    super.initState();
  }

  Future<List<UserData>> getUserData() async {
    final responseData =
        await http.get(Uri.parse(MyConstants.dataUrl.toString()));

    var finalData = jsonDecode(responseData.body.toString());

    if (responseData.statusCode == 200) {
      for (Map<String, dynamic> index in finalData) {
        userData.add(UserData.fromJson(index));
      }
    }
    return userData;
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(title: "Future Builder"),
      body: Container(
        margin: MyConstants.marginSym,
        child: GlassMorphicBackground(
            child: Center(
          child: FutureBuilder(
            future: getUserData(),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: userData.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    padding: MyConstants.paddingSym,
                    itemBuilder: (context, index) =>
                        myListViewTile(index, userData));
              } else {
                return const CircularProgressIndicator(
                  color: Colors.green,
                );
              }
            },
          ),
        )),
      ),
    );
  }

  Widget myListViewTile(int index, List<UserData> userData) => Container(
        height: 240,
        width: MyConstants.width,
        padding: MyConstants.paddingSym,
        margin: MyConstants.marginSym,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(20.0)),
        child: RichText(
            text: TextSpan(
                style: TextStyle(
                    letterSpacing: 2.0,
                    fontFamily: GoogleFonts.sansita().toString()),
                children: [
              TextSpan(
                text: "ID : ${userData[index].id.toString()}\n\n",
              ),
              TextSpan(
                text: "Name : ${userData[index].name.toString()}\n\n",
              ),
              TextSpan(
                text: "UserName : ${userData[index].username.toString()}\n\n",
              ),
              TextSpan(
                text: "Email : ${userData[index].email.toString()}\n\n",
              ),
              TextSpan(
                text: "Contact : ${userData[index].phone.toString()}\n\n",
              ),
              TextSpan(
                text:
                    "Address : ${userData[index].address.suite.toString()}, ${userData[index].address.street.toString()}, ${userData[index].address.city.toString()} ${userData[index].address.zipcode.toString()}",
              ),
            ])),
      );
}
