# Print the string by concatenating the list of chars in
# hex format.
# Hint: use intToUtf8 to convert ascii codes to characters.
#
# @param list_of_chars A list of hex characters
# @returns The concatenated and converted list
print_magic_string <- function(list_of_chars) {
  magic_string <- ''
  for(c in list_of_chars) {
    magic_string <- paste(magic_string, intToUtf8(c), sep = '')
  }
  return(magic_string)
}
