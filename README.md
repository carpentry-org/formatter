# formatter

is a simple formatter for Carp in Carp macros. Slow and WIP, based on [the
formatter in gt4carp](https://github.com/carpentry-org/gt4carp/).

## Usage

```clojure
> (load "git@github.com:carpentry-org/formatter.git@master")
> (IO.println (Format.format (1 2 [1 2 3 4])))
(1 2 [1 2 3 4])
> (IO.println (Format.format (1 2 [1 2 3 4 5 6 7 8 9 10])))
(1 2 [1
      2
      3
      4
      5
      6
      7
      8
      9
      10])
> (set! Format.max-line-width 10)
> (IO.println (Format.format (1 2 [1 2 3 4 5])))
(1 2 [1 2 3
      4 5])
```

Special forms and maps are TBI.

<hr/>

Have fun!
