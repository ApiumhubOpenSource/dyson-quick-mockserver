# DYSON QUICK MOCKSERVER

## USAGE
docker build . -t dyson
run -d -v $(pwd)/api-fakes:/api-fakes -P dyson:latest
