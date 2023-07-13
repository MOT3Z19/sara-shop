import 'package:flutter/material.dart';

class Indctor extends StatelessWidget {
  const Indctor({Key? key, required this.iscurrentPage}) : super(key: key);

 final bool iscurrentPage;
  @override
  Widget build(BuildContext context) {
    return iscurrentPage ? IndexIndctor() : outIndctor();


  }
}

class IndexIndctor extends StatelessWidget {
  const IndexIndctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 23,
      height: 6,
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(2),
          color:  Color(0xFF7BCFE9)
      ),
    );;
  }
}


class outIndctor extends StatelessWidget {
  const outIndctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 6,
      height: 6,
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(2),
          color: Color(0xFFACBAC3)
      ),
    );
  }
}
