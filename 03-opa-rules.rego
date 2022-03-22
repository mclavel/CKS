package kubernetes.admission

deny[msg]{
	input.request.kind.kind == "POD"
	image := input.request.object.spec.container[_].image
 	msg := sprintf("ES UN POD: %v", [image])
}
