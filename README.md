# Solidity-Assignment2
Solidity assignment
Assignment : Election2022

1. Candidate to pay <0.1/something> ether/wei to register to election, no registration if not paying enough.
 -- payable function
 -- require  , msg.value

2. ElectionCommission is another contract and can only approve a candidate before the election, but aleast 10 mins before election start
 -- multi contract call
 -- import

3. Only Election Commission decides on the Start and Stop time
 -- block.timestamp

4. Only an approved candidate can participate in elections

5. Anybody can vote, but only between the start and end date. And only once

6. ElectionCommision can announce results only after Stop Time

7. Only ElectionCommision can withdraw funds after election.
    payable address
    withdraw

Tech Requirements:
1. 2 contracts, ElectionCommision and Election2022
2. Use payable to pay ether 
3. Show contract calls using various methods

Assignment 2 : Submit on the github and share me the location

8. Add Appropriate Events to the existing code

9. Add error handling

10. Add self destruct to Election2022 contract, which can only be called by Election Commission.

11. Use a different set of files (new project)and create Election2022 contract using new in ElectionCommision 

