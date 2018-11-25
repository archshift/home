#!/usr/bin/env python

import subprocess
import json
import sys 

outputs_res = subprocess.run("swaymsg -t get_outputs", shell=True, capture_output=True);
assert outputs_res.returncode == 0
outputs_json = outputs_res.stdout
outputs = json.loads(outputs_json)

screen_rect = outputs[0]["rect"]
w, h = screen_rect["width"], screen_rect["height"]

args = sys.argv[1:] or []

subprocess.run([
        "dmenu",
        "-fn", "Fira Sans Book",
        "-nb", "#011f27",
        "-nf", "#ccffff",
        "-sf", "#ffffff",
        "-dim", "0.6",
        "-w", str(int(round(w * 0.9))),
        "-h", "27",
        "-x", str(int(round(w * 0.05))),
        "-y", str(int(round(h * 0.05)))
    ] + args
)

