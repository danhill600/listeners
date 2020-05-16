#!/usr/bin/env python3
import subprocess
from subprocess import Popen, PIPE

listeners = []

pipe = Popen('listeners.sh', shell=True, stdout=PIPE)

for i in pipe.stdout:
    listeners.append(i.strip().decode())

print(listeners)
counter = 1
for i in listeners:
    print('Listener ' + str(counter) + ':')
    subprocess.run(['ipgeo.sh',i])
    counter += 1
