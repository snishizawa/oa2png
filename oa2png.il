;similar to thumbnail code...
dd=ddGetObj( "%%LIB%%" "%%CELL%%" "layout" "*")
viewType=ddMapGetFileViewType(dd)

; was none rather than graphics
wid = hiCreateWindow( list(0:0 800:800) "none" "Export Window")
wid->neverCurrentWindow = t
deOpenCellView( "%%LIB%%" "%%CELL%%" "layout" viewType wid "r")

sprintf(imageFile "%%LIB%%_%s.png" "%%CELL%%")
hiExportImage(
  ?fileName strcat("pic" "/" imageFile)
  ?exportRegion 'entireDesign
  ?bgType 'transparent
  ?window wid
)
  ;;?bgType 'transparent
hiCloseWindow(wid)
