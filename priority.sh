#!/bin/bash

sudo renice -20 -p $(pgrep VoiceCode)
sudo renice -20 -p $(pgrep Dragon)
sudo renice -20 -p $(pgrep Growl)
sudo renice -18 -p $(pgrep "Microsoft Word")
