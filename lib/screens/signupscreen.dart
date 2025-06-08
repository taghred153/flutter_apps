import 'package:flutter/material.dart';
import 'package:flutter_apps/providers/registerprovider.dart';
import 'package:flutter_apps/screens/loginscreen.dart';
import 'package:flutter_apps/widgets/registerwidget.dart';
import 'package:provider/provider.dart';

class SignupScreen extends StatelessWidget {
  final formkey = GlobalKey<FormState>();
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Signup", style: TextStyle(fontSize: 24)),
        ),
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              RegisterWidget(
                  controller: namecontroller,
                  labeltext: "Username",
                  icon: Icons.person
              ),
              const SizedBox(height: 7),
              RegisterWidget(
                  controller: emailcontroller,
                  labeltext: "Email",
                  icon: Icons.email
              ),
              const SizedBox(height: 7),
              RegisterWidget(
                  controller: phonecontroller,
                  labeltext: "Phone",
                  icon: Icons.phone
              ),
              const SizedBox(height: 7),
              RegisterWidget(
                controller: passwordcontroller,
                labeltext: "Password",
                icon: Icons.password,
                obscuretext: true,
              ),
              const SizedBox(height: 15),
              Consumer<RegisterProvider>(
                builder: (context, value, child){
                  return ElevatedButton(
                      onPressed: () async{
                        if(formkey.currentState!.validate())
                        {
                          await value.signupprovider(
                            name: namecontroller.text,
                            email: emailcontroller.text,
                            phone: phonecontroller.text,
                            password: passwordcontroller.text,
                          );
                          if (value.registerModel != null && value.registerModel!.status == true)
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginScreen()),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text(
                                        value.registerModel?.message ?? "Signup success")
                                )
                            );
                          }
                          else
                          {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text(
                                        value.registerModel?.message ?? "Signup failed")
                                )
                            );
                          }
                        }
                      },
                      child: const Text("Signup"));
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: const Text("Login"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
