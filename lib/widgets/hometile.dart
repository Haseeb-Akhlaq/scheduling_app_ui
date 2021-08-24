import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:scheduling_app/models/tileModel.dart';
import 'package:scheduling_app/styles/colors.dart';

class HomeTile extends StatelessWidget {
  final TileModel? tileModel;

  const HomeTile({this.tileModel});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 94,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: AppColors.mainRed,
          ),
        ),
        Container(
          height: 94,
          child: Slidable(
            actionPane: SlidableDrawerActionPane(),
            actionExtentRatio: tileModel!.stretchExtent!,
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.backgroundTiles,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 13),
                  child: ListTile(
                    title: Text(
                      tileModel!.name!,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                    subtitle: Text(
                      tileModel!.time!,
                      style: TextStyle(
                        color: AppColors.textLight,
                        fontSize: 12,
                      ),
                    ),
                    minLeadingWidth: 0,
                    leading: CircleAvatar(
                      radius: 29,
                      backgroundImage: AssetImage(
                        tileModel!.pic!,
                      ),
                    ),
                    trailing: Container(
                      decoration: BoxDecoration(
                          color: tileModel!.statusColor!,
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: Text(
                          tileModel!.status!,
                          style: TextStyle(
                            fontSize: 12,
                            color: tileModel!.statusTextColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
            actions: [
              if (!tileModel!.swipeFromRight!)
                Container(
                  alignment: Alignment.center,
                  height: 96,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.mainRed,
                  ),
                  child: Text(tileModel!.swipeText!),
                )
            ],
            secondaryActions: <Widget>[
              if (tileModel!.swipeFromRight!)
                Container(
                  alignment: Alignment.center,
                  height: 96,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.mainRed,
                  ),
                  child: Text(tileModel!.swipeText!),
                )
            ],
          ),
        ),
      ],
    );
  }
}
