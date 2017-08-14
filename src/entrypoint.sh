#!/bin/sh

if [ "${DEBUG}" = "true" ]; then
  set -x
fi

# If the argument is a command, run that command
if which "$1" > /dev/null 2>&1; then
  exec "$@"
fi

# Otherwise, use as arguments for imap-backup
exec imap-backup "$@"
