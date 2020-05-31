import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final String title;
  final Widget textField;
  final Widget trailing;

  const CustomAppBar({
    Key key,
    @required this.height,
    this.title = "",
    this.textField = const SizedBox(),
    this.trailing = const SizedBox(),
  })  : assert(height != null, "Height must be informed"),
        assert(height >= 0, "Height can't be a negative number"),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return AppBar(
      backgroundColor: const Color(0xFF040B17),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: this.trailing,
        ),
      ],
      flexibleSpace: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        height: this.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: statusBarHeight),
            Text("Welcome back",
                style: const TextStyle(color: Color(0xFF9B9DA3), fontSize: 16)),
            const SizedBox(height: 10),
            Text(
              this.title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            this.textField,
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(this.height);
}
