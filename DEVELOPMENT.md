# Docuemnts for javabound developers

## List of objects

Images                |Internal name       |    Description           | Label       | Description(ja) | Label(ja)
----------------------|--------------------|--------------------------|-------------|-------------|----------
![javabo]             |javabo              | Red Java Button          | "Free Java Download" | 赤いジャバボタン | "無料ジャバのダウンロード"
![javabo-blue]        |javabo-blue         | Blue Java Button(old)    | TODO: ???? | 昔の青いジャバボタン| "無料ジャバのダ"
![javabo-block]       |javabo-block        | Stackable ornament. <br>(The prototype of `Java Button`) |  "J"  | スタックできるブロックのような置物。 <br>(MOD作成中の産物なので実はオマケ) | "ジ"
![javacopy-java-you]  |javacopy-java-you   | Message A from Java        | "JAVA+YOU"  | ジャバからのメッセージ A | "あなたとジャバ,"
![javacopy-downloa]   |javacopy-downloa    | Message B from Java        | "DOWNLOAD" | ジャバからのメッセージ B | "今すぐダウンロー" |
![javacopy-do]        |javacopy-do         | Message C from Java        | "TODAY!"  | メッセージC。 メッセージBの最後が改行される環境を再現するため、独立して用意した。 <br> 英語版は、三行目が "TODAY!" となり自然なため、問題ない。 | "ド"


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

* ***.frames** : JSON. The definitions of sprite.
* ***.object**  : JSON. Metadata. ( Description, Name, category... )
* ***.png** : Object iamge.
* ***.icon.png**  : Icon for `Crafting Table` or `Inventory` or when it's on floorthe .
* ***.recipe** : JSON. Meta data for crafting. (Ex.  0 money per 1 Java button )
* ***.patch** : JSON. patch for existing JSON. See [RFC 6901].


## Localization

TODO: Add Rules.

Idea 1

> javabo_**ja**.object -> javabo_**en**.object



[RFC 6901]: https://tools.ietf.org/html/rfc6901 "RFC 6901 - JavaScript Object Notation (JSON) Pointer"
[javabo]: ./src/objects/javabound/javabo_ja.png
[javabo-blue]: ./src/objects/javabound/javabo-blue_ja.png
[javabo-block]: ./src/objects/javabound/javabo-block_ja.png
[javacopy-java-you]: ./src/objects/javabound/javacopy-java-you_ja.png
[javacopy-downloa]: ./src/objects/javabound/javacopy-downloa-today_ja.png
[javacopy-do]: ./src/objects/javabound/javacopy-do_ja.png
