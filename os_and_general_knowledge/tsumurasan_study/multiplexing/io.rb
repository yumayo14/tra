# なるほどUNIXから少しだけ発展する話

#多重IOについて
# パイプでもソケットでもそこはあんまり
#https://www.geekpage.jp/programming/ruby-network/select-0.php

# man 2 select
# select()   や  pselect()   を使うと、プログラムで複数のファイルディスクリプターを監視し、 一つ以上のファイルディスクリプターがある種の I/O 操作の 「ready
# (準備ができた)」状態 (例えば、読み込み可能になった状態（何かが書き込まれた状態）) になるまで待つことができる。 ファイルディスクリプターが ready (準備ができた) とは、 (read(2)   な
# どの) 対応する I/O 操作が停止 (block) なしに実行したり、 十分小さな write(2) を実行したりできる状態にあることを意味する。

rp, wp = IO.pipe
mesg = "ping "
rs, ws = IO.select([rp], [wp])
p rs
p ws[0].write('test')
p rp
p rs
# 100.times{
#   rs, ws, = IO.select([rp], [wp])
#   p rs
#   p ws
#   if r = rs[0]
#     ret = r.read(5)
#     print ret
#     case ret
#     when /ping/
#       mesg = "pong\n"
#     when /pong/
#       mesg = "ping "
#     end
#   end
#   if w = ws[0]
#     w.write(mesg)
#   end
# }
