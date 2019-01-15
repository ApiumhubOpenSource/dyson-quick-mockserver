# DYSON QUICK MOCKSERVER
This project is based on [webpro/dyson](https://github.com/webpro/dyson). It is just a docker image for a quick use of their amazing library.
## USAGE
```bash
mkdir api-fakes
```
Create the JSON endpoints. For more information about the possible configurations, please refer to [webpro/dyson](https://github.com/webpro/dyson)
```bash
echo "module.exports = {
    path: '/api/v1/health',
    template: {
        status: (params, query) => query.status,
    }
};" > api-fakes/health.js
```
```bash
docker run -d -v $(pwd)/api-fakes:/api-fakes -p 8080:8080 apiumhub/dyson-quick-mockserver
```
check the response:
```bash
curl localhost:8080/api/v1/health -v
```

## DEV USAGE

```bash
docker build . -t dyson
```

```bash
docker run -d -v $(pwd)/api-fakes:/api-fakes -P dyson:latest
```
