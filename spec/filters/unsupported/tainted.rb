opal_filter 'tainted' do
  fails "Array#clear keeps tainted status"
  fails "Array#compact! keeps tainted status even if all elements are removed"
  fails "Array#delete_at keeps tainted status"
  fails "Array#delete_if keeps tainted status"
  fails "Array#delete keeps tainted status"
  fails "Array#shift passed a number n as an argument keeps taint status"
  fails "Array#shift passed a number n as an argument returns an untainted array even if the array is tainted"
  fails "Array#pop passed a number n as an argument keeps taint status"
  fails "Array#pop passed a number n as an argument returns an untainted array even if the array is tainted"
  fails "Array#pop keeps taint status"
  fails "Array#+ does not get infected even if an original array is tainted"
  fails "Array#* with an integer copies the taint status of the original array if the passed count is not 0"
  fails "Array#* with an integer copies the taint status of the original array even if the array is empty"
  fails "Array#* with an integer copies the taint status of the original array even if the passed count is 0"
  fails "Array#compact does not keep tainted status even if all elements are removed"
end
