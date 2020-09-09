package tracing

import (
	ot "github.com/opentracing/opentracing-go"
	"k8s.io/apimachinery/pkg/apis/meta/v1/unstructured"
)

// Add an annotation encoding span's context to all objects
// Objects are modified in-place.
func AddTraceAnnotation(objs []unstructured.Unstructured, span ot.Span) error {
	spanContext, err := GenerateEmbeddableSpanContext(span)
	if err != nil {
		return err
	}

	for _, o := range objs {
		a := o.GetAnnotations()
		if a == nil {
			a = make(map[string]string)
		}
		a[TraceAnnotationKey] = spanContext
		o.SetAnnotations(a)
	}

	return nil
}
