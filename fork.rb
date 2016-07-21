fork {
  #子プロセスIDの表示
  puts "i am child. my process id is #{Process.pid}"

  #勝手に終了しないようにスリープ
  sleep
}

#親プロセスIDの表示
puts "i am parent. my process id is #{Process.pid}"

#勝手に終了しないようにスリープ
sleep
