#!/bin/bash
echo "Usage: ssh-add [private_key]"
echo "   Running: ssh-add \"$1\""
ssh-add $1
