import 'package:flutter/material.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';
import 'package:weather/core/routes/extentions.dart';
import 'package:weather/core/routes/routes.dart';
import 'package:weather/core/theme/app_styles.dart';
import 'package:weather/weather/data/model/weather_model.dart';
import 'package:material_dialogs/material_dialogs.dart';

class LocationListTile extends StatelessWidget {
  const LocationListTile({
    super.key,
    required this.model,
  });

  final WeatherModel model;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListTile(
        leading: const Icon(Icons.location_on_rounded,
            color: Colors.white, size: 31),
        title: Text(
          '${model.location!.name}',
          style: AppStyles.style18Regular,
        ),
        trailing: GestureDetector(
          onTap: () {
            Dialogs.materialDialog(
              msg: 'Do you want to change the location ?',
              title: "Choose",
              color: Colors.white,
              context: context,
              actions: [
                IconsOutlineButton(
                  onPressed: () {
                    context.pop();
                    context.navigateToReplacement(Routes.searchView);
                  },
                  text: 'Yes',
                  color: Colors.green,
                  iconData: Icons.update_outlined,
                  textStyle: const TextStyle(color: Colors.white),
                  iconColor: Colors.white,
                ),
                IconsButton(
                  onPressed: () {
                    context.pop();
                  },
                  text: 'No',
                  iconData: Icons.delete,
                  color: Colors.red,
                  textStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  iconColor: Colors.white,
                ),
              ],
            );
          },
          child: const Icon(Icons.menu, color: Colors.white, size: 38),
        ),
      ),
    );
  }
}
