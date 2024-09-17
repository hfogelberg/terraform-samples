# Additional language features

## Expressions
- Template strings: build strings dynamically
- Operators: +, -, >, ==, etc
- COnditionals: (cond ? true : false)
- For loop e.g. for o in var.list : o.id
- Expand value in list: e.g. var.list[*].id
- Dynamic blocks
- Constraints (type and version)

## Functions
- Numeric
- String
- Collection
- Encoding
- Filesystem
- Date and time
- Hash and cryptogaphy
- IP Networking
- Type conversion

## Meta arguments
### depends_on
When one configuration depends on another, but there is no direct connections that Terraform can determine. 

## count
Number of copies to be created of an instance.

## for_each
Iterate over an array of for instance subnets.

## life_cycle
A set of meta arguments to control the order of events
- create_before_destroy: can help with zero downtime
- ignore_changes: terraform ignores changes added by e.g. AWS under the hood
- prevent_destroy: reject plan to destroy resource


