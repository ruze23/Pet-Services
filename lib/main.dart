import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,);
  await dotenv.load(fileName:".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
         scaffoldBackgroundColor: const Color.fromRGBO(253, 255, 245, 1.0),
      ),
      home: const MyHomePage(title: "Login"),
    );
  }
}

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{

  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  String user="";
  String password="";


 void handleLogin(){
  setState(() {
     user = loginController.text;
     password = passwordController.text;
  });
 }

 void navRegister(){
  Navigator.push(
    context, 
    MaterialPageRoute(builder: (context) => const RegisterPage()),
  );
 }

  @override
  void dispose() {
    loginController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          SizedBox(
            width: 345,
            child: (RichText(
             textAlign:TextAlign.center,
              text: TextSpan(
                text: "You're a step closer to becoming a pet service provider",
                  style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(80, 96, 155, 1.0)
                      ),
                  ),
                ),
              )
            ),
          ),
          (
            SizedBox(width: 100,
            height: 30,)
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: LoginField(controller: loginController),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PasswordField(controller: passwordController),
          ),
          ElevatedButton(
          onPressed: handleLogin,
          style:ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(14, 38, 121, 1.0),
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          ),
          child: Text(
            "Login", 
            style: TextStyle(color: Colors.white),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(37,20,0,0),
            child: Row( 
              children: [Text("Dont have an account?"),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0,0,0,0),
                child: ElevatedButton(
                  onPressed: navRegister,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(14, 38, 121, 1.0),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(3))
                  ),
                  child: Text(
                    "Sign Up"
                    ,style: TextStyle(color: Colors.white)),
                ),
              )
              ],
            ),
          )],
        )
      ),
    ); 
  }
}

class LoginField extends StatelessWidget{
 const LoginField({super.key, required this.controller});

  final TextEditingController controller;

 @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(border:OutlineInputBorder(), labelText: "Email", ),
      ),
    );
  }
}

class EmailField extends StatelessWidget{
  const EmailField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        controller: controller,
        decoration: InputDecoration(border:OutlineInputBorder(), labelText: "Email", ),
      ),
    );
  }
}

class UsernameField extends StatelessWidget{
  const UsernameField({super.key, required this.controller});

  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: TextField(
        keyboardType: TextInputType.name,
        controller: controller,
        decoration: InputDecoration(border:OutlineInputBorder(), labelText: "Username", ),
      ),
    );
  }
}


class PasswordField extends StatelessWidget{
  const PasswordField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: TextField(
        controller: controller,
        obscureText: true,
        decoration: InputDecoration(border:OutlineInputBorder(), labelText:"Password"),
      ),
    );
  }
}

class RegisterPage extends StatefulWidget{
  const RegisterPage({super.key});

  @override
  State<StatefulWidget> createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage>{
  
  final emailController  =  TextEditingController();
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    
    String email= "";
    String password= "";
    String username= "";


  @override
  Widget build(BuildContext context) {

    

    void handleSignUp(){
      setState(() {
        email = emailController.text;
        password = passwordController.text;
        username = usernameController.text;
      });
    };

    return Scaffold(
      appBar:AppBar(
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
            width: 345,
            child: (RichText(
             textAlign:TextAlign.center,
              text: TextSpan(
                text: "Register",
                  style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(80, 96, 155, 1.0)
                      ),
                  ),
                ),
              )
            ),
          ),
          (
            SizedBox(width: 100,
            height: 50,)
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: EmailField(controller: emailController),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: UsernameField(controller: usernameController),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PasswordField(controller: passwordController),
          ),
          ElevatedButton(
          onPressed: handleSignUp,
          style:ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(14, 38, 121, 1.0),
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          ),
          child: Text(
            "Register", 
            style: TextStyle(color: Colors.white),),
          ),
          Text(email)
          ],
        ),
      )
    );
  }
}


