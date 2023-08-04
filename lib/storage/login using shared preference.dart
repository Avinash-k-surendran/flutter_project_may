import 'package:flutter/material.dart';
import 'package:flutter_project_may/HomePage.dart';
import 'package:flutter_project_may/registrationdart.dart';
import 'package:flutter_project_may/storage/shared%20home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPageShared extends StatefulWidget {
  const LoginPageShared({super.key});

  @override
  State<LoginPageShared> createState() => _LoginPaState();
}

class _LoginPaState extends State<LoginPageShared> {


  //  String username = "admin@123";
 // String password = 'abc123';

  // for fetching
  final uname_controller = TextEditingController();
  final pass_controller = TextEditingController();


  late SharedPreferences preferences; // shared preference instance
  late bool newuser; //to store value from shared pref

@override
  void initState() {
    check_user_already_login();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("shared preference login"),
      ),
      body: Column(
        children: [
          Image.asset("assets/icons/restaurant_562678.png", height: 100, width: 100),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: uname_controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  hintText: 'UserName',
                  helperText: 'Username must be an email',
                  labelText: 'UserName',
                  prefixIcon: const Icon(Icons.person)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
            child: TextField(
              controller: pass_controller,
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  hintText: 'Password',
                  helperText: 'password must contain 6 characters',
                  labelText: 'PassWord',
                  prefixIcon: const Icon(Icons.visibility_off_sharp),
                  suffixIcon: const Icon(Icons.visibility)),
            ),
          ),
          ElevatedButton(onPressed: () async{
            preferences =await SharedPreferences.getInstance()!;
          String username = uname_controller.text;
          String password = pass_controller.text;

          if(username != ""&& password != ""){
            preferences.setString("uname", username);
            preferences.setBool("newuser", false);

            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SharedHome()));
          }

  },
    child: Text("Login"))

      ],
      ),
    );
  }

  void check_user_already_login()async{
  preferences = await SharedPreferences.getInstance()!;
 ///if the first condition is null execute second statement
  newuser = preferences.getBool("newuser")?? true;

  if(newuser == false){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SharedHome()));
  }


  }
}
  //         ElevatedButton(
  //             onPressed: () {
  //               if (uname.text != "" && pass.text != "") {
  //                 if (uname.text == username && pass.text == password) {
  //                   Navigator.of(context).push(
  //                       MaterialPageRoute(builder: (context) => HomePage()));
  //                 } else {
  //                   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //                     content: Text("Email/Password is Incorrect"),
  //                     backgroundColor: Colors.red,));
  //                 }
  //               } else {
  //                 ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //                   content: Text("Fields Must not be empty"),
  //                   backgroundColor: Colors.red,));
  //               }
  //             },
  //
  //             child: const Text("Login")),
  //         TextButton(
  //             onPressed: () {
  //               Navigator.of(context).push(MaterialPageRoute(
  //                   builder: (context) => RegistrationPage()));
  //             },
  //             child: const Text("Not a User!!!!!! Register Here..."))
  //       ],
  //     ),
  //   );
  // }
  // }
