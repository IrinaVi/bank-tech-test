# Bank tech test

## Project Description
This project aims to help users to control their bank accounts. It allows users to add deposit, or withdraw the money and print the bank statement. 

## Project approach
I have used an array of hashes for storing the information about each of the transactions. This allowed me to store each of the transactions as an element of an array. And, as each element is a hash, I could create value-pairs which represented deposit, date, credit etc.

The program consists of one class, which contains 4 methods: 
1. Initialize - this method sets the initial values of the object - budget and statement.

2. Deposit - takes two arguments: amount of money and date. This method allows users to deposit money to the bank account.

3. Withdraw - takes two arguments: amount of money and date. This method allows users to withdraw money from the bank account.

4. Get_statement - prints out the account statement.

I used Ruby as the main language for this project. RSpec and simplecov for testing.

## Table of Contents
The program consists of a single class(one file) and one file with tests.

## Input and output
Input example:  
![My Image](input.png)

Respective output:  
![My Image](output.png)

## How to use the project
1. Install the latest Ruby version
`rvm get stable`
`rvm use ruby --latest --install --default`

2. Install bundler & create bundle project
`gem install bundler`
`bundle init`

3. Install RSpec so you could run tests & generate RSpec template
`bundle add rspec`
`rspec --init`

4. To run the tests use the following command
`rspec`