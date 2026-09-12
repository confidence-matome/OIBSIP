#!/bin/bash

ufw default deny incoming
ufw default allow outgoing
ufw allow ssh
ufw deny http
ufw allow 443/tcp
ufw deny 23/tcp
ufw --force enable
ufw status verbose
