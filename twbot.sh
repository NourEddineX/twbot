#!/bin/bash
#### Created by NourEddineX ####

### BEGIN VARS ###
MIN=30
MAX=60
### END VARS ###

while true; do \
  for i in $(t groupies); do \
    t follow $i
    echo followed $i
    RAND=$(shuf -i $MIN-$MAX -n 1)
    echo "Sleeping $RAND seconds.."
    sleep $RAND
  done
  sleep $RAND
  for i in $(t leaders); do \
    t unfollow $i
    echo unfollowed $i
    RAND=$(shuf -i $MIN-$MAX -n 1)
    echo "Sleeping $RAND seconds..
    sleep $RAND
  done
done
