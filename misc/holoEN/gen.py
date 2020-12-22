import os
import random
import time

c = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'
flag = 'NISRA{HoloEN_Daredemo_Daisuki}'
n = 99

path = ''



random.seed(time.time())

os.chdir('src')

for i in range(n):
	idx = random.randint(0, 61)
	now = c[idx]

	if i == 0:
		with open('robots.txt', 'w') as f:
			f.write(f'User-agent: *\n\nDisallow: /\nDisallow: /img/\nDisallow: /{now}/')
		os.mkdir(now)
		os.chdir(now)
		path += f'{now}/'
	elif i == n - 1:
		with open('index.html', 'w') as f:
			f.write(f'you got flag.txt')
		with open('flag.txt', 'w') as f:
			f.write(flag)
	elif i > 0:
		os.mkdir(now)
		with open('index.html', 'w') as f:
			f.write(f'next folder: {now}')
		os.chdir(now)
		path += f'{now}/'

print(path + 'flag.txt')