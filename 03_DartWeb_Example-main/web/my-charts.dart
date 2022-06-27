// Dart JS示例
// AntV可视化组件（https://antv.antfin.com/zh-cn/g2/3.x/demo/pie/color-rose.html#）
// Dart JS文档（https://api.dart.cn/stable/2.16.2/dart-js/dart-js-library.html）

import 'dart:html';
import 'dart:js';

void main(List<String> args) {
  DivElement dartStatus = querySelector('#dart-status') as DivElement;
  dartStatus.text = 'Dart is running!';

  var myData = JsObject.jsify([
    {'item': '事例一', 'count': 40, 'percent': 0.4},
    {'item': '事例二', 'count': 21, 'percent': 0.21},
    {'item': '事例三', 'count': 17, 'percent': 0.17},
    {'item': '事例四', 'count': 13, 'percent': 0.13},
    {'item': '事例五', 'count': 9, 'percent': 0.09},
  ]);

  var chart = context['chart'];
  chart.callMethod('source', [myData]);
  chart.callMethod('render', []);
}
