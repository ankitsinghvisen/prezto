if [[ -d /etc/.git ]]; then
  if [[ -z "$SSH_AUTH_SOCK" ]]; then
    print "Use SSH Agent Forwarding to enable syncing of etckeeper" >&2
  else
    # silently push etckeeper stuff to master on login 
    etckeeper vcs push origin master -q
  fi
fi