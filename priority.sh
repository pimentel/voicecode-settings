#!/bin/bash

sudo renice -n -20 $(pgrep VoiceCode)
sudo renice -n -20 $(pgrep Dragon)
sudo renice -n -20 $(pgrep Growl)
