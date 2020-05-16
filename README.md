# state_notifier_example

A new "state_notifier + freezed" Flutter project.

## 概要

state_notifier + freezed を使った、カウンターアプリのサンプルプログラムです。

## state_notifier について

Flutterで、状態管理のパターンとして、以下のものがよく使われています。

- setState(StatefulWidget)
- Redux
- BLoC(Stream)
- provider(ChangeNotifier)

現在、Flutterの状態管理においてベストプラクティスは、providerを使うことです。
Google公式においても、providerの使用を推奨しています。[(Pragmatic State Management in Flutter (Google I/O'19))](https://www.youtube.com/watch?v=d_m5csmrf7I) 
state_notifierは、providerをより使いやすくコードをスッキリと楽に書けるようにしてくれるパッケージです。

従来のproviderパターンにおいて、ChangeNotifierを使ってゴリゴリとコードを書いていたのですが、コードが少々冗長になり、
Widget階層が深くなりがちな問題があります。

state_notifierベースでproviderのコードを書くと、
ChangeNotifierを使用した場合よりコードがスッキリし、
コードを書いていて気持ちが良いです。

私は、これまでChangeNotifierベースでコードを書いていたのですが、
これからはstate_notifierベースに書き換えていこうと思います。

## freezed について

freezedパッケージは、イミュータブルなデータモデルを作成するのに使います。
state_notifierでは、State(状態)をイミュータブルなデータモデルとして扱います。
state_notifierとfreezedは相性が良く、セットで使うのが推奨されます。
freezedを使うと、StateにcopyWith(clone)メソッドが自動的に生えるので、便利です。

freezedはコードを自動生成します。その際、build_runnerを使用します。

### freezed 自動生成ファイル 

freezed の自動生成ファイルを更新する際は、
ターミナルで以下のコマンドを叩いてビルドしてください。

```
flutter pub pub run build_runner build
```

## Flutter Getting Started

This project is a starting point for a state_notifier + freezed Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
