// Project Euler problem 3
// The prime factors of 13195 are 5, 7, 13 and 29.
// What is the largest prime factor of the number 600851475143 ?

var numberToFactor = 600851475143.0
var factors: Double[] = []

func factor(n: Double) -> Double[] {
	var stack: Double[] = []

	for i in 2 ... ceil(sqrt(n)) {
		if (n%i==0) {
			stack.append(i)
		}
	}
	return stack
}

func answerThree() {
	for i in factor(numberToFactor) {
		if (!factor(i)) {
			factors.append(i)
		}
	}
	println(factors)
}

//6857