#!/usr/bin/python

import subprocess
import os
import socket

icons = ["󰬺","󰬻","󰬼","󰬽","󰬾","󰬿","󰭀","󰭁","󰭂","󰿩"]

def update_workspace(active_workspace):
    icons_index = [0,1,2,3,4,5,6,7,8,9]
    prompt = f"(box (label :text \"{icons[icons_index[active_workspace - 1]]}\" ))"
    subprocess.run(f"echo '{prompt}'", shell=True)

sock = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
server_address = f'/tmp/hypr/{os.environ["HYPRLAND_INSTANCE_SIGNATURE"]}/.socket2.sock'
sock.connect(server_address)

new_event = sock.recv(4096).decode("utf-8")
    
while True:
    new_event = sock.recv(4096).decode("utf-8")
    for item in new_event.split("\n"):
        if "workspace>>" == item[0:11]:
            workspaces_num = item[-1]
            update_workspace(int(workspaces_num))
