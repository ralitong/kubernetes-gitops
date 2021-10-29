#!/bin/bash
RETRY=0
STATUS="kubectl rollout status deployment frontend"

until $STATUS || [ $RETRY -eq 120 ]; do
  $STATUS
  RETRY=$((RETRY + 1))
  sleep 10
done
