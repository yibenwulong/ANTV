// Dart与HTML集成 （https://dart.dev/tutorials/web/low-level-html/connect-dart-html）

import 'dart:html';
import 'dart:js';

void main(List<String> args) {
  // 取得用于显示dart是否连接成功的div
  final div = querySelector("#hint") as DivElement;
  div.text = "dart connected.";

  // 从js上下文中获取chart类
  var chart = context['chart'];
  // 构件js型的变量data
  var data = JsObject.jsify([
    {'type': '教育', 'value': '20'},
    {'type': '餐饮', 'value': '30'},
    {'type': '医疗', 'value': '10'},
    {'type': '交通', 'value': '10'},
    {'type': '娱乐', 'value': '20'},
    {'type': '其他', 'value': '10'}
  ]);

  // 调用chart的source与render函数向其传入新的数据并使其重新渲染
  chart.callMethod('source', [data]);
  chart.callMethod('render', []);

  print('data updated');
}
