import 'package:flutter/material.dart';

class LayoutBuilderDemo extends StatelessWidget {
  const LayoutBuilderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Responsive Design')),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 480) {
            return Row(
              children: [
                Drawer(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: const [
                      ListTile(title: Text('Menu Item 1')),
                      ListTile(title: Text('Menu Item 2')),
                      ListTile(title: Text('Menu Item 3')),
                      ListTile(title: Text('Menu Item 1')),
                      ListTile(title: Text('Menu Item 2')),
                      ListTile(title: Text('Menu Item 3')),
                      ListTile(title: Text('Menu Item 1')),
                      ListTile(title: Text('Menu Item 2')),
                      ListTile(title: Text('Menu Item 3')),
                    ],
                  ),
                ),
                const Expanded(
                  child: Center(
                    child: Text('Content Area'),
                  ),
                ),
              ],
            );
          } else {
            return ListView(
              children: const [
                ListTile(title: Text('Menu Item 1')),
                ListTile(title: Text('Menu Item 2')),
                ListTile(title: Text('Menu Item 3')),
                ListTile(title: Text('Menu Item 1')),
                ListTile(title: Text('Menu Item 2')),
                ListTile(title: Text('Menu Item 3')),
                ListTile(title: Text('Menu Item 1')),
                ListTile(title: Text('Menu Item 2')),
                ListTile(title: Text('Menu Item 3')),
              ],
            );
          }
        },
      ),
    );
  }
}
