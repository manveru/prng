import gleeunit/should
import prng/generator
import prng/seed

pub fn int_list_behaves_the_same_as_elm_implementation_test() {
  let expected = [
    2, 7, 9, 8, 6, 1, 6, 7, 8, 3, 6, 8, 9, 3, 1, 8, 10, 7, 8, 5, 2, 9, 7, 5, 8,
    5, 9, 3, 7, 8, 4, 1, 10, 6, 8, 7, 1, 8, 6, 7, 10, 1, 5, 8, 1, 1, 3, 10, 10,
    4, 4, 9, 1, 5, 11, 8, 8, 10, 6, 1, 9, 3, 10, 9, 5, 2, 11, 11, 4, 8, 11, 9, 5,
    6, 6, 2, 4, 7, 5, 2, 3, 8, 8, 1, 2, 4, 4, 11, 8, 3, 8, 2, 3, 11, 11, 1, 2, 2,
    7, 8, 3, 5, 4, 1, 3, 3, 2, 3, 7, 8, 11, 10, 7, 9, 8, 7, 2, 10, 7, 3, 9, 2, 4,
    11, 11, 7, 6, 9, 7, 8, 7, 6, 8, 5, 8, 4, 4, 10, 3, 7, 9, 2, 11, 8, 4, 8, 1,
    10, 8, 9, 2, 8, 2, 4, 4, 7, 6, 1, 1, 8, 1, 9, 2, 2, 8, 3, 7, 4, 8, 5, 7, 1,
    7, 3, 8, 3, 7, 5, 5, 3, 3, 8, 5, 1, 4, 10, 6, 6, 10, 2, 1, 1, 7, 11, 6, 8, 2,
    8, 8, 5, 11, 9, 3, 10, 7, 11, 11, 5, 6, 8, 1, 7, 4, 5, 8, 4, 7, 8, 4, 4, 10,
    3, 7, 6, 10, 10, 3, 3, 7, 3, 8, 1, 1, 1, 11, 8, 11, 5, 5, 10, 4, 10, 5, 1, 6,
    6, 1, 10, 9, 6, 3, 9, 11, 11, 8, 10, 2, 9, 3, 5, 9, 1, 3, 1, 10, 2, 10, 11,
    4, 1, 5, 3, 3, 2, 10, 5, 5, 7, 8, 8, 1, 8, 11, 11, 4, 8, 11, 1, 5, 1, 3, 10,
    7, 3, 11, 11, 8, 3, 4, 1, 9, 1, 7, 6, 4, 1, 1, 4, 1, 6, 6, 3, 9, 5, 10, 7, 8,
    6, 5, 6, 9, 4, 5, 4, 5, 3, 9, 1, 11, 6, 9, 6, 10, 6, 9, 7, 10, 10, 8, 11, 1,
    9, 7, 5, 2, 7, 6, 10, 3, 5, 5, 5, 8, 11, 7, 2, 6, 10, 3, 1, 10, 10, 3, 9, 8,
    7, 6, 1, 6, 3, 4, 10, 11, 9, 11, 1, 2, 11, 4, 11, 10, 3, 10, 8, 3, 7, 9, 11,
    10, 1, 11, 9, 11, 5, 9, 9, 10, 1, 1, 5, 2, 5, 10, 5, 1, 7, 7, 5, 6, 2, 7, 9,
    9, 8, 10, 5, 4, 11, 5, 10, 8, 1, 4, 2, 1, 8, 7, 1, 9, 6, 1, 6, 2, 9, 10, 8,
    8, 11, 6, 9, 8, 11, 3, 7, 7, 11, 6, 1, 9, 2, 7, 7, 7, 10, 4, 7, 9, 5, 6, 7,
    11, 10, 8, 1, 7, 7, 5, 3, 5, 6, 5, 4, 11, 1, 2, 8, 1, 4, 5, 6, 2, 8, 3, 6, 5,
    8, 9, 7, 6, 3, 3, 5, 4, 5, 3, 8, 1, 10, 5, 11,
  ]
  let seed = seed.new(11)
  let generator = generator.list(generator.int(1, 11), of: 500)
  let #(value, _seed) = generator.step(generator, seed)
  value
  |> should.equal(expected)
}
