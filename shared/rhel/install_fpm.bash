#!/bin/bash -x
set -e

source /etc/profile.d/rvm.sh

rvm rubygems current
gem install --verbose fpm
