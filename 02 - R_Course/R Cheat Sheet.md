R Cheat Sheet
============

  * table(dataset$Field)
  * prop.table(table(dataset$Field))
  * prop.table(table(dataset$Field1, dataset$Field2))
  * prop.table(mytable, 1) # row percentages
  * prop.table(mytable, 2) # column percentages

  * # As row-wise proportions
> prop.table(table(train$Sex, train$Survived), 1)











2nd paragraph. *Italic*, **bold**, and `monospace`. Itemized lists
look like:

  * this one
  * that one
  * the other one

Note that --- not considering the asterisk --- the actual text
content starts at 4-columns in.

