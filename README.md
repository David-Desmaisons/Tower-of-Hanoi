## Tower of Hanoi


- This is a "brute force" version of the Hanoi tower problem implemented in prolog.

- The program does not instruct how to solve the problem only the game rules.

- Obviously performance is much worse as the standard solution.

### Usage

- `hanoi(N,Solution)` where N is the number of elements and Solution is the solution.

Ex:

```
؀?- hanoi(3,Solution).
X = [move(left, rigth), move(left, middle), move(rigth, middle), move(left, rigth), 
      move(middle, left), move(middle, rigth), move(left, rigth)] 
```
