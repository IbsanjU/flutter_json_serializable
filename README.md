# flutter_json_serializable
 
To use "json_serializable" in your package, add these
dependencies to your `pubspec.yaml`.

```yaml
dependencies:
    json_annotation: ^4.4.0

dev_dependencies:
    build_runner: ^2.0.0
    json_serializable: ^6.0.0
```

Run `flutter pub run build_runner build json_serializable --delete-conflicting-outputs` to generate files into your source directory.

```console
> flutter pub run build_runner build json_serializable --delete-conflicting-outputs
```

Run the Test Cases...