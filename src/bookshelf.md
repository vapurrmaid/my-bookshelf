## 2020

### 📚 Clean Architecture

R. C. Martin, _Clean Architecture: A Craftsman's Guide to Software Structure and
Design_. Prentice Hall, 2017.

#### Key Points

##### Goals and Importance of Architecture/Design/Structure

- the goal of architecture is to _minimize_ human resources
- _structure_ is more valuable than behaviour, because it imposes/dictates it
- start/stay _clean_: you won't have time to go back (only way to go fast is to
  go well)

##### Software is Both Consistent and Always Changing

- programming has changed very little (by contrast, tools and processing have)
  - architectural rules are _consistent_, even across systems and time
- software is _soft_; design for change intentionally

##### Programming in the Small and Large

- **functional decomposition** applied at all levels keeps everything _testable_
- paradigms impose _discipline_
  - **structured paradigm** imposes disciplined use of direct transfer of
    control (`goto`)
  - **OO** imposes disciplined use of indirect transfer of control
    (polymorphism)
  - **functional paradigm** imposes disciplined use of assignment (mutability)
- **plugins** via polymorphism; design for device (detail) independence
- **dependency inversion** can be applied anywhere to control direction of
  dependents
- Segregate _immutable_ (functional) components from immutable ones

#### Review

Robert Martin's "Clean Architecture" offers _solid_ advice in building systems
while offering little in terms of concrete code examples and architectural
blueprints. Indeed, the end of the book contains a short chapter unveiling
what's commonly considered as "The Onion Architecture", but this reveal feels
like an aftermath more than the main punch. Instead, the book succeeds at
defining architecture and its goals, along with well-depicted descriptions,
metrics and elements that are used to design and evaluate software systems.

### 📚 Fundamentals of Music Processing

todo

## 2019

I primarily worked under a contract as a full-stack developer in enterprise
rental management software. Unsurprisingly, I sought resources that would help
with the work I was conducting. Overall, I gained an appreciation for:

- actively refactoring as part of a sprint cycle
- designing objects for change (this is a common motif in enterprise)
- handling legacy systems and major codebase changes

### 📚 Domain Driven Design

E. Evans, _Domain-Driven Design: Tackling Complexity in the Heart of Software_.
Addison-Wesley, 2004.

### 📚 Patterns of Enterprise Application Architecture

M. Fowler, _Patterns of Enterprise Application Architecture_, Addison-Wesley
Professional, 2002.

### 📚 Refactoring

M. Fowler, _Refactoring: Improving the Design of Existing Code_, 2nd ed.
Addison-Wesley Professional, 2018.
