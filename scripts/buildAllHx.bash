haxe-4.0.5/haxe -p test -p runtime -m test.widget.CenterOne --dce full -D lua-vanilla  --lua center-1.hx.lua 
compiler/res/darwin/luac52  -o assets/test/widget/center-1.hx.hc center-1.hx.lua

haxe-4.0.5/haxe -p test -p runtime -m test.widget.SizedBoxOne --dce full -D lua-vanilla  --lua sizedBox-1.hx.lua 
compiler/res/darwin/luac52  -o assets/test/widget/sizedBox-1.hx.hc sizedBox-1.hx.lua