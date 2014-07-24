
doctype

html
  head
    title "Her files"
    meta (:charset utf-8)
    link (:rel stylesheet) (:href css/style.css)
    link (:rel icon) (:type image/png) (:href png/in-crowd.png)
    @if (@ inDev) $ @block
      link (:rel stylesheet) (:href css/dev.css)
    @if (@ inBuild) $ @block
      link (:rel stylesheet) (:href css/build.css)
    script (:defer) (:src build/vender.js)
    script (:defer) (:src build/main.js)

  body