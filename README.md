DyNagoya-SOM
============

# 手順

1. イメージの起動(このイメージは育成済みのイメージです！)

```
> git clone https://github.com/newapplesho/DyNagoya-SOM.git
> git submodule update --init
> cd baseImage/
> unzip Pharo-1.4-one-click.app.zip
> open Pharo-1.4-one-click.app
```

2. Monticello Browser上で、「+Repository」をクリック

3. 「filetree://」を選択後、このgitレポジトリ配下の「smalltalkrepository」を選択して、OKをクリック

4. 追加したfiletreeを選択して、Openをクリック

5. 開いたダイアログの左ペインのAweSOMを選択後に、右ペインのAweSOM.packageを選択して、Loadをクリック

6. workspace上で、下記を実行

```
SOMDUtility openInitializeCode.

somCodePath := (FileSystem disk workingDirectory path parent parent parent parent / 'som-code') asFileReference asString.
SOMTools setClassPathBase: somCodePath; recompile.
```

7. Transcriptを開いて、workspace上で下記を実行

```
u := SOMUniverse new.
u eval: '(1 + 2)  println'.
```


# Links
- http://www.hpi.uni-potsdam.de/hirschfeld/projects/som/
- https://github.com/smarr/SOM
- http://www.slideshare.net/newapplesho/smalltalk-32627289
