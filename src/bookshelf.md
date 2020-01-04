## 2020

### :books: Clean Architecture

R. C. Martin, *Clean Architecture: A Craftsman's Guide to Software Structure and Design*. Prentice Hall,
2017.

#### Key Points

##### Goals and Importance of Architecture/Design/Structure

- the goal of architecture is to *minimize* human resources
- *structure* is more valuable than behaviour, because it imposes/dictates it
- start/stay *clean*: you won't have time to go back (only way to go fast is to go well)

##### Software is Both Consistent and Always Changing

- Code/programming has changed very little (by contrast, tools and processing have)
- architectural rules are *consistent*, even across system types and time
- software is *soft*; design for change intentionally

##### Programming in the Small and Large

- proper functional decomposition applied at all levels keeps everything *testable*
- paradigms impose *discipline*
    - structured paradigm imposes disciplined use of direct transfer of control (`goto`)
    - OO paradigm imposes disciplined use of indirect transfer of control (polymorphism)
    - functional paradigm imposes disciplined use of assignment (mutability)
- polymorphic *plugins*; programs should be device (detail) independent
- *dependency inversion* can be applied anywhere to control direction of dependents
- Segregate *immutable* (functional) components from immutable ones

#### Review

Robert Martin's "Clean Architecture" offers *solid* advice in building systems while offering little
in terms of concrete code examples and architectural blueprints. Indeed, the end of the book contains
a short chapter unveiling what's commonly considered as "The Onion Architecture", but this reveal feels
like an aftermath more than the main punch. Instead, the book succeeds at defining architecture and its
goals, along with well-depicted descriptions, metrics and elements that are used to design and
evaluate software systems.

## 2019

I primarily worked under a contract as a full-stack developer in enterprise rental management
software. Unsurprisingly, I sought resources that would help with the work I was conducting.
Overall, I gained an appreciation for:

- actively refactoring as part of a sprint cycle
- designing objects for change (this is a common motif in enterprise)
- handling legacy systems and major codebase changes

### :books: Domain Driven Design

E. Evans, *Domain-Driven Design: Tackling Complexity in the Heart of Software*. Addison-Wesley, 2004.

### :books: Patterns of Enterprise Application Architecture

M. Fowler, *Patterns of Enterprise Application Architecture*, Addison-Wesley Professional, 2002.

### :books: Refactoring

M. Fowler, *Refactoring: Improving the Design of Existing Code*, 2nd ed. Addison-Wesley
Professional, 2018.
