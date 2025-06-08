import 'package:flutter/material.dart';
import 'package:flutter_apps/providers/randomuserprovider.dart';
import 'package:flutter_apps/widgets/randomuserwidget.dart';
import 'package:provider/provider.dart';

class RandomUserScreen extends StatelessWidget {
  const RandomUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Random User"),
      ),
      body: Center(
        child: Consumer<RandomUserProvider>(
          builder: (context, value, child)
          {
            var users = value.randomUserModel;
            if (users == null)
              {
                value.fetchdata();
                return Center(child: CircularProgressIndicator());
              }
            else
              {
                return ListView.builder(
                  itemBuilder: (context, index){
                    var randomuser = users.results[index];
                    String urlphoto = randomuser["picture"]["thumbnail"];
                    String title = randomuser["name"]["title"];
                    String first = randomuser["name"]["first"];
                    String last = randomuser["name"]["last"];
                    String email = randomuser["email"];
                    String phone = randomuser["phone"];
                    String gender = randomuser["gender"];
                    return RandomUserWidget(
                        title: title,
                        first: first,
                        last: last,
                        email: email,
                        phone: phone,
                        gender: gender,
                        urlphoto: urlphoto
                    );
                  },
                  itemCount: 1,
                );
              }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        context.read<RandomUserProvider>().fetchdata();
      },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
