#!/usr/bin/env python3
from subprocess import Popen, PIPE

listeners = []

pipe = Popen('listeners.sh', shell=True, stdout=PIPE)

for i in pipe.stdout:
    listeners.append(i.strip().decode())

counter = 1
for i in listeners:
    print('Listener ' + str(counter) + ':')
    Popen(['ipgeo.sh',i])
    print("\n")
    counter += 1
