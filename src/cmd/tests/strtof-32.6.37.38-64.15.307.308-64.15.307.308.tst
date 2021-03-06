# : : generated from /home/gsf/src/cmd/tests/strtof-32.6.37.38-64.15.307.308-64.15.307.308.rt by mktest : : #

TEST 01 'min/max boundaries'

	EXEC	2.225073858507201e-308 2.225073858507202e-308 2.225073858507203e-308
		INPUT -n -
		OUTPUT - $'strtod   "2.225073858507201e-308" "" 0.00000000000000e+00 ERANGE
strtold  "2.225073858507201e-308" "" 0.00000000000000e+00 ERANGE

strtod   "2.225073858507202e-308" "" 2.22507385850720e-308 OK
strtold  "2.225073858507202e-308" "" 2.22507385850720e-308 OK

strtod   "2.225073858507203e-308" "" 2.22507385850720e-308 OK
strtold  "2.225073858507203e-308" "" 2.22507385850720e-308 OK
		ERROR -n -

	EXEC	1.797693134862314e+308 1.797693134862315e+308 1.797693134862316e+308
		OUTPUT - $'strtod   "1.797693134862314e+308" "" 1.79769313486232e+308 OK
strtold  "1.797693134862314e+308" "" 1.79769313486232e+308 OK

strtod   "1.797693134862315e+308" "" 1.79769313486232e+308 OK
strtold  "1.797693134862315e+308" "" 1.79769313486232e+308 OK

strtod   "1.797693134862316e+308" "" inf ERANGE
strtold  "1.797693134862316e+308" "" inf ERANGE

	EXEC	3.362103143112093506e-4932 3.36210314311209350626e-4932 3.362103143112093507e-4932
		OUTPUT - $'strtod   "3.362103143112093506e-4932" "" 0.00000000000000e+00 ERANGE
strtold  "3.362103143112093506e-4932" "" 0.00000000000000e+00 ERANGE

strtod   "3.36210314311209350626e-4932" "" 0.00000000000000e+00 ERANGE
strtold  "3.36210314311209350626e-4932" "" 0.00000000000000e+00 ERANGE

strtod   "3.362103143112093507e-4932" "" 0.00000000000000e+00 ERANGE
strtold  "3.362103143112093507e-4932" "" 0.00000000000000e+00 ERANGE

	EXEC	1.189731495357231765e+4932L 1.18973149535723176502e+4932 1.189731495357231766e+4932L
		OUTPUT - $'strtod   "1.189731495357231765e+4932L" "L" inf ERANGE
strtold  "1.189731495357231765e+4932L" "L" inf ERANGE

strtod   "1.18973149535723176502e+4932" "" inf ERANGE
strtold  "1.18973149535723176502e+4932" "" inf ERANGE

strtod   "1.189731495357231766e+4932L" "L" inf ERANGE
strtold  "1.189731495357231766e+4932L" "L" inf ERANGE

TEST 02 'optional suffix'

	EXEC	1.1754943E-38F 3.4028234e+38F
		INPUT -n -
		OUTPUT - $'strtod   "1.1754943E-38F" "F" 1.17549430000000e-38 OK
strtold  "1.1754943E-38F" "F" 1.17549430000000e-38 OK

strtod   "3.4028234e+38F" "F" 3.40282340000000e+38 OK
strtold  "3.4028234e+38F" "F" 3.40282340000000e+38 OK
		ERROR -n -

	EXEC	3.3621031431120935063e-4932L 1.1897314953572317650E+4932L
		OUTPUT - $'strtod   "3.3621031431120935063e-4932L" "L" 0.00000000000000e+00 ERANGE
strtold  "3.3621031431120935063e-4932L" "L" 0.00000000000000e+00 ERANGE

strtod   "1.1897314953572317650E+4932L" "L" inf ERANGE
strtold  "1.1897314953572317650E+4932L" "L" inf ERANGE

TEST 03 'hexadecimal floating point'

	EXEC	0x1.0000000000000000p-16382 0x1.fffffffffffffffep+16383
		INPUT -n -
		OUTPUT - $'strtod   "0x1.0000000000000000p-16382" "" 0.00000000000000e+00 ERANGE
