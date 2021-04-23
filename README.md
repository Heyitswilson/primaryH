# primaryH

find_common_films accepts an array of integers and returns an array of strings

## Setup
To run the default test cases: ruby test.rb 

## Features
* Modular code
* Handles edge cases
   * The exception is if find_common_files is given an invalid Id, such as 9999999
   * Solution: Use an object to transfer data between functions; if swapi returns an error, take that error message and save it in object[:error_message]. In the following functions, because !!object[:error_message] returns true, immediately return the concatenated error message.
   ```ruby
   {
      :error_message => ['404', 'Not found'],
      :data => nil
   }
   ```
   * Left unimplemented because it adds a lot of code and may have been out of scope for this coding exercise
   
* Test cases

## Version
ruby 2.5.1
