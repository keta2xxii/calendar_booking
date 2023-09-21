import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchFormField extends StatefulWidget {
  const SwitchFormField({
    Key? key,
    this.intialValue = false,
    required this.label,
    this.validator,
    this.onChanged,
  }) : super(key: key);
  final bool? intialValue;
  final String label;
  final String? Function(bool?)? validator;
  final Function(bool value)? onChanged;

  @override
  State<SwitchFormField> createState() => _SwitchFormFieldState();
}

class _SwitchFormFieldState extends State<SwitchFormField> {
  bool _value = false;

  @override
  void initState() {
    setState(() {
      _value = widget.intialValue!;
    });
    super.initState();
  }

  void _toggleSwitch(bool value) {
    setState(() {
      _value = value;
    });
    widget.onChanged?.call(value);
  }

  @override
  Widget build(BuildContext context) {
    return FormField(
      validator: widget.validator,
      builder: (FormFieldState<bool> state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(widget.label),
            CupertinoSwitch(
              activeColor: _value
                  ? Theme.of(context).colorScheme.secondary
                  : Theme.of(context).colorScheme.primary,
              trackColor: Colors.grey,
              applyTheme: false,
              value: _value,
              onChanged: _toggleSwitch,
            ),
          ],
        );
      },
    );
  }
}
