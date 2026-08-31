# Logical Operators Quick Reference

This guide provides a structured overview of logical operators. The examples below assume two variables, **a** and **b**, where:
* `a = 10` (Evaluates to **true** because it is non-zero)
* `b = 20` (Evaluates to **true** because it is non-zero)

## Operator Truth Table

| Operator | Name | Description | Example | Result |
| :---: | :--- | :--- | :--- | :--- |
| **`and`** | Logical AND | True if both operands are true. | `(a and b)` | **true** |
| **`&&`** | Logical AND | True if both operands are non-zero. | `(a && b)` | **true** |
| **`or`** | Logical OR | True if any of the two operands are non-zero. | `(a or b)` | **true** |
| **`!`** | Logical NOT | Reverses the logical state of its operand. | `!(a && b)` | **false** |
| **`not`** | Logical NOT | Reverses the logical state of its operand. | `not(a && b)` | **false** |
