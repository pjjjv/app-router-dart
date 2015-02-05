/*
 *  App Router - dart
 *  Copyright (c) 2015 pjv
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
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
