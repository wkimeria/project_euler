package euler

import "testing"

func TestQuestion2(t *testing.T) {
	v := Question2()

	if v != 4613732 {
		t.Error(" Expected 4613732, got ", v)
	}
}
