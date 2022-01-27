The file `main.lus` contains the stubs of all components
that you need to implement. You can simulate the
components even now, but it is pretty useless.
If you can't implement everything, implement _some_
of the stubs and leave the others. This will still
give you some points.

To run `luciole` on a component named `<NAME>`,
call `luciole main.lus <NAME>`. To run `kind2`, call:

```
sudo docker run -v \
/PATH_TO_FOLDER/:/lus kind2/kind2 /lus/main.lus --lus_main <NAME>
```


__NOTES and TRICKS__

- Feel free to create new components and use them.

- Always check whether `luciole` shows an error
  before looking at the simulation window.
  For example, if you changed something and
  run `luciole`, it can still run even though
  there were syntax errors in your changed
  implementation, because `luciole` just uses
  the old cached version of your implementation.

- You can write
  `node Ha(a,b:bool) returns (c:bool);`
  as well as
  `node Ha(a:bool; b:bool) returns (c:bool);`
  It is the same (careful: `;` vs `,`).

- When dealing with expressions over reals and integers,
  make sure all numbers have the same type.
  For example, if `i` is integer and `r` is real, then
  write `r = 1.0 + real(i)` instead of `r = 1 + i`.

- If you add a variable using `var b:bool`, then don't forget
  to define the expression for it, otherwise you will get an error.

- To add a `kind2` property, inside `let...tel` use the syntax
```
--%PROPERTY ok;
```
  where `ok` must be a boolean variable.

- if you use vim-like editor, here is a highlight-syntax file:
  <http://www-verimag.imag.fr/~raymond/lus.vim>


If you have questions, post on forum, or send them to
<ayrat.khalimov@gmail.com>