strtold  "0x1.0000000000000000p-16382" "" 0.00000000000000e+00 ERANGE

strtod   "0x1.fffffffffffffffep+16383" "" inf ERANGE
strtold  "0x1.fffffffffffffffep+16383" "" inf ERANGE
		ERROR -n -

	EXEC	0x1p+16383 -0x1p+16383 0x1p-16382 -0x1p-16382
		OUTPUT - $'strtod   "0x1p+16383" "" inf ERANGE
strtold  "0x1p+16383" "" inf ERANGE

strtod   "-0x1p+16383" "" -inf ERANGE
strtold  "-0x1p+16383" "" -inf ERANGE

strtod   "0x1p-16382" "" 0.00000000000000e+00 ERANGE
strtold  "0x1p-16382" "" 0.00000000000000e+00 ERANGE

strtod   "-0x1p-16382" "" 0.00000000000000e+00 ERANGE
strtold  "-0x1p-16382" "" 0.00000000000000e+00 ERANGE

	EXEC	0x1p+16383 -0x1p+16383 0x1p+16384 -0x1p+16384 0x1p-16382 -0x1p-16382 0x1p-16383 -0x1p-16383
		OUTPUT - $'strtod   "0x1p+16383" "" inf ERANGE
strtold  "0x1p+16383" "" inf ERANGE

strtod   "-0x1p+16383" "" -inf ERANGE
strtold  "-0x1p+16383" "" -inf ERANGE

strtod   "0x1p+16384" "" inf ERANGE
strtold  "0x1p+16384" "" inf ERANGE

strtod   "-0x1p+16384" "" -inf ERANGE
strtold  "-0x1p+16384" "" -inf ERANGE

strtod   "0x1p-16382" "" 0.00000000000000e+00 ERANGE
strtold  "0x1p-16382" "" 0.00000000000000e+00 ERANGE

strtod   "-0x1p-16382" "" 0.00000000000000e+00 ERANGE
strtold  "-0x1p-16382" "" 0.00000000000000e+00 ERANGE

strtod   "0x1p-16383" "" 0.00000000000000e+00 ERANGE
strtold  "0x1p-16383" "" 0.00000000000000e+00 ERANGE

strtod   "-0x1p-16383" "" 0.00000000000000e+00 ERANGE
strtold  "-0x1p-16383" "" 0.00000000000000e+00 ERANGE

	EXEC	0x1p127 0x1.p127 0x1.0p127 0x.1p131 0x0.1p131 0x0.10p131
		OUTPUT - $'strtod   "0x1p127" "" 1.70141183460469e+38 OK
strtold  "0x1p127" "" 1.70141183460469e+38 OK

strtod   "0x1.p127" "" 1.70141183460469e+38 OK
strtold  "0x1.p127" "" 1.70141183460469e+38 OK

strtod   "0x1.0p127" "" 1.70141183460469e+38 OK
strtold  "0x1.0p127" "" 1.70141183460469e+38 OK

strtod   "0x.1p131" "" 1.70141183460469e+38 OK
strtold  "0x.1p131" "" 1.70141183460469e+38 OK

strtod   "0x0.1p131" "" 1.70141183460469e+38 OK
strtold  "0x0.1p131" "" 1.70141183460469e+38 OK

strtod   "0x0.10p131" "" 1.70141183460469e+38 OK
strtold  "0x0.10p131" "" 1.70141183460469e+38 OK

	EXEC	0x12345p127 0x12345.6789ap127 1.26866461572665980e+43
		OUTPUT - $'strtod   "0x12345p127" "" 1.26865773447299e+43 OK
strtold  "0x12345p127" "" 1.26865773447299e+43 OK

strtod   "0x12345.6789ap127" "" 1.26866461572666e+43 OK
strtold  "0x12345.6789ap127" "" 1.26866461572666e+43 OK

strtod   "1.26866461572665980e+43" "" 1.26866461572666e+43 OK
strtold  "1.26866461572665980e+43" "" 1.26866461572666e+43 OK

TEST 04 'to infinity and beyond'

	EXEC	inf +inf -inf
		INPUT -n -
		OUTPUT - $'strtod   "inf" "" inf OK
