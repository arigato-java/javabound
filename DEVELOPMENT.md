# Docuemnts for javabound developers

## List of objects

Icon                    | Images                |Internal name       |    Description             | Label       | Description(ja) | Label(ja)
------------------------|-----------------------|--------------------|----------------------------|-------------|-------------|----------
![javabo.i]             |![javabo]             |javabo              | Crimson Javabutton         | "Free Java Download" | 紅いジャバボタン | "無料ジャバのダウンロード"
![javabo-couch.i]       |![javabo-couch]       |javabo-couch        | Loungeable Crimson Javabutton | "Free Java Download" | 座れる、紅いジャバボタン | "無料ジャバのダウンロード"
![javabo-blue.i]        |![javabo-blue]        |javabo-blue         | Navy Javabutton            | TODO: ???? | 青いジャバボタン| "無料ジャバのダ"
![javabo-couch-blue.i]  |![javabo-couch-blue]  |javabo-couch-blue   | Loungeable Navy Javabutton | TODO: ???? | 座れる、青いジャバボタン| "無料ジャバのダ"
![javabo-block.i]       |![javabo-block]       |javabo-block        | Stackable ornament. <br>(The prototype of `Java Button`) |  "J"  | スタックできるブロックのような置物。 <br>(MOD作成中の産物なので実はオマケ) | "ジ"
![javacopy-java-you.i]  |![javacopy-java-you]  |javacopy-java-you   | Message A from Java        | "JAVA+YOU"  | ジャバからのメッセージ A | "あなたとジャバ,"
![javacopy-downloa.i]   |![javacopy-downloa]   |javacopy-downloa    | Message B from Java        | "DOWNLOAD" | ジャバからのメッセージ B | "今すぐダウンロー" |
![javacopy-do.i]        |![javacopy-do]        |javacopy-do         | Message C from Java        | "TODAY!"  | メッセージC。 メッセージBの最後が改行される環境を再現するため、独立して用意した。 <br> 英語版は、三行目が "TODAY!" となり自然なため、問題ない。 | "ド"


### Ref. (lang:en)

[![en screenshot](https://i.gyazo.com/316b51f871313de57be3b34f8318afa4.png)](https://gyazo.com/316b51f871313de57be3b34f8318afa4)

### Ref. (lang:ja)

![ja screenshot](https://i.gyazo.com/01eb9b54b94c4dffb4208e04607b1cac.png)

## Rules of filenames

### Example:

```text
          [FIXED] Project name
             /
            |                Sub object name     for icon. Ex. {|.icon}
            |________           /___________     /____
 src/objects/javabound/javacopy-downloa-today_ja.icon.png
    ~~~~~~~           ~~~~~~~~               ~~
    /                /                      /
    |                |                     language 
    |                Main object name         Ex. {_js|_en|...}
    |
    One of structure for Starbound.
        Ex. {recipes|items|tiles|...}
```

### Extensions:

* **\*.[frames]** : JSON. The definitions of sprite.
    
    if `foo.png` exists, then need `foo.frames`.

* **\*.object**  : JSON. Metadata. ( Description, Name, category... )
* **\*.png** : Object iamge.
* **\*.icon.png**  : Icon for `Crafting Table` or `Inventory` or when it's on floorthe .
* **\*.recipe** : JSON. Meta data for crafting. (Ex.  0 money per 1 Java button )
* **\*.patch** : JSON. patch for existing JSON. See [RFC 6901].


Note: A rule of **\*.icon.png** is own's one.

## Localization

TODO: Add Rules.

Idea 1

> javabo_**ja**.object -> javabo_**en**.object

## About *.frames

* "orientations"
  * "image" : 向きに関わらず、左右反転させないときの画像ファイル指定。(文字があるときに有効)
  * "dualImage" : 向きに応じて、左右反転させる。 (文字が鏡文字になる？)

.animation があるとき、 "image" 指定に関わらず片方が鏡文字になる場合は、
以下のように "direction" を指定するとよいかもしれない。

```JSON
  "orientations" : [
    {
      (略)
      "direction" : "right",
```

## About interactions

Note: `__unpacked` means [unpacked assets].

### Momentary switch (押しボタン)

at `*.object`

```JSON
  "animation" : "/objects/wired/switch/switchtoggle.animation",
  "scripts" : [
    "/objects/wired/momentaryswitch/momentaryswitch.lua",
  ],

  // scriptDelta / 60 * interval 秒間つく
  "scriptDelta" : 5,    // lua内のupdateイベント実行間隔 (tick数)
  "interval" : 15,      // offになるまでのカウント(updateイベントが指定回実行されるとオフになる)

  "outputNodes" : [ [0, 0] ],   // 出力穴を1個 (0,0) の位置に配置
```

他の .animation と被る場合は、.animation を書き起こす必要があるかも。

Ref:

* `__unpacked/objects/wired/momentaryswitch/momentaryswitch.lua`

Examples:

* `__unpacked/objects/wired/tinywallbutton/tinywallbutton.object`
* `__unpacked/objects/wired/smallwallbutton/smallwallbutton.object`


### Switch (切り替えスイッチ)

Persistentswitch は memorize な switch?

Ref:

* `__unpacked/objects/wired/switch/persistentswitch.lua`
* `__unpacked/objects/wired/switch/switch.lua`

Examples:

* `__unpacked/objects/wired/persistentswitch/persistentswitch.object`
* `__unpacked/objects/wired/tinywallswitch/tinywallswitch.object`
* `__unpacked/objects/wired/smallwallswitch/smallwallswitch.object`

### wiring 組合せ memo

* `Small Wall Button` + `Alert Light` : oneshot(momentary) alert.
  * `Small Wall Button` :
  * `Alert Light` :
* `Small Wall Switch` + `Alert Light` : ON/OFF switch for alert


[RFC 6901]: https://tools.ietf.org/html/rfc6901 "RFC 6901 - JavaScript Object Notation (JSON) Pointer"
[javabo.i]: ./src/objects/javabound/javabo_ja.icon.png
[javabo-couch.i]: ./src/objects/javabound/javabo-couch_ja.icon.png
[javabo-blue.i]: ./src/objects/javabound/javabo-blue_ja.icon.png
[javabo-couch-blue.i]: ./src/objects/javabound/javabo-couch-blue_ja.icon.png
[javabo-block.i]: ./src/objects/javabound/javabo-block_ja.icon.png
[javacopy-java-you.i]: ./src/objects/javabound/javacopy-java-you_ja.icon.png
[javacopy-downloa.i]: ./src/objects/javabound/javacopy-downloa-today_ja.icon.png
[javacopy-do.i]: ./src/objects/javabound/javacopy-do_ja.icon.png
[javabo]: ./src/objects/javabound/javabo_ja.png
[javabo-couch]: ./src/objects/javabound/javabo_ja.png
[javabo-blue]: ./src/objects/javabound/javabo-blue_ja.png
[javabo-couch-blue]: ./src/objects/javabound/javabo-blue_ja.png
[javabo-block]: ./src/objects/javabound/javabo-block_ja.png
[javacopy-java-you]: ./src/objects/javabound/javacopy-java-you_ja.png
[javacopy-downloa]: ./src/objects/javabound/javacopy-downloa-today_ja.png
[javacopy-do]: ./src/objects/javabound/javacopy-do_ja.png
[frames]: http://starbounder.org/Data:Assets/frames "Data:Assets/frames - Starbounder - Starbound Wiki"
[unpacked assets]: http://starbounder.org/Modding:Modding_Basics#Step_1_-_Unpacking_Assets