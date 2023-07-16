import 'package:conecta/constants/colors.dart';
import 'package:conecta/constants/images.dart';
import 'package:conecta/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        leading: IconButton(
          onPressed: () {}, 
          icon: const Icon(LineAwesomeIcons.angle_left),
          ),
        title: Text(
          "Perfil", 
          style: Theme.of(context).textTheme.headlineLarge,
          textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(LineAwesomeIcons.moon)),
        ],
      ),*/
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              const SizedBox(height: 20),
              SizedBox(
                width: 120, height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100), 
                  child: const Image(image: AssetImage(tProfilePic)),
                ),
              ),
              const SizedBox(height: 10),
              Text("Nome de Usuário", style: Theme.of(context).textTheme.headlineMedium),
              Text("Bio", style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20,),
                    ),
                    onPressed: () {},
                    child: const Text('Perfil ...'),
                ),
              ),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 10),

              ListTile(
                leading: Container(
                  width: 30, height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: tBackGroundColor.withOpacity(0.1)
                  ),
                  child: const Icon(LineAwesomeIcons.cog, color: tOutlineColor),
                ),
                title: Text("Menu", style: Theme.of(context).textTheme.bodySmall),
                trailing: Container(
                  width: 30, height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: tBlackColor.withOpacity(0.1)
                  ),
                  child: const Icon(LineAwesomeIcons.cog, color: tWhiteColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}