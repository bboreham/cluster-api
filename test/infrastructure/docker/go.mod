module sigs.k8s.io/cluster-api/test/infrastructure/docker

go 1.13

require (
	github.com/go-logr/logr v0.1.0
	github.com/onsi/gomega v1.10.1
	github.com/opentracing/opentracing-go v1.2.0
	github.com/pkg/errors v0.9.1
	github.com/uber/jaeger-client-go v2.25.0+incompatible // indirect
	github.com/uber/jaeger-lib v2.2.0+incompatible // indirect
	k8s.io/api v0.17.9
	k8s.io/apimachinery v0.17.9
	k8s.io/client-go v0.17.9
	k8s.io/klog v1.0.0
	sigs.k8s.io/cluster-api v0.3.3
	sigs.k8s.io/controller-runtime v0.5.10
	sigs.k8s.io/kind v0.7.1-0.20200303021537-981bd80d3802
	sigs.k8s.io/yaml v1.2.0
)

replace sigs.k8s.io/cluster-api => ../../..
replace sigs.k8s.io/controller-runtime => github.com/bboreham/controller-runtime tracing-0-5-11
