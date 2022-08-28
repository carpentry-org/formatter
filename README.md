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

Some special forms are supported as well:

```
> (IO.println (Format.format (defn hello [x y] (IO.println "hello my dearest friend, how are you doing?"))))
(defn hello [x y]
  (IO.println hello my dearest friend, how are you doing?))
> (IO.println (Format.format (defn hello [x y] (let [a 1 b 2] (IO.println "hello my dearest friend, how are you doing?")))))
(defn hello [x y]
  (let [a 1
        b 2]
    (IO.println hello my dearest friend, how are you doing?)))
> (set! Format.max-line-width 10)
> (IO.println (Format.format (defn hello [x y] (IO.println "hello my dearest friend, how are you doing?"))))
(defn hello
  [x y]
  (IO.println
    hello my dearest friend, how are you doing?))
> (set! Format.max-line-width 15)
> (IO.println (Format.format (defn hello [x y] (IO.println "hello my dearest friend, how are you doing?"))))
(defn hello [x y]
  (IO.println
    hello my dearest friend, how are you doing?))
```

Other forms and maps are TBI.

<hr/>

Have fun!
