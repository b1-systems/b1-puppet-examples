# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

#An array or hash the function will iterate over.
#A lambda, which the function calls for each element in the first argument. It takes two mandatory
#parameters:
#  A memo value that is overwritten after each iteration with the iteration’s result.
#  A second value that is overwritten after each iteration with the next value in the function’s
#  first argument.
$sum = [1,2,3].reduce |Integer $memo, Integer $value| {
  $memo + $value
}

notice($sum)


