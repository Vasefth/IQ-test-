# Shape Analogy Solver

## Overview

This Prolog program is designed to solve shape analogy problems commonly found in IQ tests. It models the relationships between different shapes and their arrangements to determine analogical counterparts. The program defines shapes and their relationships, then uses these definitions to solve analogy queries.

## Files

- `lab1.ecl`: Contains the Prolog code that defines shapes, their arrangements, and the logic to solve analogy problems.

## Features

- **Shape and Arrangement Definitions**: Initializes the first 16 shapes and their arrangements to be used in analogy problems.
- **Relationship Definitions**: Sets up various relationships between shapes and their arrangements, such as inverse and fold relationships.
- **Analogy Solving**: Provides a predicate to solve analogy problems by finding a shape that has the same relationship to a third shape as a given pair of shapes have to each other.

## Predicates

### figure/2

- **Description**: Initializes shapes and their arrangements.
- **Arguments**:
  - An integer identifier for the shape.
  - The arrangement of the shape, described using terms like `middle` and `alternative`.

### relation/3

- **Description**: Defines relationships between different shape arrangements.
- **Arguments**:
  - The first shape arrangement.
  - The second shape arrangement.
  - The type of relationship between the two arrangements.

### analogy/4

- **Description**: Solves shape analogy problems by finding shapes that have a specified relationship.
- **Arguments**:
  - Identifier of the first shape in the analogy.
  - Identifier of the second shape in the analogy.
  - Identifier of the third shape in the analogy.
  - The identifier of the fourth shape in the analogy, which is the solution.

## Usage

To use this program, ensure you have a Prolog interpreter installed on your computer. Load the program by navigating to the directory containing `shape_analogy.pl` and running the following command in your terminal:

```bash
swipl -s shape_analogy.pl
```

Once the file is loaded, you can query the `analogy/4` predicate directly in the Prolog environment to solve analogy problems. For example:

```prolog
?- analogy(Shape1, Shape2, Shape3, Shape4).
```

This query will attempt to find a `Shape4` that completes the analogy between `Shape1`, `Shape2`, and `Shape3` based on the defined relationships.

## Contributing

Contributions to this project are welcome! Please fork the repository and submit a pull request with your improvements.

## License

This project is open-source and available under the [MIT License](https://opensource.org/licenses/MIT).
