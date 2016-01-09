# Quaternion

*Courtesy of University of Waterloo CS135 A3*

Sir William Rowan Hamilton introduced in the 19th century the notion of quaternions. These are of the form *x<sub>0</sub> + x<sub>1</sub>i + x<sub>2</sub>j + x<sub>3</sub>k*, where *x<sub>0</sub>,x<sub>1</sub>,x<sub>2</sub>,x<sub>3</sub>* are numbers and *i,j,k* are symbols. For two numbers *a,b* (both not equal to zero), the multiplication rules of *i, j* and *k* can be described by the following multiplication table.

![alt text](https://github.com/nomanshahid/Quaternion/blob/master/table.PNG "table")

**Remark:** As we do not have commutativity here, the order matters. The table is read as “row times column”, not the other way around. For example, in this table you can deduce that the product *i* * *k* will be equal to *aj*.

The symbols *i, j* and *k* commute with any number, i.e. for every number *c* we have *ci* = *ic*, *cj* = *jc* and *ck* = *kc*.

**Example:** Let us assume the classical quaternions given with *a* = -1,*b* = -1. Then we have

![alt text](https://github.com/nomanshahid/Quaternion/blob/master/eqn.PNG "equation")

The function in the following program consumes two numbers *a, b* and two elements *q1* and *q2* in
the quaternions. This function shall produce the result of the multiplication *q1* * *q2*.
