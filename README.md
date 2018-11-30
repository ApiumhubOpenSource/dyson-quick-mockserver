# DYSON QUICK MOCKSERVER

## USAGE

```bash
docker build . -t dyson
```

```bash
docker run -d -v $(pwd)/api-fakes:/api-fakes -P dyson:latest
```