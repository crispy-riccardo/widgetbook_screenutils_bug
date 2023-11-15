import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'package:widgetbook_test/extensions.dart';

@UseCase(
  name: 'Typography',
  type: Typography,
  path: '[theme]',
  designLink: 'https://www.figma.com/file/CtelCcOpVZjvKuRJSEiyvk/Design-System-2023?type=design&node-id=10-1748',
)
Widget typography(BuildContext context) {
  // final text = context.knobs.stringOrNull(label: 'Text');

  return Scaffold(
    appBar: AppBar(
      title: Text(
        'Typography',
        style: context.theme.textTheme.titleMedium,
      ),
    ),
    backgroundColor: context.theme.appBarTheme.backgroundColor,
    body: ListView(
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.w),
      children: [
        Text(
          // text ?? 'Headline Large',
          'Headline Large',
          style: context.theme.textTheme.headlineLarge,
        ),
        const SizedBox(height: 8),
        Text(
          // text ?? 'Headline Medium',
          'Headline Medium',
          style: context.theme.textTheme.headlineMedium,
        ),
        const SizedBox(height: 8),
        Text(
          // text ?? 'Headline Small',
          'Headline Small',
          style: context.theme.textTheme.headlineSmall,
        ),
        const SizedBox(height: 8),
        Text(
          // text ?? 'Title Large',
          'Title Large',
          style: context.theme.textTheme.titleLarge,
        ),
        const SizedBox(height: 8),
        Text(
          // text ?? 'Title Medium',
          'Title Medium',
          style: context.theme.textTheme.titleMedium,
        ),
        const SizedBox(height: 8),
        Text(
          // text ?? 'Title Small',
          'Title Small',
          style: context.theme.textTheme.titleSmall,
        ),
        const SizedBox(height: 8),
        Text(
          // text ?? 'Body Large',
          'Body Large',
          style: context.theme.textTheme.bodyLarge,
        ),
        const SizedBox(height: 8),
        Text(
          // text ?? 'Body Medium',
          'Body Medium',
          style: context.theme.textTheme.bodyMedium,
        ),
        const SizedBox(height: 8),
        Text(
          // text ?? 'Body Small',
          'Body Small',
          style: context.theme.textTheme.bodySmall,
        ),
        const SizedBox(height: 8),
        Text(
          // text ?? 'Label Large',
          'Label Large',
          style: context.theme.textTheme.labelLarge,
        ),
        const SizedBox(height: 8),
        Text(
          // text ?? 'Label Medium',
          'Label Medium',
          style: context.theme.textTheme.labelMedium,
        ),
      ],
    ),
  );
}
