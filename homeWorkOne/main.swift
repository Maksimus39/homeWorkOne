// Set

let names = ["user1", "user2", "user5", "user6", "user7", "user11", "user1"]
print("names -> \(names)")
// Set - набор не упорядоченных уникальных данных

let namesSet: Set<String> = ["user1", "user2", "user5", "user6", "user7", "user11", "user1"]
print("namesSet -> \(namesSet)")


let surnameSet: Set<String> = ["user1", "user2", "user5", "user6", "user7", "user11", "user1", "user12"]


let intersectionSet = namesSet.intersection(surnameSet)
print("intersectionSet -> \(intersectionSet)")


let symmetricDifferenceSet = namesSet.symmetricDifference(surnameSet)
print("symmetricDifferenceSet -> \(symmetricDifferenceSet)")




// Dictionary - словари


let namesAndSurnames: [String: String] = ["user1": "user1", "user2": "user2", "user5": "user5", "user6": "user6", "user7": "user7", "user11": "user11", "user12": "user12"]

print("namesAndSurnames -> \(namesAndSurnames)")
