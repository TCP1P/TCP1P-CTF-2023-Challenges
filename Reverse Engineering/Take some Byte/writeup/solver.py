from z3 import *

flags = [BitVec('flags{}'.format(i), 8) for i in range(30)]
s = Solver()

s.add(flags[0] == ord("T"))
s.add(flags[1] == ord("C"))
s.add(flags[2] == ord("P"))
s.add(flags[3] == ord("1"))
s.add(flags[4] == ord("P"))
s.add(flags[5] == ord("{"))
s.add(flags[-1] == ord("}"))

# Add constraints for characters 6 to 9 (byte)
for i in range(6, 10):
    s.add(flags[i] == ord("byte"[i - 6]))

# Add constraints for characters 10, 15, and 18
s.add(flags[10] == ord("_"))
s.add(flags[15] == ord("_"))
s.add(flags[18] == ord("_"))

# Add constraints for characters 11 to 14 (code)
for i in range(11, 15):
    s.add(flags[i] == ord("code"[i - 11]))

# Add constraints for characters 16 and 17 (not 105 and not 115)
s.add(flags[16] == ord('i'))
s.add(flags[17] == ord('s'))

s.add(flags[19] == ord("H"))

s.add(flags[20] == 117)

s.add(flags[21] == (flags[2] - 10))

# Ensure it's not the lowercase version of flags[0]
s.add(flags[22] == flags[0] + 32)
s.add(flags[22] == flags[23])

if s.check() == sat:
    model = s.model()
    result = ""
    for flag in flags:
        if model[flag] is not None:
            result += chr(model[flag].as_long())
    print(f"flags: {result}")
else:
    print("Tetot")
