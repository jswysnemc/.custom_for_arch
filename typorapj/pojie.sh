#!/bin/bash

sudo rm -rf /usr/share/typora/* /home/snemc/.config/typora/*

paru -Rsn typora-cn
paru -S typora-cn

cd /home/snemc/.custom_config/typorapj/NodeInject/
cargo build
sudo cp /home/snemc/.custom_config/typorapj/NodeInject/target/debug/node_inject /usr/share/typora/
cd /usr/share/typora/
sudo ./node_inject
/home/snemc/.custom_config/typorapj/NodeInject_Hook_example/license-gen/target/debug/license-gen
