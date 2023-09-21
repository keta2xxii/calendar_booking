import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropdownFormField<T> extends StatefulWidget {
  const DropdownFormField({
    Key? key,
    this.decoration,
    this.style,
    this.validator,
    this.onFieldSubmitted,
    required this.items,
    this.initialValue,
    required this.itemBuilder,
    this.autovalidateMode,
  }) : super(key: key);
  final InputDecoration? decoration;
  final TextStyle? style;
  final String? Function(T?)? validator;
  final Function(T)? onFieldSubmitted;
  final T? initialValue;
  final List<T> items;
  final Widget? Function(T) itemBuilder;
  final AutovalidateMode? autovalidateMode;

  @override
  State<DropdownFormField<T>> createState() => _DropdownFormFieldState();
}

class _DropdownFormFieldState<T> extends State<DropdownFormField<T>> {
  late T _currentValue;

  @override
  void initState() {
    setState(() {
      _currentValue = widget.initialValue ?? widget.items.first;
    });
    super.initState();
  }

  void _onChange(T? newValue) {
    setState(() {
      _currentValue = newValue ?? widget.initialValue ?? widget.items.first;
    });
    widget.onFieldSubmitted?.call(_currentValue);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormField<T>(
          validator: widget.validator,
          autovalidateMode: widget.autovalidateMode,
          builder: (FormFieldState<T> state) {
            return InputDecorator(
              decoration: widget.decoration ??
                  InputDecoration(
                    labelText: 'label'.tr(),
                    labelStyle: widget.style,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
              isEmpty: _currentValue == null,
              baseStyle: widget.style,
              child: DropdownButtonHideUnderline(
                child: ButtonTheme(
                  alignedDropdown: true,
                  child: DropdownButton<T>(
                    isExpanded: true,
                    value: _currentValue,
                    isDense: true,
                    onChanged: _onChange,
                    items: widget.items.map((T value) {
                      return DropdownMenuItem<T>(
                        value: value,
                        child:
                            widget.itemBuilder(value) ?? Text(value.toString()),
                      );
                    }).toList(),
                  ),
                ),
              ),
            );
          },
        ),
        24.verticalSpace,
      ],
    );
  }
}
