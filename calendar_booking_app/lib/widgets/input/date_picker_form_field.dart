import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DatePickerFormField extends StatefulWidget {
  const DatePickerFormField({
    Key? key,
    required this.controller,
    this.decoration,
    this.style,
    this.validator,
    this.inputFormatters,
    this.firstDate,
    this.lastDate,
    this.initialDate,
    this.onFieldSubmitted,
  }) : super(key: key);
  final TextEditingController controller;
  final InputDecoration? decoration;
  final TextStyle? style;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final DateTime? initialDate;
  final Function(String)? onFieldSubmitted;

  @override
  State<DatePickerFormField> createState() => _DatePickerFormFieldState();
}

class _DatePickerFormFieldState extends State<DatePickerFormField> {
  late DateTime _currentDate;

  @override
  void initState() {
    setState(() {
      _currentDate = widget.initialDate ?? DateTime.now();
    });
    super.initState();
  }

  void _tapInput() async {
    DateTime? date = DateTime(1900);
    FocusScope.of(context).requestFocus(FocusNode());

    date = await showDatePicker(
      context: context,
      initialDate: widget.initialDate ?? DateTime.now(),
      firstDate: widget.firstDate ?? DateTime(1900),
      lastDate: widget.lastDate ?? DateTime(2100),
      currentDate: _currentDate,
      initialEntryMode: DatePickerEntryMode.calendar,
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: Theme.of(context).copyWith(
            dialogBackgroundColor: Theme.of(context).colorScheme.background,
            primaryColor: Colors.white,
            colorScheme: Theme.of(context).colorScheme.copyWith(
                  primary: Theme.of(context).colorScheme.primary,
                  onPrimary: Theme.of(context).colorScheme.onPrimary,
                  onSurface: Theme.of(context).colorScheme.secondary,
                ),
          ),
          child: child!,
        );
      },
    );
    setState(() {
      _currentDate = date ?? DateTime.now();
    });
    final String stringDate = DateFormat('dd/MM/yyyy').format(_currentDate);
    widget.controller.text = stringDate;
    widget.onFieldSubmitted?.call(stringDate);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: widget.decoration,
      style: widget.style,
      validator: widget.validator,
      inputFormatters: widget.inputFormatters,
      readOnly: true,
      onTap: _tapInput,
      maxLength: 50,
    );
  }
}
