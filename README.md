# README


# 参考記事
- https://qiita.com/enzen/items/9a919a75ebf0a34e7b91
- https://remonote.jp/rails-googlemap

# やったこと
## API Keyを取得する
https://nendeb.com/276 の記事を参照してください

## dbに住所・経度・緯度を保存する
`geocode`というgemで住所から経度・緯度を取得する

- Gemfileに`gem 'geocode'`を記載
- 住所・経度・緯度を格納するmodel.rb内で

```ruby:model.rb
    class Model < ApplicationRecord

        geocoded_by :address
        after_validation :geocode

    end
```
- これを記述することで、formからの情報に住所を入れるだけで自動的に経度・緯度も保存される。


# 基本的には
https://qiita.com/enzen/items/9a919a75ebf0a34e7b91  
このqiitaの記事に加えて,  

- formで住所を送り、経度・経度を保存する
- funciton initMap()の中でのruby変数を
- @latitude -> @map.latitude
- @longtitude -> @map.longtitude
- @address -> @map.address
- に修正しただけ。

# 試す際は
```html:show.html.erb
    <script async defer
  　　  src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=[ここに取得したAPIkeyを入力]&callback=initMap">
    </script>
```
にAPI Keyを入力する。

# P.S.
<script>のasyncとdeferって何？という方は
https://qiita.com/phanect/items/82c85ea4b8f9c373d684　の記事を読むと最高になれます。