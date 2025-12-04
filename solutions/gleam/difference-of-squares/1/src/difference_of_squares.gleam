

pub fn square_of_sum(n: Int) -> Int {
  square_of_sum_recursive(n, 0)
}

fn square_of_sum_recursive(current: Int, sum: Int) -> Int {
  case current {
    0 -> sum * sum
    _ -> square_of_sum_recursive(current - 1, current + sum)
  }
}

pub fn sum_of_squares(n: Int) -> Int {
  sum_of_squares_recursive(n, 0)
}

fn sum_of_squares_recursive(current: Int, sum: Int) -> Int {
  case current {
    0 -> sum
    _ -> sum_of_squares_recursive(current - 1, current * current + sum)
  }
}

pub fn difference(n: Int) -> Int {
  square_of_sum(n) - sum_of_squares(n)
}
