#!/usr/bin/env bash

if [ ! -d "$HOME/.moc" ]
then
    echo $HOME/.moc directory does not exist.
    echo You need to install MOC first!
    exit
fi

chmod g-w ./moc_config/config
cp -i ./moc_config/config $HOME/.moc/config

if [ ! -d "$HOME/.moc/themes" ]
then
    mkdir $HOME/.moc/themes
fi

cp -i ./moc_config/music.nvim_theme $HOME/.moc/themes/music.nvim_theme
