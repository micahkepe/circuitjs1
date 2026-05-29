#!/usr/bin/env bash
if ! command -v mvn >/dev/null; then
  echo "Install Maven first"
  exit 1
fi

mvn clean gwt:compile
cp -R target/circuitjs1-1.0.0/circuitjs1 war/
echo "Navigate to http://localhost:8000/war/circuitjs.html"
python3 -m http.server 8000
