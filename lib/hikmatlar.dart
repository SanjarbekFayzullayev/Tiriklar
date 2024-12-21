import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiriklar/ulamolar.dart';
import 'package:share/share.dart';

class Hikmatlar extends StatelessWidget {
  String? name;
  String? abut;
  List? hikmatlar;
   Hikmatlar({this.name,this.abut,this.hikmatlar, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: hikmatlar!.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(12),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFFE1D6C4),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name!),
                      Text(
                        abut!,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
               Text(
                 hikmatlar![index]),
              IconButton(
                  onPressed: () {
                    Share.share("$name\n$abut\n${hikmatlar![index]} ");
                  },
                  icon: const Icon(
                    Icons.share,
                    size: 30,
                  ))
            ],
          ),
        );
      },
    );
  }
}
