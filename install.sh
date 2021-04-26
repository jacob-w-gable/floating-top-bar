#!/bin/bash

RUNNING=1
while [ $RUNNING -eq 1 ]; do
	echo "How would you like the top bar to look when a window is fullscreen?"
	echo "1: Transparent"
	echo "2: Dark"
	echo "3: Light"
	read FULLANSWER
	if [ $FULLANSWER -lt 1 ] || [ $FULLANSWER -gt 3 ]; then
		echo "Invalid input"
	else
		RUNNING=0
	fi
done
if [ $FULLANSWER -eq 1 ]; then
	echo "Selected transparent top bar"
fi
if [ $FULLANSWER -eq 2 ]; then
	echo "Selected dark top bar"
fi
if [ $FULLANSWER -eq 3 ]; then
	echo "Selected light top bar"
fi

rm -r ~/.local/share/gnome-shell/extensions/floating-top-bar@jacob-w-gable.github.io

mkdir ~/.local/share/gnome-shell/extensions/floating-top-bar@jacob-w-gable.github.io

cp -r src/* ~/.local/share/gnome-shell/extensions/floating-top-bar@jacob-w-gable.github.io

if [ $FULLANSWER -eq 2 ]; then
	sed -i "2s/.*/background-color: rgba(50, 50, 50, 1.0);/" ~/.local/share/gnome-shell/extensions/floating-top-bar@jacob-w-gable.github.io/stylesheet.css
	sed -i "3s/.*/transition-duration: 200ms;/" ~/.local/share/gnome-shell/extensions/floating-top-bar@jacob-w-gable.github.io/stylesheet.css
	sed -i "13s/.*/transition-duration: 200ms;/" ~/.local/share/gnome-shell/extensions/floating-top-bar@jacob-w-gable.github.io/stylesheet.css
fi
if [ $FULLANSWER -eq 3 ]; then
	sed -i "2s/.*/background-color: rgba(230, 230, 230, 1.0);/" ~/.local/share/gnome-shell/extensions/floating-top-bar@jacob-w-gable.github.io/stylesheet.css
	sed -i "3s/.*/transition-duration: 200ms;/" ~/.local/share/gnome-shell/extensions/floating-top-bar@jacob-w-gable.github.io/stylesheet.css
	sed -i "13s/.*/transition-duration: 200ms;/" ~/.local/share/gnome-shell/extensions/floating-top-bar@jacob-w-gable.github.io/stylesheet.css
fi

gnome-extensions disable floating-top-bar@jacob-w-gable.github.io
gnome-extensions enable floating-top-bar@jacob-w-gable.github.io
