import 'package:flutter/material.dart';

class RawAutoComplateWidget extends StatefulWidget {
  const RawAutoComplateWidget({super.key});

  @override
  State<RawAutoComplateWidget> createState() => _RawAutoComplateWidgetState();
}

class _RawAutoComplateWidgetState extends State<RawAutoComplateWidget> {
  static const List<String> theList = ["venusaur", "blastoise", "charizard"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 69, 69, 69),
      body: Center(
        child: RawAutocomplete(
          fieldViewBuilder: (context, textEditingController, focusNode, onFieldSubmitted) {
            return TextFormField(
              controller: textEditingController,
              focusNode: focusNode,
              onFieldSubmitted: (value) {
                onFieldSubmitted();
              },
            );
          },
          optionsViewBuilder: (context, onSelected, options) {
            return Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Material(
                  elevation: 4,
                  child: SizedBox(
                    height: 200,
                    child: ListView.builder(
                      padding: EdgeInsets.all(8),
                      itemCount: options.length,
                      itemBuilder: (context, index) {
                        String option = options.elementAt(index);
                        return GestureDetector(
                          onTap: () {
                            onSelected(option);
                          },
                          child: ListTile(
                            title: Text(option),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            );
          },
          optionsBuilder: (TextEditingValue textEditingValue) {
            return theList.where(
              (item) {
                return item.contains(textEditingValue.text.toLowerCase());
              },
            );
          },
        ),
      ),
    );
  }
}
