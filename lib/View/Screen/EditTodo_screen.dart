import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo/Utils/String.dart';

class EditTodoScreen extends StatelessWidget {
  const EditTodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(editTodoAddAppBarTitle),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: editTodoSaveButtonTooltip,
        shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(32))),
        child: const Icon(Icons.check_rounded),
      ),
      body: const CupertinoScrollbar(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                _TitleField(),
                _DescriptionField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TitleField extends StatelessWidget {
  const _TitleField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: const Key('editTodoView_title_textFormField'),
      decoration: const InputDecoration(
        enabled: false,
        labelText: editTodoTitleLabel,
        hintText: "",
      ),
      maxLength: 50,
      inputFormatters: [
        LengthLimitingTextInputFormatter(50),
        FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9\s]')),
      ],
      onChanged: (val) {},
    );
  }
}

class _DescriptionField extends StatelessWidget {
  const _DescriptionField();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: const Key('editTodoView_description_textFormField'),
      // initialValue: state.description,
      decoration: const InputDecoration(
        enabled: false,
        labelText: editTodoDescriptionLabel,
        // hintText: hintText,
      ),
      maxLength: 300,
      maxLines: 7,
      inputFormatters: [
        LengthLimitingTextInputFormatter(300),
      ],
      onChanged: (value) {},
    );
  }
}
