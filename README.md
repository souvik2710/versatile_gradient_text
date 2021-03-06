## Author

Souvik Versatile
[Link to Profile](https://www.linkedin.com/in/souvik2710/)

## Versatile Gradient Text

A text widget with customised gradient. We have seen container gradient, button gradient and appbar with gradient design.
But in some unique cases we need text gradient similar to those we have used in PowerPoint Presentation.

## Installation

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):
```yaml
dependencies:
  versatile_gradient_text: ^0.0.2
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:versatile_gradient_text/versatile_gradient_text.dart';
```
## Images


#### radial type
<p align="center">
<img src="https://raw.githubusercontent.com/souvik2710/versatile_gradient_text/master/images/gradient2.png" width="400" height="180" hspace="20"/>
</p>


#### linear type
<p align="center">
<img src="https://raw.githubusercontent.com/souvik2710/versatile_gradient_text/master/images/gradient1.png" width="400" height="180" hspace="20"/>
</p>


## Example


[comment]: <> (<hr>)

<table>
<tr>
<td>

```dart
class DemoGradientScreen extends StatelessWidget {
  const DemoGradientScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: VersatileGradientText(
            textString: 'Gradient Text',
            colorOne: Colors.yellow, colorTwo: Colors.deepOrange,
            fontSize: 40, versatileGradientType: VersatileGradientType.radial,)
      ),
    );
  }
}
```

</td>
</tr>
</table>

[comment]: <> (## Next Goals)

[comment]: <> (- [ ] Make more ui and buttons more robust.)

[comment]: <> (  Now all the buttons and functionalities are constant.In the future need to make it more customisable.)

[comment]: <> (- [x] Handle all exceptions)

[comment]: <> (  Handling of exceptions complete)

[comment]: <> (- [ ] Add the calculator only as a side container or as a part of another widget.)