import time
def hour():
  print(time.strftime('%d''-''%m''-''%Y'' ''%H'':''%M'':''%S'))
  while True:
   time.sleep(10.0)
   print(time.strftime('%d''-''%m''-''%Y'' ''%H'':''%M'':''%S'))
hour()