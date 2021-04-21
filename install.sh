#!/bin/bash

glib-compile-schemas src/schemas/

rm -r ~/.local/share/gnome-shell/extensions/floating-top-bar@jacob-w-gable.github.io

mkdir ~/.local/share/gnome-shell/extensions/floating-top-bar@jacob-w-gable.github.io

cp -r src/* ~/.local/share/gnome-shell/extensions/floating-top-bar@jacob-w-gable.github.io


