# generate-clean-architecture

Plugin to be used with the [fast.cli](https://github.com/pbissonho/fast.cli) package. This package proposes to create files following the [clean architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html).

#### Result

You will have that template as a result.

<img src="/assets/example.png" width="300px"><img src="/assets/example2.png" width="500px"><img src="/assets/example3.png" width="500px">

### Install fast.cli package globally 

To do this, you must have the Dart SDK [installed and configured](https://dart.dev/get-dart) 

See the [guide](https://dart.dev/tools/pub/cmd/pub-global) referring to the installation of packages globally if you have any doubts on how to do it.

```yaml
flutter pub global activate fast
```

### Configure cache location

Add the fast cache to your PATH environment variable.

```yaml
$HOME/.fastcli/bin/
```

### Install this plugin

```yaml
fast plugin add git https://github.com/FelipeQueFez/generate-clean-architecture.git
```

### See what the plugin provides

After installing the plugin, an executable is created with his name, so run the command below to test.

Use the "gca" plugin that was installed directly from the repository.
This command will display the functionalities that the plugin provides.

```yaml
gca --help
```

### Using the plugin

For bloc

```yaml
gca bloc --name hello
```

For datasource

```yaml
gca datasource --name hello
```

For domain repository

```yaml
gca domainrepository --name hello
```

For entitie

```yaml
gca entitie --name hello
```

For event

```yaml
$ gca event --name hello
```

For model

```yaml
$ gca model --name hello
```

For screen

```yaml
gca screm --name hello
```

For repository

```yaml
gca repository --name hello
```

For state

```yaml
gca state --name hello
```

For use case

```yaml
gca usecase --name hello
```

# License

[license](https://github.com/FelipeQueFez/generate-clean-architecture/blob/main/LICENSE).