void main() {
  // I fixed all of the String type by adding the missing quotes for the sky, cloud.
  var words = ['sky', 'cloud', 'forest', 'welcome'];
  // Added String value for the w to be able to reconize as a string not a bolean.
  for (String w in words) {
    // And by removing the "const i = 0;" so that it does not make the code load slower even thought its not nessesarily needed
    print('$w has ${w.length} characters');
    // and finally by removing the "i++" made the output more on similar to the requirested outcome of the problem.
  }
  ;
}
