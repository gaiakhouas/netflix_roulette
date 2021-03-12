import "package:flutter/material.dart";

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Netflix roulette'),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(55);
}
