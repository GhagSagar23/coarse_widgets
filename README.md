# Coarse Widgets

A collection of pre-developed widgets to ease the development cycle and reduce the redundant code.

## Installing

```yaml
dependencies:
  coarse_widgets: ^0.0.1
```

### Import

```dart
import 'package:coarse_widgets/coarse_widgets.dart';
```

### Usage
```dart
CommonWidgets CommonWidgets = CommonWidgets(context);

// Build Scaffold
  Scaffold buildScaffold() {
    return Scaffold(
      appBar: CommonWidgets.appBar(
        title: "Home",
      ),
    );
  }
```


```dart
// Build a loader in just one single line.
CommonWidgets.iaLoader()
```

### Console Logger
```dart
/// Use the [iaLogger] to print the data on to the console.
iaLogger.log("This is just a demo console log.");

// Additionally, you can also specify the kind of log this is going to be.
iaLogger.log("Failed: '$e'.", level: Level.error);

/// Here is the list of all the levels of [iaLogger] available.
/*
    * verbose
    * debug
    * info
    * warning
    * error
    * wtf
    * nothing
*/
```

## Bugs/Requests

If you encounter any problems feel free to open an issue. If you feel the library is
missing a feature, please raise a ticket on Github and I'll look into it.
Pull request are also welcome.

## Authors

<table>
  <tr>
    <td align="center">
      <a href = "https://github.com/GhagSagar23"><img src="https://avatars.githubusercontent.com/u/32163934?s=400&u=1a7535939fd43be31c045cae7a2219dbd8e8c450&v=4" width="72" alt="Sagar Ghag" /></a>
      <p align="center">
        <a href = "https://github.com/GhagSagar23"><img src = "https://www.iconninja.com/files/241/825/211/round-collaboration-social-github-code-circle-network-icon.svg" width="18" height = "18"/></a>
        <a href = "https://www.instagram.com/sagar.ghag23/"><img src = "https://www.shareicon.net/data/16x16/2016/11/16/854131_square_512x512.png" width="18" height="18"/></a>
        <a href = "https://www.linkedin.com/in/sagar-ghag-a51584111/"><img src = "https://www.iconninja.com/files/863/607/751/network-linkedin-social-connection-circular-circle-media-icon.svg" width="18" height="18"/></a>
      </p>
    </td>
  </tr> 
</table>

## License

MIT License