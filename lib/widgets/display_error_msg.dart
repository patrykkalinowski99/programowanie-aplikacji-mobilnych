import 'package:flutter/material.dart';
import 'package:flutter_riverpod_todo_app/utils/extensions.dart';
import 'common_container.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DisplayErrorMessage extends StatelessWidget {
  const DisplayErrorMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;

    return CommonContainer(
      width: deviceSize.width,
      height: deviceSize.height * 0.3,
      child: Center(
        child: Text(AppLocalizations.of(context)!.error),
      ),
    );
  }
}
