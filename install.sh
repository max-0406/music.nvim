#!/usr/bin/env bash

if [ ! -d "$HOME/.moc" ]
then
    echo $HOME/.moc directory does not exist.
    echo You need to install MOC and launch it at least once!
    exit
fi

chmod g-w ./moc_config/config
cp -i ./moc_config/config $HOME/.moc/config
cp -i ./moc_config/keymap $HOME/.moc/keymap

if [ ! -d "$HOME/.moc/themes" ]
then
    mkdir $HOME/.moc/themes
fi

cp -i ./moc_config/music.nvim_theme $HOME/.moc/themes/music.nvim_theme
