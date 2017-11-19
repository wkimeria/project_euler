package euler

import "testing"

func TestQuestion1(t *testing.T) {
	v := Question1()

	if v != 233168 {
		t.Error(" Expected 233168, got ", v)
	}
}
