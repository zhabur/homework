import time
def hour():
  print(time.strftime('%d''-''%m''-''%Y'' ''%H'':''%M'':''%S'))
i = 1
while i < 6:
  print(i)
  i += 1
#  while True:
#   time.sleep(10.0)
#   print(time.strftime('%d''-''%m''-''%Y'' ''%H'':''%M'':''%S'))
hour()