strtold  "inf" "" inf OK

strtod   "+inf" "" inf OK
strtold  "+inf" "" inf OK

strtod   "-inf" "" -inf OK
strtold  "-inf" "" -inf OK
		ERROR -n -

	EXEC	Inf +Inf -Inf
		OUTPUT - $'strtod   "Inf" "" inf OK
strtold  "Inf" "" inf OK

strtod   "+Inf" "" inf OK
strtold  "+Inf" "" inf OK

strtod   "-Inf" "" -inf OK
strtold  "-Inf" "" -inf OK

	EXEC	InFiNiTy +InFiNiTy -InFiNiTy
		OUTPUT - $'strtod   "InFiNiTy" "" inf OK
strtold  "InFiNiTy" "" inf OK

strtod   "+InFiNiTy" "" inf OK
strtold  "+InFiNiTy" "" inf OK

strtod   "-InFiNiTy" "" -inf OK
strtold  "-InFiNiTy" "" -inf OK

	EXEC	infi +infi -infi
		OUTPUT - $'strtod   "infi" "i" inf OK
strtold  "infi" "i" inf OK

strtod   "+infi" "i" inf OK
strtold  "+infi" "i" inf OK

strtod   "-infi" "i" -inf OK
strtold  "-infi" "i" -inf OK

	EXEC	in +in -in
		OUTPUT - $'strtod   "in" "in" 0.00000000000000e+00 OK
strtold  "in" "in" 0.00000000000000e+00 OK

strtod   "+in" "+in" 0.00000000000000e+00 OK
strtold  "+in" "+in" 0.00000000000000e+00 OK

strtod   "-in" "-in" 0.00000000000000e+00 OK
strtold  "-in" "-in" 0.00000000000000e+00 OK

	EXEC	NaN +NaN -NaN
		OUTPUT - $'strtod   "NaN" "" nan OK
strtold  "NaN" "" nan OK

strtod   "+NaN" "" nan OK
strtold  "+NaN" "" nan OK

strtod   "-NaN" "" -nan OK
strtold  "-NaN" "" -nan OK

	EXEC	NaN12-34abc.def +NaN12-34abc.def -NaN12-34abc.def
		OUTPUT - $'strtod   "NaN12-34abc.def" "" nan OK
strtold  "NaN12-34abc.def" "" nan OK

strtod   "+NaN12-34abc.def" "" nan OK
strtold  "+NaN12-34abc.def" "" nan OK

strtod   "-NaN12-34abc.def" "" -nan OK
strtold  "-NaN12-34abc.def" "" -nan OK

	EXEC	0 -0 0. -0. 0.0 -0.0
		OUTPUT - $'strtod   "0" "" 0.00000000000000e+00 OK
strtold  "0" "" 0.00000000000000e+00 OK

strtod   "-0" "" -0.00000000000000e+00 OK
strtold  "-0" "" -0.00000000000000e+00 OK

strtod   "0." "" 0.00000000000000e+00 OK
strtold  "0." "" 0.00000000000000e+00 OK

strtod   "-0." "" -0.00000000000000e+00 OK
strtold  "-0." "" -0.00000000000000e+00 OK

strtod   "0.0" "" 0.00000000000000e+00 OK
strtold  "0.0" "" 0.00000000000000e+00 OK

strtod   "-0.0" "" -0.00000000000000e+00 OK
strtold  "-0.0" "" -0.00000000000000e+00 OK

TEST 05 'simple, right?'

	EXEC	1 12 1.2 1.2.3
		INPUT -n -
		OUTPUT - $'strtod   "1" "" 1.00000000000000e+00 OK
strtold  "1" "" 1.00000000000000e+00 OK

strtod   "12" "" 1.20000000000000e+01 OK
strtold  "12" "" 1.20000000000000e+01 OK

strtod   "1.2" "" 1.20000000000000e+00 OK
strtold  "1.2" "" 1.20000000000000e+00 OK

strtod   "1.2.3" ".3" 1.20000000000000e+00 OK
strtold  "1.2.3" ".3" 1.20000000000000e+00 OK
		ERROR -n -
