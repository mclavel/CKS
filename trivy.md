# trivy
## only update db
```
trivy image --download-db-only
```

## trivy scan image
```
trivy image <image>:<tag>
trivy image nginx:latest
```

## trivy filter
```
trivy image --severity HIGH,CRITICAL nginx:latest
```
