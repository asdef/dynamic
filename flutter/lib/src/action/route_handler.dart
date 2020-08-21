import 'package:flutter/material.dart';
import 'action_handler.dart';

class RouteHandler extends ActionHandler {
  RouteHandler(BuildContext context, {ActionData actionData})
      : super(context, actionData: actionData);

  factory RouteHandler.of(BuildContext context, {ActionData actionData}) {
    return RouteHandler(context, actionData: actionData);
  }

  @override
  handle() {
    super.handle();
    Navigator.of(context).pushNamed(actionData.route);
  }
}
