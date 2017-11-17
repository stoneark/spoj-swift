# http://www.spoj.com/problems/EXPECT/
# EXPECT - Life, the Universe, and Everything (Interactive)

import sys

while True:
    temp = input()
    print(temp)
    sys.stdout.flush()
    if temp == 42:
        break
