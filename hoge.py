#!/usr/bin/python3
import sys
　 
　 
def tonum(s):   #def 関数の名前(引数)で関数を定義
      try:
          return int(s)
      except:
          return float(s)
                    　 
                    　 
ans = 0
for line in sys.stdin:
    ans += tonum(line)
                              　 
print(ans)
