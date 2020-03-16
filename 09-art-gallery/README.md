# Art Gallery Lab

In this project, we will be practicing object relationships in Ruby, with a particular emphasis on the `has_many` `through` relationship (aka: many-to-many). Please read the whole README before writing any code!

### Introduction

You got yourself a fancy new job and you've been put in charge of making a program to keep track of paintings, and the galleries that are selling them.

Each painting has a price, and a title. Each artist has a name and an amount of years of experience, and each gallery has a name and a city.

The initial files and basic attributes have already been built, but you'll need to figure out the relationships and build the rest of the app out yourself!

## Deliverables

### Model the Domain

An artist can, of course, have many paintings. Artist has many Paintings.
Paintings can only be in one gallery at a time, and only have one artist. Paiting belgngs to Gallery and Artist.
Galleries can have many paintings. Gallery has many Paintings

Gallery >-< Artist (many to many)
if there's MTM, we need a JOIN model - and that would be the Painting

- What are your models?
- What does your schema look like?
- What are the relationships between your models?

### Class Attributes and Methods
