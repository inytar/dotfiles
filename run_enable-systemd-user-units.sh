#!/bin/sh

systemctl --user enable gpg-agent.socket
systemctl --user enable gpg-agent-ssh.socket
