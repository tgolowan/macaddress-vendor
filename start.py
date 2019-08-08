import os
myCmd = ('docker pull tgolovanov/inputapp')
os.system(myCmd)
myCmd = ('docker run -t tgolovanov/inputapp')
os.system(myCmd)
