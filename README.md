
## Task 

Build a program that accepts two inputs:

- A JSON array of talent, containing objects with `name`, `location` and `date_of_birth` attributes
- A location to filter by

The program should then filter the array of supplied talent, and output the names of talent whose location matches the location supplied. The supplied location should be consider case-insensitive, and the order in which names are outputted is not important.

#### Technologies

- Ruby

#### Time Spent 

- 3 hours

## How to run the program

Clone the project locally
```
https://github.com/Charlotte-91/contact-tech-test.git
```

#### To run the program

(Please replace 'location' with location required(eg; Springfield))

(To change the JSON used, please replace 'talent.JSON' with required file path)

```
> irb
> require './lib/filter.rb'
> require 'json'
> json = JSON.parse(File.read('talent.JSON'))
> filter(json, location)
```
#### To run the tests 

```
> rspec
```
