# OPA

## simple example
```
package kubernetes.admission


deny[msg]{
	input.request.kind.kind == "Pod"
	image := input.request.object.spec.containers[_].image
	not startswith(image, "hooli.com/")
	msg := sprintf("Error, '%v' no es de hooli.com", [image])
}
```

## Gatekeeper install
```
kubectl apply -f https://raw.githubusercontent.com/open-policy-agent/gatekeeper/release-3.7/deploy/gatekeeper.yaml
```

