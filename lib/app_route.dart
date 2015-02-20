/*
 *  App Router - dart
 *  Copyright (c) 2015 pjv, Erik Ringsmuth. For other contributors, see Github.
 */

import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('app-route')
class AppRoute extends PolymerElement with Observable {
  @published String path = "/";
  @published String imp;
  @published String elem;
  @published bool template = false;
  @published bool regex = false;
  @published String redirect;
  bool transitionAnimationInProgress = false;
  @published bool active = false;
  @published bool bindRouter;

  Element _contentContainer;

  AppRoute.created() : super.created();

  void ready() {
    _contentContainer = shadowRoot.querySelector("content");
  }

  void setContent(content, validator) {
    _contentContainer.setInnerHtml(content, validator: validator);
  }

  Element getContent(){
    return _contentContainer;
  }

  toString() => "path: $path, imp: $imp, elem: $elem, template: $template, regex: $regex, redirect: $redirect, transitionAnimationInProgress: $transitionAnimationInProgress, active: $active, bindRouter: $bindRouter";
}

  // <app-route path="/path" [imp="/page/cust-el.html"] [elem="cust-el"] [template]></app-route>
