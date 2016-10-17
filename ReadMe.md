# このソフトウェアについて #

GiHubApi.Repositories.Delete.201610171215は私個人が学習目的で作成したソフトウェアである。

リモートとローカルのリポジトリ削除バッチ。
Basic認証からAccessToken認証に変更した。
実行可否の選択肢を追加した。

# 開発環境 #

* Windows XP Pro SP3 32bit
    * cmd.exe
* curl.exe
    * 7.24.0

## WebService ##

* [GitHub](https://github.com/)

# 手順

## 準備

1. [GitHubアカウントを取得すること](https://github.com/join)
1. [AccessTokenを取得すること](https://github.com/settings/tokens)
1. AccessTokenのscopeで`delete_repo`をチェックすること

以上でこのバッチで使うユーザ名とAccessTokenを取得できる。

## リポジトリ削除

あらかじめリポジトリを作成しておいてから、このバッチを実行する。

1. 削除したいリモートリポジトリ名のディレクトリに`GiHubApi.Repository.Delete.bat`を配置する
1. `GiHubApi.Repository.Delete.bat`をテキストエディタで開く
1. `GITHUB_USER`にユーザ名、`GITHUB_TOKEN`にAccessTokenをセットし保存する
1. `GiHubApi.Repository.Delete.bat`をダブルクリックして実行する
1. GitHubからリモートリポジトリが削除されていることを確認する

## 前回との違い

[前回](https://github.com/ytyaru/CreateRepository201610012001)の[削除バッチ](https://github.com/ytyaru/CreateRepository201610012001/blob/master/DeleteRepository.bat)との違いは以下の通り。

* Basic認証からAccessToken認証に変更した
* 削除するかしないかの選択肢を与え、入力してから実行するようにした
* ローカルリポジトリ`.git`ディレクトリも削除することにした

# ライセンス #

このソフトウェアはCC0ライセンスです。

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.ja)
