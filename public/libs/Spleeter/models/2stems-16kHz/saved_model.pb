ψ-
?-?-
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T?

value"T

output_ref"T?"	
Ttype"
validate_shapebool("
use_lockingbool(?
E
AssignSubVariableOp
resource
value"dtype"
dtypetype?
B
AssignVariableOp
resource
value"dtype"
dtypetype?
?
BatchToSpaceND

input"T
block_shape"Tblock_shape
crops"Tcrops
output"T"	
Ttype" 
Tblock_shapetype0:
2	"
Tcropstype0:
2	
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
P

ComplexAbs
x"T	
y"Tout"
Ttype0:
2"
Touttype0:
2
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

,
Cos
x"T
y"T"
Ttype:

2
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
?
FusedBatchNorm
x"T

scale"T
offset"T	
mean"T
variance"T
y"T

batch_mean"T
batch_variance"T
reserve_space_1"T
reserve_space_2"T"
Ttype:
2"
epsilonfloat%??8"-
data_formatstringNHWC:
NHWCNCHW"
is_trainingbool(
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
IRFFT	
input

fft_length

output
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%??L>"
Ttype0:
2
:
Less
x"T
y"T
z
"
Ttype:
2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
w
PadV2

input"T
paddings"	Tpaddings
constant_values"T
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
-
RFFT	
input

fft_length

output
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
?
SpaceToBatchND

input"T
block_shape"Tblock_shape
paddings"	Tpaddings
output"T"	
Ttype" 
Tblock_shapetype0:
2	"
	Tpaddingstype0:
2	
?
SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape?
9
VarIsInitializedOp
resource
is_initialized
?
s

VariableV2
ref"dtype?"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ?"serve*1.14.02unknown8??$

global_step/Initializer/zerosConst*
value	B	 R *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
k
global_step
VariableV2*
_output_shapes
: *
shape: *
_class
loc:@global_step*
dtype0	
?
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
_output_shapes
: *
T0	*
_class
loc:@global_step
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
n
PlaceholderPlaceholder*
dtype0*'
_output_shapes
:?????????*
shape:?????????
C
Placeholder_1Placeholder*
dtype0*
_output_shapes
:
_
transpose/permConst*
dtype0*
_output_shapes
:*
valueB"       
e
	transpose	TransposePlaceholdertranspose/perm*
T0*'
_output_shapes
:?????????
T
stft/frame_lengthConst*
value
B :? *
dtype0*
_output_shapes
: 
R
stft/frame_stepConst*
dtype0*
_output_shapes
: *
value
B :?
M

stft/ConstConst*
value
B :? *
dtype0*
_output_shapes
: 
Z
stft/frame/axisConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
Q
stft/frame/RankConst*
_output_shapes
: *
value	B :*
dtype0
X
stft/frame/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
X
stft/frame/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
v
stft/frame/rangeRangestft/frame/range/startstft/frame/Rankstft/frame/range/delta*
_output_shapes
:
R
stft/frame/add/yConst*
dtype0*
_output_shapes
: *
value	B :
Y
stft/frame/addAddstft/frame/axisstft/frame/add/y*
T0*
_output_shapes
: 
e
stft/frame/strided_slice/stackPackstft/frame/axis*
T0*
N*
_output_shapes
:
f
 stft/frame/strided_slice/stack_1Packstft/frame/add*
T0*
N*
_output_shapes
:
j
 stft/frame/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
stft/frame/strided_sliceStridedSlicestft/frame/rangestft/frame/strided_slice/stack stft/frame/strided_slice/stack_1 stft/frame/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
I
stft/frame/ShapeShape	transpose*
_output_shapes
:*
T0
R
stft/frame/sub/yConst*
dtype0*
_output_shapes
: *
value	B :
Y
stft/frame/subSubstft/frame/Rankstft/frame/sub/y*
T0*
_output_shapes
: 
b
stft/frame/sub_1Substft/frame/substft/frame/strided_slice*
T0*
_output_shapes
: 
U
stft/frame/packed/1Const*
value	B :*
dtype0*
_output_shapes
: 
?
stft/frame/packedPackstft/frame/strided_slicestft/frame/packed/1stft/frame/sub_1*
T0*
N*
_output_shapes
:
\
stft/frame/split/split_dimConst*
dtype0*
_output_shapes
: *
value	B : 
?
stft/frame/splitSplitVstft/frame/Shapestft/frame/packedstft/frame/split/split_dim*
T0*$
_output_shapes
::: *
	num_split*

Tlen0
[
stft/frame/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
l
stft/frame/ReshapeReshapestft/frame/split:1stft/frame/Reshape/shape*
T0*
_output_shapes
: 
Q
stft/frame/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
S
stft/frame/Size_1Const*
value	B : *
dtype0*
_output_shapes
: 
U
stft/frame/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
J
stft/frame/NegNegstft/frame/Reshape*
T0*
_output_shapes
: 
a
stft/frame/floordivFloorDivstft/frame/Negstft/frame_step*
T0*
_output_shapes
: 
M
stft/frame/Neg_1Negstft/frame/floordiv*
T0*
_output_shapes
: 
T
stft/frame/sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
^
stft/frame/sub_2Substft/frame/Neg_1stft/frame/sub_2/y*
_output_shapes
: *
T0
Y
stft/frame/mulMulstft/frame_stepstft/frame/sub_2*
T0*
_output_shapes
: 
[
stft/frame/add_1Addstft/frame_lengthstft/frame/mul*
T0*
_output_shapes
: 
^
stft/frame/sub_3Substft/frame/add_1stft/frame/Reshape*
_output_shapes
: *
T0
V
stft/frame/Maximum/xConst*
value	B : *
dtype0*
_output_shapes
: 
f
stft/frame/MaximumMaximumstft/frame/Maximum/xstft/frame/sub_3*
T0*
_output_shapes
: 
X
stft/frame/zeros/mul/yConst*
value	B :*
dtype0*
_output_shapes
: 
e
stft/frame/zeros/mulMulstft/frame/Sizestft/frame/zeros/mul/y*
_output_shapes
: *
T0
Z
stft/frame/zeros/Less/yConst*
value
B :?*
dtype0*
_output_shapes
: 
m
stft/frame/zeros/LessLessstft/frame/zeros/mulstft/frame/zeros/Less/y*
T0*
_output_shapes
: 
[
stft/frame/zeros/packed/1Const*
value	B :*
dtype0*
_output_shapes
: 
y
stft/frame/zeros/packedPackstft/frame/Sizestft/frame/zeros/packed/1*
T0*
N*
_output_shapes
:
X
stft/frame/zeros/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
r
stft/frame/zerosFillstft/frame/zeros/packedstft/frame/zeros/Const*
T0*
_output_shapes

:
Z
stft/frame/zeros_1/mul/yConst*
value	B :*
dtype0*
_output_shapes
: 
k
stft/frame/zeros_1/mulMulstft/frame/Size_1stft/frame/zeros_1/mul/y*
_output_shapes
: *
T0
\
stft/frame/zeros_1/Less/yConst*
_output_shapes
: *
value
B :?*
dtype0
s
stft/frame/zeros_1/LessLessstft/frame/zeros_1/mulstft/frame/zeros_1/Less/y*
_output_shapes
: *
T0
]
stft/frame/zeros_1/packed/1Const*
value	B :*
dtype0*
_output_shapes
: 

stft/frame/zeros_1/packedPackstft/frame/Size_1stft/frame/zeros_1/packed/1*
N*
_output_shapes
:*
T0
Z
stft/frame/zeros_1/ConstConst*
_output_shapes
: *
value	B : *
dtype0
v
stft/frame/zeros_1Fillstft/frame/zeros_1/packedstft/frame/zeros_1/Const*
_output_shapes

: *
T0
`
stft/frame/concat/values_1/0/0Const*
value	B : *
dtype0*
_output_shapes
: 
?
stft/frame/concat/values_1/0Packstft/frame/concat/values_1/0/0stft/frame/Maximum*
T0*
N*
_output_shapes
:
r
stft/frame/concat/values_1Packstft/frame/concat/values_1/0*
T0*
N*
_output_shapes

:
X
stft/frame/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
stft/frame/concatConcatV2stft/frame/zerosstft/frame/concat/values_1stft/frame/zeros_1stft/frame/concat/axis*
N*
_output_shapes

:*
T0
?
stft/frame/PadV2PadV2	transposestft/frame/concatstft/frame/Const*
T0*0
_output_shapes
:??????????????????
R
stft/frame/Shape_1Shapestft/frame/PadV2*
T0*
_output_shapes
:
T
stft/frame/add_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
f
stft/frame/add_2Addstft/frame/strided_slicestft/frame/add_2/y*
T0*
_output_shapes
: 
p
 stft/frame/strided_slice_1/stackPackstft/frame/strided_slice*
T0*
N*
_output_shapes
:
j
"stft/frame/strided_slice_1/stack_1Packstft/frame/add_2*
N*
_output_shapes
:*
T0
l
"stft/frame/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
?
stft/frame/strided_slice_1StridedSlicestft/frame/Shape_1 stft/frame/strided_slice_1/stack"stft/frame/strided_slice_1/stack_1"stft/frame/strided_slice_1/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
W
stft/frame/gcd/ConstConst*
value
B :?*
dtype0*
_output_shapes
: 
k
stft/frame/floordiv_1FloorDivstft/frame_lengthstft/frame/gcd/Const*
T0*
_output_shapes
: 
i
stft/frame/floordiv_2FloorDivstft/frame_stepstft/frame/gcd/Const*
T0*
_output_shapes
: 
t
stft/frame/floordiv_3FloorDivstft/frame/strided_slice_1stft/frame/gcd/Const*
T0*
_output_shapes
: 
e
stft/frame/mul_1Mulstft/frame/floordiv_3stft/frame/gcd/Const*
_output_shapes
: *
T0
d
stft/frame/concat_1/values_1Packstft/frame/mul_1*
T0*
N*
_output_shapes
:
Z
stft/frame/concat_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
?
stft/frame/concat_1ConcatV2stft/frame/splitstft/frame/concat_1/values_1stft/frame/split:2stft/frame/concat_1/axis*
T0*
N*
_output_shapes
:

stft/frame/concat_2/values_1Packstft/frame/floordiv_3stft/frame/gcd/Const*
T0*
N*
_output_shapes
:
Z
stft/frame/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
stft/frame/concat_2ConcatV2stft/frame/splitstft/frame/concat_2/values_1stft/frame/split:2stft/frame/concat_2/axis*
N*
_output_shapes
:*
T0
_
stft/frame/zeros_likeConst*
dtype0*
_output_shapes
:*
valueB: 
d
stft/frame/ones_like/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
\
stft/frame/ones_like/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
y
stft/frame/ones_likeFillstft/frame/ones_like/Shapestft/frame/ones_like/Const*
_output_shapes
:*
T0
?
stft/frame/StridedSliceStridedSlicestft/frame/PadV2stft/frame/zeros_likestft/frame/concat_1stft/frame/ones_like*0
_output_shapes
:??????????????????*
Index0*
T0
?
stft/frame/Reshape_1Reshapestft/frame/StridedSlicestft/frame/concat_2*5
_output_shapes#
!:???????????????????*
T0
Z
stft/frame/range_1/startConst*
dtype0*
_output_shapes
: *
value	B : 
Z
stft/frame/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
stft/frame/range_1Rangestft/frame/range_1/startstft/frame/Neg_1stft/frame/range_1/delta*#
_output_shapes
:?????????
p
stft/frame/mul_2Mulstft/frame/range_1stft/frame/floordiv_2*
T0*#
_output_shapes
:?????????
^
stft/frame/Reshape_2/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
?
stft/frame/Reshape_2/shapePackstft/frame/Neg_1stft/frame/Reshape_2/shape/1*
T0*
N*
_output_shapes
:

stft/frame/Reshape_2Reshapestft/frame/mul_2stft/frame/Reshape_2/shape*'
_output_shapes
:?????????*
T0
Z
stft/frame/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
Z
stft/frame/range_2/deltaConst*
dtype0*
_output_shapes
: *
value	B :
?
stft/frame/range_2Rangestft/frame/range_2/startstft/frame/floordiv_1stft/frame/range_2/delta*
_output_shapes
:
^
stft/frame/Reshape_3/shape/0Const*
_output_shapes
: *
value	B :*
dtype0
?
stft/frame/Reshape_3/shapePackstft/frame/Reshape_3/shape/0stft/frame/floordiv_1*
T0*
N*
_output_shapes
:
x
stft/frame/Reshape_3Reshapestft/frame/range_2stft/frame/Reshape_3/shape*
_output_shapes

:*
T0
u
stft/frame/add_3Addstft/frame/Reshape_2stft/frame/Reshape_3*'
_output_shapes
:?????????*
T0
?
stft/frame/GatherV2GatherV2stft/frame/Reshape_1stft/frame/add_3stft/frame/strided_slice*
Taxis0*
Tindices0*
Tparams0*9
_output_shapes'
%:#???????????????????
w
stft/frame/concat_3/values_1Packstft/frame/Neg_1stft/frame_length*
N*
_output_shapes
:*
T0
Z
stft/frame/concat_3/axisConst*
_output_shapes
: *
value	B : *
dtype0
?
stft/frame/concat_3ConcatV2stft/frame/splitstft/frame/concat_3/values_1stft/frame/split:2stft/frame/concat_3/axis*
T0*
N*
_output_shapes
:
?
stft/frame/Reshape_4Reshapestft/frame/GatherV2stft/frame/concat_3*
T0*,
_output_shapes
:?????????? 
[
stft/hann_window/periodicConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
h
stft/hann_window/CastCaststft/hann_window/periodic*

SrcT0
*
_output_shapes
: *

DstT0
]
stft/hann_window/FloorMod/yConst*
value	B :*
dtype0*
_output_shapes
: 
v
stft/hann_window/FloorModFloorModstft/frame_lengthstft/hann_window/FloorMod/y*
T0*
_output_shapes
: 
X
stft/hann_window/sub/xConst*
value	B :*
dtype0*
_output_shapes
: 
o
stft/hann_window/subSubstft/hann_window/sub/xstft/hann_window/FloorMod*
T0*
_output_shapes
: 
i
stft/hann_window/mulMulstft/hann_window/Caststft/hann_window/sub*
T0*
_output_shapes
: 
e
stft/hann_window/addAddstft/frame_lengthstft/hann_window/mul*
T0*
_output_shapes
: 
Z
stft/hann_window/sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
n
stft/hann_window/sub_1Substft/hann_window/addstft/hann_window/sub_1/y*
_output_shapes
: *
T0
g
stft/hann_window/Cast_1Caststft/hann_window/sub_1*
_output_shapes
: *

DstT0*

SrcT0
^
stft/hann_window/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
^
stft/hann_window/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
stft/hann_window/rangeRangestft/hann_window/range/startstft/frame_lengthstft/hann_window/range/delta*
_output_shapes	
:? 
l
stft/hann_window/Cast_2Caststft/hann_window/range*
_output_shapes	
:? *

DstT0*

SrcT0
[
stft/hann_window/ConstConst*
valueB
 *??@*
dtype0*
_output_shapes
: 
t
stft/hann_window/mul_1Mulstft/hann_window/Conststft/hann_window/Cast_2*
T0*
_output_shapes	
:? 
z
stft/hann_window/truedivRealDivstft/hann_window/mul_1stft/hann_window/Cast_1*
_output_shapes	
:? *
T0
[
stft/hann_window/CosCosstft/hann_window/truediv*
_output_shapes	
:? *
T0
]
stft/hann_window/mul_2/xConst*
_output_shapes
: *
valueB
 *   ?*
dtype0
s
stft/hann_window/mul_2Mulstft/hann_window/mul_2/xstft/hann_window/Cos*
T0*
_output_shapes	
:? 
]
stft/hann_window/sub_2/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
u
stft/hann_window/sub_2Substft/hann_window/sub_2/xstft/hann_window/mul_2*
T0*
_output_shapes	
:? 
t
stft/mulMulstft/frame/Reshape_4stft/hann_window/sub_2*
T0*,
_output_shapes
:?????????? 
R
stft/rfft/packedPack
stft/Const*
N*
_output_shapes
:*
T0
[
	stft/rfftRFFTstft/mulstft/rfft/packed*,
_output_shapes
:??????????
e
transpose_1/permConst*
_output_shapes
:*!
valueB"          *
dtype0
l
transpose_1	Transpose	stft/rffttranspose_1/perm*
T0*,
_output_shapes
:??????????
@
ShapeShapetranspose_1*
T0*
_output_shapes
:
]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
_
strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
?
strided_sliceStridedSliceShapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
M

FloorMod/yConst*
value
B :?*
dtype0*
_output_shapes
: 
P
FloorModFloorModstrided_slice
FloorMod/y*
T0*
_output_shapes
: 
H
sub/xConst*
value
B :?*
dtype0*
_output_shapes
: 
<
subSubsub/xFloorMod*
T0*
_output_shapes
: 
O
FloorMod_1/yConst*
value
B :?*
dtype0*
_output_shapes
: 
J

FloorMod_1FloorModsubFloorMod_1/y*
T0*
_output_shapes
: 
R
Pad/paddings/0/0Const*
value	B : *
dtype0*
_output_shapes
: 
b
Pad/paddings/0PackPad/paddings/0/0
FloorMod_1*
T0*
N*
_output_shapes
:
a
Pad/paddings/1_1Const*
valueB"        *
dtype0*
_output_shapes
:
a
Pad/paddings/2_1Const*
_output_shapes
:*
valueB"        *
dtype0
z
Pad/paddingsPackPad/paddings/0Pad/paddings/1_1Pad/paddings/2_1*
N*
_output_shapes

:*
T0
\
PadPadtranspose_1Pad/paddings*,
_output_shapes
:??????????*
T0
:
Shape_1ShapePad*
T0*
_output_shapes
:
_
strided_slice_1/stackConst*
_output_shapes
:*
valueB: *
dtype0
a
strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
strided_slice_1StridedSliceShape_1strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
H
add/yConst*
value
B :?*
dtype0*
_output_shapes
: 
C
addAddstrided_slice_1add/y*
_output_shapes
: *
T0
I
sub_1/yConst*
dtype0*
_output_shapes
: *
value	B :
;
sub_1Subaddsub_1/y*
_output_shapes
: *
T0
M

floordiv/yConst*
dtype0*
_output_shapes
: *
value
B :?
H
floordivFloorDivsub_1
floordiv/y*
_output_shapes
: *
T0
:
Shape_2ShapePad*
_output_shapes
:*
T0
_
strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_2/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
a
strided_slice_2/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
?
strided_slice_2StridedSliceShape_2strided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*
end_mask*
_output_shapes
:*
T0*
Index0
T
concat/values_0/1Const*
_output_shapes
: *
value
B :?*
dtype0
b
concat/values_0Packfloordivconcat/values_0/1*
T0*
N*
_output_shapes
:
M
concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
o
concatConcatV2concat/values_0strided_slice_2concat/axis*
T0*
N*
_output_shapes
:
[
ReshapeReshapePadconcat*
T0*1
_output_shapes
:???????????
M
Abs
ComplexAbsReshape*1
_output_shapes
:???????????
n
strided_slice_3/stackConst*%
valueB"                *
dtype0*
_output_shapes
:
p
strided_slice_3/stack_1Const*
_output_shapes
:*%
valueB"               *
dtype0
p
strided_slice_3/stack_2Const*%
valueB"            *
dtype0*
_output_shapes
:
?
strided_slice_3StridedSliceAbsstrided_slice_3/stackstrided_slice_3/stack_1strided_slice_3/stack_2*
Index0*
T0*

begin_mask*
end_mask*1
_output_shapes
:???????????
?
.conv2d/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            * 
_class
loc:@conv2d/kernel
?
,conv2d/kernel/Initializer/random_uniform/minConst*
valueB
 *?\??* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
?
,conv2d/kernel/Initializer/random_uniform/maxConst*
valueB
 *?\?>* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
?
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@conv2d/kernel*
seed22*
dtype0*&
_output_shapes
:*
seed???)
?
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
?
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
?
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
?
conv2d/kernelVarHandleOp*
_output_shapes
: *
shape:*
shared_nameconv2d/kernel* 
_class
loc:@conv2d/kernel*
dtype0
k
.conv2d/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/kernel*
_output_shapes
: 
?
conv2d/kernel/AssignAssignVariableOpconv2d/kernel(conv2d/kernel/Initializer/random_uniform* 
_class
loc:@conv2d/kernel*
dtype0
?
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel* 
_class
loc:@conv2d/kernel*
dtype0*&
_output_shapes
:
?
conv2d/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
:
?
conv2d/biasVarHandleOp*
dtype0*
_output_shapes
: *
shape:*
shared_nameconv2d/bias*
_class
loc:@conv2d/bias
g
,conv2d/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/bias*
_output_shapes
: 

conv2d/bias/AssignAssignVariableOpconv2d/biasconv2d/bias/Initializer/zeros*
_class
loc:@conv2d/bias*
dtype0
?
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
dtype0*
_output_shapes
:*
_class
loc:@conv2d/bias
e
conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
r
conv2d/Conv2D/ReadVariableOpReadVariableOpconv2d/kernel*
dtype0*&
_output_shapes
:
?
conv2d/Conv2DConv2Dstrided_slice_3conv2d/Conv2D/ReadVariableOp*
paddingSAME*
T0*
strides
*1
_output_shapes
:???????????
e
conv2d/BiasAdd/ReadVariableOpReadVariableOpconv2d/bias*
dtype0*
_output_shapes
:
?
conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/BiasAdd/ReadVariableOp*
T0*1
_output_shapes
:???????????
?
*batch_normalization/gamma/Initializer/onesConst*
_output_shapes
:*
valueB*  ??*,
_class"
 loc:@batch_normalization/gamma*
dtype0
?
batch_normalization/gammaVarHandleOp*
shape:**
shared_namebatch_normalization/gamma*,
_class"
 loc:@batch_normalization/gamma*
dtype0*
_output_shapes
: 
?
:batch_normalization/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization/gamma*
_output_shapes
: 
?
 batch_normalization/gamma/AssignAssignVariableOpbatch_normalization/gamma*batch_normalization/gamma/Initializer/ones*,
_class"
 loc:@batch_normalization/gamma*
dtype0
?
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*,
_class"
 loc:@batch_normalization/gamma*
dtype0*
_output_shapes
:
?
*batch_normalization/beta/Initializer/zerosConst*
valueB*    *+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
:
?
batch_normalization/betaVarHandleOp*
shape:*)
shared_namebatch_normalization/beta*+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
?
9batch_normalization/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization/beta*
_output_shapes
: 
?
batch_normalization/beta/AssignAssignVariableOpbatch_normalization/beta*batch_normalization/beta/Initializer/zeros*+
_class!
loc:@batch_normalization/beta*
dtype0
?
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
:
?
1batch_normalization/moving_mean/Initializer/zerosConst*
_output_shapes
:*
valueB*    *2
_class(
&$loc:@batch_normalization/moving_mean*
dtype0
?
batch_normalization/moving_meanVarHandleOp*2
_class(
&$loc:@batch_normalization/moving_mean*
dtype0*
_output_shapes
: *
shape:*0
shared_name!batch_normalization/moving_mean
?
@batch_normalization/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization/moving_mean*
_output_shapes
: 
?
&batch_normalization/moving_mean/AssignAssignVariableOpbatch_normalization/moving_mean1batch_normalization/moving_mean/Initializer/zeros*2
_class(
&$loc:@batch_normalization/moving_mean*
dtype0
?
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*2
_class(
&$loc:@batch_normalization/moving_mean*
dtype0*
_output_shapes
:
?
4batch_normalization/moving_variance/Initializer/onesConst*
valueB*  ??*6
_class,
*(loc:@batch_normalization/moving_variance*
dtype0*
_output_shapes
:
?
#batch_normalization/moving_varianceVarHandleOp*6
_class,
*(loc:@batch_normalization/moving_variance*
dtype0*
_output_shapes
: *
shape:*4
shared_name%#batch_normalization/moving_variance
?
Dbatch_normalization/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#batch_normalization/moving_variance*
_output_shapes
: 
?
*batch_normalization/moving_variance/AssignAssignVariableOp#batch_normalization/moving_variance4batch_normalization/moving_variance/Initializer/ones*6
_class,
*(loc:@batch_normalization/moving_variance*
dtype0
?
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*6
_class,
*(loc:@batch_normalization/moving_variance*
dtype0*
_output_shapes
:
\
keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
|
keras_learning_phasePlaceholderWithDefaultkeras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 
x
batch_normalization/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
q
!batch_normalization/cond/switch_tIdentity!batch_normalization/cond/Switch:1*
T0
*
_output_shapes
: 
o
!batch_normalization/cond/switch_fIdentitybatch_normalization/cond/Switch*
T0
*
_output_shapes
: 
c
 batch_normalization/cond/pred_idIdentitykeras_learning_phase*
_output_shapes
: *
T0

?
'batch_normalization/cond/ReadVariableOpReadVariableOp0batch_normalization/cond/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:
?
.batch_normalization/cond/ReadVariableOp/SwitchSwitchbatch_normalization/gamma batch_normalization/cond/pred_id*
T0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
: : 
?
)batch_normalization/cond/ReadVariableOp_1ReadVariableOp2batch_normalization/cond/ReadVariableOp_1/Switch:1*
dtype0*
_output_shapes
:
?
0batch_normalization/cond/ReadVariableOp_1/SwitchSwitchbatch_normalization/beta batch_normalization/cond/pred_id*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: : 
?
batch_normalization/cond/ConstConst"^batch_normalization/cond/switch_t*
_output_shapes
: *
valueB *
dtype0
?
 batch_normalization/cond/Const_1Const"^batch_normalization/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
'batch_normalization/cond/FusedBatchNormFusedBatchNorm0batch_normalization/cond/FusedBatchNorm/Switch:1'batch_normalization/cond/ReadVariableOp)batch_normalization/cond/ReadVariableOp_1batch_normalization/cond/Const batch_normalization/cond/Const_1*
epsilon%o?:*
T0*I
_output_shapes7
5:???????????::::
?
.batch_normalization/cond/FusedBatchNorm/SwitchSwitchconv2d/BiasAdd batch_normalization/cond/pred_id*
T0*!
_class
loc:@conv2d/BiasAdd*N
_output_shapes<
::???????????:???????????
?
)batch_normalization/cond/ReadVariableOp_2ReadVariableOp0batch_normalization/cond/ReadVariableOp_2/Switch*
dtype0*
_output_shapes
:
?
0batch_normalization/cond/ReadVariableOp_2/SwitchSwitchbatch_normalization/gamma batch_normalization/cond/pred_id*
_output_shapes
: : *
T0*,
_class"
 loc:@batch_normalization/gamma
?
)batch_normalization/cond/ReadVariableOp_3ReadVariableOp0batch_normalization/cond/ReadVariableOp_3/Switch*
_output_shapes
:*
dtype0
?
0batch_normalization/cond/ReadVariableOp_3/SwitchSwitchbatch_normalization/beta batch_normalization/cond/pred_id*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: : 
?
8batch_normalization/cond/FusedBatchNorm_1/ReadVariableOpReadVariableOp?batch_normalization/cond/FusedBatchNorm_1/ReadVariableOp/Switch*
dtype0*
_output_shapes
:
?
?batch_normalization/cond/FusedBatchNorm_1/ReadVariableOp/SwitchSwitchbatch_normalization/moving_mean batch_normalization/cond/pred_id*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
: : 
?
:batch_normalization/cond/FusedBatchNorm_1/ReadVariableOp_1ReadVariableOpAbatch_normalization/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:
?
Abatch_normalization/cond/FusedBatchNorm_1/ReadVariableOp_1/SwitchSwitch#batch_normalization/moving_variance batch_normalization/cond/pred_id*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
: : *
T0
?
)batch_normalization/cond/FusedBatchNorm_1FusedBatchNorm0batch_normalization/cond/FusedBatchNorm_1/Switch)batch_normalization/cond/ReadVariableOp_2)batch_normalization/cond/ReadVariableOp_38batch_normalization/cond/FusedBatchNorm_1/ReadVariableOp:batch_normalization/cond/FusedBatchNorm_1/ReadVariableOp_1*
epsilon%o?:*
T0*I
_output_shapes7
5:???????????::::*
is_training( 
?
0batch_normalization/cond/FusedBatchNorm_1/SwitchSwitchconv2d/BiasAdd batch_normalization/cond/pred_id*
T0*!
_class
loc:@conv2d/BiasAdd*N
_output_shapes<
::???????????:???????????
?
batch_normalization/cond/MergeMerge)batch_normalization/cond/FusedBatchNorm_1'batch_normalization/cond/FusedBatchNorm*
T0*
N*3
_output_shapes!
:???????????: 
?
 batch_normalization/cond/Merge_1Merge+batch_normalization/cond/FusedBatchNorm_1:1)batch_normalization/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes

:: 
?
 batch_normalization/cond/Merge_2Merge+batch_normalization/cond/FusedBatchNorm_1:2)batch_normalization/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes

:: 
z
!batch_normalization/cond_1/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

u
#batch_normalization/cond_1/switch_tIdentity#batch_normalization/cond_1/Switch:1*
T0
*
_output_shapes
: 
s
#batch_normalization/cond_1/switch_fIdentity!batch_normalization/cond_1/Switch*
T0
*
_output_shapes
: 
e
"batch_normalization/cond_1/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
 batch_normalization/cond_1/ConstConst$^batch_normalization/cond_1/switch_t*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
"batch_normalization/cond_1/Const_1Const$^batch_normalization/cond_1/switch_f*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
 batch_normalization/cond_1/MergeMerge"batch_normalization/cond_1/Const_1 batch_normalization/cond_1/Const*
T0*
N*
_output_shapes
: : 
?
)batch_normalization/AssignMovingAvg/sub/xConst*
valueB
 *  ??*2
_class(
&$loc:@batch_normalization/moving_mean*
dtype0*
_output_shapes
: 
?
'batch_normalization/AssignMovingAvg/subSub)batch_normalization/AssignMovingAvg/sub/x batch_normalization/cond_1/Merge*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
: 
?
2batch_normalization/AssignMovingAvg/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
dtype0*
_output_shapes
:
?
)batch_normalization/AssignMovingAvg/sub_1Sub2batch_normalization/AssignMovingAvg/ReadVariableOp batch_normalization/cond/Merge_1*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
:*
T0
?
'batch_normalization/AssignMovingAvg/mulMul)batch_normalization/AssignMovingAvg/sub_1'batch_normalization/AssignMovingAvg/sub*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
:*
T0
?
7batch_normalization/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpbatch_normalization/moving_mean'batch_normalization/AssignMovingAvg/mul*2
_class(
&$loc:@batch_normalization/moving_mean*
dtype0
?
4batch_normalization/AssignMovingAvg/ReadVariableOp_1ReadVariableOpbatch_normalization/moving_mean8^batch_normalization/AssignMovingAvg/AssignSubVariableOp*2
_class(
&$loc:@batch_normalization/moving_mean*
dtype0*
_output_shapes
:
?
+batch_normalization/AssignMovingAvg_1/sub/xConst*
valueB
 *  ??*6
_class,
*(loc:@batch_normalization/moving_variance*
dtype0*
_output_shapes
: 
?
)batch_normalization/AssignMovingAvg_1/subSub+batch_normalization/AssignMovingAvg_1/sub/x batch_normalization/cond_1/Merge*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
: 
?
4batch_normalization/AssignMovingAvg_1/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
dtype0*
_output_shapes
:
?
+batch_normalization/AssignMovingAvg_1/sub_1Sub4batch_normalization/AssignMovingAvg_1/ReadVariableOp batch_normalization/cond/Merge_2*
_output_shapes
:*
T0*6
_class,
*(loc:@batch_normalization/moving_variance
?
)batch_normalization/AssignMovingAvg_1/mulMul+batch_normalization/AssignMovingAvg_1/sub_1)batch_normalization/AssignMovingAvg_1/sub*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
:
?
9batch_normalization/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp#batch_normalization/moving_variance)batch_normalization/AssignMovingAvg_1/mul*6
_class,
*(loc:@batch_normalization/moving_variance*
dtype0
?
6batch_normalization/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp#batch_normalization/moving_variance:^batch_normalization/AssignMovingAvg_1/AssignSubVariableOp*6
_class,
*(loc:@batch_normalization/moving_variance*
dtype0*
_output_shapes
:
u
leaky_re_lu/LeakyRelu	LeakyRelubatch_normalization/cond/Merge*1
_output_shapes
:???????????
?
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*%
valueB"             *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
:
?
.conv2d_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *????*"
_class
loc:@conv2d_1/kernel*
dtype0
?
.conv2d_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *???=*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
?
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
: *
seed???)*
T0*"
_class
loc:@conv2d_1/kernel*
seed22
?
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
?
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: *
T0
?
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
?
conv2d_1/kernelVarHandleOp*
shape: * 
shared_nameconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
o
0conv2d_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
?
conv2d_1/kernel/AssignAssignVariableOpconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_1/kernel*
dtype0
?
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
dtype0*&
_output_shapes
: 
?
conv2d_1/bias/Initializer/zerosConst*
valueB *    * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
: 
?
conv2d_1/biasVarHandleOp*
_output_shapes
: *
shape: *
shared_nameconv2d_1/bias* 
_class
loc:@conv2d_1/bias*
dtype0
k
.conv2d_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
?
conv2d_1/bias/AssignAssignVariableOpconv2d_1/biasconv2d_1/bias/Initializer/zeros* 
_class
loc:@conv2d_1/bias*
dtype0
?
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias* 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
: 
g
conv2d_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_1/Conv2D/ReadVariableOpReadVariableOpconv2d_1/kernel*
dtype0*&
_output_shapes
: 
?
conv2d_1/Conv2DConv2Dleaky_re_lu/LeakyReluconv2d_1/Conv2D/ReadVariableOp*
paddingSAME*
T0*
strides
*1
_output_shapes
:??????????? 
i
conv2d_1/BiasAdd/ReadVariableOpReadVariableOpconv2d_1/bias*
dtype0*
_output_shapes
: 
?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/BiasAdd/ReadVariableOp*
T0*1
_output_shapes
:??????????? 
?
,batch_normalization_1/gamma/Initializer/onesConst*
valueB *  ??*.
_class$
" loc:@batch_normalization_1/gamma*
dtype0*
_output_shapes
: 
?
batch_normalization_1/gammaVarHandleOp*,
shared_namebatch_normalization_1/gamma*.
_class$
" loc:@batch_normalization_1/gamma*
dtype0*
_output_shapes
: *
shape: 
?
<batch_normalization_1/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_1/gamma*
_output_shapes
: 
?
"batch_normalization_1/gamma/AssignAssignVariableOpbatch_normalization_1/gamma,batch_normalization_1/gamma/Initializer/ones*.
_class$
" loc:@batch_normalization_1/gamma*
dtype0
?
/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
dtype0*
_output_shapes
: *.
_class$
" loc:@batch_normalization_1/gamma
?
,batch_normalization_1/beta/Initializer/zerosConst*
valueB *    *-
_class#
!loc:@batch_normalization_1/beta*
dtype0*
_output_shapes
: 
?
batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
shape: *+
shared_namebatch_normalization_1/beta*-
_class#
!loc:@batch_normalization_1/beta*
dtype0
?
;batch_normalization_1/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_1/beta*
_output_shapes
: 
?
!batch_normalization_1/beta/AssignAssignVariableOpbatch_normalization_1/beta,batch_normalization_1/beta/Initializer/zeros*-
_class#
!loc:@batch_normalization_1/beta*
dtype0
?
.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*-
_class#
!loc:@batch_normalization_1/beta*
dtype0*
_output_shapes
: 
?
3batch_normalization_1/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB *    *4
_class*
(&loc:@batch_normalization_1/moving_mean
?
!batch_normalization_1/moving_meanVarHandleOp*2
shared_name#!batch_normalization_1/moving_mean*4
_class*
(&loc:@batch_normalization_1/moving_mean*
dtype0*
_output_shapes
: *
shape: 
?
Bbatch_normalization_1/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp!batch_normalization_1/moving_mean*
_output_shapes
: 
?
(batch_normalization_1/moving_mean/AssignAssignVariableOp!batch_normalization_1/moving_mean3batch_normalization_1/moving_mean/Initializer/zeros*4
_class*
(&loc:@batch_normalization_1/moving_mean*
dtype0
?
5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*4
_class*
(&loc:@batch_normalization_1/moving_mean*
dtype0*
_output_shapes
: 
?
6batch_normalization_1/moving_variance/Initializer/onesConst*
_output_shapes
: *
valueB *  ??*8
_class.
,*loc:@batch_normalization_1/moving_variance*
dtype0
?
%batch_normalization_1/moving_varianceVarHandleOp*8
_class.
,*loc:@batch_normalization_1/moving_variance*
dtype0*
_output_shapes
: *
shape: *6
shared_name'%batch_normalization_1/moving_variance
?
Fbatch_normalization_1/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp%batch_normalization_1/moving_variance*
_output_shapes
: 
?
,batch_normalization_1/moving_variance/AssignAssignVariableOp%batch_normalization_1/moving_variance6batch_normalization_1/moving_variance/Initializer/ones*8
_class.
,*loc:@batch_normalization_1/moving_variance*
dtype0
?
9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*8
_class.
,*loc:@batch_normalization_1/moving_variance*
dtype0*
_output_shapes
: 
z
!batch_normalization_1/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
u
#batch_normalization_1/cond/switch_tIdentity#batch_normalization_1/cond/Switch:1*
T0
*
_output_shapes
: 
s
#batch_normalization_1/cond/switch_fIdentity!batch_normalization_1/cond/Switch*
_output_shapes
: *
T0

e
"batch_normalization_1/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
)batch_normalization_1/cond/ReadVariableOpReadVariableOp2batch_normalization_1/cond/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
: 
?
0batch_normalization_1/cond/ReadVariableOp/SwitchSwitchbatch_normalization_1/gamma"batch_normalization_1/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
: : 
?
+batch_normalization_1/cond/ReadVariableOp_1ReadVariableOp4batch_normalization_1/cond/ReadVariableOp_1/Switch:1*
dtype0*
_output_shapes
: 
?
2batch_normalization_1/cond/ReadVariableOp_1/SwitchSwitchbatch_normalization_1/beta"batch_normalization_1/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_1/beta*
_output_shapes
: : 
?
 batch_normalization_1/cond/ConstConst$^batch_normalization_1/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
"batch_normalization_1/cond/Const_1Const$^batch_normalization_1/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
)batch_normalization_1/cond/FusedBatchNormFusedBatchNorm2batch_normalization_1/cond/FusedBatchNorm/Switch:1)batch_normalization_1/cond/ReadVariableOp+batch_normalization_1/cond/ReadVariableOp_1 batch_normalization_1/cond/Const"batch_normalization_1/cond/Const_1*I
_output_shapes7
5:??????????? : : : : *
epsilon%o?:*
T0
?
0batch_normalization_1/cond/FusedBatchNorm/SwitchSwitchconv2d_1/BiasAdd"batch_normalization_1/cond/pred_id*N
_output_shapes<
::??????????? :??????????? *
T0*#
_class
loc:@conv2d_1/BiasAdd
?
+batch_normalization_1/cond/ReadVariableOp_2ReadVariableOp2batch_normalization_1/cond/ReadVariableOp_2/Switch*
dtype0*
_output_shapes
: 
?
2batch_normalization_1/cond/ReadVariableOp_2/SwitchSwitchbatch_normalization_1/gamma"batch_normalization_1/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
: : 
?
+batch_normalization_1/cond/ReadVariableOp_3ReadVariableOp2batch_normalization_1/cond/ReadVariableOp_3/Switch*
dtype0*
_output_shapes
: 
?
2batch_normalization_1/cond/ReadVariableOp_3/SwitchSwitchbatch_normalization_1/beta"batch_normalization_1/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_1/beta*
_output_shapes
: : 
?
:batch_normalization_1/cond/FusedBatchNorm_1/ReadVariableOpReadVariableOpAbatch_normalization_1/cond/FusedBatchNorm_1/ReadVariableOp/Switch*
dtype0*
_output_shapes
: 
?
Abatch_normalization_1/cond/FusedBatchNorm_1/ReadVariableOp/SwitchSwitch!batch_normalization_1/moving_mean"batch_normalization_1/cond/pred_id*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
: : *
T0
?
<batch_normalization_1/cond/FusedBatchNorm_1/ReadVariableOp_1ReadVariableOpCbatch_normalization_1/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
: 
?
Cbatch_normalization_1/cond/FusedBatchNorm_1/ReadVariableOp_1/SwitchSwitch%batch_normalization_1/moving_variance"batch_normalization_1/cond/pred_id*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
: : 
?
+batch_normalization_1/cond/FusedBatchNorm_1FusedBatchNorm2batch_normalization_1/cond/FusedBatchNorm_1/Switch+batch_normalization_1/cond/ReadVariableOp_2+batch_normalization_1/cond/ReadVariableOp_3:batch_normalization_1/cond/FusedBatchNorm_1/ReadVariableOp<batch_normalization_1/cond/FusedBatchNorm_1/ReadVariableOp_1*
T0*I
_output_shapes7
5:??????????? : : : : *
is_training( *
epsilon%o?:
?
2batch_normalization_1/cond/FusedBatchNorm_1/SwitchSwitchconv2d_1/BiasAdd"batch_normalization_1/cond/pred_id*N
_output_shapes<
::??????????? :??????????? *
T0*#
_class
loc:@conv2d_1/BiasAdd
?
 batch_normalization_1/cond/MergeMerge+batch_normalization_1/cond/FusedBatchNorm_1)batch_normalization_1/cond/FusedBatchNorm*
T0*
N*3
_output_shapes!
:??????????? : 
?
"batch_normalization_1/cond/Merge_1Merge-batch_normalization_1/cond/FusedBatchNorm_1:1+batch_normalization_1/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes

: : 
?
"batch_normalization_1/cond/Merge_2Merge-batch_normalization_1/cond/FusedBatchNorm_1:2+batch_normalization_1/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes

: : 
|
#batch_normalization_1/cond_1/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
y
%batch_normalization_1/cond_1/switch_tIdentity%batch_normalization_1/cond_1/Switch:1*
_output_shapes
: *
T0

w
%batch_normalization_1/cond_1/switch_fIdentity#batch_normalization_1/cond_1/Switch*
T0
*
_output_shapes
: 
g
$batch_normalization_1/cond_1/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
"batch_normalization_1/cond_1/ConstConst&^batch_normalization_1/cond_1/switch_t*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
$batch_normalization_1/cond_1/Const_1Const&^batch_normalization_1/cond_1/switch_f*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
"batch_normalization_1/cond_1/MergeMerge$batch_normalization_1/cond_1/Const_1"batch_normalization_1/cond_1/Const*
T0*
N*
_output_shapes
: : 
?
+batch_normalization_1/AssignMovingAvg/sub/xConst*
valueB
 *  ??*4
_class*
(&loc:@batch_normalization_1/moving_mean*
dtype0*
_output_shapes
: 
?
)batch_normalization_1/AssignMovingAvg/subSub+batch_normalization_1/AssignMovingAvg/sub/x"batch_normalization_1/cond_1/Merge*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
: 
?
4batch_normalization_1/AssignMovingAvg/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
dtype0*
_output_shapes
: 
?
+batch_normalization_1/AssignMovingAvg/sub_1Sub4batch_normalization_1/AssignMovingAvg/ReadVariableOp"batch_normalization_1/cond/Merge_1*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
: 
?
)batch_normalization_1/AssignMovingAvg/mulMul+batch_normalization_1/AssignMovingAvg/sub_1)batch_normalization_1/AssignMovingAvg/sub*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
: 
?
9batch_normalization_1/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp!batch_normalization_1/moving_mean)batch_normalization_1/AssignMovingAvg/mul*4
_class*
(&loc:@batch_normalization_1/moving_mean*
dtype0
?
6batch_normalization_1/AssignMovingAvg/ReadVariableOp_1ReadVariableOp!batch_normalization_1/moving_mean:^batch_normalization_1/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
: *4
_class*
(&loc:@batch_normalization_1/moving_mean
?
-batch_normalization_1/AssignMovingAvg_1/sub/xConst*
valueB
 *  ??*8
_class.
,*loc:@batch_normalization_1/moving_variance*
dtype0*
_output_shapes
: 
?
+batch_normalization_1/AssignMovingAvg_1/subSub-batch_normalization_1/AssignMovingAvg_1/sub/x"batch_normalization_1/cond_1/Merge*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
: *
T0
?
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
dtype0*
_output_shapes
: 
?
-batch_normalization_1/AssignMovingAvg_1/sub_1Sub6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp"batch_normalization_1/cond/Merge_2*
_output_shapes
: *
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance
?
+batch_normalization_1/AssignMovingAvg_1/mulMul-batch_normalization_1/AssignMovingAvg_1/sub_1+batch_normalization_1/AssignMovingAvg_1/sub*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
: 
?
;batch_normalization_1/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp%batch_normalization_1/moving_variance+batch_normalization_1/AssignMovingAvg_1/mul*8
_class.
,*loc:@batch_normalization_1/moving_variance*
dtype0
?
8batch_normalization_1/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp%batch_normalization_1/moving_variance<^batch_normalization_1/AssignMovingAvg_1/AssignSubVariableOp*8
_class.
,*loc:@batch_normalization_1/moving_variance*
dtype0*
_output_shapes
: 
y
leaky_re_lu_1/LeakyRelu	LeakyRelu batch_normalization_1/cond/Merge*1
_output_shapes
:??????????? 
?
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*%
valueB"          @   *"
_class
loc:@conv2d_2/kernel*
dtype0
?
.conv2d_2/kernel/Initializer/random_uniform/minConst*
valueB
 *?\??*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
?
.conv2d_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *?\?=*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
?
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
: @*
seed???)*
T0*"
_class
loc:@conv2d_2/kernel*
seed22
?
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@conv2d_2/kernel
?
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*&
_output_shapes
: @*
T0*"
_class
loc:@conv2d_2/kernel
?
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
?
conv2d_2/kernelVarHandleOp* 
shared_nameconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: *
shape: @
o
0conv2d_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
?
conv2d_2/kernel/AssignAssignVariableOpconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_2/kernel*
dtype0
?
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*
dtype0*&
_output_shapes
: @
?
conv2d_2/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    * 
_class
loc:@conv2d_2/bias
?
conv2d_2/biasVarHandleOp*
_output_shapes
: *
shape:@*
shared_nameconv2d_2/bias* 
_class
loc:@conv2d_2/bias*
dtype0
k
.conv2d_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
?
conv2d_2/bias/AssignAssignVariableOpconv2d_2/biasconv2d_2/bias/Initializer/zeros*
dtype0* 
_class
loc:@conv2d_2/bias
?
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
dtype0*
_output_shapes
:@* 
_class
loc:@conv2d_2/bias
g
conv2d_2/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
v
conv2d_2/Conv2D/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
: @*
dtype0
?
conv2d_2/Conv2DConv2Dleaky_re_lu_1/LeakyReluconv2d_2/Conv2D/ReadVariableOp*
strides
*0
_output_shapes
:?????????@?@*
paddingSAME*
T0
i
conv2d_2/BiasAdd/ReadVariableOpReadVariableOpconv2d_2/bias*
dtype0*
_output_shapes
:@
?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_2/BiasAdd/ReadVariableOp*
T0*0
_output_shapes
:?????????@?@
?
,batch_normalization_2/gamma/Initializer/onesConst*
_output_shapes
:@*
valueB@*  ??*.
_class$
" loc:@batch_normalization_2/gamma*
dtype0
?
batch_normalization_2/gammaVarHandleOp*
shape:@*,
shared_namebatch_normalization_2/gamma*.
_class$
" loc:@batch_normalization_2/gamma*
dtype0*
_output_shapes
: 
?
<batch_normalization_2/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_2/gamma*
_output_shapes
: 
?
"batch_normalization_2/gamma/AssignAssignVariableOpbatch_normalization_2/gamma,batch_normalization_2/gamma/Initializer/ones*.
_class$
" loc:@batch_normalization_2/gamma*
dtype0
?
/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes
:@*.
_class$
" loc:@batch_normalization_2/gamma*
dtype0
?
,batch_normalization_2/beta/Initializer/zerosConst*
valueB@*    *-
_class#
!loc:@batch_normalization_2/beta*
dtype0*
_output_shapes
:@
?
batch_normalization_2/betaVarHandleOp*
shape:@*+
shared_namebatch_normalization_2/beta*-
_class#
!loc:@batch_normalization_2/beta*
dtype0*
_output_shapes
: 
?
;batch_normalization_2/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_2/beta*
_output_shapes
: 
?
!batch_normalization_2/beta/AssignAssignVariableOpbatch_normalization_2/beta,batch_normalization_2/beta/Initializer/zeros*-
_class#
!loc:@batch_normalization_2/beta*
dtype0
?
.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*-
_class#
!loc:@batch_normalization_2/beta*
dtype0*
_output_shapes
:@
?
3batch_normalization_2/moving_mean/Initializer/zerosConst*
valueB@*    *4
_class*
(&loc:@batch_normalization_2/moving_mean*
dtype0*
_output_shapes
:@
?
!batch_normalization_2/moving_meanVarHandleOp*
dtype0*
_output_shapes
: *
shape:@*2
shared_name#!batch_normalization_2/moving_mean*4
_class*
(&loc:@batch_normalization_2/moving_mean
?
Bbatch_normalization_2/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp!batch_normalization_2/moving_mean*
_output_shapes
: 
?
(batch_normalization_2/moving_mean/AssignAssignVariableOp!batch_normalization_2/moving_mean3batch_normalization_2/moving_mean/Initializer/zeros*4
_class*
(&loc:@batch_normalization_2/moving_mean*
dtype0
?
5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*4
_class*
(&loc:@batch_normalization_2/moving_mean*
dtype0*
_output_shapes
:@
?
6batch_normalization_2/moving_variance/Initializer/onesConst*
valueB@*  ??*8
_class.
,*loc:@batch_normalization_2/moving_variance*
dtype0*
_output_shapes
:@
?
%batch_normalization_2/moving_varianceVarHandleOp*
shape:@*6
shared_name'%batch_normalization_2/moving_variance*8
_class.
,*loc:@batch_normalization_2/moving_variance*
dtype0*
_output_shapes
: 
?
Fbatch_normalization_2/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp%batch_normalization_2/moving_variance*
_output_shapes
: 
?
,batch_normalization_2/moving_variance/AssignAssignVariableOp%batch_normalization_2/moving_variance6batch_normalization_2/moving_variance/Initializer/ones*8
_class.
,*loc:@batch_normalization_2/moving_variance*
dtype0
?
9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*8
_class.
,*loc:@batch_normalization_2/moving_variance*
dtype0*
_output_shapes
:@
z
!batch_normalization_2/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

u
#batch_normalization_2/cond/switch_tIdentity#batch_normalization_2/cond/Switch:1*
_output_shapes
: *
T0

s
#batch_normalization_2/cond/switch_fIdentity!batch_normalization_2/cond/Switch*
T0
*
_output_shapes
: 
e
"batch_normalization_2/cond/pred_idIdentitykeras_learning_phase*
_output_shapes
: *
T0

?
)batch_normalization_2/cond/ReadVariableOpReadVariableOp2batch_normalization_2/cond/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:@
?
0batch_normalization_2/cond/ReadVariableOp/SwitchSwitchbatch_normalization_2/gamma"batch_normalization_2/cond/pred_id*
_output_shapes
: : *
T0*.
_class$
" loc:@batch_normalization_2/gamma
?
+batch_normalization_2/cond/ReadVariableOp_1ReadVariableOp4batch_normalization_2/cond/ReadVariableOp_1/Switch:1*
dtype0*
_output_shapes
:@
?
2batch_normalization_2/cond/ReadVariableOp_1/SwitchSwitchbatch_normalization_2/beta"batch_normalization_2/cond/pred_id*-
_class#
!loc:@batch_normalization_2/beta*
_output_shapes
: : *
T0
?
 batch_normalization_2/cond/ConstConst$^batch_normalization_2/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
"batch_normalization_2/cond/Const_1Const$^batch_normalization_2/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
)batch_normalization_2/cond/FusedBatchNormFusedBatchNorm2batch_normalization_2/cond/FusedBatchNorm/Switch:1)batch_normalization_2/cond/ReadVariableOp+batch_normalization_2/cond/ReadVariableOp_1 batch_normalization_2/cond/Const"batch_normalization_2/cond/Const_1*
T0*H
_output_shapes6
4:?????????@?@:@:@:@:@*
epsilon%o?:
?
0batch_normalization_2/cond/FusedBatchNorm/SwitchSwitchconv2d_2/BiasAdd"batch_normalization_2/cond/pred_id*L
_output_shapes:
8:?????????@?@:?????????@?@*
T0*#
_class
loc:@conv2d_2/BiasAdd
?
+batch_normalization_2/cond/ReadVariableOp_2ReadVariableOp2batch_normalization_2/cond/ReadVariableOp_2/Switch*
dtype0*
_output_shapes
:@
?
2batch_normalization_2/cond/ReadVariableOp_2/SwitchSwitchbatch_normalization_2/gamma"batch_normalization_2/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes
: : 
?
+batch_normalization_2/cond/ReadVariableOp_3ReadVariableOp2batch_normalization_2/cond/ReadVariableOp_3/Switch*
dtype0*
_output_shapes
:@
?
2batch_normalization_2/cond/ReadVariableOp_3/SwitchSwitchbatch_normalization_2/beta"batch_normalization_2/cond/pred_id*
_output_shapes
: : *
T0*-
_class#
!loc:@batch_normalization_2/beta
?
:batch_normalization_2/cond/FusedBatchNorm_1/ReadVariableOpReadVariableOpAbatch_normalization_2/cond/FusedBatchNorm_1/ReadVariableOp/Switch*
_output_shapes
:@*
dtype0
?
Abatch_normalization_2/cond/FusedBatchNorm_1/ReadVariableOp/SwitchSwitch!batch_normalization_2/moving_mean"batch_normalization_2/cond/pred_id*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
: : 
?
<batch_normalization_2/cond/FusedBatchNorm_1/ReadVariableOp_1ReadVariableOpCbatch_normalization_2/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:@
?
Cbatch_normalization_2/cond/FusedBatchNorm_1/ReadVariableOp_1/SwitchSwitch%batch_normalization_2/moving_variance"batch_normalization_2/cond/pred_id*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
: : 
?
+batch_normalization_2/cond/FusedBatchNorm_1FusedBatchNorm2batch_normalization_2/cond/FusedBatchNorm_1/Switch+batch_normalization_2/cond/ReadVariableOp_2+batch_normalization_2/cond/ReadVariableOp_3:batch_normalization_2/cond/FusedBatchNorm_1/ReadVariableOp<batch_normalization_2/cond/FusedBatchNorm_1/ReadVariableOp_1*
epsilon%o?:*
T0*H
_output_shapes6
4:?????????@?@:@:@:@:@*
is_training( 
?
2batch_normalization_2/cond/FusedBatchNorm_1/SwitchSwitchconv2d_2/BiasAdd"batch_normalization_2/cond/pred_id*#
_class
loc:@conv2d_2/BiasAdd*L
_output_shapes:
8:?????????@?@:?????????@?@*
T0
?
 batch_normalization_2/cond/MergeMerge+batch_normalization_2/cond/FusedBatchNorm_1)batch_normalization_2/cond/FusedBatchNorm*
N*2
_output_shapes 
:?????????@?@: *
T0
?
"batch_normalization_2/cond/Merge_1Merge-batch_normalization_2/cond/FusedBatchNorm_1:1+batch_normalization_2/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes

:@: 
?
"batch_normalization_2/cond/Merge_2Merge-batch_normalization_2/cond/FusedBatchNorm_1:2+batch_normalization_2/cond/FusedBatchNorm:2*
_output_shapes

:@: *
T0*
N
|
#batch_normalization_2/cond_1/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
y
%batch_normalization_2/cond_1/switch_tIdentity%batch_normalization_2/cond_1/Switch:1*
_output_shapes
: *
T0

w
%batch_normalization_2/cond_1/switch_fIdentity#batch_normalization_2/cond_1/Switch*
_output_shapes
: *
T0

g
$batch_normalization_2/cond_1/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
"batch_normalization_2/cond_1/ConstConst&^batch_normalization_2/cond_1/switch_t*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
$batch_normalization_2/cond_1/Const_1Const&^batch_normalization_2/cond_1/switch_f*
_output_shapes
: *
valueB
 *  ??*
dtype0
?
"batch_normalization_2/cond_1/MergeMerge$batch_normalization_2/cond_1/Const_1"batch_normalization_2/cond_1/Const*
T0*
N*
_output_shapes
: : 
?
+batch_normalization_2/AssignMovingAvg/sub/xConst*
valueB
 *  ??*4
_class*
(&loc:@batch_normalization_2/moving_mean*
dtype0*
_output_shapes
: 
?
)batch_normalization_2/AssignMovingAvg/subSub+batch_normalization_2/AssignMovingAvg/sub/x"batch_normalization_2/cond_1/Merge*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
: 
?
4batch_normalization_2/AssignMovingAvg/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
dtype0*
_output_shapes
:@
?
+batch_normalization_2/AssignMovingAvg/sub_1Sub4batch_normalization_2/AssignMovingAvg/ReadVariableOp"batch_normalization_2/cond/Merge_1*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
:@
?
)batch_normalization_2/AssignMovingAvg/mulMul+batch_normalization_2/AssignMovingAvg/sub_1)batch_normalization_2/AssignMovingAvg/sub*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
:@
?
9batch_normalization_2/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp!batch_normalization_2/moving_mean)batch_normalization_2/AssignMovingAvg/mul*
dtype0*4
_class*
(&loc:@batch_normalization_2/moving_mean
?
6batch_normalization_2/AssignMovingAvg/ReadVariableOp_1ReadVariableOp!batch_normalization_2/moving_mean:^batch_normalization_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@*4
_class*
(&loc:@batch_normalization_2/moving_mean
?
-batch_normalization_2/AssignMovingAvg_1/sub/xConst*
valueB
 *  ??*8
_class.
,*loc:@batch_normalization_2/moving_variance*
dtype0*
_output_shapes
: 
?
+batch_normalization_2/AssignMovingAvg_1/subSub-batch_normalization_2/AssignMovingAvg_1/sub/x"batch_normalization_2/cond_1/Merge*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
: *
T0
?
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
dtype0*
_output_shapes
:@
?
-batch_normalization_2/AssignMovingAvg_1/sub_1Sub6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp"batch_normalization_2/cond/Merge_2*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
:@
?
+batch_normalization_2/AssignMovingAvg_1/mulMul-batch_normalization_2/AssignMovingAvg_1/sub_1+batch_normalization_2/AssignMovingAvg_1/sub*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
:@
?
;batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp%batch_normalization_2/moving_variance+batch_normalization_2/AssignMovingAvg_1/mul*8
_class.
,*loc:@batch_normalization_2/moving_variance*
dtype0
?
8batch_normalization_2/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp%batch_normalization_2/moving_variance<^batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOp*8
_class.
,*loc:@batch_normalization_2/moving_variance*
dtype0*
_output_shapes
:@
x
leaky_re_lu_2/LeakyRelu	LeakyRelu batch_normalization_2/cond/Merge*0
_output_shapes
:?????????@?@
?
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*%
valueB"      @   ?   *"
_class
loc:@conv2d_3/kernel*
dtype0
?
.conv2d_3/kernel/Initializer/random_uniform/minConst*
valueB
 *??z?*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
?
.conv2d_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *??z=*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
?
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_3/kernel*
seed22*
dtype0*'
_output_shapes
:@?*
seed???)
?
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@conv2d_3/kernel
?
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_3/kernel*'
_output_shapes
:@?
?
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*'
_output_shapes
:@?
?
conv2d_3/kernelVarHandleOp* 
shared_nameconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: *
shape:@?
o
0conv2d_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_3/kernel*
_output_shapes
: 
?
conv2d_3/kernel/AssignAssignVariableOpconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_3/kernel*
dtype0
?
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*
dtype0*'
_output_shapes
:@?
?
conv2d_3/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:?*
valueB?*    * 
_class
loc:@conv2d_3/bias
?
conv2d_3/biasVarHandleOp*
shared_nameconv2d_3/bias* 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
: *
shape:?
k
.conv2d_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_3/bias*
_output_shapes
: 
?
conv2d_3/bias/AssignAssignVariableOpconv2d_3/biasconv2d_3/bias/Initializer/zeros* 
_class
loc:@conv2d_3/bias*
dtype0
?
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias* 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes	
:?
g
conv2d_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
w
conv2d_3/Conv2D/ReadVariableOpReadVariableOpconv2d_3/kernel*
dtype0*'
_output_shapes
:@?
?
conv2d_3/Conv2DConv2Dleaky_re_lu_2/LeakyReluconv2d_3/Conv2D/ReadVariableOp*
T0*
strides
*0
_output_shapes
:????????? `?*
paddingSAME
j
conv2d_3/BiasAdd/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes	
:?*
dtype0
?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2Dconv2d_3/BiasAdd/ReadVariableOp*
T0*0
_output_shapes
:????????? `?
?
,batch_normalization_3/gamma/Initializer/onesConst*
valueB?*  ??*.
_class$
" loc:@batch_normalization_3/gamma*
dtype0*
_output_shapes	
:?
?
batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
shape:?*,
shared_namebatch_normalization_3/gamma*.
_class$
" loc:@batch_normalization_3/gamma*
dtype0
?
<batch_normalization_3/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_3/gamma*
_output_shapes
: 
?
"batch_normalization_3/gamma/AssignAssignVariableOpbatch_normalization_3/gamma,batch_normalization_3/gamma/Initializer/ones*.
_class$
" loc:@batch_normalization_3/gamma*
dtype0
?
/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes	
:?*.
_class$
" loc:@batch_normalization_3/gamma*
dtype0
?
,batch_normalization_3/beta/Initializer/zerosConst*
_output_shapes	
:?*
valueB?*    *-
_class#
!loc:@batch_normalization_3/beta*
dtype0
?
batch_normalization_3/betaVarHandleOp*
shape:?*+
shared_namebatch_normalization_3/beta*-
_class#
!loc:@batch_normalization_3/beta*
dtype0*
_output_shapes
: 
?
;batch_normalization_3/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_3/beta*
_output_shapes
: 
?
!batch_normalization_3/beta/AssignAssignVariableOpbatch_normalization_3/beta,batch_normalization_3/beta/Initializer/zeros*-
_class#
!loc:@batch_normalization_3/beta*
dtype0
?
.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*-
_class#
!loc:@batch_normalization_3/beta*
dtype0*
_output_shapes	
:?
?
3batch_normalization_3/moving_mean/Initializer/zerosConst*
valueB?*    *4
_class*
(&loc:@batch_normalization_3/moving_mean*
dtype0*
_output_shapes	
:?
?
!batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
shape:?*2
shared_name#!batch_normalization_3/moving_mean*4
_class*
(&loc:@batch_normalization_3/moving_mean*
dtype0
?
Bbatch_normalization_3/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp!batch_normalization_3/moving_mean*
_output_shapes
: 
?
(batch_normalization_3/moving_mean/AssignAssignVariableOp!batch_normalization_3/moving_mean3batch_normalization_3/moving_mean/Initializer/zeros*4
_class*
(&loc:@batch_normalization_3/moving_mean*
dtype0
?
5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*4
_class*
(&loc:@batch_normalization_3/moving_mean*
dtype0*
_output_shapes	
:?
?
6batch_normalization_3/moving_variance/Initializer/onesConst*
valueB?*  ??*8
_class.
,*loc:@batch_normalization_3/moving_variance*
dtype0*
_output_shapes	
:?
?
%batch_normalization_3/moving_varianceVarHandleOp*8
_class.
,*loc:@batch_normalization_3/moving_variance*
dtype0*
_output_shapes
: *
shape:?*6
shared_name'%batch_normalization_3/moving_variance
?
Fbatch_normalization_3/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp%batch_normalization_3/moving_variance*
_output_shapes
: 
?
,batch_normalization_3/moving_variance/AssignAssignVariableOp%batch_normalization_3/moving_variance6batch_normalization_3/moving_variance/Initializer/ones*8
_class.
,*loc:@batch_normalization_3/moving_variance*
dtype0
?
9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
dtype0*
_output_shapes	
:?*8
_class.
,*loc:@batch_normalization_3/moving_variance
z
!batch_normalization_3/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

u
#batch_normalization_3/cond/switch_tIdentity#batch_normalization_3/cond/Switch:1*
T0
*
_output_shapes
: 
s
#batch_normalization_3/cond/switch_fIdentity!batch_normalization_3/cond/Switch*
T0
*
_output_shapes
: 
e
"batch_normalization_3/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
)batch_normalization_3/cond/ReadVariableOpReadVariableOp2batch_normalization_3/cond/ReadVariableOp/Switch:1*
dtype0*
_output_shapes	
:?
?
0batch_normalization_3/cond/ReadVariableOp/SwitchSwitchbatch_normalization_3/gamma"batch_normalization_3/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
_output_shapes
: : 
?
+batch_normalization_3/cond/ReadVariableOp_1ReadVariableOp4batch_normalization_3/cond/ReadVariableOp_1/Switch:1*
dtype0*
_output_shapes	
:?
?
2batch_normalization_3/cond/ReadVariableOp_1/SwitchSwitchbatch_normalization_3/beta"batch_normalization_3/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_3/beta*
_output_shapes
: : 
?
 batch_normalization_3/cond/ConstConst$^batch_normalization_3/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
"batch_normalization_3/cond/Const_1Const$^batch_normalization_3/cond/switch_t*
dtype0*
_output_shapes
: *
valueB 
?
)batch_normalization_3/cond/FusedBatchNormFusedBatchNorm2batch_normalization_3/cond/FusedBatchNorm/Switch:1)batch_normalization_3/cond/ReadVariableOp+batch_normalization_3/cond/ReadVariableOp_1 batch_normalization_3/cond/Const"batch_normalization_3/cond/Const_1*L
_output_shapes:
8:????????? `?:?:?:?:?*
epsilon%o?:*
T0
?
0batch_normalization_3/cond/FusedBatchNorm/SwitchSwitchconv2d_3/BiasAdd"batch_normalization_3/cond/pred_id*L
_output_shapes:
8:????????? `?:????????? `?*
T0*#
_class
loc:@conv2d_3/BiasAdd
?
+batch_normalization_3/cond/ReadVariableOp_2ReadVariableOp2batch_normalization_3/cond/ReadVariableOp_2/Switch*
dtype0*
_output_shapes	
:?
?
2batch_normalization_3/cond/ReadVariableOp_2/SwitchSwitchbatch_normalization_3/gamma"batch_normalization_3/cond/pred_id*
_output_shapes
: : *
T0*.
_class$
" loc:@batch_normalization_3/gamma
?
+batch_normalization_3/cond/ReadVariableOp_3ReadVariableOp2batch_normalization_3/cond/ReadVariableOp_3/Switch*
dtype0*
_output_shapes	
:?
?
2batch_normalization_3/cond/ReadVariableOp_3/SwitchSwitchbatch_normalization_3/beta"batch_normalization_3/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_3/beta*
_output_shapes
: : 
?
:batch_normalization_3/cond/FusedBatchNorm_1/ReadVariableOpReadVariableOpAbatch_normalization_3/cond/FusedBatchNorm_1/ReadVariableOp/Switch*
dtype0*
_output_shapes	
:?
?
Abatch_normalization_3/cond/FusedBatchNorm_1/ReadVariableOp/SwitchSwitch!batch_normalization_3/moving_mean"batch_normalization_3/cond/pred_id*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes
: : 
?
<batch_normalization_3/cond/FusedBatchNorm_1/ReadVariableOp_1ReadVariableOpCbatch_normalization_3/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch*
dtype0*
_output_shapes	
:?
?
Cbatch_normalization_3/cond/FusedBatchNorm_1/ReadVariableOp_1/SwitchSwitch%batch_normalization_3/moving_variance"batch_normalization_3/cond/pred_id*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes
: : 
?
+batch_normalization_3/cond/FusedBatchNorm_1FusedBatchNorm2batch_normalization_3/cond/FusedBatchNorm_1/Switch+batch_normalization_3/cond/ReadVariableOp_2+batch_normalization_3/cond/ReadVariableOp_3:batch_normalization_3/cond/FusedBatchNorm_1/ReadVariableOp<batch_normalization_3/cond/FusedBatchNorm_1/ReadVariableOp_1*
epsilon%o?:*
T0*L
_output_shapes:
8:????????? `?:?:?:?:?*
is_training( 
?
2batch_normalization_3/cond/FusedBatchNorm_1/SwitchSwitchconv2d_3/BiasAdd"batch_normalization_3/cond/pred_id*#
_class
loc:@conv2d_3/BiasAdd*L
_output_shapes:
8:????????? `?:????????? `?*
T0
?
 batch_normalization_3/cond/MergeMerge+batch_normalization_3/cond/FusedBatchNorm_1)batch_normalization_3/cond/FusedBatchNorm*
N*2
_output_shapes 
:????????? `?: *
T0
?
"batch_normalization_3/cond/Merge_1Merge-batch_normalization_3/cond/FusedBatchNorm_1:1+batch_normalization_3/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes
	:?: 
?
"batch_normalization_3/cond/Merge_2Merge-batch_normalization_3/cond/FusedBatchNorm_1:2+batch_normalization_3/cond/FusedBatchNorm:2*
_output_shapes
	:?: *
T0*
N
|
#batch_normalization_3/cond_1/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
y
%batch_normalization_3/cond_1/switch_tIdentity%batch_normalization_3/cond_1/Switch:1*
T0
*
_output_shapes
: 
w
%batch_normalization_3/cond_1/switch_fIdentity#batch_normalization_3/cond_1/Switch*
T0
*
_output_shapes
: 
g
$batch_normalization_3/cond_1/pred_idIdentitykeras_learning_phase*
_output_shapes
: *
T0

?
"batch_normalization_3/cond_1/ConstConst&^batch_normalization_3/cond_1/switch_t*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
$batch_normalization_3/cond_1/Const_1Const&^batch_normalization_3/cond_1/switch_f*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
"batch_normalization_3/cond_1/MergeMerge$batch_normalization_3/cond_1/Const_1"batch_normalization_3/cond_1/Const*
T0*
N*
_output_shapes
: : 
?
+batch_normalization_3/AssignMovingAvg/sub/xConst*
valueB
 *  ??*4
_class*
(&loc:@batch_normalization_3/moving_mean*
dtype0*
_output_shapes
: 
?
)batch_normalization_3/AssignMovingAvg/subSub+batch_normalization_3/AssignMovingAvg/sub/x"batch_normalization_3/cond_1/Merge*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes
: 
?
4batch_normalization_3/AssignMovingAvg/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
dtype0*
_output_shapes	
:?
?
+batch_normalization_3/AssignMovingAvg/sub_1Sub4batch_normalization_3/AssignMovingAvg/ReadVariableOp"batch_normalization_3/cond/Merge_1*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes	
:?
?
)batch_normalization_3/AssignMovingAvg/mulMul+batch_normalization_3/AssignMovingAvg/sub_1)batch_normalization_3/AssignMovingAvg/sub*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes	
:?
?
9batch_normalization_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp!batch_normalization_3/moving_mean)batch_normalization_3/AssignMovingAvg/mul*4
_class*
(&loc:@batch_normalization_3/moving_mean*
dtype0
?
6batch_normalization_3/AssignMovingAvg/ReadVariableOp_1ReadVariableOp!batch_normalization_3/moving_mean:^batch_normalization_3/AssignMovingAvg/AssignSubVariableOp*4
_class*
(&loc:@batch_normalization_3/moving_mean*
dtype0*
_output_shapes	
:?
?
-batch_normalization_3/AssignMovingAvg_1/sub/xConst*
_output_shapes
: *
valueB
 *  ??*8
_class.
,*loc:@batch_normalization_3/moving_variance*
dtype0
?
+batch_normalization_3/AssignMovingAvg_1/subSub-batch_normalization_3/AssignMovingAvg_1/sub/x"batch_normalization_3/cond_1/Merge*
_output_shapes
: *
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance
?
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
dtype0*
_output_shapes	
:?
?
-batch_normalization_3/AssignMovingAvg_1/sub_1Sub6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp"batch_normalization_3/cond/Merge_2*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes	
:?
?
+batch_normalization_3/AssignMovingAvg_1/mulMul-batch_normalization_3/AssignMovingAvg_1/sub_1+batch_normalization_3/AssignMovingAvg_1/sub*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes	
:?*
T0
?
;batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp%batch_normalization_3/moving_variance+batch_normalization_3/AssignMovingAvg_1/mul*8
_class.
,*loc:@batch_normalization_3/moving_variance*
dtype0
?
8batch_normalization_3/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp%batch_normalization_3/moving_variance<^batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOp*8
_class.
,*loc:@batch_normalization_3/moving_variance*
dtype0*
_output_shapes	
:?
x
leaky_re_lu_3/LeakyRelu	LeakyRelu batch_normalization_3/cond/Merge*0
_output_shapes
:????????? `?
?
0conv2d_4/kernel/Initializer/random_uniform/shapeConst*%
valueB"      ?      *"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
:
?
.conv2d_4/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *?\1?*"
_class
loc:@conv2d_4/kernel
?
.conv2d_4/kernel/Initializer/random_uniform/maxConst*
valueB
 *?\1=*"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
: 
?
8conv2d_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_4/kernel/Initializer/random_uniform/shape*
dtype0*(
_output_shapes
:??*
seed???)*
T0*"
_class
loc:@conv2d_4/kernel*
seed22
?
.conv2d_4/kernel/Initializer/random_uniform/subSub.conv2d_4/kernel/Initializer/random_uniform/max.conv2d_4/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@conv2d_4/kernel
?
.conv2d_4/kernel/Initializer/random_uniform/mulMul8conv2d_4/kernel/Initializer/random_uniform/RandomUniform.conv2d_4/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_4/kernel*(
_output_shapes
:??
?
*conv2d_4/kernel/Initializer/random_uniformAdd.conv2d_4/kernel/Initializer/random_uniform/mul.conv2d_4/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_4/kernel*(
_output_shapes
:??
?
conv2d_4/kernelVarHandleOp*"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
: *
shape:??* 
shared_nameconv2d_4/kernel
o
0conv2d_4/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_4/kernel*
_output_shapes
: 
?
conv2d_4/kernel/AssignAssignVariableOpconv2d_4/kernel*conv2d_4/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_4/kernel*
dtype0
?
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*
dtype0*(
_output_shapes
:??*"
_class
loc:@conv2d_4/kernel
?
conv2d_4/bias/Initializer/zerosConst*
valueB?*    * 
_class
loc:@conv2d_4/bias*
dtype0*
_output_shapes	
:?
?
conv2d_4/biasVarHandleOp*
dtype0*
_output_shapes
: *
shape:?*
shared_nameconv2d_4/bias* 
_class
loc:@conv2d_4/bias
k
.conv2d_4/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_4/bias*
_output_shapes
: 
?
conv2d_4/bias/AssignAssignVariableOpconv2d_4/biasconv2d_4/bias/Initializer/zeros*
dtype0* 
_class
loc:@conv2d_4/bias
?
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias* 
_class
loc:@conv2d_4/bias*
dtype0*
_output_shapes	
:?
g
conv2d_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
x
conv2d_4/Conv2D/ReadVariableOpReadVariableOpconv2d_4/kernel*
dtype0*(
_output_shapes
:??
?
conv2d_4/Conv2DConv2Dleaky_re_lu_3/LeakyReluconv2d_4/Conv2D/ReadVariableOp*
strides
*0
_output_shapes
:?????????0?*
paddingSAME*
T0
j
conv2d_4/BiasAdd/ReadVariableOpReadVariableOpconv2d_4/bias*
dtype0*
_output_shapes	
:?
?
conv2d_4/BiasAddBiasAddconv2d_4/Conv2Dconv2d_4/BiasAdd/ReadVariableOp*
T0*0
_output_shapes
:?????????0?
?
,batch_normalization_4/gamma/Initializer/onesConst*
valueB?*  ??*.
_class$
" loc:@batch_normalization_4/gamma*
dtype0*
_output_shapes	
:?
?
batch_normalization_4/gammaVarHandleOp*
shape:?*,
shared_namebatch_normalization_4/gamma*.
_class$
" loc:@batch_normalization_4/gamma*
dtype0*
_output_shapes
: 
?
<batch_normalization_4/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_4/gamma*
_output_shapes
: 
?
"batch_normalization_4/gamma/AssignAssignVariableOpbatch_normalization_4/gamma,batch_normalization_4/gamma/Initializer/ones*.
_class$
" loc:@batch_normalization_4/gamma*
dtype0
?
/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_4/gamma*.
_class$
" loc:@batch_normalization_4/gamma*
dtype0*
_output_shapes	
:?
?
,batch_normalization_4/beta/Initializer/zerosConst*
valueB?*    *-
_class#
!loc:@batch_normalization_4/beta*
dtype0*
_output_shapes	
:?
?
batch_normalization_4/betaVarHandleOp*+
shared_namebatch_normalization_4/beta*-
_class#
!loc:@batch_normalization_4/beta*
dtype0*
_output_shapes
: *
shape:?
?
;batch_normalization_4/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_4/beta*
_output_shapes
: 
?
!batch_normalization_4/beta/AssignAssignVariableOpbatch_normalization_4/beta,batch_normalization_4/beta/Initializer/zeros*
dtype0*-
_class#
!loc:@batch_normalization_4/beta
?
.batch_normalization_4/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_4/beta*-
_class#
!loc:@batch_normalization_4/beta*
dtype0*
_output_shapes	
:?
?
3batch_normalization_4/moving_mean/Initializer/zerosConst*
valueB?*    *4
_class*
(&loc:@batch_normalization_4/moving_mean*
dtype0*
_output_shapes	
:?
?
!batch_normalization_4/moving_meanVarHandleOp*
_output_shapes
: *
shape:?*2
shared_name#!batch_normalization_4/moving_mean*4
_class*
(&loc:@batch_normalization_4/moving_mean*
dtype0
?
Bbatch_normalization_4/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp!batch_normalization_4/moving_mean*
_output_shapes
: 
?
(batch_normalization_4/moving_mean/AssignAssignVariableOp!batch_normalization_4/moving_mean3batch_normalization_4/moving_mean/Initializer/zeros*4
_class*
(&loc:@batch_normalization_4/moving_mean*
dtype0
?
5batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_4/moving_mean*4
_class*
(&loc:@batch_normalization_4/moving_mean*
dtype0*
_output_shapes	
:?
?
6batch_normalization_4/moving_variance/Initializer/onesConst*
valueB?*  ??*8
_class.
,*loc:@batch_normalization_4/moving_variance*
dtype0*
_output_shapes	
:?
?
%batch_normalization_4/moving_varianceVarHandleOp*6
shared_name'%batch_normalization_4/moving_variance*8
_class.
,*loc:@batch_normalization_4/moving_variance*
dtype0*
_output_shapes
: *
shape:?
?
Fbatch_normalization_4/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp%batch_normalization_4/moving_variance*
_output_shapes
: 
?
,batch_normalization_4/moving_variance/AssignAssignVariableOp%batch_normalization_4/moving_variance6batch_normalization_4/moving_variance/Initializer/ones*8
_class.
,*loc:@batch_normalization_4/moving_variance*
dtype0
?
9batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_4/moving_variance*8
_class.
,*loc:@batch_normalization_4/moving_variance*
dtype0*
_output_shapes	
:?
z
!batch_normalization_4/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
u
#batch_normalization_4/cond/switch_tIdentity#batch_normalization_4/cond/Switch:1*
_output_shapes
: *
T0

s
#batch_normalization_4/cond/switch_fIdentity!batch_normalization_4/cond/Switch*
T0
*
_output_shapes
: 
e
"batch_normalization_4/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
)batch_normalization_4/cond/ReadVariableOpReadVariableOp2batch_normalization_4/cond/ReadVariableOp/Switch:1*
dtype0*
_output_shapes	
:?
?
0batch_normalization_4/cond/ReadVariableOp/SwitchSwitchbatch_normalization_4/gamma"batch_normalization_4/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_4/gamma*
_output_shapes
: : 
?
+batch_normalization_4/cond/ReadVariableOp_1ReadVariableOp4batch_normalization_4/cond/ReadVariableOp_1/Switch:1*
dtype0*
_output_shapes	
:?
?
2batch_normalization_4/cond/ReadVariableOp_1/SwitchSwitchbatch_normalization_4/beta"batch_normalization_4/cond/pred_id*-
_class#
!loc:@batch_normalization_4/beta*
_output_shapes
: : *
T0
?
 batch_normalization_4/cond/ConstConst$^batch_normalization_4/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
"batch_normalization_4/cond/Const_1Const$^batch_normalization_4/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
)batch_normalization_4/cond/FusedBatchNormFusedBatchNorm2batch_normalization_4/cond/FusedBatchNorm/Switch:1)batch_normalization_4/cond/ReadVariableOp+batch_normalization_4/cond/ReadVariableOp_1 batch_normalization_4/cond/Const"batch_normalization_4/cond/Const_1*
epsilon%o?:*
T0*L
_output_shapes:
8:?????????0?:?:?:?:?
?
0batch_normalization_4/cond/FusedBatchNorm/SwitchSwitchconv2d_4/BiasAdd"batch_normalization_4/cond/pred_id*#
_class
loc:@conv2d_4/BiasAdd*L
_output_shapes:
8:?????????0?:?????????0?*
T0
?
+batch_normalization_4/cond/ReadVariableOp_2ReadVariableOp2batch_normalization_4/cond/ReadVariableOp_2/Switch*
dtype0*
_output_shapes	
:?
?
2batch_normalization_4/cond/ReadVariableOp_2/SwitchSwitchbatch_normalization_4/gamma"batch_normalization_4/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_4/gamma*
_output_shapes
: : 
?
+batch_normalization_4/cond/ReadVariableOp_3ReadVariableOp2batch_normalization_4/cond/ReadVariableOp_3/Switch*
_output_shapes	
:?*
dtype0
?
2batch_normalization_4/cond/ReadVariableOp_3/SwitchSwitchbatch_normalization_4/beta"batch_normalization_4/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_4/beta*
_output_shapes
: : 
?
:batch_normalization_4/cond/FusedBatchNorm_1/ReadVariableOpReadVariableOpAbatch_normalization_4/cond/FusedBatchNorm_1/ReadVariableOp/Switch*
dtype0*
_output_shapes	
:?
?
Abatch_normalization_4/cond/FusedBatchNorm_1/ReadVariableOp/SwitchSwitch!batch_normalization_4/moving_mean"batch_normalization_4/cond/pred_id*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
_output_shapes
: : 
?
<batch_normalization_4/cond/FusedBatchNorm_1/ReadVariableOp_1ReadVariableOpCbatch_normalization_4/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch*
dtype0*
_output_shapes	
:?
?
Cbatch_normalization_4/cond/FusedBatchNorm_1/ReadVariableOp_1/SwitchSwitch%batch_normalization_4/moving_variance"batch_normalization_4/cond/pred_id*8
_class.
,*loc:@batch_normalization_4/moving_variance*
_output_shapes
: : *
T0
?
+batch_normalization_4/cond/FusedBatchNorm_1FusedBatchNorm2batch_normalization_4/cond/FusedBatchNorm_1/Switch+batch_normalization_4/cond/ReadVariableOp_2+batch_normalization_4/cond/ReadVariableOp_3:batch_normalization_4/cond/FusedBatchNorm_1/ReadVariableOp<batch_normalization_4/cond/FusedBatchNorm_1/ReadVariableOp_1*L
_output_shapes:
8:?????????0?:?:?:?:?*
is_training( *
epsilon%o?:*
T0
?
2batch_normalization_4/cond/FusedBatchNorm_1/SwitchSwitchconv2d_4/BiasAdd"batch_normalization_4/cond/pred_id*
T0*#
_class
loc:@conv2d_4/BiasAdd*L
_output_shapes:
8:?????????0?:?????????0?
?
 batch_normalization_4/cond/MergeMerge+batch_normalization_4/cond/FusedBatchNorm_1)batch_normalization_4/cond/FusedBatchNorm*2
_output_shapes 
:?????????0?: *
T0*
N
?
"batch_normalization_4/cond/Merge_1Merge-batch_normalization_4/cond/FusedBatchNorm_1:1+batch_normalization_4/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes
	:?: 
?
"batch_normalization_4/cond/Merge_2Merge-batch_normalization_4/cond/FusedBatchNorm_1:2+batch_normalization_4/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes
	:?: 
|
#batch_normalization_4/cond_1/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

y
%batch_normalization_4/cond_1/switch_tIdentity%batch_normalization_4/cond_1/Switch:1*
_output_shapes
: *
T0

w
%batch_normalization_4/cond_1/switch_fIdentity#batch_normalization_4/cond_1/Switch*
T0
*
_output_shapes
: 
g
$batch_normalization_4/cond_1/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
"batch_normalization_4/cond_1/ConstConst&^batch_normalization_4/cond_1/switch_t*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
$batch_normalization_4/cond_1/Const_1Const&^batch_normalization_4/cond_1/switch_f*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
"batch_normalization_4/cond_1/MergeMerge$batch_normalization_4/cond_1/Const_1"batch_normalization_4/cond_1/Const*
T0*
N*
_output_shapes
: : 
?
+batch_normalization_4/AssignMovingAvg/sub/xConst*
valueB
 *  ??*4
_class*
(&loc:@batch_normalization_4/moving_mean*
dtype0*
_output_shapes
: 
?
)batch_normalization_4/AssignMovingAvg/subSub+batch_normalization_4/AssignMovingAvg/sub/x"batch_normalization_4/cond_1/Merge*
_output_shapes
: *
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean
?
4batch_normalization_4/AssignMovingAvg/ReadVariableOpReadVariableOp!batch_normalization_4/moving_mean*
dtype0*
_output_shapes	
:?
?
+batch_normalization_4/AssignMovingAvg/sub_1Sub4batch_normalization_4/AssignMovingAvg/ReadVariableOp"batch_normalization_4/cond/Merge_1*
_output_shapes	
:?*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean
?
)batch_normalization_4/AssignMovingAvg/mulMul+batch_normalization_4/AssignMovingAvg/sub_1)batch_normalization_4/AssignMovingAvg/sub*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
_output_shapes	
:?
?
9batch_normalization_4/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp!batch_normalization_4/moving_mean)batch_normalization_4/AssignMovingAvg/mul*4
_class*
(&loc:@batch_normalization_4/moving_mean*
dtype0
?
6batch_normalization_4/AssignMovingAvg/ReadVariableOp_1ReadVariableOp!batch_normalization_4/moving_mean:^batch_normalization_4/AssignMovingAvg/AssignSubVariableOp*4
_class*
(&loc:@batch_normalization_4/moving_mean*
dtype0*
_output_shapes	
:?
?
-batch_normalization_4/AssignMovingAvg_1/sub/xConst*
valueB
 *  ??*8
_class.
,*loc:@batch_normalization_4/moving_variance*
dtype0*
_output_shapes
: 
?
+batch_normalization_4/AssignMovingAvg_1/subSub-batch_normalization_4/AssignMovingAvg_1/sub/x"batch_normalization_4/cond_1/Merge*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
_output_shapes
: 
?
6batch_normalization_4/AssignMovingAvg_1/ReadVariableOpReadVariableOp%batch_normalization_4/moving_variance*
dtype0*
_output_shapes	
:?
?
-batch_normalization_4/AssignMovingAvg_1/sub_1Sub6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp"batch_normalization_4/cond/Merge_2*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
_output_shapes	
:?
?
+batch_normalization_4/AssignMovingAvg_1/mulMul-batch_normalization_4/AssignMovingAvg_1/sub_1+batch_normalization_4/AssignMovingAvg_1/sub*8
_class.
,*loc:@batch_normalization_4/moving_variance*
_output_shapes	
:?*
T0
?
;batch_normalization_4/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp%batch_normalization_4/moving_variance+batch_normalization_4/AssignMovingAvg_1/mul*
dtype0*8
_class.
,*loc:@batch_normalization_4/moving_variance
?
8batch_normalization_4/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp%batch_normalization_4/moving_variance<^batch_normalization_4/AssignMovingAvg_1/AssignSubVariableOp*8
_class.
,*loc:@batch_normalization_4/moving_variance*
dtype0*
_output_shapes	
:?
x
leaky_re_lu_4/LeakyRelu	LeakyRelu batch_normalization_4/cond/Merge*0
_output_shapes
:?????????0?
?
0conv2d_5/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            *"
_class
loc:@conv2d_5/kernel
?
.conv2d_5/kernel/Initializer/random_uniform/minConst*
valueB
 *????*"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
: 
?
.conv2d_5/kernel/Initializer/random_uniform/maxConst*
valueB
 *???<*"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
: 
?
8conv2d_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_5/kernel/Initializer/random_uniform/shape*
seed???)*
T0*"
_class
loc:@conv2d_5/kernel*
seed22*
dtype0*(
_output_shapes
:??
?
.conv2d_5/kernel/Initializer/random_uniform/subSub.conv2d_5/kernel/Initializer/random_uniform/max.conv2d_5/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: 
?
.conv2d_5/kernel/Initializer/random_uniform/mulMul8conv2d_5/kernel/Initializer/random_uniform/RandomUniform.conv2d_5/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_5/kernel*(
_output_shapes
:??
?
*conv2d_5/kernel/Initializer/random_uniformAdd.conv2d_5/kernel/Initializer/random_uniform/mul.conv2d_5/kernel/Initializer/random_uniform/min*(
_output_shapes
:??*
T0*"
_class
loc:@conv2d_5/kernel
?
conv2d_5/kernelVarHandleOp*
shape:??* 
shared_nameconv2d_5/kernel*"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
: 
o
0conv2d_5/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_5/kernel*
_output_shapes
: 
?
conv2d_5/kernel/AssignAssignVariableOpconv2d_5/kernel*conv2d_5/kernel/Initializer/random_uniform*
dtype0*"
_class
loc:@conv2d_5/kernel
?
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*(
_output_shapes
:??*"
_class
loc:@conv2d_5/kernel*
dtype0
?
conv2d_5/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:?*
valueB?*    * 
_class
loc:@conv2d_5/bias
?
conv2d_5/biasVarHandleOp* 
_class
loc:@conv2d_5/bias*
dtype0*
_output_shapes
: *
shape:?*
shared_nameconv2d_5/bias
k
.conv2d_5/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_5/bias*
_output_shapes
: 
?
conv2d_5/bias/AssignAssignVariableOpconv2d_5/biasconv2d_5/bias/Initializer/zeros* 
_class
loc:@conv2d_5/bias*
dtype0
?
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias* 
_class
loc:@conv2d_5/bias*
dtype0*
_output_shapes	
:?
g
conv2d_5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
x
conv2d_5/Conv2D/ReadVariableOpReadVariableOpconv2d_5/kernel*(
_output_shapes
:??*
dtype0
?
conv2d_5/Conv2DConv2Dleaky_re_lu_4/LeakyReluconv2d_5/Conv2D/ReadVariableOp*
paddingSAME*
T0*
strides
*0
_output_shapes
:??????????
j
conv2d_5/BiasAdd/ReadVariableOpReadVariableOpconv2d_5/bias*
dtype0*
_output_shapes	
:?
?
conv2d_5/BiasAddBiasAddconv2d_5/Conv2Dconv2d_5/BiasAdd/ReadVariableOp*
T0*0
_output_shapes
:??????????
?
,batch_normalization_5/gamma/Initializer/onesConst*
valueB?*  ??*.
_class$
" loc:@batch_normalization_5/gamma*
dtype0*
_output_shapes	
:?
?
batch_normalization_5/gammaVarHandleOp*,
shared_namebatch_normalization_5/gamma*.
_class$
" loc:@batch_normalization_5/gamma*
dtype0*
_output_shapes
: *
shape:?
?
<batch_normalization_5/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_5/gamma*
_output_shapes
: 
?
"batch_normalization_5/gamma/AssignAssignVariableOpbatch_normalization_5/gamma,batch_normalization_5/gamma/Initializer/ones*.
_class$
" loc:@batch_normalization_5/gamma*
dtype0
?
/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_5/gamma*.
_class$
" loc:@batch_normalization_5/gamma*
dtype0*
_output_shapes	
:?
?
,batch_normalization_5/beta/Initializer/zerosConst*
valueB?*    *-
_class#
!loc:@batch_normalization_5/beta*
dtype0*
_output_shapes	
:?
?
batch_normalization_5/betaVarHandleOp*-
_class#
!loc:@batch_normalization_5/beta*
dtype0*
_output_shapes
: *
shape:?*+
shared_namebatch_normalization_5/beta
?
;batch_normalization_5/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_5/beta*
_output_shapes
: 
?
!batch_normalization_5/beta/AssignAssignVariableOpbatch_normalization_5/beta,batch_normalization_5/beta/Initializer/zeros*
dtype0*-
_class#
!loc:@batch_normalization_5/beta
?
.batch_normalization_5/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_5/beta*-
_class#
!loc:@batch_normalization_5/beta*
dtype0*
_output_shapes	
:?
?
3batch_normalization_5/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes	
:?*
valueB?*    *4
_class*
(&loc:@batch_normalization_5/moving_mean
?
!batch_normalization_5/moving_meanVarHandleOp*2
shared_name#!batch_normalization_5/moving_mean*4
_class*
(&loc:@batch_normalization_5/moving_mean*
dtype0*
_output_shapes
: *
shape:?
?
Bbatch_normalization_5/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp!batch_normalization_5/moving_mean*
_output_shapes
: 
?
(batch_normalization_5/moving_mean/AssignAssignVariableOp!batch_normalization_5/moving_mean3batch_normalization_5/moving_mean/Initializer/zeros*4
_class*
(&loc:@batch_normalization_5/moving_mean*
dtype0
?
5batch_normalization_5/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_5/moving_mean*4
_class*
(&loc:@batch_normalization_5/moving_mean*
dtype0*
_output_shapes	
:?
?
6batch_normalization_5/moving_variance/Initializer/onesConst*
_output_shapes	
:?*
valueB?*  ??*8
_class.
,*loc:@batch_normalization_5/moving_variance*
dtype0
?
%batch_normalization_5/moving_varianceVarHandleOp*
_output_shapes
: *
shape:?*6
shared_name'%batch_normalization_5/moving_variance*8
_class.
,*loc:@batch_normalization_5/moving_variance*
dtype0
?
Fbatch_normalization_5/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp%batch_normalization_5/moving_variance*
_output_shapes
: 
?
,batch_normalization_5/moving_variance/AssignAssignVariableOp%batch_normalization_5/moving_variance6batch_normalization_5/moving_variance/Initializer/ones*8
_class.
,*loc:@batch_normalization_5/moving_variance*
dtype0
?
9batch_normalization_5/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_5/moving_variance*
dtype0*
_output_shapes	
:?*8
_class.
,*loc:@batch_normalization_5/moving_variance
z
!batch_normalization_5/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

u
#batch_normalization_5/cond/switch_tIdentity#batch_normalization_5/cond/Switch:1*
_output_shapes
: *
T0

s
#batch_normalization_5/cond/switch_fIdentity!batch_normalization_5/cond/Switch*
_output_shapes
: *
T0

e
"batch_normalization_5/cond/pred_idIdentitykeras_learning_phase*
_output_shapes
: *
T0

?
)batch_normalization_5/cond/ReadVariableOpReadVariableOp2batch_normalization_5/cond/ReadVariableOp/Switch:1*
dtype0*
_output_shapes	
:?
?
0batch_normalization_5/cond/ReadVariableOp/SwitchSwitchbatch_normalization_5/gamma"batch_normalization_5/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_5/gamma*
_output_shapes
: : 
?
+batch_normalization_5/cond/ReadVariableOp_1ReadVariableOp4batch_normalization_5/cond/ReadVariableOp_1/Switch:1*
dtype0*
_output_shapes	
:?
?
2batch_normalization_5/cond/ReadVariableOp_1/SwitchSwitchbatch_normalization_5/beta"batch_normalization_5/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_5/beta*
_output_shapes
: : 
?
 batch_normalization_5/cond/ConstConst$^batch_normalization_5/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
"batch_normalization_5/cond/Const_1Const$^batch_normalization_5/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
)batch_normalization_5/cond/FusedBatchNormFusedBatchNorm2batch_normalization_5/cond/FusedBatchNorm/Switch:1)batch_normalization_5/cond/ReadVariableOp+batch_normalization_5/cond/ReadVariableOp_1 batch_normalization_5/cond/Const"batch_normalization_5/cond/Const_1*L
_output_shapes:
8:??????????:?:?:?:?*
epsilon%o?:*
T0
?
0batch_normalization_5/cond/FusedBatchNorm/SwitchSwitchconv2d_5/BiasAdd"batch_normalization_5/cond/pred_id*
T0*#
_class
loc:@conv2d_5/BiasAdd*L
_output_shapes:
8:??????????:??????????
?
+batch_normalization_5/cond/ReadVariableOp_2ReadVariableOp2batch_normalization_5/cond/ReadVariableOp_2/Switch*
dtype0*
_output_shapes	
:?
?
2batch_normalization_5/cond/ReadVariableOp_2/SwitchSwitchbatch_normalization_5/gamma"batch_normalization_5/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_5/gamma*
_output_shapes
: : 
?
+batch_normalization_5/cond/ReadVariableOp_3ReadVariableOp2batch_normalization_5/cond/ReadVariableOp_3/Switch*
dtype0*
_output_shapes	
:?
?
2batch_normalization_5/cond/ReadVariableOp_3/SwitchSwitchbatch_normalization_5/beta"batch_normalization_5/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_5/beta*
_output_shapes
: : 
?
:batch_normalization_5/cond/FusedBatchNorm_1/ReadVariableOpReadVariableOpAbatch_normalization_5/cond/FusedBatchNorm_1/ReadVariableOp/Switch*
dtype0*
_output_shapes	
:?
?
Abatch_normalization_5/cond/FusedBatchNorm_1/ReadVariableOp/SwitchSwitch!batch_normalization_5/moving_mean"batch_normalization_5/cond/pred_id*
_output_shapes
: : *
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean
?
<batch_normalization_5/cond/FusedBatchNorm_1/ReadVariableOp_1ReadVariableOpCbatch_normalization_5/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch*
dtype0*
_output_shapes	
:?
?
Cbatch_normalization_5/cond/FusedBatchNorm_1/ReadVariableOp_1/SwitchSwitch%batch_normalization_5/moving_variance"batch_normalization_5/cond/pred_id*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
_output_shapes
: : 
?
+batch_normalization_5/cond/FusedBatchNorm_1FusedBatchNorm2batch_normalization_5/cond/FusedBatchNorm_1/Switch+batch_normalization_5/cond/ReadVariableOp_2+batch_normalization_5/cond/ReadVariableOp_3:batch_normalization_5/cond/FusedBatchNorm_1/ReadVariableOp<batch_normalization_5/cond/FusedBatchNorm_1/ReadVariableOp_1*L
_output_shapes:
8:??????????:?:?:?:?*
is_training( *
epsilon%o?:*
T0
?
2batch_normalization_5/cond/FusedBatchNorm_1/SwitchSwitchconv2d_5/BiasAdd"batch_normalization_5/cond/pred_id*
T0*#
_class
loc:@conv2d_5/BiasAdd*L
_output_shapes:
8:??????????:??????????
?
 batch_normalization_5/cond/MergeMerge+batch_normalization_5/cond/FusedBatchNorm_1)batch_normalization_5/cond/FusedBatchNorm*
T0*
N*2
_output_shapes 
:??????????: 
?
"batch_normalization_5/cond/Merge_1Merge-batch_normalization_5/cond/FusedBatchNorm_1:1+batch_normalization_5/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes
	:?: 
?
"batch_normalization_5/cond/Merge_2Merge-batch_normalization_5/cond/FusedBatchNorm_1:2+batch_normalization_5/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes
	:?: 
|
#batch_normalization_5/cond_1/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

y
%batch_normalization_5/cond_1/switch_tIdentity%batch_normalization_5/cond_1/Switch:1*
T0
*
_output_shapes
: 
w
%batch_normalization_5/cond_1/switch_fIdentity#batch_normalization_5/cond_1/Switch*
T0
*
_output_shapes
: 
g
$batch_normalization_5/cond_1/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
"batch_normalization_5/cond_1/ConstConst&^batch_normalization_5/cond_1/switch_t*
_output_shapes
: *
valueB
 *?p}?*
dtype0
?
$batch_normalization_5/cond_1/Const_1Const&^batch_normalization_5/cond_1/switch_f*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
"batch_normalization_5/cond_1/MergeMerge$batch_normalization_5/cond_1/Const_1"batch_normalization_5/cond_1/Const*
T0*
N*
_output_shapes
: : 
?
+batch_normalization_5/AssignMovingAvg/sub/xConst*
_output_shapes
: *
valueB
 *  ??*4
_class*
(&loc:@batch_normalization_5/moving_mean*
dtype0
?
)batch_normalization_5/AssignMovingAvg/subSub+batch_normalization_5/AssignMovingAvg/sub/x"batch_normalization_5/cond_1/Merge*
_output_shapes
: *
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean
?
4batch_normalization_5/AssignMovingAvg/ReadVariableOpReadVariableOp!batch_normalization_5/moving_mean*
dtype0*
_output_shapes	
:?
?
+batch_normalization_5/AssignMovingAvg/sub_1Sub4batch_normalization_5/AssignMovingAvg/ReadVariableOp"batch_normalization_5/cond/Merge_1*
_output_shapes	
:?*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean
?
)batch_normalization_5/AssignMovingAvg/mulMul+batch_normalization_5/AssignMovingAvg/sub_1)batch_normalization_5/AssignMovingAvg/sub*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
_output_shapes	
:?
?
9batch_normalization_5/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp!batch_normalization_5/moving_mean)batch_normalization_5/AssignMovingAvg/mul*4
_class*
(&loc:@batch_normalization_5/moving_mean*
dtype0
?
6batch_normalization_5/AssignMovingAvg/ReadVariableOp_1ReadVariableOp!batch_normalization_5/moving_mean:^batch_normalization_5/AssignMovingAvg/AssignSubVariableOp*4
_class*
(&loc:@batch_normalization_5/moving_mean*
dtype0*
_output_shapes	
:?
?
-batch_normalization_5/AssignMovingAvg_1/sub/xConst*
valueB
 *  ??*8
_class.
,*loc:@batch_normalization_5/moving_variance*
dtype0*
_output_shapes
: 
?
+batch_normalization_5/AssignMovingAvg_1/subSub-batch_normalization_5/AssignMovingAvg_1/sub/x"batch_normalization_5/cond_1/Merge*
_output_shapes
: *
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance
?
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOpReadVariableOp%batch_normalization_5/moving_variance*
dtype0*
_output_shapes	
:?
?
-batch_normalization_5/AssignMovingAvg_1/sub_1Sub6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp"batch_normalization_5/cond/Merge_2*8
_class.
,*loc:@batch_normalization_5/moving_variance*
_output_shapes	
:?*
T0
?
+batch_normalization_5/AssignMovingAvg_1/mulMul-batch_normalization_5/AssignMovingAvg_1/sub_1+batch_normalization_5/AssignMovingAvg_1/sub*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
_output_shapes	
:?
?
;batch_normalization_5/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp%batch_normalization_5/moving_variance+batch_normalization_5/AssignMovingAvg_1/mul*8
_class.
,*loc:@batch_normalization_5/moving_variance*
dtype0
?
8batch_normalization_5/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp%batch_normalization_5/moving_variance<^batch_normalization_5/AssignMovingAvg_1/AssignSubVariableOp*8
_class.
,*loc:@batch_normalization_5/moving_variance*
dtype0*
_output_shapes	
:?
x
leaky_re_lu_5/LeakyRelu	LeakyRelu batch_normalization_5/cond/Merge*0
_output_shapes
:??????????
?
8conv2d_transpose/kernel/Initializer/random_uniform/shapeConst*%
valueB"            **
_class 
loc:@conv2d_transpose/kernel*
dtype0*
_output_shapes
:
?
6conv2d_transpose/kernel/Initializer/random_uniform/minConst*
valueB
 *????**
_class 
loc:@conv2d_transpose/kernel*
dtype0*
_output_shapes
: 
?
6conv2d_transpose/kernel/Initializer/random_uniform/maxConst*
valueB
 *???<**
_class 
loc:@conv2d_transpose/kernel*
dtype0*
_output_shapes
: 
?
@conv2d_transpose/kernel/Initializer/random_uniform/RandomUniformRandomUniform8conv2d_transpose/kernel/Initializer/random_uniform/shape*
seed???)*
T0**
_class 
loc:@conv2d_transpose/kernel*
seed22*
dtype0*(
_output_shapes
:??
?
6conv2d_transpose/kernel/Initializer/random_uniform/subSub6conv2d_transpose/kernel/Initializer/random_uniform/max6conv2d_transpose/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0**
_class 
loc:@conv2d_transpose/kernel
?
6conv2d_transpose/kernel/Initializer/random_uniform/mulMul@conv2d_transpose/kernel/Initializer/random_uniform/RandomUniform6conv2d_transpose/kernel/Initializer/random_uniform/sub*(
_output_shapes
:??*
T0**
_class 
loc:@conv2d_transpose/kernel
?
2conv2d_transpose/kernel/Initializer/random_uniformAdd6conv2d_transpose/kernel/Initializer/random_uniform/mul6conv2d_transpose/kernel/Initializer/random_uniform/min*
T0**
_class 
loc:@conv2d_transpose/kernel*(
_output_shapes
:??
?
conv2d_transpose/kernelVarHandleOp*
_output_shapes
: *
shape:??*(
shared_nameconv2d_transpose/kernel**
_class 
loc:@conv2d_transpose/kernel*
dtype0

8conv2d_transpose/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose/kernel*
_output_shapes
: 
?
conv2d_transpose/kernel/AssignAssignVariableOpconv2d_transpose/kernel2conv2d_transpose/kernel/Initializer/random_uniform**
_class 
loc:@conv2d_transpose/kernel*
dtype0
?
+conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose/kernel**
_class 
loc:@conv2d_transpose/kernel*
dtype0*(
_output_shapes
:??
?
'conv2d_transpose/bias/Initializer/zerosConst*
valueB?*    *(
_class
loc:@conv2d_transpose/bias*
dtype0*
_output_shapes	
:?
?
conv2d_transpose/biasVarHandleOp*
dtype0*
_output_shapes
: *
shape:?*&
shared_nameconv2d_transpose/bias*(
_class
loc:@conv2d_transpose/bias
{
6conv2d_transpose/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose/bias*
_output_shapes
: 
?
conv2d_transpose/bias/AssignAssignVariableOpconv2d_transpose/bias'conv2d_transpose/bias/Initializer/zeros*(
_class
loc:@conv2d_transpose/bias*
dtype0
?
)conv2d_transpose/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose/bias*(
_class
loc:@conv2d_transpose/bias*
dtype0*
_output_shapes	
:?
V
conv2d_transpose/ShapeShapeconv2d_5/BiasAdd*
T0*
_output_shapes
:
n
$conv2d_transpose/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
p
&conv2d_transpose/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
p
&conv2d_transpose/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape$conv2d_transpose/strided_slice/stack&conv2d_transpose/strided_slice/stack_1&conv2d_transpose/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
p
&conv2d_transpose/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
r
(conv2d_transpose/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
r
(conv2d_transpose/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/Shape&conv2d_transpose/strided_slice_1/stack(conv2d_transpose/strided_slice_1/stack_1(conv2d_transpose/strided_slice_1/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
p
&conv2d_transpose/strided_slice_2/stackConst*
dtype0*
_output_shapes
:*
valueB:
r
(conv2d_transpose/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
r
(conv2d_transpose/strided_slice_2/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
?
 conv2d_transpose/strided_slice_2StridedSliceconv2d_transpose/Shape&conv2d_transpose/strided_slice_2/stack(conv2d_transpose/strided_slice_2/stack_1(conv2d_transpose/strided_slice_2/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
X
conv2d_transpose/mul/yConst*
dtype0*
_output_shapes
: *
value	B :
v
conv2d_transpose/mulMul conv2d_transpose/strided_slice_1conv2d_transpose/mul/y*
T0*
_output_shapes
: 
Z
conv2d_transpose/mul_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
z
conv2d_transpose/mul_1Mul conv2d_transpose/strided_slice_2conv2d_transpose/mul_1/y*
_output_shapes
: *
T0
[
conv2d_transpose/stack/3Const*
value
B :?*
dtype0*
_output_shapes
: 
?
conv2d_transpose/stackPackconv2d_transpose/strided_sliceconv2d_transpose/mulconv2d_transpose/mul_1conv2d_transpose/stack/3*
T0*
N*
_output_shapes
:
p
&conv2d_transpose/strided_slice_3/stackConst*
dtype0*
_output_shapes
:*
valueB: 
r
(conv2d_transpose/strided_slice_3/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
r
(conv2d_transpose/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
 conv2d_transpose/strided_slice_3StridedSliceconv2d_transpose/stack&conv2d_transpose/strided_slice_3/stack(conv2d_transpose/strided_slice_3/stack_1(conv2d_transpose/strided_slice_3/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
?
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpconv2d_transpose/kernel*
dtype0*(
_output_shapes
:??
?
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack0conv2d_transpose/conv2d_transpose/ReadVariableOpconv2d_5/BiasAdd*
strides
*0
_output_shapes
:?????????0?*
paddingSAME*
T0
z
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOpconv2d_transpose/bias*
dtype0*
_output_shapes	
:?
?
conv2d_transpose/BiasAddBiasAdd!conv2d_transpose/conv2d_transpose'conv2d_transpose/BiasAdd/ReadVariableOp*
T0*0
_output_shapes
:?????????0?
g

re_lu/ReluReluconv2d_transpose/BiasAdd*
T0*0
_output_shapes
:?????????0?
?
,batch_normalization_6/gamma/Initializer/onesConst*
valueB?*  ??*.
_class$
" loc:@batch_normalization_6/gamma*
dtype0*
_output_shapes	
:?
?
batch_normalization_6/gammaVarHandleOp*
dtype0*
_output_shapes
: *
shape:?*,
shared_namebatch_normalization_6/gamma*.
_class$
" loc:@batch_normalization_6/gamma
?
<batch_normalization_6/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_6/gamma*
_output_shapes
: 
?
"batch_normalization_6/gamma/AssignAssignVariableOpbatch_normalization_6/gamma,batch_normalization_6/gamma/Initializer/ones*.
_class$
" loc:@batch_normalization_6/gamma*
dtype0
?
/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_6/gamma*.
_class$
" loc:@batch_normalization_6/gamma*
dtype0*
_output_shapes	
:?
?
,batch_normalization_6/beta/Initializer/zerosConst*
valueB?*    *-
_class#
!loc:@batch_normalization_6/beta*
dtype0*
_output_shapes	
:?
?
batch_normalization_6/betaVarHandleOp*+
shared_namebatch_normalization_6/beta*-
_class#
!loc:@batch_normalization_6/beta*
dtype0*
_output_shapes
: *
shape:?
?
;batch_normalization_6/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_6/beta*
_output_shapes
: 
?
!batch_normalization_6/beta/AssignAssignVariableOpbatch_normalization_6/beta,batch_normalization_6/beta/Initializer/zeros*-
_class#
!loc:@batch_normalization_6/beta*
dtype0
?
.batch_normalization_6/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_6/beta*-
_class#
!loc:@batch_normalization_6/beta*
dtype0*
_output_shapes	
:?
?
3batch_normalization_6/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes	
:?*
valueB?*    *4
_class*
(&loc:@batch_normalization_6/moving_mean
?
!batch_normalization_6/moving_meanVarHandleOp*
dtype0*
_output_shapes
: *
shape:?*2
shared_name#!batch_normalization_6/moving_mean*4
_class*
(&loc:@batch_normalization_6/moving_mean
?
Bbatch_normalization_6/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp!batch_normalization_6/moving_mean*
_output_shapes
: 
?
(batch_normalization_6/moving_mean/AssignAssignVariableOp!batch_normalization_6/moving_mean3batch_normalization_6/moving_mean/Initializer/zeros*4
_class*
(&loc:@batch_normalization_6/moving_mean*
dtype0
?
5batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_6/moving_mean*
dtype0*
_output_shapes	
:?*4
_class*
(&loc:@batch_normalization_6/moving_mean
?
6batch_normalization_6/moving_variance/Initializer/onesConst*
valueB?*  ??*8
_class.
,*loc:@batch_normalization_6/moving_variance*
dtype0*
_output_shapes	
:?
?
%batch_normalization_6/moving_varianceVarHandleOp*8
_class.
,*loc:@batch_normalization_6/moving_variance*
dtype0*
_output_shapes
: *
shape:?*6
shared_name'%batch_normalization_6/moving_variance
?
Fbatch_normalization_6/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp%batch_normalization_6/moving_variance*
_output_shapes
: 
?
,batch_normalization_6/moving_variance/AssignAssignVariableOp%batch_normalization_6/moving_variance6batch_normalization_6/moving_variance/Initializer/ones*8
_class.
,*loc:@batch_normalization_6/moving_variance*
dtype0
?
9batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_6/moving_variance*8
_class.
,*loc:@batch_normalization_6/moving_variance*
dtype0*
_output_shapes	
:?
z
!batch_normalization_6/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

u
#batch_normalization_6/cond/switch_tIdentity#batch_normalization_6/cond/Switch:1*
T0
*
_output_shapes
: 
s
#batch_normalization_6/cond/switch_fIdentity!batch_normalization_6/cond/Switch*
T0
*
_output_shapes
: 
e
"batch_normalization_6/cond/pred_idIdentitykeras_learning_phase*
_output_shapes
: *
T0

?
)batch_normalization_6/cond/ReadVariableOpReadVariableOp2batch_normalization_6/cond/ReadVariableOp/Switch:1*
dtype0*
_output_shapes	
:?
?
0batch_normalization_6/cond/ReadVariableOp/SwitchSwitchbatch_normalization_6/gamma"batch_normalization_6/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_6/gamma*
_output_shapes
: : 
?
+batch_normalization_6/cond/ReadVariableOp_1ReadVariableOp4batch_normalization_6/cond/ReadVariableOp_1/Switch:1*
dtype0*
_output_shapes	
:?
?
2batch_normalization_6/cond/ReadVariableOp_1/SwitchSwitchbatch_normalization_6/beta"batch_normalization_6/cond/pred_id*
_output_shapes
: : *
T0*-
_class#
!loc:@batch_normalization_6/beta
?
 batch_normalization_6/cond/ConstConst$^batch_normalization_6/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
"batch_normalization_6/cond/Const_1Const$^batch_normalization_6/cond/switch_t*
_output_shapes
: *
valueB *
dtype0
?
)batch_normalization_6/cond/FusedBatchNormFusedBatchNorm2batch_normalization_6/cond/FusedBatchNorm/Switch:1)batch_normalization_6/cond/ReadVariableOp+batch_normalization_6/cond/ReadVariableOp_1 batch_normalization_6/cond/Const"batch_normalization_6/cond/Const_1*L
_output_shapes:
8:?????????0?:?:?:?:?*
epsilon%o?:*
T0
?
0batch_normalization_6/cond/FusedBatchNorm/SwitchSwitch
re_lu/Relu"batch_normalization_6/cond/pred_id*
T0*
_class
loc:@re_lu/Relu*L
_output_shapes:
8:?????????0?:?????????0?
?
+batch_normalization_6/cond/ReadVariableOp_2ReadVariableOp2batch_normalization_6/cond/ReadVariableOp_2/Switch*
dtype0*
_output_shapes	
:?
?
2batch_normalization_6/cond/ReadVariableOp_2/SwitchSwitchbatch_normalization_6/gamma"batch_normalization_6/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_6/gamma*
_output_shapes
: : 
?
+batch_normalization_6/cond/ReadVariableOp_3ReadVariableOp2batch_normalization_6/cond/ReadVariableOp_3/Switch*
dtype0*
_output_shapes	
:?
?
2batch_normalization_6/cond/ReadVariableOp_3/SwitchSwitchbatch_normalization_6/beta"batch_normalization_6/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_6/beta*
_output_shapes
: : 
?
:batch_normalization_6/cond/FusedBatchNorm_1/ReadVariableOpReadVariableOpAbatch_normalization_6/cond/FusedBatchNorm_1/ReadVariableOp/Switch*
dtype0*
_output_shapes	
:?
?
Abatch_normalization_6/cond/FusedBatchNorm_1/ReadVariableOp/SwitchSwitch!batch_normalization_6/moving_mean"batch_normalization_6/cond/pred_id*
_output_shapes
: : *
T0*4
_class*
(&loc:@batch_normalization_6/moving_mean
?
<batch_normalization_6/cond/FusedBatchNorm_1/ReadVariableOp_1ReadVariableOpCbatch_normalization_6/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch*
dtype0*
_output_shapes	
:?
?
Cbatch_normalization_6/cond/FusedBatchNorm_1/ReadVariableOp_1/SwitchSwitch%batch_normalization_6/moving_variance"batch_normalization_6/cond/pred_id*8
_class.
,*loc:@batch_normalization_6/moving_variance*
_output_shapes
: : *
T0
?
+batch_normalization_6/cond/FusedBatchNorm_1FusedBatchNorm2batch_normalization_6/cond/FusedBatchNorm_1/Switch+batch_normalization_6/cond/ReadVariableOp_2+batch_normalization_6/cond/ReadVariableOp_3:batch_normalization_6/cond/FusedBatchNorm_1/ReadVariableOp<batch_normalization_6/cond/FusedBatchNorm_1/ReadVariableOp_1*
epsilon%o?:*
T0*L
_output_shapes:
8:?????????0?:?:?:?:?*
is_training( 
?
2batch_normalization_6/cond/FusedBatchNorm_1/SwitchSwitch
re_lu/Relu"batch_normalization_6/cond/pred_id*
T0*
_class
loc:@re_lu/Relu*L
_output_shapes:
8:?????????0?:?????????0?
?
 batch_normalization_6/cond/MergeMerge+batch_normalization_6/cond/FusedBatchNorm_1)batch_normalization_6/cond/FusedBatchNorm*
N*2
_output_shapes 
:?????????0?: *
T0
?
"batch_normalization_6/cond/Merge_1Merge-batch_normalization_6/cond/FusedBatchNorm_1:1+batch_normalization_6/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes
	:?: 
?
"batch_normalization_6/cond/Merge_2Merge-batch_normalization_6/cond/FusedBatchNorm_1:2+batch_normalization_6/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes
	:?: 
|
#batch_normalization_6/cond_1/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

y
%batch_normalization_6/cond_1/switch_tIdentity%batch_normalization_6/cond_1/Switch:1*
T0
*
_output_shapes
: 
w
%batch_normalization_6/cond_1/switch_fIdentity#batch_normalization_6/cond_1/Switch*
T0
*
_output_shapes
: 
g
$batch_normalization_6/cond_1/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
"batch_normalization_6/cond_1/ConstConst&^batch_normalization_6/cond_1/switch_t*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
$batch_normalization_6/cond_1/Const_1Const&^batch_normalization_6/cond_1/switch_f*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
"batch_normalization_6/cond_1/MergeMerge$batch_normalization_6/cond_1/Const_1"batch_normalization_6/cond_1/Const*
_output_shapes
: : *
T0*
N
?
+batch_normalization_6/AssignMovingAvg/sub/xConst*
valueB
 *  ??*4
_class*
(&loc:@batch_normalization_6/moving_mean*
dtype0*
_output_shapes
: 
?
)batch_normalization_6/AssignMovingAvg/subSub+batch_normalization_6/AssignMovingAvg/sub/x"batch_normalization_6/cond_1/Merge*
_output_shapes
: *
T0*4
_class*
(&loc:@batch_normalization_6/moving_mean
?
4batch_normalization_6/AssignMovingAvg/ReadVariableOpReadVariableOp!batch_normalization_6/moving_mean*
dtype0*
_output_shapes	
:?
?
+batch_normalization_6/AssignMovingAvg/sub_1Sub4batch_normalization_6/AssignMovingAvg/ReadVariableOp"batch_normalization_6/cond/Merge_1*
T0*4
_class*
(&loc:@batch_normalization_6/moving_mean*
_output_shapes	
:?
?
)batch_normalization_6/AssignMovingAvg/mulMul+batch_normalization_6/AssignMovingAvg/sub_1)batch_normalization_6/AssignMovingAvg/sub*
T0*4
_class*
(&loc:@batch_normalization_6/moving_mean*
_output_shapes	
:?
?
9batch_normalization_6/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp!batch_normalization_6/moving_mean)batch_normalization_6/AssignMovingAvg/mul*4
_class*
(&loc:@batch_normalization_6/moving_mean*
dtype0
?
6batch_normalization_6/AssignMovingAvg/ReadVariableOp_1ReadVariableOp!batch_normalization_6/moving_mean:^batch_normalization_6/AssignMovingAvg/AssignSubVariableOp*
_output_shapes	
:?*4
_class*
(&loc:@batch_normalization_6/moving_mean*
dtype0
?
-batch_normalization_6/AssignMovingAvg_1/sub/xConst*
valueB
 *  ??*8
_class.
,*loc:@batch_normalization_6/moving_variance*
dtype0*
_output_shapes
: 
?
+batch_normalization_6/AssignMovingAvg_1/subSub-batch_normalization_6/AssignMovingAvg_1/sub/x"batch_normalization_6/cond_1/Merge*
T0*8
_class.
,*loc:@batch_normalization_6/moving_variance*
_output_shapes
: 
?
6batch_normalization_6/AssignMovingAvg_1/ReadVariableOpReadVariableOp%batch_normalization_6/moving_variance*
dtype0*
_output_shapes	
:?
?
-batch_normalization_6/AssignMovingAvg_1/sub_1Sub6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp"batch_normalization_6/cond/Merge_2*
T0*8
_class.
,*loc:@batch_normalization_6/moving_variance*
_output_shapes	
:?
?
+batch_normalization_6/AssignMovingAvg_1/mulMul-batch_normalization_6/AssignMovingAvg_1/sub_1+batch_normalization_6/AssignMovingAvg_1/sub*
_output_shapes	
:?*
T0*8
_class.
,*loc:@batch_normalization_6/moving_variance
?
;batch_normalization_6/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp%batch_normalization_6/moving_variance+batch_normalization_6/AssignMovingAvg_1/mul*8
_class.
,*loc:@batch_normalization_6/moving_variance*
dtype0
?
8batch_normalization_6/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp%batch_normalization_6/moving_variance<^batch_normalization_6/AssignMovingAvg_1/AssignSubVariableOp*8
_class.
,*loc:@batch_normalization_6/moving_variance*
dtype0*
_output_shapes	
:?
l
dropout/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
Y
dropout/cond/switch_tIdentitydropout/cond/Switch:1*
T0
*
_output_shapes
: 
W
dropout/cond/switch_fIdentitydropout/cond/Switch*
T0
*
_output_shapes
: 
W
dropout/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
v
dropout/cond/dropout/rateConst^dropout/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *   ?
m
dropout/cond/dropout/ShapeShape#dropout/cond/dropout/Shape/Switch:1*
T0*
_output_shapes
:
?
!dropout/cond/dropout/Shape/SwitchSwitch batch_normalization_6/cond/Mergedropout/cond/pred_id*3
_class)
'%loc:@batch_normalization_6/cond/Merge*L
_output_shapes:
8:?????????0?:?????????0?*
T0
?
'dropout/cond/dropout/random_uniform/minConst^dropout/cond/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0
?
'dropout/cond/dropout/random_uniform/maxConst^dropout/cond/switch_t*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
1dropout/cond/dropout/random_uniform/RandomUniformRandomUniformdropout/cond/dropout/Shape*
T0*
dtype0*0
_output_shapes
:?????????0?
?
'dropout/cond/dropout/random_uniform/subSub'dropout/cond/dropout/random_uniform/max'dropout/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
?
'dropout/cond/dropout/random_uniform/mulMul1dropout/cond/dropout/random_uniform/RandomUniform'dropout/cond/dropout/random_uniform/sub*
T0*0
_output_shapes
:?????????0?
?
#dropout/cond/dropout/random_uniformAdd'dropout/cond/dropout/random_uniform/mul'dropout/cond/dropout/random_uniform/min*
T0*0
_output_shapes
:?????????0?
w
dropout/cond/dropout/sub/xConst^dropout/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ??
w
dropout/cond/dropout/subSubdropout/cond/dropout/sub/xdropout/cond/dropout/rate*
T0*
_output_shapes
: 
{
dropout/cond/dropout/truediv/xConst^dropout/cond/switch_t*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
dropout/cond/dropout/truedivRealDivdropout/cond/dropout/truediv/xdropout/cond/dropout/sub*
T0*
_output_shapes
: 
?
!dropout/cond/dropout/GreaterEqualGreaterEqual#dropout/cond/dropout/random_uniformdropout/cond/dropout/rate*
T0*0
_output_shapes
:?????????0?
?
dropout/cond/dropout/mulMul#dropout/cond/dropout/Shape/Switch:1dropout/cond/dropout/truediv*0
_output_shapes
:?????????0?*
T0
?
dropout/cond/dropout/CastCast!dropout/cond/dropout/GreaterEqual*

SrcT0
*0
_output_shapes
:?????????0?*

DstT0
?
dropout/cond/dropout/mul_1Muldropout/cond/dropout/muldropout/cond/dropout/Cast*
T0*0
_output_shapes
:?????????0?
z
dropout/cond/IdentityIdentitydropout/cond/Identity/Switch*
T0*0
_output_shapes
:?????????0?
?
dropout/cond/Identity/SwitchSwitch batch_normalization_6/cond/Mergedropout/cond/pred_id*
T0*3
_class)
'%loc:@batch_normalization_6/cond/Merge*L
_output_shapes:
8:?????????0?:?????????0?
?
dropout/cond/MergeMergedropout/cond/Identitydropout/cond/dropout/mul_1*
N*2
_output_shapes 
:?????????0?: *
T0
Y
concatenate/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
?
concatenate/concatConcatV2conv2d_4/BiasAdddropout/cond/Mergeconcatenate/concat/axis*0
_output_shapes
:?????????0?*
T0*
N
?
:conv2d_transpose_1/kernel/Initializer/random_uniform/shapeConst*%
valueB"      ?      *,
_class"
 loc:@conv2d_transpose_1/kernel*
dtype0*
_output_shapes
:
?
8conv2d_transpose_1/kernel/Initializer/random_uniform/minConst*
valueB
 *?\1?*,
_class"
 loc:@conv2d_transpose_1/kernel*
dtype0*
_output_shapes
: 
?
8conv2d_transpose_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *?\1=*,
_class"
 loc:@conv2d_transpose_1/kernel*
dtype0*
_output_shapes
: 
?
Bconv2d_transpose_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform:conv2d_transpose_1/kernel/Initializer/random_uniform/shape*,
_class"
 loc:@conv2d_transpose_1/kernel*
seed22*
dtype0*(
_output_shapes
:??*
seed???)*
T0
?
8conv2d_transpose_1/kernel/Initializer/random_uniform/subSub8conv2d_transpose_1/kernel/Initializer/random_uniform/max8conv2d_transpose_1/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@conv2d_transpose_1/kernel*
_output_shapes
: 
?
8conv2d_transpose_1/kernel/Initializer/random_uniform/mulMulBconv2d_transpose_1/kernel/Initializer/random_uniform/RandomUniform8conv2d_transpose_1/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@conv2d_transpose_1/kernel*(
_output_shapes
:??
?
4conv2d_transpose_1/kernel/Initializer/random_uniformAdd8conv2d_transpose_1/kernel/Initializer/random_uniform/mul8conv2d_transpose_1/kernel/Initializer/random_uniform/min*(
_output_shapes
:??*
T0*,
_class"
 loc:@conv2d_transpose_1/kernel
?
conv2d_transpose_1/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shape:??**
shared_nameconv2d_transpose_1/kernel*,
_class"
 loc:@conv2d_transpose_1/kernel
?
:conv2d_transpose_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose_1/kernel*
_output_shapes
: 
?
 conv2d_transpose_1/kernel/AssignAssignVariableOpconv2d_transpose_1/kernel4conv2d_transpose_1/kernel/Initializer/random_uniform*,
_class"
 loc:@conv2d_transpose_1/kernel*
dtype0
?
-conv2d_transpose_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/kernel*(
_output_shapes
:??*,
_class"
 loc:@conv2d_transpose_1/kernel*
dtype0
?
)conv2d_transpose_1/bias/Initializer/zerosConst*
valueB?*    **
_class 
loc:@conv2d_transpose_1/bias*
dtype0*
_output_shapes	
:?
?
conv2d_transpose_1/biasVarHandleOp*
dtype0*
_output_shapes
: *
shape:?*(
shared_nameconv2d_transpose_1/bias**
_class 
loc:@conv2d_transpose_1/bias

8conv2d_transpose_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose_1/bias*
_output_shapes
: 
?
conv2d_transpose_1/bias/AssignAssignVariableOpconv2d_transpose_1/bias)conv2d_transpose_1/bias/Initializer/zeros**
_class 
loc:@conv2d_transpose_1/bias*
dtype0
?
+conv2d_transpose_1/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/bias**
_class 
loc:@conv2d_transpose_1/bias*
dtype0*
_output_shapes	
:?
Z
conv2d_transpose_1/ShapeShapeconcatenate/concat*
T0*
_output_shapes
:
p
&conv2d_transpose_1/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
r
(conv2d_transpose_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
r
(conv2d_transpose_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
 conv2d_transpose_1/strided_sliceStridedSliceconv2d_transpose_1/Shape&conv2d_transpose_1/strided_slice/stack(conv2d_transpose_1/strided_slice/stack_1(conv2d_transpose_1/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
r
(conv2d_transpose_1/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_1/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_1/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
"conv2d_transpose_1/strided_slice_1StridedSliceconv2d_transpose_1/Shape(conv2d_transpose_1/strided_slice_1/stack*conv2d_transpose_1/strided_slice_1/stack_1*conv2d_transpose_1/strided_slice_1/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
r
(conv2d_transpose_1/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_1/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_1/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
"conv2d_transpose_1/strided_slice_2StridedSliceconv2d_transpose_1/Shape(conv2d_transpose_1/strided_slice_2/stack*conv2d_transpose_1/strided_slice_2/stack_1*conv2d_transpose_1/strided_slice_2/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
Z
conv2d_transpose_1/mul/yConst*
value	B :*
dtype0*
_output_shapes
: 
|
conv2d_transpose_1/mulMul"conv2d_transpose_1/strided_slice_1conv2d_transpose_1/mul/y*
_output_shapes
: *
T0
\
conv2d_transpose_1/mul_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
conv2d_transpose_1/mul_1Mul"conv2d_transpose_1/strided_slice_2conv2d_transpose_1/mul_1/y*
T0*
_output_shapes
: 
]
conv2d_transpose_1/stack/3Const*
value
B :?*
dtype0*
_output_shapes
: 
?
conv2d_transpose_1/stackPack conv2d_transpose_1/strided_sliceconv2d_transpose_1/mulconv2d_transpose_1/mul_1conv2d_transpose_1/stack/3*
T0*
N*
_output_shapes
:
r
(conv2d_transpose_1/strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:
t
*conv2d_transpose_1/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_1/strided_slice_3/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
?
"conv2d_transpose_1/strided_slice_3StridedSliceconv2d_transpose_1/stack(conv2d_transpose_1/strided_slice_3/stack*conv2d_transpose_1/strided_slice_3/stack_1*conv2d_transpose_1/strided_slice_3/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
?
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpconv2d_transpose_1/kernel*(
_output_shapes
:??*
dtype0
?
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInputconv2d_transpose_1/stack2conv2d_transpose_1/conv2d_transpose/ReadVariableOpconcatenate/concat*
paddingSAME*
T0*
strides
*0
_output_shapes
:????????? `?
~
)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOpconv2d_transpose_1/bias*
_output_shapes	
:?*
dtype0
?
conv2d_transpose_1/BiasAddBiasAdd#conv2d_transpose_1/conv2d_transpose)conv2d_transpose_1/BiasAdd/ReadVariableOp*
T0*0
_output_shapes
:????????? `?
k
re_lu_1/ReluReluconv2d_transpose_1/BiasAdd*0
_output_shapes
:????????? `?*
T0
?
,batch_normalization_7/gamma/Initializer/onesConst*
valueB?*  ??*.
_class$
" loc:@batch_normalization_7/gamma*
dtype0*
_output_shapes	
:?
?
batch_normalization_7/gammaVarHandleOp*.
_class$
" loc:@batch_normalization_7/gamma*
dtype0*
_output_shapes
: *
shape:?*,
shared_namebatch_normalization_7/gamma
?
<batch_normalization_7/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_7/gamma*
_output_shapes
: 
?
"batch_normalization_7/gamma/AssignAssignVariableOpbatch_normalization_7/gamma,batch_normalization_7/gamma/Initializer/ones*.
_class$
" loc:@batch_normalization_7/gamma*
dtype0
?
/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_7/gamma*.
_class$
" loc:@batch_normalization_7/gamma*
dtype0*
_output_shapes	
:?
?
,batch_normalization_7/beta/Initializer/zerosConst*
_output_shapes	
:?*
valueB?*    *-
_class#
!loc:@batch_normalization_7/beta*
dtype0
?
batch_normalization_7/betaVarHandleOp*
dtype0*
_output_shapes
: *
shape:?*+
shared_namebatch_normalization_7/beta*-
_class#
!loc:@batch_normalization_7/beta
?
;batch_normalization_7/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_7/beta*
_output_shapes
: 
?
!batch_normalization_7/beta/AssignAssignVariableOpbatch_normalization_7/beta,batch_normalization_7/beta/Initializer/zeros*-
_class#
!loc:@batch_normalization_7/beta*
dtype0
?
.batch_normalization_7/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_7/beta*-
_class#
!loc:@batch_normalization_7/beta*
dtype0*
_output_shapes	
:?
?
3batch_normalization_7/moving_mean/Initializer/zerosConst*
valueB?*    *4
_class*
(&loc:@batch_normalization_7/moving_mean*
dtype0*
_output_shapes	
:?
?
!batch_normalization_7/moving_meanVarHandleOp*4
_class*
(&loc:@batch_normalization_7/moving_mean*
dtype0*
_output_shapes
: *
shape:?*2
shared_name#!batch_normalization_7/moving_mean
?
Bbatch_normalization_7/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp!batch_normalization_7/moving_mean*
_output_shapes
: 
?
(batch_normalization_7/moving_mean/AssignAssignVariableOp!batch_normalization_7/moving_mean3batch_normalization_7/moving_mean/Initializer/zeros*4
_class*
(&loc:@batch_normalization_7/moving_mean*
dtype0
?
5batch_normalization_7/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_7/moving_mean*4
_class*
(&loc:@batch_normalization_7/moving_mean*
dtype0*
_output_shapes	
:?
?
6batch_normalization_7/moving_variance/Initializer/onesConst*
valueB?*  ??*8
_class.
,*loc:@batch_normalization_7/moving_variance*
dtype0*
_output_shapes	
:?
?
%batch_normalization_7/moving_varianceVarHandleOp*
shape:?*6
shared_name'%batch_normalization_7/moving_variance*8
_class.
,*loc:@batch_normalization_7/moving_variance*
dtype0*
_output_shapes
: 
?
Fbatch_normalization_7/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp%batch_normalization_7/moving_variance*
_output_shapes
: 
?
,batch_normalization_7/moving_variance/AssignAssignVariableOp%batch_normalization_7/moving_variance6batch_normalization_7/moving_variance/Initializer/ones*8
_class.
,*loc:@batch_normalization_7/moving_variance*
dtype0
?
9batch_normalization_7/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_7/moving_variance*8
_class.
,*loc:@batch_normalization_7/moving_variance*
dtype0*
_output_shapes	
:?
z
!batch_normalization_7/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
u
#batch_normalization_7/cond/switch_tIdentity#batch_normalization_7/cond/Switch:1*
T0
*
_output_shapes
: 
s
#batch_normalization_7/cond/switch_fIdentity!batch_normalization_7/cond/Switch*
T0
*
_output_shapes
: 
e
"batch_normalization_7/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
)batch_normalization_7/cond/ReadVariableOpReadVariableOp2batch_normalization_7/cond/ReadVariableOp/Switch:1*
dtype0*
_output_shapes	
:?
?
0batch_normalization_7/cond/ReadVariableOp/SwitchSwitchbatch_normalization_7/gamma"batch_normalization_7/cond/pred_id*.
_class$
" loc:@batch_normalization_7/gamma*
_output_shapes
: : *
T0
?
+batch_normalization_7/cond/ReadVariableOp_1ReadVariableOp4batch_normalization_7/cond/ReadVariableOp_1/Switch:1*
dtype0*
_output_shapes	
:?
?
2batch_normalization_7/cond/ReadVariableOp_1/SwitchSwitchbatch_normalization_7/beta"batch_normalization_7/cond/pred_id*-
_class#
!loc:@batch_normalization_7/beta*
_output_shapes
: : *
T0
?
 batch_normalization_7/cond/ConstConst$^batch_normalization_7/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
"batch_normalization_7/cond/Const_1Const$^batch_normalization_7/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
)batch_normalization_7/cond/FusedBatchNormFusedBatchNorm2batch_normalization_7/cond/FusedBatchNorm/Switch:1)batch_normalization_7/cond/ReadVariableOp+batch_normalization_7/cond/ReadVariableOp_1 batch_normalization_7/cond/Const"batch_normalization_7/cond/Const_1*
T0*L
_output_shapes:
8:????????? `?:?:?:?:?*
epsilon%o?:
?
0batch_normalization_7/cond/FusedBatchNorm/SwitchSwitchre_lu_1/Relu"batch_normalization_7/cond/pred_id*
T0*
_class
loc:@re_lu_1/Relu*L
_output_shapes:
8:????????? `?:????????? `?
?
+batch_normalization_7/cond/ReadVariableOp_2ReadVariableOp2batch_normalization_7/cond/ReadVariableOp_2/Switch*
dtype0*
_output_shapes	
:?
?
2batch_normalization_7/cond/ReadVariableOp_2/SwitchSwitchbatch_normalization_7/gamma"batch_normalization_7/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_7/gamma*
_output_shapes
: : 
?
+batch_normalization_7/cond/ReadVariableOp_3ReadVariableOp2batch_normalization_7/cond/ReadVariableOp_3/Switch*
dtype0*
_output_shapes	
:?
?
2batch_normalization_7/cond/ReadVariableOp_3/SwitchSwitchbatch_normalization_7/beta"batch_normalization_7/cond/pred_id*
_output_shapes
: : *
T0*-
_class#
!loc:@batch_normalization_7/beta
?
:batch_normalization_7/cond/FusedBatchNorm_1/ReadVariableOpReadVariableOpAbatch_normalization_7/cond/FusedBatchNorm_1/ReadVariableOp/Switch*
_output_shapes	
:?*
dtype0
?
Abatch_normalization_7/cond/FusedBatchNorm_1/ReadVariableOp/SwitchSwitch!batch_normalization_7/moving_mean"batch_normalization_7/cond/pred_id*
T0*4
_class*
(&loc:@batch_normalization_7/moving_mean*
_output_shapes
: : 
?
<batch_normalization_7/cond/FusedBatchNorm_1/ReadVariableOp_1ReadVariableOpCbatch_normalization_7/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch*
dtype0*
_output_shapes	
:?
?
Cbatch_normalization_7/cond/FusedBatchNorm_1/ReadVariableOp_1/SwitchSwitch%batch_normalization_7/moving_variance"batch_normalization_7/cond/pred_id*
T0*8
_class.
,*loc:@batch_normalization_7/moving_variance*
_output_shapes
: : 
?
+batch_normalization_7/cond/FusedBatchNorm_1FusedBatchNorm2batch_normalization_7/cond/FusedBatchNorm_1/Switch+batch_normalization_7/cond/ReadVariableOp_2+batch_normalization_7/cond/ReadVariableOp_3:batch_normalization_7/cond/FusedBatchNorm_1/ReadVariableOp<batch_normalization_7/cond/FusedBatchNorm_1/ReadVariableOp_1*L
_output_shapes:
8:????????? `?:?:?:?:?*
is_training( *
epsilon%o?:*
T0
?
2batch_normalization_7/cond/FusedBatchNorm_1/SwitchSwitchre_lu_1/Relu"batch_normalization_7/cond/pred_id*
T0*
_class
loc:@re_lu_1/Relu*L
_output_shapes:
8:????????? `?:????????? `?
?
 batch_normalization_7/cond/MergeMerge+batch_normalization_7/cond/FusedBatchNorm_1)batch_normalization_7/cond/FusedBatchNorm*
T0*
N*2
_output_shapes 
:????????? `?: 
?
"batch_normalization_7/cond/Merge_1Merge-batch_normalization_7/cond/FusedBatchNorm_1:1+batch_normalization_7/cond/FusedBatchNorm:1*
N*
_output_shapes
	:?: *
T0
?
"batch_normalization_7/cond/Merge_2Merge-batch_normalization_7/cond/FusedBatchNorm_1:2+batch_normalization_7/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes
	:?: 
|
#batch_normalization_7/cond_1/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
y
%batch_normalization_7/cond_1/switch_tIdentity%batch_normalization_7/cond_1/Switch:1*
T0
*
_output_shapes
: 
w
%batch_normalization_7/cond_1/switch_fIdentity#batch_normalization_7/cond_1/Switch*
T0
*
_output_shapes
: 
g
$batch_normalization_7/cond_1/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
"batch_normalization_7/cond_1/ConstConst&^batch_normalization_7/cond_1/switch_t*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
$batch_normalization_7/cond_1/Const_1Const&^batch_normalization_7/cond_1/switch_f*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
"batch_normalization_7/cond_1/MergeMerge$batch_normalization_7/cond_1/Const_1"batch_normalization_7/cond_1/Const*
T0*
N*
_output_shapes
: : 
?
+batch_normalization_7/AssignMovingAvg/sub/xConst*
_output_shapes
: *
valueB
 *  ??*4
_class*
(&loc:@batch_normalization_7/moving_mean*
dtype0
?
)batch_normalization_7/AssignMovingAvg/subSub+batch_normalization_7/AssignMovingAvg/sub/x"batch_normalization_7/cond_1/Merge*
_output_shapes
: *
T0*4
_class*
(&loc:@batch_normalization_7/moving_mean
?
4batch_normalization_7/AssignMovingAvg/ReadVariableOpReadVariableOp!batch_normalization_7/moving_mean*
dtype0*
_output_shapes	
:?
?
+batch_normalization_7/AssignMovingAvg/sub_1Sub4batch_normalization_7/AssignMovingAvg/ReadVariableOp"batch_normalization_7/cond/Merge_1*4
_class*
(&loc:@batch_normalization_7/moving_mean*
_output_shapes	
:?*
T0
?
)batch_normalization_7/AssignMovingAvg/mulMul+batch_normalization_7/AssignMovingAvg/sub_1)batch_normalization_7/AssignMovingAvg/sub*
T0*4
_class*
(&loc:@batch_normalization_7/moving_mean*
_output_shapes	
:?
?
9batch_normalization_7/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp!batch_normalization_7/moving_mean)batch_normalization_7/AssignMovingAvg/mul*4
_class*
(&loc:@batch_normalization_7/moving_mean*
dtype0
?
6batch_normalization_7/AssignMovingAvg/ReadVariableOp_1ReadVariableOp!batch_normalization_7/moving_mean:^batch_normalization_7/AssignMovingAvg/AssignSubVariableOp*4
_class*
(&loc:@batch_normalization_7/moving_mean*
dtype0*
_output_shapes	
:?
?
-batch_normalization_7/AssignMovingAvg_1/sub/xConst*
valueB
 *  ??*8
_class.
,*loc:@batch_normalization_7/moving_variance*
dtype0*
_output_shapes
: 
?
+batch_normalization_7/AssignMovingAvg_1/subSub-batch_normalization_7/AssignMovingAvg_1/sub/x"batch_normalization_7/cond_1/Merge*
_output_shapes
: *
T0*8
_class.
,*loc:@batch_normalization_7/moving_variance
?
6batch_normalization_7/AssignMovingAvg_1/ReadVariableOpReadVariableOp%batch_normalization_7/moving_variance*
dtype0*
_output_shapes	
:?
?
-batch_normalization_7/AssignMovingAvg_1/sub_1Sub6batch_normalization_7/AssignMovingAvg_1/ReadVariableOp"batch_normalization_7/cond/Merge_2*
T0*8
_class.
,*loc:@batch_normalization_7/moving_variance*
_output_shapes	
:?
?
+batch_normalization_7/AssignMovingAvg_1/mulMul-batch_normalization_7/AssignMovingAvg_1/sub_1+batch_normalization_7/AssignMovingAvg_1/sub*
T0*8
_class.
,*loc:@batch_normalization_7/moving_variance*
_output_shapes	
:?
?
;batch_normalization_7/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp%batch_normalization_7/moving_variance+batch_normalization_7/AssignMovingAvg_1/mul*8
_class.
,*loc:@batch_normalization_7/moving_variance*
dtype0
?
8batch_normalization_7/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp%batch_normalization_7/moving_variance<^batch_normalization_7/AssignMovingAvg_1/AssignSubVariableOp*8
_class.
,*loc:@batch_normalization_7/moving_variance*
dtype0*
_output_shapes	
:?
n
dropout_1/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_1/cond/switch_tIdentitydropout_1/cond/Switch:1*
_output_shapes
: *
T0

[
dropout_1/cond/switch_fIdentitydropout_1/cond/Switch*
T0
*
_output_shapes
: 
Y
dropout_1/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
z
dropout_1/cond/dropout/rateConst^dropout_1/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
q
dropout_1/cond/dropout/ShapeShape%dropout_1/cond/dropout/Shape/Switch:1*
_output_shapes
:*
T0
?
#dropout_1/cond/dropout/Shape/SwitchSwitch batch_normalization_7/cond/Mergedropout_1/cond/pred_id*
T0*3
_class)
'%loc:@batch_normalization_7/cond/Merge*L
_output_shapes:
8:????????? `?:????????? `?
?
)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
?
)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
T0*
dtype0*0
_output_shapes
:????????? `?
?
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
?
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*0
_output_shapes
:????????? `?*
T0
?
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*
T0*0
_output_shapes
:????????? `?
{
dropout_1/cond/dropout/sub/xConst^dropout_1/cond/switch_t*
valueB
 *  ??*
dtype0*
_output_shapes
: 
}
dropout_1/cond/dropout/subSubdropout_1/cond/dropout/sub/xdropout_1/cond/dropout/rate*
_output_shapes
: *
T0

 dropout_1/cond/dropout/truediv/xConst^dropout_1/cond/switch_t*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
dropout_1/cond/dropout/truedivRealDiv dropout_1/cond/dropout/truediv/xdropout_1/cond/dropout/sub*
T0*
_output_shapes
: 
?
#dropout_1/cond/dropout/GreaterEqualGreaterEqual%dropout_1/cond/dropout/random_uniformdropout_1/cond/dropout/rate*0
_output_shapes
:????????? `?*
T0
?
dropout_1/cond/dropout/mulMul%dropout_1/cond/dropout/Shape/Switch:1dropout_1/cond/dropout/truediv*
T0*0
_output_shapes
:????????? `?
?
dropout_1/cond/dropout/CastCast#dropout_1/cond/dropout/GreaterEqual*

SrcT0
*0
_output_shapes
:????????? `?*

DstT0
?
dropout_1/cond/dropout/mul_1Muldropout_1/cond/dropout/muldropout_1/cond/dropout/Cast*
T0*0
_output_shapes
:????????? `?
~
dropout_1/cond/IdentityIdentitydropout_1/cond/Identity/Switch*
T0*0
_output_shapes
:????????? `?
?
dropout_1/cond/Identity/SwitchSwitch batch_normalization_7/cond/Mergedropout_1/cond/pred_id*3
_class)
'%loc:@batch_normalization_7/cond/Merge*L
_output_shapes:
8:????????? `?:????????? `?*
T0
?
dropout_1/cond/MergeMergedropout_1/cond/Identitydropout_1/cond/dropout/mul_1*
T0*
N*2
_output_shapes 
:????????? `?: 
[
concatenate_1/concat/axisConst*
_output_shapes
: *
value	B :*
dtype0
?
concatenate_1/concatConcatV2conv2d_3/BiasAdddropout_1/cond/Mergeconcatenate_1/concat/axis*
T0*
N*0
_output_shapes
:????????? `?
?
:conv2d_transpose_2/kernel/Initializer/random_uniform/shapeConst*%
valueB"      @      *,
_class"
 loc:@conv2d_transpose_2/kernel*
dtype0*
_output_shapes
:
?
8conv2d_transpose_2/kernel/Initializer/random_uniform/minConst*
valueB
 *??z?*,
_class"
 loc:@conv2d_transpose_2/kernel*
dtype0*
_output_shapes
: 
?
8conv2d_transpose_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *??z=*,
_class"
 loc:@conv2d_transpose_2/kernel*
dtype0*
_output_shapes
: 
?
Bconv2d_transpose_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform:conv2d_transpose_2/kernel/Initializer/random_uniform/shape*
dtype0*'
_output_shapes
:@?*
seed???)*
T0*,
_class"
 loc:@conv2d_transpose_2/kernel*
seed22
?
8conv2d_transpose_2/kernel/Initializer/random_uniform/subSub8conv2d_transpose_2/kernel/Initializer/random_uniform/max8conv2d_transpose_2/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@conv2d_transpose_2/kernel*
_output_shapes
: 
?
8conv2d_transpose_2/kernel/Initializer/random_uniform/mulMulBconv2d_transpose_2/kernel/Initializer/random_uniform/RandomUniform8conv2d_transpose_2/kernel/Initializer/random_uniform/sub*'
_output_shapes
:@?*
T0*,
_class"
 loc:@conv2d_transpose_2/kernel
?
4conv2d_transpose_2/kernel/Initializer/random_uniformAdd8conv2d_transpose_2/kernel/Initializer/random_uniform/mul8conv2d_transpose_2/kernel/Initializer/random_uniform/min*,
_class"
 loc:@conv2d_transpose_2/kernel*'
_output_shapes
:@?*
T0
?
conv2d_transpose_2/kernelVarHandleOp**
shared_nameconv2d_transpose_2/kernel*,
_class"
 loc:@conv2d_transpose_2/kernel*
dtype0*
_output_shapes
: *
shape:@?
?
:conv2d_transpose_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose_2/kernel*
_output_shapes
: 
?
 conv2d_transpose_2/kernel/AssignAssignVariableOpconv2d_transpose_2/kernel4conv2d_transpose_2/kernel/Initializer/random_uniform*,
_class"
 loc:@conv2d_transpose_2/kernel*
dtype0
?
-conv2d_transpose_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_2/kernel*,
_class"
 loc:@conv2d_transpose_2/kernel*
dtype0*'
_output_shapes
:@?
?
)conv2d_transpose_2/bias/Initializer/zerosConst*
valueB@*    **
_class 
loc:@conv2d_transpose_2/bias*
dtype0*
_output_shapes
:@
?
conv2d_transpose_2/biasVarHandleOp*
dtype0*
_output_shapes
: *
shape:@*(
shared_nameconv2d_transpose_2/bias**
_class 
loc:@conv2d_transpose_2/bias

8conv2d_transpose_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose_2/bias*
_output_shapes
: 
?
conv2d_transpose_2/bias/AssignAssignVariableOpconv2d_transpose_2/bias)conv2d_transpose_2/bias/Initializer/zeros**
_class 
loc:@conv2d_transpose_2/bias*
dtype0
?
+conv2d_transpose_2/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_2/bias**
_class 
loc:@conv2d_transpose_2/bias*
dtype0*
_output_shapes
:@
\
conv2d_transpose_2/ShapeShapeconcatenate_1/concat*
T0*
_output_shapes
:
p
&conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
r
(conv2d_transpose_2/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
r
(conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
?
 conv2d_transpose_2/strided_sliceStridedSliceconv2d_transpose_2/Shape&conv2d_transpose_2/strided_slice/stack(conv2d_transpose_2/strided_slice/stack_1(conv2d_transpose_2/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
r
(conv2d_transpose_2/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_2/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_2/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
"conv2d_transpose_2/strided_slice_1StridedSliceconv2d_transpose_2/Shape(conv2d_transpose_2/strided_slice_1/stack*conv2d_transpose_2/strided_slice_1/stack_1*conv2d_transpose_2/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
r
(conv2d_transpose_2/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_2/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_2/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
"conv2d_transpose_2/strided_slice_2StridedSliceconv2d_transpose_2/Shape(conv2d_transpose_2/strided_slice_2/stack*conv2d_transpose_2/strided_slice_2/stack_1*conv2d_transpose_2/strided_slice_2/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
Z
conv2d_transpose_2/mul/yConst*
value	B :*
dtype0*
_output_shapes
: 
|
conv2d_transpose_2/mulMul"conv2d_transpose_2/strided_slice_1conv2d_transpose_2/mul/y*
T0*
_output_shapes
: 
\
conv2d_transpose_2/mul_1/yConst*
dtype0*
_output_shapes
: *
value	B :
?
conv2d_transpose_2/mul_1Mul"conv2d_transpose_2/strided_slice_2conv2d_transpose_2/mul_1/y*
T0*
_output_shapes
: 
\
conv2d_transpose_2/stack/3Const*
value	B :@*
dtype0*
_output_shapes
: 
?
conv2d_transpose_2/stackPack conv2d_transpose_2/strided_sliceconv2d_transpose_2/mulconv2d_transpose_2/mul_1conv2d_transpose_2/stack/3*
T0*
N*
_output_shapes
:
r
(conv2d_transpose_2/strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:
t
*conv2d_transpose_2/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_2/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
"conv2d_transpose_2/strided_slice_3StridedSliceconv2d_transpose_2/stack(conv2d_transpose_2/strided_slice_3/stack*conv2d_transpose_2/strided_slice_3/stack_1*conv2d_transpose_2/strided_slice_3/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
?
2conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpconv2d_transpose_2/kernel*'
_output_shapes
:@?*
dtype0
?
#conv2d_transpose_2/conv2d_transposeConv2DBackpropInputconv2d_transpose_2/stack2conv2d_transpose_2/conv2d_transpose/ReadVariableOpconcatenate_1/concat*0
_output_shapes
:?????????@?@*
paddingSAME*
T0*
strides

}
)conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOpconv2d_transpose_2/bias*
dtype0*
_output_shapes
:@
?
conv2d_transpose_2/BiasAddBiasAdd#conv2d_transpose_2/conv2d_transpose)conv2d_transpose_2/BiasAdd/ReadVariableOp*
T0*0
_output_shapes
:?????????@?@
k
re_lu_2/ReluReluconv2d_transpose_2/BiasAdd*0
_output_shapes
:?????????@?@*
T0
?
,batch_normalization_8/gamma/Initializer/onesConst*
valueB@*  ??*.
_class$
" loc:@batch_normalization_8/gamma*
dtype0*
_output_shapes
:@
?
batch_normalization_8/gammaVarHandleOp*,
shared_namebatch_normalization_8/gamma*.
_class$
" loc:@batch_normalization_8/gamma*
dtype0*
_output_shapes
: *
shape:@
?
<batch_normalization_8/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_8/gamma*
_output_shapes
: 
?
"batch_normalization_8/gamma/AssignAssignVariableOpbatch_normalization_8/gamma,batch_normalization_8/gamma/Initializer/ones*.
_class$
" loc:@batch_normalization_8/gamma*
dtype0
?
/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_8/gamma*.
_class$
" loc:@batch_normalization_8/gamma*
dtype0*
_output_shapes
:@
?
,batch_normalization_8/beta/Initializer/zerosConst*
valueB@*    *-
_class#
!loc:@batch_normalization_8/beta*
dtype0*
_output_shapes
:@
?
batch_normalization_8/betaVarHandleOp*
_output_shapes
: *
shape:@*+
shared_namebatch_normalization_8/beta*-
_class#
!loc:@batch_normalization_8/beta*
dtype0
?
;batch_normalization_8/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_8/beta*
_output_shapes
: 
?
!batch_normalization_8/beta/AssignAssignVariableOpbatch_normalization_8/beta,batch_normalization_8/beta/Initializer/zeros*-
_class#
!loc:@batch_normalization_8/beta*
dtype0
?
.batch_normalization_8/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_8/beta*-
_class#
!loc:@batch_normalization_8/beta*
dtype0*
_output_shapes
:@
?
3batch_normalization_8/moving_mean/Initializer/zerosConst*
valueB@*    *4
_class*
(&loc:@batch_normalization_8/moving_mean*
dtype0*
_output_shapes
:@
?
!batch_normalization_8/moving_meanVarHandleOp*2
shared_name#!batch_normalization_8/moving_mean*4
_class*
(&loc:@batch_normalization_8/moving_mean*
dtype0*
_output_shapes
: *
shape:@
?
Bbatch_normalization_8/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp!batch_normalization_8/moving_mean*
_output_shapes
: 
?
(batch_normalization_8/moving_mean/AssignAssignVariableOp!batch_normalization_8/moving_mean3batch_normalization_8/moving_mean/Initializer/zeros*4
_class*
(&loc:@batch_normalization_8/moving_mean*
dtype0
?
5batch_normalization_8/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_8/moving_mean*4
_class*
(&loc:@batch_normalization_8/moving_mean*
dtype0*
_output_shapes
:@
?
6batch_normalization_8/moving_variance/Initializer/onesConst*
_output_shapes
:@*
valueB@*  ??*8
_class.
,*loc:@batch_normalization_8/moving_variance*
dtype0
?
%batch_normalization_8/moving_varianceVarHandleOp*
dtype0*
_output_shapes
: *
shape:@*6
shared_name'%batch_normalization_8/moving_variance*8
_class.
,*loc:@batch_normalization_8/moving_variance
?
Fbatch_normalization_8/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp%batch_normalization_8/moving_variance*
_output_shapes
: 
?
,batch_normalization_8/moving_variance/AssignAssignVariableOp%batch_normalization_8/moving_variance6batch_normalization_8/moving_variance/Initializer/ones*
dtype0*8
_class.
,*loc:@batch_normalization_8/moving_variance
?
9batch_normalization_8/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_8/moving_variance*8
_class.
,*loc:@batch_normalization_8/moving_variance*
dtype0*
_output_shapes
:@
z
!batch_normalization_8/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

u
#batch_normalization_8/cond/switch_tIdentity#batch_normalization_8/cond/Switch:1*
_output_shapes
: *
T0

s
#batch_normalization_8/cond/switch_fIdentity!batch_normalization_8/cond/Switch*
_output_shapes
: *
T0

e
"batch_normalization_8/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
)batch_normalization_8/cond/ReadVariableOpReadVariableOp2batch_normalization_8/cond/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:@
?
0batch_normalization_8/cond/ReadVariableOp/SwitchSwitchbatch_normalization_8/gamma"batch_normalization_8/cond/pred_id*
_output_shapes
: : *
T0*.
_class$
" loc:@batch_normalization_8/gamma
?
+batch_normalization_8/cond/ReadVariableOp_1ReadVariableOp4batch_normalization_8/cond/ReadVariableOp_1/Switch:1*
_output_shapes
:@*
dtype0
?
2batch_normalization_8/cond/ReadVariableOp_1/SwitchSwitchbatch_normalization_8/beta"batch_normalization_8/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_8/beta*
_output_shapes
: : 
?
 batch_normalization_8/cond/ConstConst$^batch_normalization_8/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
"batch_normalization_8/cond/Const_1Const$^batch_normalization_8/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
)batch_normalization_8/cond/FusedBatchNormFusedBatchNorm2batch_normalization_8/cond/FusedBatchNorm/Switch:1)batch_normalization_8/cond/ReadVariableOp+batch_normalization_8/cond/ReadVariableOp_1 batch_normalization_8/cond/Const"batch_normalization_8/cond/Const_1*H
_output_shapes6
4:?????????@?@:@:@:@:@*
epsilon%o?:*
T0
?
0batch_normalization_8/cond/FusedBatchNorm/SwitchSwitchre_lu_2/Relu"batch_normalization_8/cond/pred_id*
_class
loc:@re_lu_2/Relu*L
_output_shapes:
8:?????????@?@:?????????@?@*
T0
?
+batch_normalization_8/cond/ReadVariableOp_2ReadVariableOp2batch_normalization_8/cond/ReadVariableOp_2/Switch*
dtype0*
_output_shapes
:@
?
2batch_normalization_8/cond/ReadVariableOp_2/SwitchSwitchbatch_normalization_8/gamma"batch_normalization_8/cond/pred_id*
_output_shapes
: : *
T0*.
_class$
" loc:@batch_normalization_8/gamma
?
+batch_normalization_8/cond/ReadVariableOp_3ReadVariableOp2batch_normalization_8/cond/ReadVariableOp_3/Switch*
dtype0*
_output_shapes
:@
?
2batch_normalization_8/cond/ReadVariableOp_3/SwitchSwitchbatch_normalization_8/beta"batch_normalization_8/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_8/beta*
_output_shapes
: : 
?
:batch_normalization_8/cond/FusedBatchNorm_1/ReadVariableOpReadVariableOpAbatch_normalization_8/cond/FusedBatchNorm_1/ReadVariableOp/Switch*
dtype0*
_output_shapes
:@
?
Abatch_normalization_8/cond/FusedBatchNorm_1/ReadVariableOp/SwitchSwitch!batch_normalization_8/moving_mean"batch_normalization_8/cond/pred_id*
T0*4
_class*
(&loc:@batch_normalization_8/moving_mean*
_output_shapes
: : 
?
<batch_normalization_8/cond/FusedBatchNorm_1/ReadVariableOp_1ReadVariableOpCbatch_normalization_8/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch*
_output_shapes
:@*
dtype0
?
Cbatch_normalization_8/cond/FusedBatchNorm_1/ReadVariableOp_1/SwitchSwitch%batch_normalization_8/moving_variance"batch_normalization_8/cond/pred_id*
_output_shapes
: : *
T0*8
_class.
,*loc:@batch_normalization_8/moving_variance
?
+batch_normalization_8/cond/FusedBatchNorm_1FusedBatchNorm2batch_normalization_8/cond/FusedBatchNorm_1/Switch+batch_normalization_8/cond/ReadVariableOp_2+batch_normalization_8/cond/ReadVariableOp_3:batch_normalization_8/cond/FusedBatchNorm_1/ReadVariableOp<batch_normalization_8/cond/FusedBatchNorm_1/ReadVariableOp_1*H
_output_shapes6
4:?????????@?@:@:@:@:@*
is_training( *
epsilon%o?:*
T0
?
2batch_normalization_8/cond/FusedBatchNorm_1/SwitchSwitchre_lu_2/Relu"batch_normalization_8/cond/pred_id*
T0*
_class
loc:@re_lu_2/Relu*L
_output_shapes:
8:?????????@?@:?????????@?@
?
 batch_normalization_8/cond/MergeMerge+batch_normalization_8/cond/FusedBatchNorm_1)batch_normalization_8/cond/FusedBatchNorm*
N*2
_output_shapes 
:?????????@?@: *
T0
?
"batch_normalization_8/cond/Merge_1Merge-batch_normalization_8/cond/FusedBatchNorm_1:1+batch_normalization_8/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes

:@: 
?
"batch_normalization_8/cond/Merge_2Merge-batch_normalization_8/cond/FusedBatchNorm_1:2+batch_normalization_8/cond/FusedBatchNorm:2*
N*
_output_shapes

:@: *
T0
|
#batch_normalization_8/cond_1/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

y
%batch_normalization_8/cond_1/switch_tIdentity%batch_normalization_8/cond_1/Switch:1*
_output_shapes
: *
T0

w
%batch_normalization_8/cond_1/switch_fIdentity#batch_normalization_8/cond_1/Switch*
_output_shapes
: *
T0

g
$batch_normalization_8/cond_1/pred_idIdentitykeras_learning_phase*
_output_shapes
: *
T0

?
"batch_normalization_8/cond_1/ConstConst&^batch_normalization_8/cond_1/switch_t*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
$batch_normalization_8/cond_1/Const_1Const&^batch_normalization_8/cond_1/switch_f*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
"batch_normalization_8/cond_1/MergeMerge$batch_normalization_8/cond_1/Const_1"batch_normalization_8/cond_1/Const*
T0*
N*
_output_shapes
: : 
?
+batch_normalization_8/AssignMovingAvg/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ??*4
_class*
(&loc:@batch_normalization_8/moving_mean
?
)batch_normalization_8/AssignMovingAvg/subSub+batch_normalization_8/AssignMovingAvg/sub/x"batch_normalization_8/cond_1/Merge*
T0*4
_class*
(&loc:@batch_normalization_8/moving_mean*
_output_shapes
: 
?
4batch_normalization_8/AssignMovingAvg/ReadVariableOpReadVariableOp!batch_normalization_8/moving_mean*
dtype0*
_output_shapes
:@
?
+batch_normalization_8/AssignMovingAvg/sub_1Sub4batch_normalization_8/AssignMovingAvg/ReadVariableOp"batch_normalization_8/cond/Merge_1*
T0*4
_class*
(&loc:@batch_normalization_8/moving_mean*
_output_shapes
:@
?
)batch_normalization_8/AssignMovingAvg/mulMul+batch_normalization_8/AssignMovingAvg/sub_1)batch_normalization_8/AssignMovingAvg/sub*
_output_shapes
:@*
T0*4
_class*
(&loc:@batch_normalization_8/moving_mean
?
9batch_normalization_8/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp!batch_normalization_8/moving_mean)batch_normalization_8/AssignMovingAvg/mul*
dtype0*4
_class*
(&loc:@batch_normalization_8/moving_mean
?
6batch_normalization_8/AssignMovingAvg/ReadVariableOp_1ReadVariableOp!batch_normalization_8/moving_mean:^batch_normalization_8/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@*4
_class*
(&loc:@batch_normalization_8/moving_mean
?
-batch_normalization_8/AssignMovingAvg_1/sub/xConst*
valueB
 *  ??*8
_class.
,*loc:@batch_normalization_8/moving_variance*
dtype0*
_output_shapes
: 
?
+batch_normalization_8/AssignMovingAvg_1/subSub-batch_normalization_8/AssignMovingAvg_1/sub/x"batch_normalization_8/cond_1/Merge*
_output_shapes
: *
T0*8
_class.
,*loc:@batch_normalization_8/moving_variance
?
6batch_normalization_8/AssignMovingAvg_1/ReadVariableOpReadVariableOp%batch_normalization_8/moving_variance*
dtype0*
_output_shapes
:@
?
-batch_normalization_8/AssignMovingAvg_1/sub_1Sub6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp"batch_normalization_8/cond/Merge_2*
T0*8
_class.
,*loc:@batch_normalization_8/moving_variance*
_output_shapes
:@
?
+batch_normalization_8/AssignMovingAvg_1/mulMul-batch_normalization_8/AssignMovingAvg_1/sub_1+batch_normalization_8/AssignMovingAvg_1/sub*
T0*8
_class.
,*loc:@batch_normalization_8/moving_variance*
_output_shapes
:@
?
;batch_normalization_8/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp%batch_normalization_8/moving_variance+batch_normalization_8/AssignMovingAvg_1/mul*8
_class.
,*loc:@batch_normalization_8/moving_variance*
dtype0
?
8batch_normalization_8/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp%batch_normalization_8/moving_variance<^batch_normalization_8/AssignMovingAvg_1/AssignSubVariableOp*8
_class.
,*loc:@batch_normalization_8/moving_variance*
dtype0*
_output_shapes
:@
n
dropout_2/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_2/cond/switch_tIdentitydropout_2/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_2/cond/switch_fIdentitydropout_2/cond/Switch*
T0
*
_output_shapes
: 
Y
dropout_2/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
z
dropout_2/cond/dropout/rateConst^dropout_2/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
q
dropout_2/cond/dropout/ShapeShape%dropout_2/cond/dropout/Shape/Switch:1*
T0*
_output_shapes
:
?
#dropout_2/cond/dropout/Shape/SwitchSwitch batch_normalization_8/cond/Mergedropout_2/cond/pred_id*
T0*3
_class)
'%loc:@batch_normalization_8/cond/Merge*L
_output_shapes:
8:?????????@?@:?????????@?@
?
)dropout_2/cond/dropout/random_uniform/minConst^dropout_2/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
?
)dropout_2/cond/dropout/random_uniform/maxConst^dropout_2/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
3dropout_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2/cond/dropout/Shape*
T0*
dtype0*0
_output_shapes
:?????????@?@
?
)dropout_2/cond/dropout/random_uniform/subSub)dropout_2/cond/dropout/random_uniform/max)dropout_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
?
)dropout_2/cond/dropout/random_uniform/mulMul3dropout_2/cond/dropout/random_uniform/RandomUniform)dropout_2/cond/dropout/random_uniform/sub*
T0*0
_output_shapes
:?????????@?@
?
%dropout_2/cond/dropout/random_uniformAdd)dropout_2/cond/dropout/random_uniform/mul)dropout_2/cond/dropout/random_uniform/min*0
_output_shapes
:?????????@?@*
T0
{
dropout_2/cond/dropout/sub/xConst^dropout_2/cond/switch_t*
valueB
 *  ??*
dtype0*
_output_shapes
: 
}
dropout_2/cond/dropout/subSubdropout_2/cond/dropout/sub/xdropout_2/cond/dropout/rate*
T0*
_output_shapes
: 

 dropout_2/cond/dropout/truediv/xConst^dropout_2/cond/switch_t*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
dropout_2/cond/dropout/truedivRealDiv dropout_2/cond/dropout/truediv/xdropout_2/cond/dropout/sub*
T0*
_output_shapes
: 
?
#dropout_2/cond/dropout/GreaterEqualGreaterEqual%dropout_2/cond/dropout/random_uniformdropout_2/cond/dropout/rate*
T0*0
_output_shapes
:?????????@?@
?
dropout_2/cond/dropout/mulMul%dropout_2/cond/dropout/Shape/Switch:1dropout_2/cond/dropout/truediv*
T0*0
_output_shapes
:?????????@?@
?
dropout_2/cond/dropout/CastCast#dropout_2/cond/dropout/GreaterEqual*

SrcT0
*0
_output_shapes
:?????????@?@*

DstT0
?
dropout_2/cond/dropout/mul_1Muldropout_2/cond/dropout/muldropout_2/cond/dropout/Cast*
T0*0
_output_shapes
:?????????@?@
~
dropout_2/cond/IdentityIdentitydropout_2/cond/Identity/Switch*0
_output_shapes
:?????????@?@*
T0
?
dropout_2/cond/Identity/SwitchSwitch batch_normalization_8/cond/Mergedropout_2/cond/pred_id*L
_output_shapes:
8:?????????@?@:?????????@?@*
T0*3
_class)
'%loc:@batch_normalization_8/cond/Merge
?
dropout_2/cond/MergeMergedropout_2/cond/Identitydropout_2/cond/dropout/mul_1*
T0*
N*2
_output_shapes 
:?????????@?@: 
[
concatenate_2/concat/axisConst*
_output_shapes
: *
value	B :*
dtype0
?
concatenate_2/concatConcatV2conv2d_2/BiasAdddropout_2/cond/Mergeconcatenate_2/concat/axis*
T0*
N*1
_output_shapes
:?????????@??
?
:conv2d_transpose_3/kernel/Initializer/random_uniform/shapeConst*%
valueB"          ?   *,
_class"
 loc:@conv2d_transpose_3/kernel*
dtype0*
_output_shapes
:
?
8conv2d_transpose_3/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *?\??*,
_class"
 loc:@conv2d_transpose_3/kernel*
dtype0
?
8conv2d_transpose_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *?\?=*,
_class"
 loc:@conv2d_transpose_3/kernel*
dtype0*
_output_shapes
: 
?
Bconv2d_transpose_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform:conv2d_transpose_3/kernel/Initializer/random_uniform/shape*
dtype0*'
_output_shapes
: ?*
seed???)*
T0*,
_class"
 loc:@conv2d_transpose_3/kernel*
seed22
?
8conv2d_transpose_3/kernel/Initializer/random_uniform/subSub8conv2d_transpose_3/kernel/Initializer/random_uniform/max8conv2d_transpose_3/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@conv2d_transpose_3/kernel*
_output_shapes
: 
?
8conv2d_transpose_3/kernel/Initializer/random_uniform/mulMulBconv2d_transpose_3/kernel/Initializer/random_uniform/RandomUniform8conv2d_transpose_3/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@conv2d_transpose_3/kernel*'
_output_shapes
: ?
?
4conv2d_transpose_3/kernel/Initializer/random_uniformAdd8conv2d_transpose_3/kernel/Initializer/random_uniform/mul8conv2d_transpose_3/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@conv2d_transpose_3/kernel*'
_output_shapes
: ?
?
conv2d_transpose_3/kernelVarHandleOp*
_output_shapes
: *
shape: ?**
shared_nameconv2d_transpose_3/kernel*,
_class"
 loc:@conv2d_transpose_3/kernel*
dtype0
?
:conv2d_transpose_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose_3/kernel*
_output_shapes
: 
?
 conv2d_transpose_3/kernel/AssignAssignVariableOpconv2d_transpose_3/kernel4conv2d_transpose_3/kernel/Initializer/random_uniform*,
_class"
 loc:@conv2d_transpose_3/kernel*
dtype0
?
-conv2d_transpose_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_3/kernel*,
_class"
 loc:@conv2d_transpose_3/kernel*
dtype0*'
_output_shapes
: ?
?
)conv2d_transpose_3/bias/Initializer/zerosConst*
_output_shapes
: *
valueB *    **
_class 
loc:@conv2d_transpose_3/bias*
dtype0
?
conv2d_transpose_3/biasVarHandleOp*(
shared_nameconv2d_transpose_3/bias**
_class 
loc:@conv2d_transpose_3/bias*
dtype0*
_output_shapes
: *
shape: 

8conv2d_transpose_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose_3/bias*
_output_shapes
: 
?
conv2d_transpose_3/bias/AssignAssignVariableOpconv2d_transpose_3/bias)conv2d_transpose_3/bias/Initializer/zeros**
_class 
loc:@conv2d_transpose_3/bias*
dtype0
?
+conv2d_transpose_3/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_3/bias**
_class 
loc:@conv2d_transpose_3/bias*
dtype0*
_output_shapes
: 
\
conv2d_transpose_3/ShapeShapeconcatenate_2/concat*
T0*
_output_shapes
:
p
&conv2d_transpose_3/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
r
(conv2d_transpose_3/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
r
(conv2d_transpose_3/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
 conv2d_transpose_3/strided_sliceStridedSliceconv2d_transpose_3/Shape&conv2d_transpose_3/strided_slice/stack(conv2d_transpose_3/strided_slice/stack_1(conv2d_transpose_3/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
r
(conv2d_transpose_3/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_3/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_3/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
"conv2d_transpose_3/strided_slice_1StridedSliceconv2d_transpose_3/Shape(conv2d_transpose_3/strided_slice_1/stack*conv2d_transpose_3/strided_slice_1/stack_1*conv2d_transpose_3/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
r
(conv2d_transpose_3/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_3/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_3/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
"conv2d_transpose_3/strided_slice_2StridedSliceconv2d_transpose_3/Shape(conv2d_transpose_3/strided_slice_2/stack*conv2d_transpose_3/strided_slice_2/stack_1*conv2d_transpose_3/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Z
conv2d_transpose_3/mul/yConst*
value	B :*
dtype0*
_output_shapes
: 
|
conv2d_transpose_3/mulMul"conv2d_transpose_3/strided_slice_1conv2d_transpose_3/mul/y*
_output_shapes
: *
T0
\
conv2d_transpose_3/mul_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
conv2d_transpose_3/mul_1Mul"conv2d_transpose_3/strided_slice_2conv2d_transpose_3/mul_1/y*
_output_shapes
: *
T0
\
conv2d_transpose_3/stack/3Const*
value	B : *
dtype0*
_output_shapes
: 
?
conv2d_transpose_3/stackPack conv2d_transpose_3/strided_sliceconv2d_transpose_3/mulconv2d_transpose_3/mul_1conv2d_transpose_3/stack/3*
T0*
N*
_output_shapes
:
r
(conv2d_transpose_3/strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:
t
*conv2d_transpose_3/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_3/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
"conv2d_transpose_3/strided_slice_3StridedSliceconv2d_transpose_3/stack(conv2d_transpose_3/strided_slice_3/stack*conv2d_transpose_3/strided_slice_3/stack_1*conv2d_transpose_3/strided_slice_3/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
?
2conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpconv2d_transpose_3/kernel*
dtype0*'
_output_shapes
: ?
?
#conv2d_transpose_3/conv2d_transposeConv2DBackpropInputconv2d_transpose_3/stack2conv2d_transpose_3/conv2d_transpose/ReadVariableOpconcatenate_2/concat*
paddingSAME*
T0*
strides
*1
_output_shapes
:??????????? 
}
)conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOpconv2d_transpose_3/bias*
dtype0*
_output_shapes
: 
?
conv2d_transpose_3/BiasAddBiasAdd#conv2d_transpose_3/conv2d_transpose)conv2d_transpose_3/BiasAdd/ReadVariableOp*
T0*1
_output_shapes
:??????????? 
l
re_lu_3/ReluReluconv2d_transpose_3/BiasAdd*1
_output_shapes
:??????????? *
T0
?
,batch_normalization_9/gamma/Initializer/onesConst*
valueB *  ??*.
_class$
" loc:@batch_normalization_9/gamma*
dtype0*
_output_shapes
: 
?
batch_normalization_9/gammaVarHandleOp*
shape: *,
shared_namebatch_normalization_9/gamma*.
_class$
" loc:@batch_normalization_9/gamma*
dtype0*
_output_shapes
: 
?
<batch_normalization_9/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_9/gamma*
_output_shapes
: 
?
"batch_normalization_9/gamma/AssignAssignVariableOpbatch_normalization_9/gamma,batch_normalization_9/gamma/Initializer/ones*.
_class$
" loc:@batch_normalization_9/gamma*
dtype0
?
/batch_normalization_9/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_9/gamma*.
_class$
" loc:@batch_normalization_9/gamma*
dtype0*
_output_shapes
: 
?
,batch_normalization_9/beta/Initializer/zerosConst*
valueB *    *-
_class#
!loc:@batch_normalization_9/beta*
dtype0*
_output_shapes
: 
?
batch_normalization_9/betaVarHandleOp*
shape: *+
shared_namebatch_normalization_9/beta*-
_class#
!loc:@batch_normalization_9/beta*
dtype0*
_output_shapes
: 
?
;batch_normalization_9/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_9/beta*
_output_shapes
: 
?
!batch_normalization_9/beta/AssignAssignVariableOpbatch_normalization_9/beta,batch_normalization_9/beta/Initializer/zeros*-
_class#
!loc:@batch_normalization_9/beta*
dtype0
?
.batch_normalization_9/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_9/beta*-
_class#
!loc:@batch_normalization_9/beta*
dtype0*
_output_shapes
: 
?
3batch_normalization_9/moving_mean/Initializer/zerosConst*
valueB *    *4
_class*
(&loc:@batch_normalization_9/moving_mean*
dtype0*
_output_shapes
: 
?
!batch_normalization_9/moving_meanVarHandleOp*
dtype0*
_output_shapes
: *
shape: *2
shared_name#!batch_normalization_9/moving_mean*4
_class*
(&loc:@batch_normalization_9/moving_mean
?
Bbatch_normalization_9/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp!batch_normalization_9/moving_mean*
_output_shapes
: 
?
(batch_normalization_9/moving_mean/AssignAssignVariableOp!batch_normalization_9/moving_mean3batch_normalization_9/moving_mean/Initializer/zeros*4
_class*
(&loc:@batch_normalization_9/moving_mean*
dtype0
?
5batch_normalization_9/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_9/moving_mean*
_output_shapes
: *4
_class*
(&loc:@batch_normalization_9/moving_mean*
dtype0
?
6batch_normalization_9/moving_variance/Initializer/onesConst*
valueB *  ??*8
_class.
,*loc:@batch_normalization_9/moving_variance*
dtype0*
_output_shapes
: 
?
%batch_normalization_9/moving_varianceVarHandleOp*
shape: *6
shared_name'%batch_normalization_9/moving_variance*8
_class.
,*loc:@batch_normalization_9/moving_variance*
dtype0*
_output_shapes
: 
?
Fbatch_normalization_9/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp%batch_normalization_9/moving_variance*
_output_shapes
: 
?
,batch_normalization_9/moving_variance/AssignAssignVariableOp%batch_normalization_9/moving_variance6batch_normalization_9/moving_variance/Initializer/ones*
dtype0*8
_class.
,*loc:@batch_normalization_9/moving_variance
?
9batch_normalization_9/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_9/moving_variance*8
_class.
,*loc:@batch_normalization_9/moving_variance*
dtype0*
_output_shapes
: 
z
!batch_normalization_9/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
u
#batch_normalization_9/cond/switch_tIdentity#batch_normalization_9/cond/Switch:1*
T0
*
_output_shapes
: 
s
#batch_normalization_9/cond/switch_fIdentity!batch_normalization_9/cond/Switch*
_output_shapes
: *
T0

e
"batch_normalization_9/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
)batch_normalization_9/cond/ReadVariableOpReadVariableOp2batch_normalization_9/cond/ReadVariableOp/Switch:1*
_output_shapes
: *
dtype0
?
0batch_normalization_9/cond/ReadVariableOp/SwitchSwitchbatch_normalization_9/gamma"batch_normalization_9/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_9/gamma*
_output_shapes
: : 
?
+batch_normalization_9/cond/ReadVariableOp_1ReadVariableOp4batch_normalization_9/cond/ReadVariableOp_1/Switch:1*
dtype0*
_output_shapes
: 
?
2batch_normalization_9/cond/ReadVariableOp_1/SwitchSwitchbatch_normalization_9/beta"batch_normalization_9/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_9/beta*
_output_shapes
: : 
?
 batch_normalization_9/cond/ConstConst$^batch_normalization_9/cond/switch_t*
_output_shapes
: *
valueB *
dtype0
?
"batch_normalization_9/cond/Const_1Const$^batch_normalization_9/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
)batch_normalization_9/cond/FusedBatchNormFusedBatchNorm2batch_normalization_9/cond/FusedBatchNorm/Switch:1)batch_normalization_9/cond/ReadVariableOp+batch_normalization_9/cond/ReadVariableOp_1 batch_normalization_9/cond/Const"batch_normalization_9/cond/Const_1*I
_output_shapes7
5:??????????? : : : : *
epsilon%o?:*
T0
?
0batch_normalization_9/cond/FusedBatchNorm/SwitchSwitchre_lu_3/Relu"batch_normalization_9/cond/pred_id*
T0*
_class
loc:@re_lu_3/Relu*N
_output_shapes<
::??????????? :??????????? 
?
+batch_normalization_9/cond/ReadVariableOp_2ReadVariableOp2batch_normalization_9/cond/ReadVariableOp_2/Switch*
dtype0*
_output_shapes
: 
?
2batch_normalization_9/cond/ReadVariableOp_2/SwitchSwitchbatch_normalization_9/gamma"batch_normalization_9/cond/pred_id*
_output_shapes
: : *
T0*.
_class$
" loc:@batch_normalization_9/gamma
?
+batch_normalization_9/cond/ReadVariableOp_3ReadVariableOp2batch_normalization_9/cond/ReadVariableOp_3/Switch*
dtype0*
_output_shapes
: 
?
2batch_normalization_9/cond/ReadVariableOp_3/SwitchSwitchbatch_normalization_9/beta"batch_normalization_9/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_9/beta*
_output_shapes
: : 
?
:batch_normalization_9/cond/FusedBatchNorm_1/ReadVariableOpReadVariableOpAbatch_normalization_9/cond/FusedBatchNorm_1/ReadVariableOp/Switch*
dtype0*
_output_shapes
: 
?
Abatch_normalization_9/cond/FusedBatchNorm_1/ReadVariableOp/SwitchSwitch!batch_normalization_9/moving_mean"batch_normalization_9/cond/pred_id*
T0*4
_class*
(&loc:@batch_normalization_9/moving_mean*
_output_shapes
: : 
?
<batch_normalization_9/cond/FusedBatchNorm_1/ReadVariableOp_1ReadVariableOpCbatch_normalization_9/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
: 
?
Cbatch_normalization_9/cond/FusedBatchNorm_1/ReadVariableOp_1/SwitchSwitch%batch_normalization_9/moving_variance"batch_normalization_9/cond/pred_id*
_output_shapes
: : *
T0*8
_class.
,*loc:@batch_normalization_9/moving_variance
?
+batch_normalization_9/cond/FusedBatchNorm_1FusedBatchNorm2batch_normalization_9/cond/FusedBatchNorm_1/Switch+batch_normalization_9/cond/ReadVariableOp_2+batch_normalization_9/cond/ReadVariableOp_3:batch_normalization_9/cond/FusedBatchNorm_1/ReadVariableOp<batch_normalization_9/cond/FusedBatchNorm_1/ReadVariableOp_1*I
_output_shapes7
5:??????????? : : : : *
is_training( *
epsilon%o?:*
T0
?
2batch_normalization_9/cond/FusedBatchNorm_1/SwitchSwitchre_lu_3/Relu"batch_normalization_9/cond/pred_id*
T0*
_class
loc:@re_lu_3/Relu*N
_output_shapes<
::??????????? :??????????? 
?
 batch_normalization_9/cond/MergeMerge+batch_normalization_9/cond/FusedBatchNorm_1)batch_normalization_9/cond/FusedBatchNorm*
T0*
N*3
_output_shapes!
:??????????? : 
?
"batch_normalization_9/cond/Merge_1Merge-batch_normalization_9/cond/FusedBatchNorm_1:1+batch_normalization_9/cond/FusedBatchNorm:1*
N*
_output_shapes

: : *
T0
?
"batch_normalization_9/cond/Merge_2Merge-batch_normalization_9/cond/FusedBatchNorm_1:2+batch_normalization_9/cond/FusedBatchNorm:2*
_output_shapes

: : *
T0*
N
|
#batch_normalization_9/cond_1/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

y
%batch_normalization_9/cond_1/switch_tIdentity%batch_normalization_9/cond_1/Switch:1*
T0
*
_output_shapes
: 
w
%batch_normalization_9/cond_1/switch_fIdentity#batch_normalization_9/cond_1/Switch*
T0
*
_output_shapes
: 
g
$batch_normalization_9/cond_1/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
"batch_normalization_9/cond_1/ConstConst&^batch_normalization_9/cond_1/switch_t*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
$batch_normalization_9/cond_1/Const_1Const&^batch_normalization_9/cond_1/switch_f*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
"batch_normalization_9/cond_1/MergeMerge$batch_normalization_9/cond_1/Const_1"batch_normalization_9/cond_1/Const*
N*
_output_shapes
: : *
T0
?
+batch_normalization_9/AssignMovingAvg/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ??*4
_class*
(&loc:@batch_normalization_9/moving_mean
?
)batch_normalization_9/AssignMovingAvg/subSub+batch_normalization_9/AssignMovingAvg/sub/x"batch_normalization_9/cond_1/Merge*
_output_shapes
: *
T0*4
_class*
(&loc:@batch_normalization_9/moving_mean
?
4batch_normalization_9/AssignMovingAvg/ReadVariableOpReadVariableOp!batch_normalization_9/moving_mean*
dtype0*
_output_shapes
: 
?
+batch_normalization_9/AssignMovingAvg/sub_1Sub4batch_normalization_9/AssignMovingAvg/ReadVariableOp"batch_normalization_9/cond/Merge_1*
T0*4
_class*
(&loc:@batch_normalization_9/moving_mean*
_output_shapes
: 
?
)batch_normalization_9/AssignMovingAvg/mulMul+batch_normalization_9/AssignMovingAvg/sub_1)batch_normalization_9/AssignMovingAvg/sub*
_output_shapes
: *
T0*4
_class*
(&loc:@batch_normalization_9/moving_mean
?
9batch_normalization_9/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp!batch_normalization_9/moving_mean)batch_normalization_9/AssignMovingAvg/mul*4
_class*
(&loc:@batch_normalization_9/moving_mean*
dtype0
?
6batch_normalization_9/AssignMovingAvg/ReadVariableOp_1ReadVariableOp!batch_normalization_9/moving_mean:^batch_normalization_9/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
: *4
_class*
(&loc:@batch_normalization_9/moving_mean
?
-batch_normalization_9/AssignMovingAvg_1/sub/xConst*
valueB
 *  ??*8
_class.
,*loc:@batch_normalization_9/moving_variance*
dtype0*
_output_shapes
: 
?
+batch_normalization_9/AssignMovingAvg_1/subSub-batch_normalization_9/AssignMovingAvg_1/sub/x"batch_normalization_9/cond_1/Merge*
_output_shapes
: *
T0*8
_class.
,*loc:@batch_normalization_9/moving_variance
?
6batch_normalization_9/AssignMovingAvg_1/ReadVariableOpReadVariableOp%batch_normalization_9/moving_variance*
dtype0*
_output_shapes
: 
?
-batch_normalization_9/AssignMovingAvg_1/sub_1Sub6batch_normalization_9/AssignMovingAvg_1/ReadVariableOp"batch_normalization_9/cond/Merge_2*
T0*8
_class.
,*loc:@batch_normalization_9/moving_variance*
_output_shapes
: 
?
+batch_normalization_9/AssignMovingAvg_1/mulMul-batch_normalization_9/AssignMovingAvg_1/sub_1+batch_normalization_9/AssignMovingAvg_1/sub*
T0*8
_class.
,*loc:@batch_normalization_9/moving_variance*
_output_shapes
: 
?
;batch_normalization_9/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp%batch_normalization_9/moving_variance+batch_normalization_9/AssignMovingAvg_1/mul*8
_class.
,*loc:@batch_normalization_9/moving_variance*
dtype0
?
8batch_normalization_9/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp%batch_normalization_9/moving_variance<^batch_normalization_9/AssignMovingAvg_1/AssignSubVariableOp*8
_class.
,*loc:@batch_normalization_9/moving_variance*
dtype0*
_output_shapes
: 
[
concatenate_3/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
?
concatenate_3/concatConcatV2conv2d_1/BiasAdd batch_normalization_9/cond/Mergeconcatenate_3/concat/axis*1
_output_shapes
:???????????@*
T0*
N
?
:conv2d_transpose_4/kernel/Initializer/random_uniform/shapeConst*%
valueB"         @   *,
_class"
 loc:@conv2d_transpose_4/kernel*
dtype0*
_output_shapes
:
?
8conv2d_transpose_4/kernel/Initializer/random_uniform/minConst*
valueB
 *????*,
_class"
 loc:@conv2d_transpose_4/kernel*
dtype0*
_output_shapes
: 
?
8conv2d_transpose_4/kernel/Initializer/random_uniform/maxConst*
valueB
 *???=*,
_class"
 loc:@conv2d_transpose_4/kernel*
dtype0*
_output_shapes
: 
?
Bconv2d_transpose_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform:conv2d_transpose_4/kernel/Initializer/random_uniform/shape*
T0*,
_class"
 loc:@conv2d_transpose_4/kernel*
seed22*
dtype0*&
_output_shapes
:@*
seed???)
?
8conv2d_transpose_4/kernel/Initializer/random_uniform/subSub8conv2d_transpose_4/kernel/Initializer/random_uniform/max8conv2d_transpose_4/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@conv2d_transpose_4/kernel*
_output_shapes
: 
?
8conv2d_transpose_4/kernel/Initializer/random_uniform/mulMulBconv2d_transpose_4/kernel/Initializer/random_uniform/RandomUniform8conv2d_transpose_4/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@conv2d_transpose_4/kernel*&
_output_shapes
:@
?
4conv2d_transpose_4/kernel/Initializer/random_uniformAdd8conv2d_transpose_4/kernel/Initializer/random_uniform/mul8conv2d_transpose_4/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@conv2d_transpose_4/kernel*&
_output_shapes
:@
?
conv2d_transpose_4/kernelVarHandleOp*,
_class"
 loc:@conv2d_transpose_4/kernel*
dtype0*
_output_shapes
: *
shape:@**
shared_nameconv2d_transpose_4/kernel
?
:conv2d_transpose_4/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose_4/kernel*
_output_shapes
: 
?
 conv2d_transpose_4/kernel/AssignAssignVariableOpconv2d_transpose_4/kernel4conv2d_transpose_4/kernel/Initializer/random_uniform*,
_class"
 loc:@conv2d_transpose_4/kernel*
dtype0
?
-conv2d_transpose_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_4/kernel*
dtype0*&
_output_shapes
:@*,
_class"
 loc:@conv2d_transpose_4/kernel
?
)conv2d_transpose_4/bias/Initializer/zerosConst*
_output_shapes
:*
valueB*    **
_class 
loc:@conv2d_transpose_4/bias*
dtype0
?
conv2d_transpose_4/biasVarHandleOp*
_output_shapes
: *
shape:*(
shared_nameconv2d_transpose_4/bias**
_class 
loc:@conv2d_transpose_4/bias*
dtype0

8conv2d_transpose_4/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose_4/bias*
_output_shapes
: 
?
conv2d_transpose_4/bias/AssignAssignVariableOpconv2d_transpose_4/bias)conv2d_transpose_4/bias/Initializer/zeros**
_class 
loc:@conv2d_transpose_4/bias*
dtype0
?
+conv2d_transpose_4/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_4/bias**
_class 
loc:@conv2d_transpose_4/bias*
dtype0*
_output_shapes
:
\
conv2d_transpose_4/ShapeShapeconcatenate_3/concat*
_output_shapes
:*
T0
p
&conv2d_transpose_4/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
r
(conv2d_transpose_4/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
r
(conv2d_transpose_4/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
?
 conv2d_transpose_4/strided_sliceStridedSliceconv2d_transpose_4/Shape&conv2d_transpose_4/strided_slice/stack(conv2d_transpose_4/strided_slice/stack_1(conv2d_transpose_4/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
r
(conv2d_transpose_4/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB:
t
*conv2d_transpose_4/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_4/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
"conv2d_transpose_4/strided_slice_1StridedSliceconv2d_transpose_4/Shape(conv2d_transpose_4/strided_slice_1/stack*conv2d_transpose_4/strided_slice_1/stack_1*conv2d_transpose_4/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
r
(conv2d_transpose_4/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_4/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_4/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
"conv2d_transpose_4/strided_slice_2StridedSliceconv2d_transpose_4/Shape(conv2d_transpose_4/strided_slice_2/stack*conv2d_transpose_4/strided_slice_2/stack_1*conv2d_transpose_4/strided_slice_2/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
Z
conv2d_transpose_4/mul/yConst*
dtype0*
_output_shapes
: *
value	B :
|
conv2d_transpose_4/mulMul"conv2d_transpose_4/strided_slice_1conv2d_transpose_4/mul/y*
_output_shapes
: *
T0
\
conv2d_transpose_4/mul_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
conv2d_transpose_4/mul_1Mul"conv2d_transpose_4/strided_slice_2conv2d_transpose_4/mul_1/y*
_output_shapes
: *
T0
\
conv2d_transpose_4/stack/3Const*
dtype0*
_output_shapes
: *
value	B :
?
conv2d_transpose_4/stackPack conv2d_transpose_4/strided_sliceconv2d_transpose_4/mulconv2d_transpose_4/mul_1conv2d_transpose_4/stack/3*
T0*
N*
_output_shapes
:
r
(conv2d_transpose_4/strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:
t
*conv2d_transpose_4/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_4/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
"conv2d_transpose_4/strided_slice_3StridedSliceconv2d_transpose_4/stack(conv2d_transpose_4/strided_slice_3/stack*conv2d_transpose_4/strided_slice_3/stack_1*conv2d_transpose_4/strided_slice_3/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
?
2conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOpconv2d_transpose_4/kernel*
dtype0*&
_output_shapes
:@
?
#conv2d_transpose_4/conv2d_transposeConv2DBackpropInputconv2d_transpose_4/stack2conv2d_transpose_4/conv2d_transpose/ReadVariableOpconcatenate_3/concat*
paddingSAME*
T0*
strides
*1
_output_shapes
:???????????
}
)conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOpconv2d_transpose_4/bias*
dtype0*
_output_shapes
:
?
conv2d_transpose_4/BiasAddBiasAdd#conv2d_transpose_4/conv2d_transpose)conv2d_transpose_4/BiasAdd/ReadVariableOp*
T0*1
_output_shapes
:???????????
l
re_lu_4/ReluReluconv2d_transpose_4/BiasAdd*
T0*1
_output_shapes
:???????????
?
-batch_normalization_10/gamma/Initializer/onesConst*
valueB*  ??*/
_class%
#!loc:@batch_normalization_10/gamma*
dtype0*
_output_shapes
:
?
batch_normalization_10/gammaVarHandleOp*/
_class%
#!loc:@batch_normalization_10/gamma*
dtype0*
_output_shapes
: *
shape:*-
shared_namebatch_normalization_10/gamma
?
=batch_normalization_10/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_10/gamma*
_output_shapes
: 
?
#batch_normalization_10/gamma/AssignAssignVariableOpbatch_normalization_10/gamma-batch_normalization_10/gamma/Initializer/ones*
dtype0*/
_class%
#!loc:@batch_normalization_10/gamma
?
0batch_normalization_10/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_10/gamma*/
_class%
#!loc:@batch_normalization_10/gamma*
dtype0*
_output_shapes
:
?
-batch_normalization_10/beta/Initializer/zerosConst*
valueB*    *.
_class$
" loc:@batch_normalization_10/beta*
dtype0*
_output_shapes
:
?
batch_normalization_10/betaVarHandleOp*.
_class$
" loc:@batch_normalization_10/beta*
dtype0*
_output_shapes
: *
shape:*,
shared_namebatch_normalization_10/beta
?
<batch_normalization_10/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_10/beta*
_output_shapes
: 
?
"batch_normalization_10/beta/AssignAssignVariableOpbatch_normalization_10/beta-batch_normalization_10/beta/Initializer/zeros*.
_class$
" loc:@batch_normalization_10/beta*
dtype0
?
/batch_normalization_10/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_10/beta*.
_class$
" loc:@batch_normalization_10/beta*
dtype0*
_output_shapes
:
?
4batch_normalization_10/moving_mean/Initializer/zerosConst*
valueB*    *5
_class+
)'loc:@batch_normalization_10/moving_mean*
dtype0*
_output_shapes
:
?
"batch_normalization_10/moving_meanVarHandleOp*
shape:*3
shared_name$"batch_normalization_10/moving_mean*5
_class+
)'loc:@batch_normalization_10/moving_mean*
dtype0*
_output_shapes
: 
?
Cbatch_normalization_10/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp"batch_normalization_10/moving_mean*
_output_shapes
: 
?
)batch_normalization_10/moving_mean/AssignAssignVariableOp"batch_normalization_10/moving_mean4batch_normalization_10/moving_mean/Initializer/zeros*5
_class+
)'loc:@batch_normalization_10/moving_mean*
dtype0
?
6batch_normalization_10/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_10/moving_mean*
dtype0*
_output_shapes
:*5
_class+
)'loc:@batch_normalization_10/moving_mean
?
7batch_normalization_10/moving_variance/Initializer/onesConst*
_output_shapes
:*
valueB*  ??*9
_class/
-+loc:@batch_normalization_10/moving_variance*
dtype0
?
&batch_normalization_10/moving_varianceVarHandleOp*
shape:*7
shared_name(&batch_normalization_10/moving_variance*9
_class/
-+loc:@batch_normalization_10/moving_variance*
dtype0*
_output_shapes
: 
?
Gbatch_normalization_10/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp&batch_normalization_10/moving_variance*
_output_shapes
: 
?
-batch_normalization_10/moving_variance/AssignAssignVariableOp&batch_normalization_10/moving_variance7batch_normalization_10/moving_variance/Initializer/ones*
dtype0*9
_class/
-+loc:@batch_normalization_10/moving_variance
?
:batch_normalization_10/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_10/moving_variance*9
_class/
-+loc:@batch_normalization_10/moving_variance*
dtype0*
_output_shapes
:
{
"batch_normalization_10/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
w
$batch_normalization_10/cond/switch_tIdentity$batch_normalization_10/cond/Switch:1*
_output_shapes
: *
T0

u
$batch_normalization_10/cond/switch_fIdentity"batch_normalization_10/cond/Switch*
_output_shapes
: *
T0

f
#batch_normalization_10/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
*batch_normalization_10/cond/ReadVariableOpReadVariableOp3batch_normalization_10/cond/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:
?
1batch_normalization_10/cond/ReadVariableOp/SwitchSwitchbatch_normalization_10/gamma#batch_normalization_10/cond/pred_id*
T0*/
_class%
#!loc:@batch_normalization_10/gamma*
_output_shapes
: : 
?
,batch_normalization_10/cond/ReadVariableOp_1ReadVariableOp5batch_normalization_10/cond/ReadVariableOp_1/Switch:1*
dtype0*
_output_shapes
:
?
3batch_normalization_10/cond/ReadVariableOp_1/SwitchSwitchbatch_normalization_10/beta#batch_normalization_10/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_10/beta*
_output_shapes
: : 
?
!batch_normalization_10/cond/ConstConst%^batch_normalization_10/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
#batch_normalization_10/cond/Const_1Const%^batch_normalization_10/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
*batch_normalization_10/cond/FusedBatchNormFusedBatchNorm3batch_normalization_10/cond/FusedBatchNorm/Switch:1*batch_normalization_10/cond/ReadVariableOp,batch_normalization_10/cond/ReadVariableOp_1!batch_normalization_10/cond/Const#batch_normalization_10/cond/Const_1*
epsilon%o?:*
T0*I
_output_shapes7
5:???????????::::
?
1batch_normalization_10/cond/FusedBatchNorm/SwitchSwitchre_lu_4/Relu#batch_normalization_10/cond/pred_id*N
_output_shapes<
::???????????:???????????*
T0*
_class
loc:@re_lu_4/Relu
?
,batch_normalization_10/cond/ReadVariableOp_2ReadVariableOp3batch_normalization_10/cond/ReadVariableOp_2/Switch*
_output_shapes
:*
dtype0
?
3batch_normalization_10/cond/ReadVariableOp_2/SwitchSwitchbatch_normalization_10/gamma#batch_normalization_10/cond/pred_id*
T0*/
_class%
#!loc:@batch_normalization_10/gamma*
_output_shapes
: : 
?
,batch_normalization_10/cond/ReadVariableOp_3ReadVariableOp3batch_normalization_10/cond/ReadVariableOp_3/Switch*
dtype0*
_output_shapes
:
?
3batch_normalization_10/cond/ReadVariableOp_3/SwitchSwitchbatch_normalization_10/beta#batch_normalization_10/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_10/beta*
_output_shapes
: : 
?
;batch_normalization_10/cond/FusedBatchNorm_1/ReadVariableOpReadVariableOpBbatch_normalization_10/cond/FusedBatchNorm_1/ReadVariableOp/Switch*
dtype0*
_output_shapes
:
?
Bbatch_normalization_10/cond/FusedBatchNorm_1/ReadVariableOp/SwitchSwitch"batch_normalization_10/moving_mean#batch_normalization_10/cond/pred_id*
T0*5
_class+
)'loc:@batch_normalization_10/moving_mean*
_output_shapes
: : 
?
=batch_normalization_10/cond/FusedBatchNorm_1/ReadVariableOp_1ReadVariableOpDbatch_normalization_10/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:
?
Dbatch_normalization_10/cond/FusedBatchNorm_1/ReadVariableOp_1/SwitchSwitch&batch_normalization_10/moving_variance#batch_normalization_10/cond/pred_id*
T0*9
_class/
-+loc:@batch_normalization_10/moving_variance*
_output_shapes
: : 
?
,batch_normalization_10/cond/FusedBatchNorm_1FusedBatchNorm3batch_normalization_10/cond/FusedBatchNorm_1/Switch,batch_normalization_10/cond/ReadVariableOp_2,batch_normalization_10/cond/ReadVariableOp_3;batch_normalization_10/cond/FusedBatchNorm_1/ReadVariableOp=batch_normalization_10/cond/FusedBatchNorm_1/ReadVariableOp_1*
epsilon%o?:*
T0*I
_output_shapes7
5:???????????::::*
is_training( 
?
3batch_normalization_10/cond/FusedBatchNorm_1/SwitchSwitchre_lu_4/Relu#batch_normalization_10/cond/pred_id*
T0*
_class
loc:@re_lu_4/Relu*N
_output_shapes<
::???????????:???????????
?
!batch_normalization_10/cond/MergeMerge,batch_normalization_10/cond/FusedBatchNorm_1*batch_normalization_10/cond/FusedBatchNorm*
T0*
N*3
_output_shapes!
:???????????: 
?
#batch_normalization_10/cond/Merge_1Merge.batch_normalization_10/cond/FusedBatchNorm_1:1,batch_normalization_10/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes

:: 
?
#batch_normalization_10/cond/Merge_2Merge.batch_normalization_10/cond/FusedBatchNorm_1:2,batch_normalization_10/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes

:: 
}
$batch_normalization_10/cond_1/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
{
&batch_normalization_10/cond_1/switch_tIdentity&batch_normalization_10/cond_1/Switch:1*
T0
*
_output_shapes
: 
y
&batch_normalization_10/cond_1/switch_fIdentity$batch_normalization_10/cond_1/Switch*
T0
*
_output_shapes
: 
h
%batch_normalization_10/cond_1/pred_idIdentitykeras_learning_phase*
_output_shapes
: *
T0

?
#batch_normalization_10/cond_1/ConstConst'^batch_normalization_10/cond_1/switch_t*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
%batch_normalization_10/cond_1/Const_1Const'^batch_normalization_10/cond_1/switch_f*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
#batch_normalization_10/cond_1/MergeMerge%batch_normalization_10/cond_1/Const_1#batch_normalization_10/cond_1/Const*
T0*
N*
_output_shapes
: : 
?
,batch_normalization_10/AssignMovingAvg/sub/xConst*
valueB
 *  ??*5
_class+
)'loc:@batch_normalization_10/moving_mean*
dtype0*
_output_shapes
: 
?
*batch_normalization_10/AssignMovingAvg/subSub,batch_normalization_10/AssignMovingAvg/sub/x#batch_normalization_10/cond_1/Merge*
T0*5
_class+
)'loc:@batch_normalization_10/moving_mean*
_output_shapes
: 
?
5batch_normalization_10/AssignMovingAvg/ReadVariableOpReadVariableOp"batch_normalization_10/moving_mean*
dtype0*
_output_shapes
:
?
,batch_normalization_10/AssignMovingAvg/sub_1Sub5batch_normalization_10/AssignMovingAvg/ReadVariableOp#batch_normalization_10/cond/Merge_1*5
_class+
)'loc:@batch_normalization_10/moving_mean*
_output_shapes
:*
T0
?
*batch_normalization_10/AssignMovingAvg/mulMul,batch_normalization_10/AssignMovingAvg/sub_1*batch_normalization_10/AssignMovingAvg/sub*
T0*5
_class+
)'loc:@batch_normalization_10/moving_mean*
_output_shapes
:
?
:batch_normalization_10/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp"batch_normalization_10/moving_mean*batch_normalization_10/AssignMovingAvg/mul*
dtype0*5
_class+
)'loc:@batch_normalization_10/moving_mean
?
7batch_normalization_10/AssignMovingAvg/ReadVariableOp_1ReadVariableOp"batch_normalization_10/moving_mean;^batch_normalization_10/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:*5
_class+
)'loc:@batch_normalization_10/moving_mean
?
.batch_normalization_10/AssignMovingAvg_1/sub/xConst*
valueB
 *  ??*9
_class/
-+loc:@batch_normalization_10/moving_variance*
dtype0*
_output_shapes
: 
?
,batch_normalization_10/AssignMovingAvg_1/subSub.batch_normalization_10/AssignMovingAvg_1/sub/x#batch_normalization_10/cond_1/Merge*
T0*9
_class/
-+loc:@batch_normalization_10/moving_variance*
_output_shapes
: 
?
7batch_normalization_10/AssignMovingAvg_1/ReadVariableOpReadVariableOp&batch_normalization_10/moving_variance*
_output_shapes
:*
dtype0
?
.batch_normalization_10/AssignMovingAvg_1/sub_1Sub7batch_normalization_10/AssignMovingAvg_1/ReadVariableOp#batch_normalization_10/cond/Merge_2*
T0*9
_class/
-+loc:@batch_normalization_10/moving_variance*
_output_shapes
:
?
,batch_normalization_10/AssignMovingAvg_1/mulMul.batch_normalization_10/AssignMovingAvg_1/sub_1,batch_normalization_10/AssignMovingAvg_1/sub*
T0*9
_class/
-+loc:@batch_normalization_10/moving_variance*
_output_shapes
:
?
<batch_normalization_10/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp&batch_normalization_10/moving_variance,batch_normalization_10/AssignMovingAvg_1/mul*9
_class/
-+loc:@batch_normalization_10/moving_variance*
dtype0
?
9batch_normalization_10/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp&batch_normalization_10/moving_variance=^batch_normalization_10/AssignMovingAvg_1/AssignSubVariableOp*9
_class/
-+loc:@batch_normalization_10/moving_variance*
dtype0*
_output_shapes
:
[
concatenate_4/concat/axisConst*
_output_shapes
: *
value	B :*
dtype0
?
concatenate_4/concatConcatV2conv2d/BiasAdd!batch_normalization_10/cond/Mergeconcatenate_4/concat/axis*
T0*
N*1
_output_shapes
:??????????? 
?
:conv2d_transpose_5/kernel/Initializer/random_uniform/shapeConst*%
valueB"             *,
_class"
 loc:@conv2d_transpose_5/kernel*
dtype0*
_output_shapes
:
?
8conv2d_transpose_5/kernel/Initializer/random_uniform/minConst*
valueB
 *????*,
_class"
 loc:@conv2d_transpose_5/kernel*
dtype0*
_output_shapes
: 
?
8conv2d_transpose_5/kernel/Initializer/random_uniform/maxConst*
valueB
 *???>*,
_class"
 loc:@conv2d_transpose_5/kernel*
dtype0*
_output_shapes
: 
?
Bconv2d_transpose_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform:conv2d_transpose_5/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
: *
seed???)*
T0*,
_class"
 loc:@conv2d_transpose_5/kernel*
seed22
?
8conv2d_transpose_5/kernel/Initializer/random_uniform/subSub8conv2d_transpose_5/kernel/Initializer/random_uniform/max8conv2d_transpose_5/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@conv2d_transpose_5/kernel*
_output_shapes
: 
?
8conv2d_transpose_5/kernel/Initializer/random_uniform/mulMulBconv2d_transpose_5/kernel/Initializer/random_uniform/RandomUniform8conv2d_transpose_5/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@conv2d_transpose_5/kernel*&
_output_shapes
: 
?
4conv2d_transpose_5/kernel/Initializer/random_uniformAdd8conv2d_transpose_5/kernel/Initializer/random_uniform/mul8conv2d_transpose_5/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@conv2d_transpose_5/kernel*&
_output_shapes
: 
?
conv2d_transpose_5/kernelVarHandleOp*
_output_shapes
: *
shape: **
shared_nameconv2d_transpose_5/kernel*,
_class"
 loc:@conv2d_transpose_5/kernel*
dtype0
?
:conv2d_transpose_5/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose_5/kernel*
_output_shapes
: 
?
 conv2d_transpose_5/kernel/AssignAssignVariableOpconv2d_transpose_5/kernel4conv2d_transpose_5/kernel/Initializer/random_uniform*,
_class"
 loc:@conv2d_transpose_5/kernel*
dtype0
?
-conv2d_transpose_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_5/kernel*,
_class"
 loc:@conv2d_transpose_5/kernel*
dtype0*&
_output_shapes
: 
?
)conv2d_transpose_5/bias/Initializer/zerosConst*
valueB*    **
_class 
loc:@conv2d_transpose_5/bias*
dtype0*
_output_shapes
:
?
conv2d_transpose_5/biasVarHandleOp*(
shared_nameconv2d_transpose_5/bias**
_class 
loc:@conv2d_transpose_5/bias*
dtype0*
_output_shapes
: *
shape:

8conv2d_transpose_5/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose_5/bias*
_output_shapes
: 
?
conv2d_transpose_5/bias/AssignAssignVariableOpconv2d_transpose_5/bias)conv2d_transpose_5/bias/Initializer/zeros**
_class 
loc:@conv2d_transpose_5/bias*
dtype0
?
+conv2d_transpose_5/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_5/bias**
_class 
loc:@conv2d_transpose_5/bias*
dtype0*
_output_shapes
:
\
conv2d_transpose_5/ShapeShapeconcatenate_4/concat*
_output_shapes
:*
T0
p
&conv2d_transpose_5/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
r
(conv2d_transpose_5/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
r
(conv2d_transpose_5/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
 conv2d_transpose_5/strided_sliceStridedSliceconv2d_transpose_5/Shape&conv2d_transpose_5/strided_slice/stack(conv2d_transpose_5/strided_slice/stack_1(conv2d_transpose_5/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
r
(conv2d_transpose_5/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_5/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_5/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
"conv2d_transpose_5/strided_slice_1StridedSliceconv2d_transpose_5/Shape(conv2d_transpose_5/strided_slice_1/stack*conv2d_transpose_5/strided_slice_1/stack_1*conv2d_transpose_5/strided_slice_1/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
r
(conv2d_transpose_5/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_5/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_5/strided_slice_2/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
?
"conv2d_transpose_5/strided_slice_2StridedSliceconv2d_transpose_5/Shape(conv2d_transpose_5/strided_slice_2/stack*conv2d_transpose_5/strided_slice_2/stack_1*conv2d_transpose_5/strided_slice_2/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
Z
conv2d_transpose_5/mul/yConst*
value	B :*
dtype0*
_output_shapes
: 
|
conv2d_transpose_5/mulMul"conv2d_transpose_5/strided_slice_1conv2d_transpose_5/mul/y*
T0*
_output_shapes
: 
\
conv2d_transpose_5/mul_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
conv2d_transpose_5/mul_1Mul"conv2d_transpose_5/strided_slice_2conv2d_transpose_5/mul_1/y*
T0*
_output_shapes
: 
\
conv2d_transpose_5/stack/3Const*
value	B :*
dtype0*
_output_shapes
: 
?
conv2d_transpose_5/stackPack conv2d_transpose_5/strided_sliceconv2d_transpose_5/mulconv2d_transpose_5/mul_1conv2d_transpose_5/stack/3*
T0*
N*
_output_shapes
:
r
(conv2d_transpose_5/strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:
t
*conv2d_transpose_5/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_5/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
"conv2d_transpose_5/strided_slice_3StridedSliceconv2d_transpose_5/stack(conv2d_transpose_5/strided_slice_3/stack*conv2d_transpose_5/strided_slice_3/stack_1*conv2d_transpose_5/strided_slice_3/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
?
2conv2d_transpose_5/conv2d_transpose/ReadVariableOpReadVariableOpconv2d_transpose_5/kernel*
dtype0*&
_output_shapes
: 
?
#conv2d_transpose_5/conv2d_transposeConv2DBackpropInputconv2d_transpose_5/stack2conv2d_transpose_5/conv2d_transpose/ReadVariableOpconcatenate_4/concat*
T0*
strides
*1
_output_shapes
:???????????*
paddingSAME
}
)conv2d_transpose_5/BiasAdd/ReadVariableOpReadVariableOpconv2d_transpose_5/bias*
_output_shapes
:*
dtype0
?
conv2d_transpose_5/BiasAddBiasAdd#conv2d_transpose_5/conv2d_transpose)conv2d_transpose_5/BiasAdd/ReadVariableOp*1
_output_shapes
:???????????*
T0
l
re_lu_5/ReluReluconv2d_transpose_5/BiasAdd*1
_output_shapes
:???????????*
T0
?
-batch_normalization_11/gamma/Initializer/onesConst*
valueB*  ??*/
_class%
#!loc:@batch_normalization_11/gamma*
dtype0*
_output_shapes
:
?
batch_normalization_11/gammaVarHandleOp*
shape:*-
shared_namebatch_normalization_11/gamma*/
_class%
#!loc:@batch_normalization_11/gamma*
dtype0*
_output_shapes
: 
?
=batch_normalization_11/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_11/gamma*
_output_shapes
: 
?
#batch_normalization_11/gamma/AssignAssignVariableOpbatch_normalization_11/gamma-batch_normalization_11/gamma/Initializer/ones*/
_class%
#!loc:@batch_normalization_11/gamma*
dtype0
?
0batch_normalization_11/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_11/gamma*/
_class%
#!loc:@batch_normalization_11/gamma*
dtype0*
_output_shapes
:
?
-batch_normalization_11/beta/Initializer/zerosConst*
_output_shapes
:*
valueB*    *.
_class$
" loc:@batch_normalization_11/beta*
dtype0
?
batch_normalization_11/betaVarHandleOp*.
_class$
" loc:@batch_normalization_11/beta*
dtype0*
_output_shapes
: *
shape:*,
shared_namebatch_normalization_11/beta
?
<batch_normalization_11/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_11/beta*
_output_shapes
: 
?
"batch_normalization_11/beta/AssignAssignVariableOpbatch_normalization_11/beta-batch_normalization_11/beta/Initializer/zeros*.
_class$
" loc:@batch_normalization_11/beta*
dtype0
?
/batch_normalization_11/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_11/beta*.
_class$
" loc:@batch_normalization_11/beta*
dtype0*
_output_shapes
:
?
4batch_normalization_11/moving_mean/Initializer/zerosConst*
valueB*    *5
_class+
)'loc:@batch_normalization_11/moving_mean*
dtype0*
_output_shapes
:
?
"batch_normalization_11/moving_meanVarHandleOp*
dtype0*
_output_shapes
: *
shape:*3
shared_name$"batch_normalization_11/moving_mean*5
_class+
)'loc:@batch_normalization_11/moving_mean
?
Cbatch_normalization_11/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp"batch_normalization_11/moving_mean*
_output_shapes
: 
?
)batch_normalization_11/moving_mean/AssignAssignVariableOp"batch_normalization_11/moving_mean4batch_normalization_11/moving_mean/Initializer/zeros*5
_class+
)'loc:@batch_normalization_11/moving_mean*
dtype0
?
6batch_normalization_11/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_11/moving_mean*5
_class+
)'loc:@batch_normalization_11/moving_mean*
dtype0*
_output_shapes
:
?
7batch_normalization_11/moving_variance/Initializer/onesConst*
valueB*  ??*9
_class/
-+loc:@batch_normalization_11/moving_variance*
dtype0*
_output_shapes
:
?
&batch_normalization_11/moving_varianceVarHandleOp*
dtype0*
_output_shapes
: *
shape:*7
shared_name(&batch_normalization_11/moving_variance*9
_class/
-+loc:@batch_normalization_11/moving_variance
?
Gbatch_normalization_11/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp&batch_normalization_11/moving_variance*
_output_shapes
: 
?
-batch_normalization_11/moving_variance/AssignAssignVariableOp&batch_normalization_11/moving_variance7batch_normalization_11/moving_variance/Initializer/ones*9
_class/
-+loc:@batch_normalization_11/moving_variance*
dtype0
?
:batch_normalization_11/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_11/moving_variance*
dtype0*
_output_shapes
:*9
_class/
-+loc:@batch_normalization_11/moving_variance
{
"batch_normalization_11/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

w
$batch_normalization_11/cond/switch_tIdentity$batch_normalization_11/cond/Switch:1*
_output_shapes
: *
T0

u
$batch_normalization_11/cond/switch_fIdentity"batch_normalization_11/cond/Switch*
T0
*
_output_shapes
: 
f
#batch_normalization_11/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
*batch_normalization_11/cond/ReadVariableOpReadVariableOp3batch_normalization_11/cond/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:
?
1batch_normalization_11/cond/ReadVariableOp/SwitchSwitchbatch_normalization_11/gamma#batch_normalization_11/cond/pred_id*
T0*/
_class%
#!loc:@batch_normalization_11/gamma*
_output_shapes
: : 
?
,batch_normalization_11/cond/ReadVariableOp_1ReadVariableOp5batch_normalization_11/cond/ReadVariableOp_1/Switch:1*
dtype0*
_output_shapes
:
?
3batch_normalization_11/cond/ReadVariableOp_1/SwitchSwitchbatch_normalization_11/beta#batch_normalization_11/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_11/beta*
_output_shapes
: : 
?
!batch_normalization_11/cond/ConstConst%^batch_normalization_11/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
#batch_normalization_11/cond/Const_1Const%^batch_normalization_11/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
*batch_normalization_11/cond/FusedBatchNormFusedBatchNorm3batch_normalization_11/cond/FusedBatchNorm/Switch:1*batch_normalization_11/cond/ReadVariableOp,batch_normalization_11/cond/ReadVariableOp_1!batch_normalization_11/cond/Const#batch_normalization_11/cond/Const_1*
T0*I
_output_shapes7
5:???????????::::*
epsilon%o?:
?
1batch_normalization_11/cond/FusedBatchNorm/SwitchSwitchre_lu_5/Relu#batch_normalization_11/cond/pred_id*N
_output_shapes<
::???????????:???????????*
T0*
_class
loc:@re_lu_5/Relu
?
,batch_normalization_11/cond/ReadVariableOp_2ReadVariableOp3batch_normalization_11/cond/ReadVariableOp_2/Switch*
dtype0*
_output_shapes
:
?
3batch_normalization_11/cond/ReadVariableOp_2/SwitchSwitchbatch_normalization_11/gamma#batch_normalization_11/cond/pred_id*
_output_shapes
: : *
T0*/
_class%
#!loc:@batch_normalization_11/gamma
?
,batch_normalization_11/cond/ReadVariableOp_3ReadVariableOp3batch_normalization_11/cond/ReadVariableOp_3/Switch*
dtype0*
_output_shapes
:
?
3batch_normalization_11/cond/ReadVariableOp_3/SwitchSwitchbatch_normalization_11/beta#batch_normalization_11/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_11/beta*
_output_shapes
: : 
?
;batch_normalization_11/cond/FusedBatchNorm_1/ReadVariableOpReadVariableOpBbatch_normalization_11/cond/FusedBatchNorm_1/ReadVariableOp/Switch*
_output_shapes
:*
dtype0
?
Bbatch_normalization_11/cond/FusedBatchNorm_1/ReadVariableOp/SwitchSwitch"batch_normalization_11/moving_mean#batch_normalization_11/cond/pred_id*
T0*5
_class+
)'loc:@batch_normalization_11/moving_mean*
_output_shapes
: : 
?
=batch_normalization_11/cond/FusedBatchNorm_1/ReadVariableOp_1ReadVariableOpDbatch_normalization_11/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:
?
Dbatch_normalization_11/cond/FusedBatchNorm_1/ReadVariableOp_1/SwitchSwitch&batch_normalization_11/moving_variance#batch_normalization_11/cond/pred_id*
T0*9
_class/
-+loc:@batch_normalization_11/moving_variance*
_output_shapes
: : 
?
,batch_normalization_11/cond/FusedBatchNorm_1FusedBatchNorm3batch_normalization_11/cond/FusedBatchNorm_1/Switch,batch_normalization_11/cond/ReadVariableOp_2,batch_normalization_11/cond/ReadVariableOp_3;batch_normalization_11/cond/FusedBatchNorm_1/ReadVariableOp=batch_normalization_11/cond/FusedBatchNorm_1/ReadVariableOp_1*
epsilon%o?:*
T0*I
_output_shapes7
5:???????????::::*
is_training( 
?
3batch_normalization_11/cond/FusedBatchNorm_1/SwitchSwitchre_lu_5/Relu#batch_normalization_11/cond/pred_id*
T0*
_class
loc:@re_lu_5/Relu*N
_output_shapes<
::???????????:???????????
?
!batch_normalization_11/cond/MergeMerge,batch_normalization_11/cond/FusedBatchNorm_1*batch_normalization_11/cond/FusedBatchNorm*
T0*
N*3
_output_shapes!
:???????????: 
?
#batch_normalization_11/cond/Merge_1Merge.batch_normalization_11/cond/FusedBatchNorm_1:1,batch_normalization_11/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes

:: 
?
#batch_normalization_11/cond/Merge_2Merge.batch_normalization_11/cond/FusedBatchNorm_1:2,batch_normalization_11/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes

:: 
}
$batch_normalization_11/cond_1/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

{
&batch_normalization_11/cond_1/switch_tIdentity&batch_normalization_11/cond_1/Switch:1*
T0
*
_output_shapes
: 
y
&batch_normalization_11/cond_1/switch_fIdentity$batch_normalization_11/cond_1/Switch*
T0
*
_output_shapes
: 
h
%batch_normalization_11/cond_1/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
#batch_normalization_11/cond_1/ConstConst'^batch_normalization_11/cond_1/switch_t*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
%batch_normalization_11/cond_1/Const_1Const'^batch_normalization_11/cond_1/switch_f*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
#batch_normalization_11/cond_1/MergeMerge%batch_normalization_11/cond_1/Const_1#batch_normalization_11/cond_1/Const*
_output_shapes
: : *
T0*
N
?
,batch_normalization_11/AssignMovingAvg/sub/xConst*
valueB
 *  ??*5
_class+
)'loc:@batch_normalization_11/moving_mean*
dtype0*
_output_shapes
: 
?
*batch_normalization_11/AssignMovingAvg/subSub,batch_normalization_11/AssignMovingAvg/sub/x#batch_normalization_11/cond_1/Merge*
_output_shapes
: *
T0*5
_class+
)'loc:@batch_normalization_11/moving_mean
?
5batch_normalization_11/AssignMovingAvg/ReadVariableOpReadVariableOp"batch_normalization_11/moving_mean*
dtype0*
_output_shapes
:
?
,batch_normalization_11/AssignMovingAvg/sub_1Sub5batch_normalization_11/AssignMovingAvg/ReadVariableOp#batch_normalization_11/cond/Merge_1*
T0*5
_class+
)'loc:@batch_normalization_11/moving_mean*
_output_shapes
:
?
*batch_normalization_11/AssignMovingAvg/mulMul,batch_normalization_11/AssignMovingAvg/sub_1*batch_normalization_11/AssignMovingAvg/sub*
T0*5
_class+
)'loc:@batch_normalization_11/moving_mean*
_output_shapes
:
?
:batch_normalization_11/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp"batch_normalization_11/moving_mean*batch_normalization_11/AssignMovingAvg/mul*5
_class+
)'loc:@batch_normalization_11/moving_mean*
dtype0
?
7batch_normalization_11/AssignMovingAvg/ReadVariableOp_1ReadVariableOp"batch_normalization_11/moving_mean;^batch_normalization_11/AssignMovingAvg/AssignSubVariableOp*5
_class+
)'loc:@batch_normalization_11/moving_mean*
dtype0*
_output_shapes
:
?
.batch_normalization_11/AssignMovingAvg_1/sub/xConst*
valueB
 *  ??*9
_class/
-+loc:@batch_normalization_11/moving_variance*
dtype0*
_output_shapes
: 
?
,batch_normalization_11/AssignMovingAvg_1/subSub.batch_normalization_11/AssignMovingAvg_1/sub/x#batch_normalization_11/cond_1/Merge*
T0*9
_class/
-+loc:@batch_normalization_11/moving_variance*
_output_shapes
: 
?
7batch_normalization_11/AssignMovingAvg_1/ReadVariableOpReadVariableOp&batch_normalization_11/moving_variance*
dtype0*
_output_shapes
:
?
.batch_normalization_11/AssignMovingAvg_1/sub_1Sub7batch_normalization_11/AssignMovingAvg_1/ReadVariableOp#batch_normalization_11/cond/Merge_2*
T0*9
_class/
-+loc:@batch_normalization_11/moving_variance*
_output_shapes
:
?
,batch_normalization_11/AssignMovingAvg_1/mulMul.batch_normalization_11/AssignMovingAvg_1/sub_1,batch_normalization_11/AssignMovingAvg_1/sub*
T0*9
_class/
-+loc:@batch_normalization_11/moving_variance*
_output_shapes
:
?
<batch_normalization_11/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp&batch_normalization_11/moving_variance,batch_normalization_11/AssignMovingAvg_1/mul*9
_class/
-+loc:@batch_normalization_11/moving_variance*
dtype0
?
9batch_normalization_11/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp&batch_normalization_11/moving_variance=^batch_normalization_11/AssignMovingAvg_1/AssignSubVariableOp*
dtype0*
_output_shapes
:*9
_class/
-+loc:@batch_normalization_11/moving_variance
?
0conv2d_6/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            *"
_class
loc:@conv2d_6/kernel
?
.conv2d_6/kernel/Initializer/random_uniform/minConst*
valueB
 *q??*"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
: 
?
.conv2d_6/kernel/Initializer/random_uniform/maxConst*
valueB
 *q??*"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
: 
?
8conv2d_6/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_6/kernel/Initializer/random_uniform/shape*
seed???)*
T0*"
_class
loc:@conv2d_6/kernel*
seed22*
dtype0*&
_output_shapes
:
?
.conv2d_6/kernel/Initializer/random_uniform/subSub.conv2d_6/kernel/Initializer/random_uniform/max.conv2d_6/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: 
?
.conv2d_6/kernel/Initializer/random_uniform/mulMul8conv2d_6/kernel/Initializer/random_uniform/RandomUniform.conv2d_6/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:
?
*conv2d_6/kernel/Initializer/random_uniformAdd.conv2d_6/kernel/Initializer/random_uniform/mul.conv2d_6/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:
?
conv2d_6/kernelVarHandleOp*
shape:* 
shared_nameconv2d_6/kernel*"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
: 
o
0conv2d_6/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_6/kernel*
_output_shapes
: 
?
conv2d_6/kernel/AssignAssignVariableOpconv2d_6/kernel*conv2d_6/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_6/kernel*
dtype0
?
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
:*"
_class
loc:@conv2d_6/kernel*
dtype0
?
conv2d_6/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
:
?
conv2d_6/biasVarHandleOp*
_output_shapes
: *
shape:*
shared_nameconv2d_6/bias* 
_class
loc:@conv2d_6/bias*
dtype0
k
.conv2d_6/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_6/bias*
_output_shapes
: 
?
conv2d_6/bias/AssignAssignVariableOpconv2d_6/biasconv2d_6/bias/Initializer/zeros* 
_class
loc:@conv2d_6/bias*
dtype0
?
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias* 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
:
g
conv2d_6/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
n
conv2d_6/filter_shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
o
conv2d_6/stackConst*
dtype0*
_output_shapes

:*)
value B"            
?
5conv2d_6/required_space_to_batch_paddings/input_shapeConst*
dtype0*
_output_shapes
:*
valueB"      
?
2conv2d_6/required_space_to_batch_paddings/paddingsConst*)
value B"            *
dtype0*
_output_shapes

:
?
/conv2d_6/required_space_to_batch_paddings/cropsConst*
dtype0*
_output_shapes

:*)
value B"                
t
#conv2d_6/SpaceToBatchND/block_shapeConst*
dtype0*
_output_shapes
:*
valueB"      
?
 conv2d_6/SpaceToBatchND/paddingsConst*
_output_shapes

:*)
value B"            *
dtype0
?
conv2d_6/SpaceToBatchNDSpaceToBatchND!batch_normalization_11/cond/Merge#conv2d_6/SpaceToBatchND/block_shape conv2d_6/SpaceToBatchND/paddings*
T0*1
_output_shapes
:???????????
v
conv2d_6/Conv2D/ReadVariableOpReadVariableOpconv2d_6/kernel*
dtype0*&
_output_shapes
:
?
conv2d_6/Conv2DConv2Dconv2d_6/SpaceToBatchNDconv2d_6/Conv2D/ReadVariableOp*
strides
*1
_output_shapes
:???????????*
paddingVALID*
T0
t
#conv2d_6/BatchToSpaceND/block_shapeConst*
valueB"      *
dtype0*
_output_shapes
:
~
conv2d_6/BatchToSpaceND/cropsConst*
_output_shapes

:*)
value B"                *
dtype0
?
conv2d_6/BatchToSpaceNDBatchToSpaceNDconv2d_6/Conv2D#conv2d_6/BatchToSpaceND/block_shapeconv2d_6/BatchToSpaceND/crops*1
_output_shapes
:???????????*
T0
i
conv2d_6/BiasAdd/ReadVariableOpReadVariableOpconv2d_6/bias*
dtype0*
_output_shapes
:
?
conv2d_6/BiasAddBiasAddconv2d_6/BatchToSpaceNDconv2d_6/BiasAdd/ReadVariableOp*
T0*1
_output_shapes
:???????????
i
conv2d_6/SigmoidSigmoidconv2d_6/BiasAdd*1
_output_shapes
:???????????*
T0
|
vocals_spectrogram/mulMulconv2d_6/Sigmoidstrided_slice_3*
T0*1
_output_shapes
:???????????
?
0conv2d_7/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *"
_class
loc:@conv2d_7/kernel*
dtype0*
_output_shapes
:
?
.conv2d_7/kernel/Initializer/random_uniform/minConst*
valueB
 *?\??*"
_class
loc:@conv2d_7/kernel*
dtype0*
_output_shapes
: 
?
.conv2d_7/kernel/Initializer/random_uniform/maxConst*
valueB
 *?\?>*"
_class
loc:@conv2d_7/kernel*
dtype0*
_output_shapes
: 
?
8conv2d_7/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_7/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*
seed???)*
T0*"
_class
loc:@conv2d_7/kernel*
seed22
?
.conv2d_7/kernel/Initializer/random_uniform/subSub.conv2d_7/kernel/Initializer/random_uniform/max.conv2d_7/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: 
?
.conv2d_7/kernel/Initializer/random_uniform/mulMul8conv2d_7/kernel/Initializer/random_uniform/RandomUniform.conv2d_7/kernel/Initializer/random_uniform/sub*&
_output_shapes
:*
T0*"
_class
loc:@conv2d_7/kernel
?
*conv2d_7/kernel/Initializer/random_uniformAdd.conv2d_7/kernel/Initializer/random_uniform/mul.conv2d_7/kernel/Initializer/random_uniform/min*&
_output_shapes
:*
T0*"
_class
loc:@conv2d_7/kernel
?
conv2d_7/kernelVarHandleOp* 
shared_nameconv2d_7/kernel*"
_class
loc:@conv2d_7/kernel*
dtype0*
_output_shapes
: *
shape:
o
0conv2d_7/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_7/kernel*
_output_shapes
: 
?
conv2d_7/kernel/AssignAssignVariableOpconv2d_7/kernel*conv2d_7/kernel/Initializer/random_uniform*
dtype0*"
_class
loc:@conv2d_7/kernel
?
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*"
_class
loc:@conv2d_7/kernel*
dtype0*&
_output_shapes
:
?
conv2d_7/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@conv2d_7/bias*
dtype0*
_output_shapes
:
?
conv2d_7/biasVarHandleOp* 
_class
loc:@conv2d_7/bias*
dtype0*
_output_shapes
: *
shape:*
shared_nameconv2d_7/bias
k
.conv2d_7/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_7/bias*
_output_shapes
: 
?
conv2d_7/bias/AssignAssignVariableOpconv2d_7/biasconv2d_7/bias/Initializer/zeros* 
_class
loc:@conv2d_7/bias*
dtype0
?
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
:* 
_class
loc:@conv2d_7/bias*
dtype0
g
conv2d_7/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_7/Conv2D/ReadVariableOpReadVariableOpconv2d_7/kernel*
dtype0*&
_output_shapes
:
?
conv2d_7/Conv2DConv2Dstrided_slice_3conv2d_7/Conv2D/ReadVariableOp*
paddingSAME*
T0*
strides
*1
_output_shapes
:???????????
i
conv2d_7/BiasAdd/ReadVariableOpReadVariableOpconv2d_7/bias*
dtype0*
_output_shapes
:
?
conv2d_7/BiasAddBiasAddconv2d_7/Conv2Dconv2d_7/BiasAdd/ReadVariableOp*
T0*1
_output_shapes
:???????????
?
-batch_normalization_12/gamma/Initializer/onesConst*
valueB*  ??*/
_class%
#!loc:@batch_normalization_12/gamma*
dtype0*
_output_shapes
:
?
batch_normalization_12/gammaVarHandleOp*/
_class%
#!loc:@batch_normalization_12/gamma*
dtype0*
_output_shapes
: *
shape:*-
shared_namebatch_normalization_12/gamma
?
=batch_normalization_12/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_12/gamma*
_output_shapes
: 
?
#batch_normalization_12/gamma/AssignAssignVariableOpbatch_normalization_12/gamma-batch_normalization_12/gamma/Initializer/ones*/
_class%
#!loc:@batch_normalization_12/gamma*
dtype0
?
0batch_normalization_12/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_12/gamma*/
_class%
#!loc:@batch_normalization_12/gamma*
dtype0*
_output_shapes
:
?
-batch_normalization_12/beta/Initializer/zerosConst*
valueB*    *.
_class$
" loc:@batch_normalization_12/beta*
dtype0*
_output_shapes
:
?
batch_normalization_12/betaVarHandleOp*
_output_shapes
: *
shape:*,
shared_namebatch_normalization_12/beta*.
_class$
" loc:@batch_normalization_12/beta*
dtype0
?
<batch_normalization_12/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_12/beta*
_output_shapes
: 
?
"batch_normalization_12/beta/AssignAssignVariableOpbatch_normalization_12/beta-batch_normalization_12/beta/Initializer/zeros*.
_class$
" loc:@batch_normalization_12/beta*
dtype0
?
/batch_normalization_12/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_12/beta*
dtype0*
_output_shapes
:*.
_class$
" loc:@batch_normalization_12/beta
?
4batch_normalization_12/moving_mean/Initializer/zerosConst*
valueB*    *5
_class+
)'loc:@batch_normalization_12/moving_mean*
dtype0*
_output_shapes
:
?
"batch_normalization_12/moving_meanVarHandleOp*3
shared_name$"batch_normalization_12/moving_mean*5
_class+
)'loc:@batch_normalization_12/moving_mean*
dtype0*
_output_shapes
: *
shape:
?
Cbatch_normalization_12/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp"batch_normalization_12/moving_mean*
_output_shapes
: 
?
)batch_normalization_12/moving_mean/AssignAssignVariableOp"batch_normalization_12/moving_mean4batch_normalization_12/moving_mean/Initializer/zeros*5
_class+
)'loc:@batch_normalization_12/moving_mean*
dtype0
?
6batch_normalization_12/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_12/moving_mean*5
_class+
)'loc:@batch_normalization_12/moving_mean*
dtype0*
_output_shapes
:
?
7batch_normalization_12/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes
:*
valueB*  ??*9
_class/
-+loc:@batch_normalization_12/moving_variance
?
&batch_normalization_12/moving_varianceVarHandleOp*
dtype0*
_output_shapes
: *
shape:*7
shared_name(&batch_normalization_12/moving_variance*9
_class/
-+loc:@batch_normalization_12/moving_variance
?
Gbatch_normalization_12/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp&batch_normalization_12/moving_variance*
_output_shapes
: 
?
-batch_normalization_12/moving_variance/AssignAssignVariableOp&batch_normalization_12/moving_variance7batch_normalization_12/moving_variance/Initializer/ones*9
_class/
-+loc:@batch_normalization_12/moving_variance*
dtype0
?
:batch_normalization_12/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_12/moving_variance*9
_class/
-+loc:@batch_normalization_12/moving_variance*
dtype0*
_output_shapes
:
{
"batch_normalization_12/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

w
$batch_normalization_12/cond/switch_tIdentity$batch_normalization_12/cond/Switch:1*
T0
*
_output_shapes
: 
u
$batch_normalization_12/cond/switch_fIdentity"batch_normalization_12/cond/Switch*
T0
*
_output_shapes
: 
f
#batch_normalization_12/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
*batch_normalization_12/cond/ReadVariableOpReadVariableOp3batch_normalization_12/cond/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:
?
1batch_normalization_12/cond/ReadVariableOp/SwitchSwitchbatch_normalization_12/gamma#batch_normalization_12/cond/pred_id*
T0*/
_class%
#!loc:@batch_normalization_12/gamma*
_output_shapes
: : 
?
,batch_normalization_12/cond/ReadVariableOp_1ReadVariableOp5batch_normalization_12/cond/ReadVariableOp_1/Switch:1*
dtype0*
_output_shapes
:
?
3batch_normalization_12/cond/ReadVariableOp_1/SwitchSwitchbatch_normalization_12/beta#batch_normalization_12/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_12/beta*
_output_shapes
: : 
?
!batch_normalization_12/cond/ConstConst%^batch_normalization_12/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
#batch_normalization_12/cond/Const_1Const%^batch_normalization_12/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
*batch_normalization_12/cond/FusedBatchNormFusedBatchNorm3batch_normalization_12/cond/FusedBatchNorm/Switch:1*batch_normalization_12/cond/ReadVariableOp,batch_normalization_12/cond/ReadVariableOp_1!batch_normalization_12/cond/Const#batch_normalization_12/cond/Const_1*I
_output_shapes7
5:???????????::::*
epsilon%o?:*
T0
?
1batch_normalization_12/cond/FusedBatchNorm/SwitchSwitchconv2d_7/BiasAdd#batch_normalization_12/cond/pred_id*N
_output_shapes<
::???????????:???????????*
T0*#
_class
loc:@conv2d_7/BiasAdd
?
,batch_normalization_12/cond/ReadVariableOp_2ReadVariableOp3batch_normalization_12/cond/ReadVariableOp_2/Switch*
dtype0*
_output_shapes
:
?
3batch_normalization_12/cond/ReadVariableOp_2/SwitchSwitchbatch_normalization_12/gamma#batch_normalization_12/cond/pred_id*
T0*/
_class%
#!loc:@batch_normalization_12/gamma*
_output_shapes
: : 
?
,batch_normalization_12/cond/ReadVariableOp_3ReadVariableOp3batch_normalization_12/cond/ReadVariableOp_3/Switch*
dtype0*
_output_shapes
:
?
3batch_normalization_12/cond/ReadVariableOp_3/SwitchSwitchbatch_normalization_12/beta#batch_normalization_12/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_12/beta*
_output_shapes
: : 
?
;batch_normalization_12/cond/FusedBatchNorm_1/ReadVariableOpReadVariableOpBbatch_normalization_12/cond/FusedBatchNorm_1/ReadVariableOp/Switch*
dtype0*
_output_shapes
:
?
Bbatch_normalization_12/cond/FusedBatchNorm_1/ReadVariableOp/SwitchSwitch"batch_normalization_12/moving_mean#batch_normalization_12/cond/pred_id*
T0*5
_class+
)'loc:@batch_normalization_12/moving_mean*
_output_shapes
: : 
?
=batch_normalization_12/cond/FusedBatchNorm_1/ReadVariableOp_1ReadVariableOpDbatch_normalization_12/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch*
_output_shapes
:*
dtype0
?
Dbatch_normalization_12/cond/FusedBatchNorm_1/ReadVariableOp_1/SwitchSwitch&batch_normalization_12/moving_variance#batch_normalization_12/cond/pred_id*9
_class/
-+loc:@batch_normalization_12/moving_variance*
_output_shapes
: : *
T0
?
,batch_normalization_12/cond/FusedBatchNorm_1FusedBatchNorm3batch_normalization_12/cond/FusedBatchNorm_1/Switch,batch_normalization_12/cond/ReadVariableOp_2,batch_normalization_12/cond/ReadVariableOp_3;batch_normalization_12/cond/FusedBatchNorm_1/ReadVariableOp=batch_normalization_12/cond/FusedBatchNorm_1/ReadVariableOp_1*I
_output_shapes7
5:???????????::::*
is_training( *
epsilon%o?:*
T0
?
3batch_normalization_12/cond/FusedBatchNorm_1/SwitchSwitchconv2d_7/BiasAdd#batch_normalization_12/cond/pred_id*
T0*#
_class
loc:@conv2d_7/BiasAdd*N
_output_shapes<
::???????????:???????????
?
!batch_normalization_12/cond/MergeMerge,batch_normalization_12/cond/FusedBatchNorm_1*batch_normalization_12/cond/FusedBatchNorm*
T0*
N*3
_output_shapes!
:???????????: 
?
#batch_normalization_12/cond/Merge_1Merge.batch_normalization_12/cond/FusedBatchNorm_1:1,batch_normalization_12/cond/FusedBatchNorm:1*
N*
_output_shapes

:: *
T0
?
#batch_normalization_12/cond/Merge_2Merge.batch_normalization_12/cond/FusedBatchNorm_1:2,batch_normalization_12/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes

:: 
}
$batch_normalization_12/cond_1/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

{
&batch_normalization_12/cond_1/switch_tIdentity&batch_normalization_12/cond_1/Switch:1*
T0
*
_output_shapes
: 
y
&batch_normalization_12/cond_1/switch_fIdentity$batch_normalization_12/cond_1/Switch*
T0
*
_output_shapes
: 
h
%batch_normalization_12/cond_1/pred_idIdentitykeras_learning_phase*
_output_shapes
: *
T0

?
#batch_normalization_12/cond_1/ConstConst'^batch_normalization_12/cond_1/switch_t*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
%batch_normalization_12/cond_1/Const_1Const'^batch_normalization_12/cond_1/switch_f*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
#batch_normalization_12/cond_1/MergeMerge%batch_normalization_12/cond_1/Const_1#batch_normalization_12/cond_1/Const*
T0*
N*
_output_shapes
: : 
?
,batch_normalization_12/AssignMovingAvg/sub/xConst*
valueB
 *  ??*5
_class+
)'loc:@batch_normalization_12/moving_mean*
dtype0*
_output_shapes
: 
?
*batch_normalization_12/AssignMovingAvg/subSub,batch_normalization_12/AssignMovingAvg/sub/x#batch_normalization_12/cond_1/Merge*
_output_shapes
: *
T0*5
_class+
)'loc:@batch_normalization_12/moving_mean
?
5batch_normalization_12/AssignMovingAvg/ReadVariableOpReadVariableOp"batch_normalization_12/moving_mean*
dtype0*
_output_shapes
:
?
,batch_normalization_12/AssignMovingAvg/sub_1Sub5batch_normalization_12/AssignMovingAvg/ReadVariableOp#batch_normalization_12/cond/Merge_1*
_output_shapes
:*
T0*5
_class+
)'loc:@batch_normalization_12/moving_mean
?
*batch_normalization_12/AssignMovingAvg/mulMul,batch_normalization_12/AssignMovingAvg/sub_1*batch_normalization_12/AssignMovingAvg/sub*
T0*5
_class+
)'loc:@batch_normalization_12/moving_mean*
_output_shapes
:
?
:batch_normalization_12/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp"batch_normalization_12/moving_mean*batch_normalization_12/AssignMovingAvg/mul*5
_class+
)'loc:@batch_normalization_12/moving_mean*
dtype0
?
7batch_normalization_12/AssignMovingAvg/ReadVariableOp_1ReadVariableOp"batch_normalization_12/moving_mean;^batch_normalization_12/AssignMovingAvg/AssignSubVariableOp*
_output_shapes
:*5
_class+
)'loc:@batch_normalization_12/moving_mean*
dtype0
?
.batch_normalization_12/AssignMovingAvg_1/sub/xConst*
valueB
 *  ??*9
_class/
-+loc:@batch_normalization_12/moving_variance*
dtype0*
_output_shapes
: 
?
,batch_normalization_12/AssignMovingAvg_1/subSub.batch_normalization_12/AssignMovingAvg_1/sub/x#batch_normalization_12/cond_1/Merge*
T0*9
_class/
-+loc:@batch_normalization_12/moving_variance*
_output_shapes
: 
?
7batch_normalization_12/AssignMovingAvg_1/ReadVariableOpReadVariableOp&batch_normalization_12/moving_variance*
_output_shapes
:*
dtype0
?
.batch_normalization_12/AssignMovingAvg_1/sub_1Sub7batch_normalization_12/AssignMovingAvg_1/ReadVariableOp#batch_normalization_12/cond/Merge_2*
T0*9
_class/
-+loc:@batch_normalization_12/moving_variance*
_output_shapes
:
?
,batch_normalization_12/AssignMovingAvg_1/mulMul.batch_normalization_12/AssignMovingAvg_1/sub_1,batch_normalization_12/AssignMovingAvg_1/sub*
_output_shapes
:*
T0*9
_class/
-+loc:@batch_normalization_12/moving_variance
?
<batch_normalization_12/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp&batch_normalization_12/moving_variance,batch_normalization_12/AssignMovingAvg_1/mul*9
_class/
-+loc:@batch_normalization_12/moving_variance*
dtype0
?
9batch_normalization_12/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp&batch_normalization_12/moving_variance=^batch_normalization_12/AssignMovingAvg_1/AssignSubVariableOp*
_output_shapes
:*9
_class/
-+loc:@batch_normalization_12/moving_variance*
dtype0
|
leaky_re_lu_1_1/LeakyRelu	LeakyRelu!batch_normalization_12/cond/Merge*1
_output_shapes
:???????????
?
0conv2d_8/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"             *"
_class
loc:@conv2d_8/kernel
?
.conv2d_8/kernel/Initializer/random_uniform/minConst*
valueB
 *????*"
_class
loc:@conv2d_8/kernel*
dtype0*
_output_shapes
: 
?
.conv2d_8/kernel/Initializer/random_uniform/maxConst*
valueB
 *???=*"
_class
loc:@conv2d_8/kernel*
dtype0*
_output_shapes
: 
?
8conv2d_8/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_8/kernel/Initializer/random_uniform/shape*
seed22*
dtype0*&
_output_shapes
: *
seed???)*
T0*"
_class
loc:@conv2d_8/kernel
?
.conv2d_8/kernel/Initializer/random_uniform/subSub.conv2d_8/kernel/Initializer/random_uniform/max.conv2d_8/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: 
?
.conv2d_8/kernel/Initializer/random_uniform/mulMul8conv2d_8/kernel/Initializer/random_uniform/RandomUniform.conv2d_8/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_8/kernel*&
_output_shapes
: 
?
*conv2d_8/kernel/Initializer/random_uniformAdd.conv2d_8/kernel/Initializer/random_uniform/mul.conv2d_8/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_8/kernel*&
_output_shapes
: 
?
conv2d_8/kernelVarHandleOp*
_output_shapes
: *
shape: * 
shared_nameconv2d_8/kernel*"
_class
loc:@conv2d_8/kernel*
dtype0
o
0conv2d_8/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_8/kernel*
_output_shapes
: 
?
conv2d_8/kernel/AssignAssignVariableOpconv2d_8/kernel*conv2d_8/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_8/kernel*
dtype0
?
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*"
_class
loc:@conv2d_8/kernel*
dtype0*&
_output_shapes
: 
?
conv2d_8/bias/Initializer/zerosConst*
valueB *    * 
_class
loc:@conv2d_8/bias*
dtype0*
_output_shapes
: 
?
conv2d_8/biasVarHandleOp*
shape: *
shared_nameconv2d_8/bias* 
_class
loc:@conv2d_8/bias*
dtype0*
_output_shapes
: 
k
.conv2d_8/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_8/bias*
_output_shapes
: 
?
conv2d_8/bias/AssignAssignVariableOpconv2d_8/biasconv2d_8/bias/Initializer/zeros* 
_class
loc:@conv2d_8/bias*
dtype0
?
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes
: * 
_class
loc:@conv2d_8/bias*
dtype0
g
conv2d_8/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0
v
conv2d_8/Conv2D/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
: *
dtype0
?
conv2d_8/Conv2DConv2Dleaky_re_lu_1_1/LeakyReluconv2d_8/Conv2D/ReadVariableOp*
strides
*1
_output_shapes
:??????????? *
paddingSAME*
T0
i
conv2d_8/BiasAdd/ReadVariableOpReadVariableOpconv2d_8/bias*
dtype0*
_output_shapes
: 
?
conv2d_8/BiasAddBiasAddconv2d_8/Conv2Dconv2d_8/BiasAdd/ReadVariableOp*
T0*1
_output_shapes
:??????????? 
?
-batch_normalization_13/gamma/Initializer/onesConst*
valueB *  ??*/
_class%
#!loc:@batch_normalization_13/gamma*
dtype0*
_output_shapes
: 
?
batch_normalization_13/gammaVarHandleOp*-
shared_namebatch_normalization_13/gamma*/
_class%
#!loc:@batch_normalization_13/gamma*
dtype0*
_output_shapes
: *
shape: 
?
=batch_normalization_13/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_13/gamma*
_output_shapes
: 
?
#batch_normalization_13/gamma/AssignAssignVariableOpbatch_normalization_13/gamma-batch_normalization_13/gamma/Initializer/ones*/
_class%
#!loc:@batch_normalization_13/gamma*
dtype0
?
0batch_normalization_13/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_13/gamma*/
_class%
#!loc:@batch_normalization_13/gamma*
dtype0*
_output_shapes
: 
?
-batch_normalization_13/beta/Initializer/zerosConst*
_output_shapes
: *
valueB *    *.
_class$
" loc:@batch_normalization_13/beta*
dtype0
?
batch_normalization_13/betaVarHandleOp*,
shared_namebatch_normalization_13/beta*.
_class$
" loc:@batch_normalization_13/beta*
dtype0*
_output_shapes
: *
shape: 
?
<batch_normalization_13/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_13/beta*
_output_shapes
: 
?
"batch_normalization_13/beta/AssignAssignVariableOpbatch_normalization_13/beta-batch_normalization_13/beta/Initializer/zeros*.
_class$
" loc:@batch_normalization_13/beta*
dtype0
?
/batch_normalization_13/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_13/beta*.
_class$
" loc:@batch_normalization_13/beta*
dtype0*
_output_shapes
: 
?
4batch_normalization_13/moving_mean/Initializer/zerosConst*
_output_shapes
: *
valueB *    *5
_class+
)'loc:@batch_normalization_13/moving_mean*
dtype0
?
"batch_normalization_13/moving_meanVarHandleOp*
_output_shapes
: *
shape: *3
shared_name$"batch_normalization_13/moving_mean*5
_class+
)'loc:@batch_normalization_13/moving_mean*
dtype0
?
Cbatch_normalization_13/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp"batch_normalization_13/moving_mean*
_output_shapes
: 
?
)batch_normalization_13/moving_mean/AssignAssignVariableOp"batch_normalization_13/moving_mean4batch_normalization_13/moving_mean/Initializer/zeros*
dtype0*5
_class+
)'loc:@batch_normalization_13/moving_mean
?
6batch_normalization_13/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_13/moving_mean*5
_class+
)'loc:@batch_normalization_13/moving_mean*
dtype0*
_output_shapes
: 
?
7batch_normalization_13/moving_variance/Initializer/onesConst*
valueB *  ??*9
_class/
-+loc:@batch_normalization_13/moving_variance*
dtype0*
_output_shapes
: 
?
&batch_normalization_13/moving_varianceVarHandleOp*
dtype0*
_output_shapes
: *
shape: *7
shared_name(&batch_normalization_13/moving_variance*9
_class/
-+loc:@batch_normalization_13/moving_variance
?
Gbatch_normalization_13/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp&batch_normalization_13/moving_variance*
_output_shapes
: 
?
-batch_normalization_13/moving_variance/AssignAssignVariableOp&batch_normalization_13/moving_variance7batch_normalization_13/moving_variance/Initializer/ones*9
_class/
-+loc:@batch_normalization_13/moving_variance*
dtype0
?
:batch_normalization_13/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_13/moving_variance*
_output_shapes
: *9
_class/
-+loc:@batch_normalization_13/moving_variance*
dtype0
{
"batch_normalization_13/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

w
$batch_normalization_13/cond/switch_tIdentity$batch_normalization_13/cond/Switch:1*
T0
*
_output_shapes
: 
u
$batch_normalization_13/cond/switch_fIdentity"batch_normalization_13/cond/Switch*
T0
*
_output_shapes
: 
f
#batch_normalization_13/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
*batch_normalization_13/cond/ReadVariableOpReadVariableOp3batch_normalization_13/cond/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
: 
?
1batch_normalization_13/cond/ReadVariableOp/SwitchSwitchbatch_normalization_13/gamma#batch_normalization_13/cond/pred_id*
_output_shapes
: : *
T0*/
_class%
#!loc:@batch_normalization_13/gamma
?
,batch_normalization_13/cond/ReadVariableOp_1ReadVariableOp5batch_normalization_13/cond/ReadVariableOp_1/Switch:1*
_output_shapes
: *
dtype0
?
3batch_normalization_13/cond/ReadVariableOp_1/SwitchSwitchbatch_normalization_13/beta#batch_normalization_13/cond/pred_id*
_output_shapes
: : *
T0*.
_class$
" loc:@batch_normalization_13/beta
?
!batch_normalization_13/cond/ConstConst%^batch_normalization_13/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
#batch_normalization_13/cond/Const_1Const%^batch_normalization_13/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
*batch_normalization_13/cond/FusedBatchNormFusedBatchNorm3batch_normalization_13/cond/FusedBatchNorm/Switch:1*batch_normalization_13/cond/ReadVariableOp,batch_normalization_13/cond/ReadVariableOp_1!batch_normalization_13/cond/Const#batch_normalization_13/cond/Const_1*
epsilon%o?:*
T0*I
_output_shapes7
5:??????????? : : : : 
?
1batch_normalization_13/cond/FusedBatchNorm/SwitchSwitchconv2d_8/BiasAdd#batch_normalization_13/cond/pred_id*
T0*#
_class
loc:@conv2d_8/BiasAdd*N
_output_shapes<
::??????????? :??????????? 
?
,batch_normalization_13/cond/ReadVariableOp_2ReadVariableOp3batch_normalization_13/cond/ReadVariableOp_2/Switch*
dtype0*
_output_shapes
: 
?
3batch_normalization_13/cond/ReadVariableOp_2/SwitchSwitchbatch_normalization_13/gamma#batch_normalization_13/cond/pred_id*
T0*/
_class%
#!loc:@batch_normalization_13/gamma*
_output_shapes
: : 
?
,batch_normalization_13/cond/ReadVariableOp_3ReadVariableOp3batch_normalization_13/cond/ReadVariableOp_3/Switch*
dtype0*
_output_shapes
: 
?
3batch_normalization_13/cond/ReadVariableOp_3/SwitchSwitchbatch_normalization_13/beta#batch_normalization_13/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_13/beta*
_output_shapes
: : 
?
;batch_normalization_13/cond/FusedBatchNorm_1/ReadVariableOpReadVariableOpBbatch_normalization_13/cond/FusedBatchNorm_1/ReadVariableOp/Switch*
dtype0*
_output_shapes
: 
?
Bbatch_normalization_13/cond/FusedBatchNorm_1/ReadVariableOp/SwitchSwitch"batch_normalization_13/moving_mean#batch_normalization_13/cond/pred_id*
_output_shapes
: : *
T0*5
_class+
)'loc:@batch_normalization_13/moving_mean
?
=batch_normalization_13/cond/FusedBatchNorm_1/ReadVariableOp_1ReadVariableOpDbatch_normalization_13/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
: 
?
Dbatch_normalization_13/cond/FusedBatchNorm_1/ReadVariableOp_1/SwitchSwitch&batch_normalization_13/moving_variance#batch_normalization_13/cond/pred_id*
T0*9
_class/
-+loc:@batch_normalization_13/moving_variance*
_output_shapes
: : 
?
,batch_normalization_13/cond/FusedBatchNorm_1FusedBatchNorm3batch_normalization_13/cond/FusedBatchNorm_1/Switch,batch_normalization_13/cond/ReadVariableOp_2,batch_normalization_13/cond/ReadVariableOp_3;batch_normalization_13/cond/FusedBatchNorm_1/ReadVariableOp=batch_normalization_13/cond/FusedBatchNorm_1/ReadVariableOp_1*
T0*I
_output_shapes7
5:??????????? : : : : *
is_training( *
epsilon%o?:
?
3batch_normalization_13/cond/FusedBatchNorm_1/SwitchSwitchconv2d_8/BiasAdd#batch_normalization_13/cond/pred_id*#
_class
loc:@conv2d_8/BiasAdd*N
_output_shapes<
::??????????? :??????????? *
T0
?
!batch_normalization_13/cond/MergeMerge,batch_normalization_13/cond/FusedBatchNorm_1*batch_normalization_13/cond/FusedBatchNorm*
T0*
N*3
_output_shapes!
:??????????? : 
?
#batch_normalization_13/cond/Merge_1Merge.batch_normalization_13/cond/FusedBatchNorm_1:1,batch_normalization_13/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes

: : 
?
#batch_normalization_13/cond/Merge_2Merge.batch_normalization_13/cond/FusedBatchNorm_1:2,batch_normalization_13/cond/FusedBatchNorm:2*
_output_shapes

: : *
T0*
N
}
$batch_normalization_13/cond_1/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
{
&batch_normalization_13/cond_1/switch_tIdentity&batch_normalization_13/cond_1/Switch:1*
T0
*
_output_shapes
: 
y
&batch_normalization_13/cond_1/switch_fIdentity$batch_normalization_13/cond_1/Switch*
T0
*
_output_shapes
: 
h
%batch_normalization_13/cond_1/pred_idIdentitykeras_learning_phase*
_output_shapes
: *
T0

?
#batch_normalization_13/cond_1/ConstConst'^batch_normalization_13/cond_1/switch_t*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
%batch_normalization_13/cond_1/Const_1Const'^batch_normalization_13/cond_1/switch_f*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
#batch_normalization_13/cond_1/MergeMerge%batch_normalization_13/cond_1/Const_1#batch_normalization_13/cond_1/Const*
T0*
N*
_output_shapes
: : 
?
,batch_normalization_13/AssignMovingAvg/sub/xConst*
valueB
 *  ??*5
_class+
)'loc:@batch_normalization_13/moving_mean*
dtype0*
_output_shapes
: 
?
*batch_normalization_13/AssignMovingAvg/subSub,batch_normalization_13/AssignMovingAvg/sub/x#batch_normalization_13/cond_1/Merge*
_output_shapes
: *
T0*5
_class+
)'loc:@batch_normalization_13/moving_mean
?
5batch_normalization_13/AssignMovingAvg/ReadVariableOpReadVariableOp"batch_normalization_13/moving_mean*
dtype0*
_output_shapes
: 
?
,batch_normalization_13/AssignMovingAvg/sub_1Sub5batch_normalization_13/AssignMovingAvg/ReadVariableOp#batch_normalization_13/cond/Merge_1*
T0*5
_class+
)'loc:@batch_normalization_13/moving_mean*
_output_shapes
: 
?
*batch_normalization_13/AssignMovingAvg/mulMul,batch_normalization_13/AssignMovingAvg/sub_1*batch_normalization_13/AssignMovingAvg/sub*5
_class+
)'loc:@batch_normalization_13/moving_mean*
_output_shapes
: *
T0
?
:batch_normalization_13/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp"batch_normalization_13/moving_mean*batch_normalization_13/AssignMovingAvg/mul*5
_class+
)'loc:@batch_normalization_13/moving_mean*
dtype0
?
7batch_normalization_13/AssignMovingAvg/ReadVariableOp_1ReadVariableOp"batch_normalization_13/moving_mean;^batch_normalization_13/AssignMovingAvg/AssignSubVariableOp*5
_class+
)'loc:@batch_normalization_13/moving_mean*
dtype0*
_output_shapes
: 
?
.batch_normalization_13/AssignMovingAvg_1/sub/xConst*
valueB
 *  ??*9
_class/
-+loc:@batch_normalization_13/moving_variance*
dtype0*
_output_shapes
: 
?
,batch_normalization_13/AssignMovingAvg_1/subSub.batch_normalization_13/AssignMovingAvg_1/sub/x#batch_normalization_13/cond_1/Merge*
T0*9
_class/
-+loc:@batch_normalization_13/moving_variance*
_output_shapes
: 
?
7batch_normalization_13/AssignMovingAvg_1/ReadVariableOpReadVariableOp&batch_normalization_13/moving_variance*
dtype0*
_output_shapes
: 
?
.batch_normalization_13/AssignMovingAvg_1/sub_1Sub7batch_normalization_13/AssignMovingAvg_1/ReadVariableOp#batch_normalization_13/cond/Merge_2*
T0*9
_class/
-+loc:@batch_normalization_13/moving_variance*
_output_shapes
: 
?
,batch_normalization_13/AssignMovingAvg_1/mulMul.batch_normalization_13/AssignMovingAvg_1/sub_1,batch_normalization_13/AssignMovingAvg_1/sub*
_output_shapes
: *
T0*9
_class/
-+loc:@batch_normalization_13/moving_variance
?
<batch_normalization_13/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp&batch_normalization_13/moving_variance,batch_normalization_13/AssignMovingAvg_1/mul*9
_class/
-+loc:@batch_normalization_13/moving_variance*
dtype0
?
9batch_normalization_13/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp&batch_normalization_13/moving_variance=^batch_normalization_13/AssignMovingAvg_1/AssignSubVariableOp*9
_class/
-+loc:@batch_normalization_13/moving_variance*
dtype0*
_output_shapes
: 
|
leaky_re_lu_1_2/LeakyRelu	LeakyRelu!batch_normalization_13/cond/Merge*1
_output_shapes
:??????????? 
?
0conv2d_9/kernel/Initializer/random_uniform/shapeConst*%
valueB"          @   *"
_class
loc:@conv2d_9/kernel*
dtype0*
_output_shapes
:
?
.conv2d_9/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *?\??*"
_class
loc:@conv2d_9/kernel
?
.conv2d_9/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *?\?=*"
_class
loc:@conv2d_9/kernel
?
8conv2d_9/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_9/kernel/Initializer/random_uniform/shape*"
_class
loc:@conv2d_9/kernel*
seed22*
dtype0*&
_output_shapes
: @*
seed???)*
T0
?
.conv2d_9/kernel/Initializer/random_uniform/subSub.conv2d_9/kernel/Initializer/random_uniform/max.conv2d_9/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_9/kernel*
_output_shapes
: 
?
.conv2d_9/kernel/Initializer/random_uniform/mulMul8conv2d_9/kernel/Initializer/random_uniform/RandomUniform.conv2d_9/kernel/Initializer/random_uniform/sub*"
_class
loc:@conv2d_9/kernel*&
_output_shapes
: @*
T0
?
*conv2d_9/kernel/Initializer/random_uniformAdd.conv2d_9/kernel/Initializer/random_uniform/mul.conv2d_9/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_9/kernel*&
_output_shapes
: @
?
conv2d_9/kernelVarHandleOp*
shape: @* 
shared_nameconv2d_9/kernel*"
_class
loc:@conv2d_9/kernel*
dtype0*
_output_shapes
: 
o
0conv2d_9/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_9/kernel*
_output_shapes
: 
?
conv2d_9/kernel/AssignAssignVariableOpconv2d_9/kernel*conv2d_9/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_9/kernel*
dtype0
?
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*"
_class
loc:@conv2d_9/kernel*
dtype0*&
_output_shapes
: @
?
conv2d_9/bias/Initializer/zerosConst*
valueB@*    * 
_class
loc:@conv2d_9/bias*
dtype0*
_output_shapes
:@
?
conv2d_9/biasVarHandleOp*
shared_nameconv2d_9/bias* 
_class
loc:@conv2d_9/bias*
dtype0*
_output_shapes
: *
shape:@
k
.conv2d_9/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_9/bias*
_output_shapes
: 
?
conv2d_9/bias/AssignAssignVariableOpconv2d_9/biasconv2d_9/bias/Initializer/zeros* 
_class
loc:@conv2d_9/bias*
dtype0
?
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias* 
_class
loc:@conv2d_9/bias*
dtype0*
_output_shapes
:@
g
conv2d_9/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
v
conv2d_9/Conv2D/ReadVariableOpReadVariableOpconv2d_9/kernel*
dtype0*&
_output_shapes
: @
?
conv2d_9/Conv2DConv2Dleaky_re_lu_1_2/LeakyReluconv2d_9/Conv2D/ReadVariableOp*
paddingSAME*
T0*
strides
*0
_output_shapes
:?????????@?@
i
conv2d_9/BiasAdd/ReadVariableOpReadVariableOpconv2d_9/bias*
dtype0*
_output_shapes
:@
?
conv2d_9/BiasAddBiasAddconv2d_9/Conv2Dconv2d_9/BiasAdd/ReadVariableOp*0
_output_shapes
:?????????@?@*
T0
?
-batch_normalization_14/gamma/Initializer/onesConst*
valueB@*  ??*/
_class%
#!loc:@batch_normalization_14/gamma*
dtype0*
_output_shapes
:@
?
batch_normalization_14/gammaVarHandleOp*/
_class%
#!loc:@batch_normalization_14/gamma*
dtype0*
_output_shapes
: *
shape:@*-
shared_namebatch_normalization_14/gamma
?
=batch_normalization_14/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_14/gamma*
_output_shapes
: 
?
#batch_normalization_14/gamma/AssignAssignVariableOpbatch_normalization_14/gamma-batch_normalization_14/gamma/Initializer/ones*
dtype0*/
_class%
#!loc:@batch_normalization_14/gamma
?
0batch_normalization_14/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_14/gamma*/
_class%
#!loc:@batch_normalization_14/gamma*
dtype0*
_output_shapes
:@
?
-batch_normalization_14/beta/Initializer/zerosConst*
valueB@*    *.
_class$
" loc:@batch_normalization_14/beta*
dtype0*
_output_shapes
:@
?
batch_normalization_14/betaVarHandleOp*,
shared_namebatch_normalization_14/beta*.
_class$
" loc:@batch_normalization_14/beta*
dtype0*
_output_shapes
: *
shape:@
?
<batch_normalization_14/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_14/beta*
_output_shapes
: 
?
"batch_normalization_14/beta/AssignAssignVariableOpbatch_normalization_14/beta-batch_normalization_14/beta/Initializer/zeros*.
_class$
" loc:@batch_normalization_14/beta*
dtype0
?
/batch_normalization_14/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_14/beta*.
_class$
" loc:@batch_normalization_14/beta*
dtype0*
_output_shapes
:@
?
4batch_normalization_14/moving_mean/Initializer/zerosConst*
valueB@*    *5
_class+
)'loc:@batch_normalization_14/moving_mean*
dtype0*
_output_shapes
:@
?
"batch_normalization_14/moving_meanVarHandleOp*3
shared_name$"batch_normalization_14/moving_mean*5
_class+
)'loc:@batch_normalization_14/moving_mean*
dtype0*
_output_shapes
: *
shape:@
?
Cbatch_normalization_14/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp"batch_normalization_14/moving_mean*
_output_shapes
: 
?
)batch_normalization_14/moving_mean/AssignAssignVariableOp"batch_normalization_14/moving_mean4batch_normalization_14/moving_mean/Initializer/zeros*5
_class+
)'loc:@batch_normalization_14/moving_mean*
dtype0
?
6batch_normalization_14/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_14/moving_mean*5
_class+
)'loc:@batch_normalization_14/moving_mean*
dtype0*
_output_shapes
:@
?
7batch_normalization_14/moving_variance/Initializer/onesConst*
_output_shapes
:@*
valueB@*  ??*9
_class/
-+loc:@batch_normalization_14/moving_variance*
dtype0
?
&batch_normalization_14/moving_varianceVarHandleOp*
shape:@*7
shared_name(&batch_normalization_14/moving_variance*9
_class/
-+loc:@batch_normalization_14/moving_variance*
dtype0*
_output_shapes
: 
?
Gbatch_normalization_14/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp&batch_normalization_14/moving_variance*
_output_shapes
: 
?
-batch_normalization_14/moving_variance/AssignAssignVariableOp&batch_normalization_14/moving_variance7batch_normalization_14/moving_variance/Initializer/ones*9
_class/
-+loc:@batch_normalization_14/moving_variance*
dtype0
?
:batch_normalization_14/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_14/moving_variance*9
_class/
-+loc:@batch_normalization_14/moving_variance*
dtype0*
_output_shapes
:@
{
"batch_normalization_14/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
w
$batch_normalization_14/cond/switch_tIdentity$batch_normalization_14/cond/Switch:1*
_output_shapes
: *
T0

u
$batch_normalization_14/cond/switch_fIdentity"batch_normalization_14/cond/Switch*
T0
*
_output_shapes
: 
f
#batch_normalization_14/cond/pred_idIdentitykeras_learning_phase*
_output_shapes
: *
T0

?
*batch_normalization_14/cond/ReadVariableOpReadVariableOp3batch_normalization_14/cond/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:@
?
1batch_normalization_14/cond/ReadVariableOp/SwitchSwitchbatch_normalization_14/gamma#batch_normalization_14/cond/pred_id*
T0*/
_class%
#!loc:@batch_normalization_14/gamma*
_output_shapes
: : 
?
,batch_normalization_14/cond/ReadVariableOp_1ReadVariableOp5batch_normalization_14/cond/ReadVariableOp_1/Switch:1*
_output_shapes
:@*
dtype0
?
3batch_normalization_14/cond/ReadVariableOp_1/SwitchSwitchbatch_normalization_14/beta#batch_normalization_14/cond/pred_id*
_output_shapes
: : *
T0*.
_class$
" loc:@batch_normalization_14/beta
?
!batch_normalization_14/cond/ConstConst%^batch_normalization_14/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
#batch_normalization_14/cond/Const_1Const%^batch_normalization_14/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
*batch_normalization_14/cond/FusedBatchNormFusedBatchNorm3batch_normalization_14/cond/FusedBatchNorm/Switch:1*batch_normalization_14/cond/ReadVariableOp,batch_normalization_14/cond/ReadVariableOp_1!batch_normalization_14/cond/Const#batch_normalization_14/cond/Const_1*H
_output_shapes6
4:?????????@?@:@:@:@:@*
epsilon%o?:*
T0
?
1batch_normalization_14/cond/FusedBatchNorm/SwitchSwitchconv2d_9/BiasAdd#batch_normalization_14/cond/pred_id*
T0*#
_class
loc:@conv2d_9/BiasAdd*L
_output_shapes:
8:?????????@?@:?????????@?@
?
,batch_normalization_14/cond/ReadVariableOp_2ReadVariableOp3batch_normalization_14/cond/ReadVariableOp_2/Switch*
dtype0*
_output_shapes
:@
?
3batch_normalization_14/cond/ReadVariableOp_2/SwitchSwitchbatch_normalization_14/gamma#batch_normalization_14/cond/pred_id*
T0*/
_class%
#!loc:@batch_normalization_14/gamma*
_output_shapes
: : 
?
,batch_normalization_14/cond/ReadVariableOp_3ReadVariableOp3batch_normalization_14/cond/ReadVariableOp_3/Switch*
dtype0*
_output_shapes
:@
?
3batch_normalization_14/cond/ReadVariableOp_3/SwitchSwitchbatch_normalization_14/beta#batch_normalization_14/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_14/beta*
_output_shapes
: : 
?
;batch_normalization_14/cond/FusedBatchNorm_1/ReadVariableOpReadVariableOpBbatch_normalization_14/cond/FusedBatchNorm_1/ReadVariableOp/Switch*
dtype0*
_output_shapes
:@
?
Bbatch_normalization_14/cond/FusedBatchNorm_1/ReadVariableOp/SwitchSwitch"batch_normalization_14/moving_mean#batch_normalization_14/cond/pred_id*
T0*5
_class+
)'loc:@batch_normalization_14/moving_mean*
_output_shapes
: : 
?
=batch_normalization_14/cond/FusedBatchNorm_1/ReadVariableOp_1ReadVariableOpDbatch_normalization_14/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:@
?
Dbatch_normalization_14/cond/FusedBatchNorm_1/ReadVariableOp_1/SwitchSwitch&batch_normalization_14/moving_variance#batch_normalization_14/cond/pred_id*
T0*9
_class/
-+loc:@batch_normalization_14/moving_variance*
_output_shapes
: : 
?
,batch_normalization_14/cond/FusedBatchNorm_1FusedBatchNorm3batch_normalization_14/cond/FusedBatchNorm_1/Switch,batch_normalization_14/cond/ReadVariableOp_2,batch_normalization_14/cond/ReadVariableOp_3;batch_normalization_14/cond/FusedBatchNorm_1/ReadVariableOp=batch_normalization_14/cond/FusedBatchNorm_1/ReadVariableOp_1*
T0*H
_output_shapes6
4:?????????@?@:@:@:@:@*
is_training( *
epsilon%o?:
?
3batch_normalization_14/cond/FusedBatchNorm_1/SwitchSwitchconv2d_9/BiasAdd#batch_normalization_14/cond/pred_id*
T0*#
_class
loc:@conv2d_9/BiasAdd*L
_output_shapes:
8:?????????@?@:?????????@?@
?
!batch_normalization_14/cond/MergeMerge,batch_normalization_14/cond/FusedBatchNorm_1*batch_normalization_14/cond/FusedBatchNorm*2
_output_shapes 
:?????????@?@: *
T0*
N
?
#batch_normalization_14/cond/Merge_1Merge.batch_normalization_14/cond/FusedBatchNorm_1:1,batch_normalization_14/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes

:@: 
?
#batch_normalization_14/cond/Merge_2Merge.batch_normalization_14/cond/FusedBatchNorm_1:2,batch_normalization_14/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes

:@: 
}
$batch_normalization_14/cond_1/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
{
&batch_normalization_14/cond_1/switch_tIdentity&batch_normalization_14/cond_1/Switch:1*
_output_shapes
: *
T0

y
&batch_normalization_14/cond_1/switch_fIdentity$batch_normalization_14/cond_1/Switch*
_output_shapes
: *
T0

h
%batch_normalization_14/cond_1/pred_idIdentitykeras_learning_phase*
_output_shapes
: *
T0

?
#batch_normalization_14/cond_1/ConstConst'^batch_normalization_14/cond_1/switch_t*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
%batch_normalization_14/cond_1/Const_1Const'^batch_normalization_14/cond_1/switch_f*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
#batch_normalization_14/cond_1/MergeMerge%batch_normalization_14/cond_1/Const_1#batch_normalization_14/cond_1/Const*
T0*
N*
_output_shapes
: : 
?
,batch_normalization_14/AssignMovingAvg/sub/xConst*
valueB
 *  ??*5
_class+
)'loc:@batch_normalization_14/moving_mean*
dtype0*
_output_shapes
: 
?
*batch_normalization_14/AssignMovingAvg/subSub,batch_normalization_14/AssignMovingAvg/sub/x#batch_normalization_14/cond_1/Merge*
_output_shapes
: *
T0*5
_class+
)'loc:@batch_normalization_14/moving_mean
?
5batch_normalization_14/AssignMovingAvg/ReadVariableOpReadVariableOp"batch_normalization_14/moving_mean*
dtype0*
_output_shapes
:@
?
,batch_normalization_14/AssignMovingAvg/sub_1Sub5batch_normalization_14/AssignMovingAvg/ReadVariableOp#batch_normalization_14/cond/Merge_1*
_output_shapes
:@*
T0*5
_class+
)'loc:@batch_normalization_14/moving_mean
?
*batch_normalization_14/AssignMovingAvg/mulMul,batch_normalization_14/AssignMovingAvg/sub_1*batch_normalization_14/AssignMovingAvg/sub*
_output_shapes
:@*
T0*5
_class+
)'loc:@batch_normalization_14/moving_mean
?
:batch_normalization_14/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp"batch_normalization_14/moving_mean*batch_normalization_14/AssignMovingAvg/mul*5
_class+
)'loc:@batch_normalization_14/moving_mean*
dtype0
?
7batch_normalization_14/AssignMovingAvg/ReadVariableOp_1ReadVariableOp"batch_normalization_14/moving_mean;^batch_normalization_14/AssignMovingAvg/AssignSubVariableOp*
_output_shapes
:@*5
_class+
)'loc:@batch_normalization_14/moving_mean*
dtype0
?
.batch_normalization_14/AssignMovingAvg_1/sub/xConst*
_output_shapes
: *
valueB
 *  ??*9
_class/
-+loc:@batch_normalization_14/moving_variance*
dtype0
?
,batch_normalization_14/AssignMovingAvg_1/subSub.batch_normalization_14/AssignMovingAvg_1/sub/x#batch_normalization_14/cond_1/Merge*
T0*9
_class/
-+loc:@batch_normalization_14/moving_variance*
_output_shapes
: 
?
7batch_normalization_14/AssignMovingAvg_1/ReadVariableOpReadVariableOp&batch_normalization_14/moving_variance*
dtype0*
_output_shapes
:@
?
.batch_normalization_14/AssignMovingAvg_1/sub_1Sub7batch_normalization_14/AssignMovingAvg_1/ReadVariableOp#batch_normalization_14/cond/Merge_2*9
_class/
-+loc:@batch_normalization_14/moving_variance*
_output_shapes
:@*
T0
?
,batch_normalization_14/AssignMovingAvg_1/mulMul.batch_normalization_14/AssignMovingAvg_1/sub_1,batch_normalization_14/AssignMovingAvg_1/sub*
T0*9
_class/
-+loc:@batch_normalization_14/moving_variance*
_output_shapes
:@
?
<batch_normalization_14/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp&batch_normalization_14/moving_variance,batch_normalization_14/AssignMovingAvg_1/mul*9
_class/
-+loc:@batch_normalization_14/moving_variance*
dtype0
?
9batch_normalization_14/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp&batch_normalization_14/moving_variance=^batch_normalization_14/AssignMovingAvg_1/AssignSubVariableOp*9
_class/
-+loc:@batch_normalization_14/moving_variance*
dtype0*
_output_shapes
:@
{
leaky_re_lu_1_3/LeakyRelu	LeakyRelu!batch_normalization_14/cond/Merge*0
_output_shapes
:?????????@?@
?
1conv2d_10/kernel/Initializer/random_uniform/shapeConst*%
valueB"      @   ?   *#
_class
loc:@conv2d_10/kernel*
dtype0*
_output_shapes
:
?
/conv2d_10/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *??z?*#
_class
loc:@conv2d_10/kernel
?
/conv2d_10/kernel/Initializer/random_uniform/maxConst*
valueB
 *??z=*#
_class
loc:@conv2d_10/kernel*
dtype0*
_output_shapes
: 
?
9conv2d_10/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_10/kernel/Initializer/random_uniform/shape*
dtype0*'
_output_shapes
:@?*
seed???)*
T0*#
_class
loc:@conv2d_10/kernel*
seed22
?
/conv2d_10/kernel/Initializer/random_uniform/subSub/conv2d_10/kernel/Initializer/random_uniform/max/conv2d_10/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_10/kernel*
_output_shapes
: 
?
/conv2d_10/kernel/Initializer/random_uniform/mulMul9conv2d_10/kernel/Initializer/random_uniform/RandomUniform/conv2d_10/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_10/kernel*'
_output_shapes
:@?
?
+conv2d_10/kernel/Initializer/random_uniformAdd/conv2d_10/kernel/Initializer/random_uniform/mul/conv2d_10/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_10/kernel*'
_output_shapes
:@?
?
conv2d_10/kernelVarHandleOp*#
_class
loc:@conv2d_10/kernel*
dtype0*
_output_shapes
: *
shape:@?*!
shared_nameconv2d_10/kernel
q
1conv2d_10/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_10/kernel*
_output_shapes
: 
?
conv2d_10/kernel/AssignAssignVariableOpconv2d_10/kernel+conv2d_10/kernel/Initializer/random_uniform*#
_class
loc:@conv2d_10/kernel*
dtype0
?
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*#
_class
loc:@conv2d_10/kernel*
dtype0*'
_output_shapes
:@?
?
 conv2d_10/bias/Initializer/zerosConst*
valueB?*    *!
_class
loc:@conv2d_10/bias*
dtype0*
_output_shapes	
:?
?
conv2d_10/biasVarHandleOp*
shared_nameconv2d_10/bias*!
_class
loc:@conv2d_10/bias*
dtype0*
_output_shapes
: *
shape:?
m
/conv2d_10/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_10/bias*
_output_shapes
: 
?
conv2d_10/bias/AssignAssignVariableOpconv2d_10/bias conv2d_10/bias/Initializer/zeros*
dtype0*!
_class
loc:@conv2d_10/bias
?
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*!
_class
loc:@conv2d_10/bias*
dtype0*
_output_shapes	
:?
h
conv2d_10/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
y
conv2d_10/Conv2D/ReadVariableOpReadVariableOpconv2d_10/kernel*
dtype0*'
_output_shapes
:@?
?
conv2d_10/Conv2DConv2Dleaky_re_lu_1_3/LeakyReluconv2d_10/Conv2D/ReadVariableOp*
strides
*0
_output_shapes
:????????? `?*
paddingSAME*
T0
l
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOpconv2d_10/bias*
dtype0*
_output_shapes	
:?
?
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D conv2d_10/BiasAdd/ReadVariableOp*
T0*0
_output_shapes
:????????? `?
?
-batch_normalization_15/gamma/Initializer/onesConst*
valueB?*  ??*/
_class%
#!loc:@batch_normalization_15/gamma*
dtype0*
_output_shapes	
:?
?
batch_normalization_15/gammaVarHandleOp*
dtype0*
_output_shapes
: *
shape:?*-
shared_namebatch_normalization_15/gamma*/
_class%
#!loc:@batch_normalization_15/gamma
?
=batch_normalization_15/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_15/gamma*
_output_shapes
: 
?
#batch_normalization_15/gamma/AssignAssignVariableOpbatch_normalization_15/gamma-batch_normalization_15/gamma/Initializer/ones*/
_class%
#!loc:@batch_normalization_15/gamma*
dtype0
?
0batch_normalization_15/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_15/gamma*/
_class%
#!loc:@batch_normalization_15/gamma*
dtype0*
_output_shapes	
:?
?
-batch_normalization_15/beta/Initializer/zerosConst*
valueB?*    *.
_class$
" loc:@batch_normalization_15/beta*
dtype0*
_output_shapes	
:?
?
batch_normalization_15/betaVarHandleOp*
dtype0*
_output_shapes
: *
shape:?*,
shared_namebatch_normalization_15/beta*.
_class$
" loc:@batch_normalization_15/beta
?
<batch_normalization_15/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_15/beta*
_output_shapes
: 
?
"batch_normalization_15/beta/AssignAssignVariableOpbatch_normalization_15/beta-batch_normalization_15/beta/Initializer/zeros*.
_class$
" loc:@batch_normalization_15/beta*
dtype0
?
/batch_normalization_15/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_15/beta*
dtype0*
_output_shapes	
:?*.
_class$
" loc:@batch_normalization_15/beta
?
4batch_normalization_15/moving_mean/Initializer/zerosConst*
valueB?*    *5
_class+
)'loc:@batch_normalization_15/moving_mean*
dtype0*
_output_shapes	
:?
?
"batch_normalization_15/moving_meanVarHandleOp*3
shared_name$"batch_normalization_15/moving_mean*5
_class+
)'loc:@batch_normalization_15/moving_mean*
dtype0*
_output_shapes
: *
shape:?
?
Cbatch_normalization_15/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp"batch_normalization_15/moving_mean*
_output_shapes
: 
?
)batch_normalization_15/moving_mean/AssignAssignVariableOp"batch_normalization_15/moving_mean4batch_normalization_15/moving_mean/Initializer/zeros*5
_class+
)'loc:@batch_normalization_15/moving_mean*
dtype0
?
6batch_normalization_15/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_15/moving_mean*
_output_shapes	
:?*5
_class+
)'loc:@batch_normalization_15/moving_mean*
dtype0
?
7batch_normalization_15/moving_variance/Initializer/onesConst*
valueB?*  ??*9
_class/
-+loc:@batch_normalization_15/moving_variance*
dtype0*
_output_shapes	
:?
?
&batch_normalization_15/moving_varianceVarHandleOp*7
shared_name(&batch_normalization_15/moving_variance*9
_class/
-+loc:@batch_normalization_15/moving_variance*
dtype0*
_output_shapes
: *
shape:?
?
Gbatch_normalization_15/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp&batch_normalization_15/moving_variance*
_output_shapes
: 
?
-batch_normalization_15/moving_variance/AssignAssignVariableOp&batch_normalization_15/moving_variance7batch_normalization_15/moving_variance/Initializer/ones*9
_class/
-+loc:@batch_normalization_15/moving_variance*
dtype0
?
:batch_normalization_15/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_15/moving_variance*9
_class/
-+loc:@batch_normalization_15/moving_variance*
dtype0*
_output_shapes	
:?
{
"batch_normalization_15/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

w
$batch_normalization_15/cond/switch_tIdentity$batch_normalization_15/cond/Switch:1*
T0
*
_output_shapes
: 
u
$batch_normalization_15/cond/switch_fIdentity"batch_normalization_15/cond/Switch*
T0
*
_output_shapes
: 
f
#batch_normalization_15/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
*batch_normalization_15/cond/ReadVariableOpReadVariableOp3batch_normalization_15/cond/ReadVariableOp/Switch:1*
dtype0*
_output_shapes	
:?
?
1batch_normalization_15/cond/ReadVariableOp/SwitchSwitchbatch_normalization_15/gamma#batch_normalization_15/cond/pred_id*
T0*/
_class%
#!loc:@batch_normalization_15/gamma*
_output_shapes
: : 
?
,batch_normalization_15/cond/ReadVariableOp_1ReadVariableOp5batch_normalization_15/cond/ReadVariableOp_1/Switch:1*
dtype0*
_output_shapes	
:?
?
3batch_normalization_15/cond/ReadVariableOp_1/SwitchSwitchbatch_normalization_15/beta#batch_normalization_15/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_15/beta*
_output_shapes
: : 
?
!batch_normalization_15/cond/ConstConst%^batch_normalization_15/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
#batch_normalization_15/cond/Const_1Const%^batch_normalization_15/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
*batch_normalization_15/cond/FusedBatchNormFusedBatchNorm3batch_normalization_15/cond/FusedBatchNorm/Switch:1*batch_normalization_15/cond/ReadVariableOp,batch_normalization_15/cond/ReadVariableOp_1!batch_normalization_15/cond/Const#batch_normalization_15/cond/Const_1*
T0*L
_output_shapes:
8:????????? `?:?:?:?:?*
epsilon%o?:
?
1batch_normalization_15/cond/FusedBatchNorm/SwitchSwitchconv2d_10/BiasAdd#batch_normalization_15/cond/pred_id*L
_output_shapes:
8:????????? `?:????????? `?*
T0*$
_class
loc:@conv2d_10/BiasAdd
?
,batch_normalization_15/cond/ReadVariableOp_2ReadVariableOp3batch_normalization_15/cond/ReadVariableOp_2/Switch*
dtype0*
_output_shapes	
:?
?
3batch_normalization_15/cond/ReadVariableOp_2/SwitchSwitchbatch_normalization_15/gamma#batch_normalization_15/cond/pred_id*
T0*/
_class%
#!loc:@batch_normalization_15/gamma*
_output_shapes
: : 
?
,batch_normalization_15/cond/ReadVariableOp_3ReadVariableOp3batch_normalization_15/cond/ReadVariableOp_3/Switch*
dtype0*
_output_shapes	
:?
?
3batch_normalization_15/cond/ReadVariableOp_3/SwitchSwitchbatch_normalization_15/beta#batch_normalization_15/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_15/beta*
_output_shapes
: : 
?
;batch_normalization_15/cond/FusedBatchNorm_1/ReadVariableOpReadVariableOpBbatch_normalization_15/cond/FusedBatchNorm_1/ReadVariableOp/Switch*
dtype0*
_output_shapes	
:?
?
Bbatch_normalization_15/cond/FusedBatchNorm_1/ReadVariableOp/SwitchSwitch"batch_normalization_15/moving_mean#batch_normalization_15/cond/pred_id*5
_class+
)'loc:@batch_normalization_15/moving_mean*
_output_shapes
: : *
T0
?
=batch_normalization_15/cond/FusedBatchNorm_1/ReadVariableOp_1ReadVariableOpDbatch_normalization_15/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch*
dtype0*
_output_shapes	
:?
?
Dbatch_normalization_15/cond/FusedBatchNorm_1/ReadVariableOp_1/SwitchSwitch&batch_normalization_15/moving_variance#batch_normalization_15/cond/pred_id*
T0*9
_class/
-+loc:@batch_normalization_15/moving_variance*
_output_shapes
: : 
?
,batch_normalization_15/cond/FusedBatchNorm_1FusedBatchNorm3batch_normalization_15/cond/FusedBatchNorm_1/Switch,batch_normalization_15/cond/ReadVariableOp_2,batch_normalization_15/cond/ReadVariableOp_3;batch_normalization_15/cond/FusedBatchNorm_1/ReadVariableOp=batch_normalization_15/cond/FusedBatchNorm_1/ReadVariableOp_1*
epsilon%o?:*
T0*L
_output_shapes:
8:????????? `?:?:?:?:?*
is_training( 
?
3batch_normalization_15/cond/FusedBatchNorm_1/SwitchSwitchconv2d_10/BiasAdd#batch_normalization_15/cond/pred_id*
T0*$
_class
loc:@conv2d_10/BiasAdd*L
_output_shapes:
8:????????? `?:????????? `?
?
!batch_normalization_15/cond/MergeMerge,batch_normalization_15/cond/FusedBatchNorm_1*batch_normalization_15/cond/FusedBatchNorm*
T0*
N*2
_output_shapes 
:????????? `?: 
?
#batch_normalization_15/cond/Merge_1Merge.batch_normalization_15/cond/FusedBatchNorm_1:1,batch_normalization_15/cond/FusedBatchNorm:1*
N*
_output_shapes
	:?: *
T0
?
#batch_normalization_15/cond/Merge_2Merge.batch_normalization_15/cond/FusedBatchNorm_1:2,batch_normalization_15/cond/FusedBatchNorm:2*
N*
_output_shapes
	:?: *
T0
}
$batch_normalization_15/cond_1/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

{
&batch_normalization_15/cond_1/switch_tIdentity&batch_normalization_15/cond_1/Switch:1*
T0
*
_output_shapes
: 
y
&batch_normalization_15/cond_1/switch_fIdentity$batch_normalization_15/cond_1/Switch*
T0
*
_output_shapes
: 
h
%batch_normalization_15/cond_1/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
#batch_normalization_15/cond_1/ConstConst'^batch_normalization_15/cond_1/switch_t*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
%batch_normalization_15/cond_1/Const_1Const'^batch_normalization_15/cond_1/switch_f*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
#batch_normalization_15/cond_1/MergeMerge%batch_normalization_15/cond_1/Const_1#batch_normalization_15/cond_1/Const*
T0*
N*
_output_shapes
: : 
?
,batch_normalization_15/AssignMovingAvg/sub/xConst*
valueB
 *  ??*5
_class+
)'loc:@batch_normalization_15/moving_mean*
dtype0*
_output_shapes
: 
?
*batch_normalization_15/AssignMovingAvg/subSub,batch_normalization_15/AssignMovingAvg/sub/x#batch_normalization_15/cond_1/Merge*
T0*5
_class+
)'loc:@batch_normalization_15/moving_mean*
_output_shapes
: 
?
5batch_normalization_15/AssignMovingAvg/ReadVariableOpReadVariableOp"batch_normalization_15/moving_mean*
dtype0*
_output_shapes	
:?
?
,batch_normalization_15/AssignMovingAvg/sub_1Sub5batch_normalization_15/AssignMovingAvg/ReadVariableOp#batch_normalization_15/cond/Merge_1*
T0*5
_class+
)'loc:@batch_normalization_15/moving_mean*
_output_shapes	
:?
?
*batch_normalization_15/AssignMovingAvg/mulMul,batch_normalization_15/AssignMovingAvg/sub_1*batch_normalization_15/AssignMovingAvg/sub*
T0*5
_class+
)'loc:@batch_normalization_15/moving_mean*
_output_shapes	
:?
?
:batch_normalization_15/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp"batch_normalization_15/moving_mean*batch_normalization_15/AssignMovingAvg/mul*5
_class+
)'loc:@batch_normalization_15/moving_mean*
dtype0
?
7batch_normalization_15/AssignMovingAvg/ReadVariableOp_1ReadVariableOp"batch_normalization_15/moving_mean;^batch_normalization_15/AssignMovingAvg/AssignSubVariableOp*5
_class+
)'loc:@batch_normalization_15/moving_mean*
dtype0*
_output_shapes	
:?
?
.batch_normalization_15/AssignMovingAvg_1/sub/xConst*
valueB
 *  ??*9
_class/
-+loc:@batch_normalization_15/moving_variance*
dtype0*
_output_shapes
: 
?
,batch_normalization_15/AssignMovingAvg_1/subSub.batch_normalization_15/AssignMovingAvg_1/sub/x#batch_normalization_15/cond_1/Merge*
T0*9
_class/
-+loc:@batch_normalization_15/moving_variance*
_output_shapes
: 
?
7batch_normalization_15/AssignMovingAvg_1/ReadVariableOpReadVariableOp&batch_normalization_15/moving_variance*
_output_shapes	
:?*
dtype0
?
.batch_normalization_15/AssignMovingAvg_1/sub_1Sub7batch_normalization_15/AssignMovingAvg_1/ReadVariableOp#batch_normalization_15/cond/Merge_2*
T0*9
_class/
-+loc:@batch_normalization_15/moving_variance*
_output_shapes	
:?
?
,batch_normalization_15/AssignMovingAvg_1/mulMul.batch_normalization_15/AssignMovingAvg_1/sub_1,batch_normalization_15/AssignMovingAvg_1/sub*
T0*9
_class/
-+loc:@batch_normalization_15/moving_variance*
_output_shapes	
:?
?
<batch_normalization_15/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp&batch_normalization_15/moving_variance,batch_normalization_15/AssignMovingAvg_1/mul*9
_class/
-+loc:@batch_normalization_15/moving_variance*
dtype0
?
9batch_normalization_15/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp&batch_normalization_15/moving_variance=^batch_normalization_15/AssignMovingAvg_1/AssignSubVariableOp*9
_class/
-+loc:@batch_normalization_15/moving_variance*
dtype0*
_output_shapes	
:?
{
leaky_re_lu_1_4/LeakyRelu	LeakyRelu!batch_normalization_15/cond/Merge*0
_output_shapes
:????????? `?
?
1conv2d_11/kernel/Initializer/random_uniform/shapeConst*%
valueB"      ?      *#
_class
loc:@conv2d_11/kernel*
dtype0*
_output_shapes
:
?
/conv2d_11/kernel/Initializer/random_uniform/minConst*
valueB
 *?\1?*#
_class
loc:@conv2d_11/kernel*
dtype0*
_output_shapes
: 
?
/conv2d_11/kernel/Initializer/random_uniform/maxConst*
valueB
 *?\1=*#
_class
loc:@conv2d_11/kernel*
dtype0*
_output_shapes
: 
?
9conv2d_11/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_11/kernel/Initializer/random_uniform/shape*
dtype0*(
_output_shapes
:??*
seed???)*
T0*#
_class
loc:@conv2d_11/kernel*
seed22
?
/conv2d_11/kernel/Initializer/random_uniform/subSub/conv2d_11/kernel/Initializer/random_uniform/max/conv2d_11/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_11/kernel*
_output_shapes
: 
?
/conv2d_11/kernel/Initializer/random_uniform/mulMul9conv2d_11/kernel/Initializer/random_uniform/RandomUniform/conv2d_11/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_11/kernel*(
_output_shapes
:??
?
+conv2d_11/kernel/Initializer/random_uniformAdd/conv2d_11/kernel/Initializer/random_uniform/mul/conv2d_11/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_11/kernel*(
_output_shapes
:??
?
conv2d_11/kernelVarHandleOp*!
shared_nameconv2d_11/kernel*#
_class
loc:@conv2d_11/kernel*
dtype0*
_output_shapes
: *
shape:??
q
1conv2d_11/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_11/kernel*
_output_shapes
: 
?
conv2d_11/kernel/AssignAssignVariableOpconv2d_11/kernel+conv2d_11/kernel/Initializer/random_uniform*#
_class
loc:@conv2d_11/kernel*
dtype0
?
$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*
dtype0*(
_output_shapes
:??*#
_class
loc:@conv2d_11/kernel
?
 conv2d_11/bias/Initializer/zerosConst*
valueB?*    *!
_class
loc:@conv2d_11/bias*
dtype0*
_output_shapes	
:?
?
conv2d_11/biasVarHandleOp*
shared_nameconv2d_11/bias*!
_class
loc:@conv2d_11/bias*
dtype0*
_output_shapes
: *
shape:?
m
/conv2d_11/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_11/bias*
_output_shapes
: 
?
conv2d_11/bias/AssignAssignVariableOpconv2d_11/bias conv2d_11/bias/Initializer/zeros*
dtype0*!
_class
loc:@conv2d_11/bias
?
"conv2d_11/bias/Read/ReadVariableOpReadVariableOpconv2d_11/bias*!
_class
loc:@conv2d_11/bias*
dtype0*
_output_shapes	
:?
h
conv2d_11/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
z
conv2d_11/Conv2D/ReadVariableOpReadVariableOpconv2d_11/kernel*
dtype0*(
_output_shapes
:??
?
conv2d_11/Conv2DConv2Dleaky_re_lu_1_4/LeakyReluconv2d_11/Conv2D/ReadVariableOp*
strides
*0
_output_shapes
:?????????0?*
paddingSAME*
T0
l
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOpconv2d_11/bias*
dtype0*
_output_shapes	
:?
?
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D conv2d_11/BiasAdd/ReadVariableOp*0
_output_shapes
:?????????0?*
T0
?
-batch_normalization_16/gamma/Initializer/onesConst*
_output_shapes	
:?*
valueB?*  ??*/
_class%
#!loc:@batch_normalization_16/gamma*
dtype0
?
batch_normalization_16/gammaVarHandleOp*/
_class%
#!loc:@batch_normalization_16/gamma*
dtype0*
_output_shapes
: *
shape:?*-
shared_namebatch_normalization_16/gamma
?
=batch_normalization_16/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_16/gamma*
_output_shapes
: 
?
#batch_normalization_16/gamma/AssignAssignVariableOpbatch_normalization_16/gamma-batch_normalization_16/gamma/Initializer/ones*/
_class%
#!loc:@batch_normalization_16/gamma*
dtype0
?
0batch_normalization_16/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_16/gamma*/
_class%
#!loc:@batch_normalization_16/gamma*
dtype0*
_output_shapes	
:?
?
-batch_normalization_16/beta/Initializer/zerosConst*
valueB?*    *.
_class$
" loc:@batch_normalization_16/beta*
dtype0*
_output_shapes	
:?
?
batch_normalization_16/betaVarHandleOp*,
shared_namebatch_normalization_16/beta*.
_class$
" loc:@batch_normalization_16/beta*
dtype0*
_output_shapes
: *
shape:?
?
<batch_normalization_16/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_16/beta*
_output_shapes
: 
?
"batch_normalization_16/beta/AssignAssignVariableOpbatch_normalization_16/beta-batch_normalization_16/beta/Initializer/zeros*.
_class$
" loc:@batch_normalization_16/beta*
dtype0
?
/batch_normalization_16/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_16/beta*.
_class$
" loc:@batch_normalization_16/beta*
dtype0*
_output_shapes	
:?
?
4batch_normalization_16/moving_mean/Initializer/zerosConst*
valueB?*    *5
_class+
)'loc:@batch_normalization_16/moving_mean*
dtype0*
_output_shapes	
:?
?
"batch_normalization_16/moving_meanVarHandleOp*5
_class+
)'loc:@batch_normalization_16/moving_mean*
dtype0*
_output_shapes
: *
shape:?*3
shared_name$"batch_normalization_16/moving_mean
?
Cbatch_normalization_16/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp"batch_normalization_16/moving_mean*
_output_shapes
: 
?
)batch_normalization_16/moving_mean/AssignAssignVariableOp"batch_normalization_16/moving_mean4batch_normalization_16/moving_mean/Initializer/zeros*5
_class+
)'loc:@batch_normalization_16/moving_mean*
dtype0
?
6batch_normalization_16/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_16/moving_mean*5
_class+
)'loc:@batch_normalization_16/moving_mean*
dtype0*
_output_shapes	
:?
?
7batch_normalization_16/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes	
:?*
valueB?*  ??*9
_class/
-+loc:@batch_normalization_16/moving_variance
?
&batch_normalization_16/moving_varianceVarHandleOp*9
_class/
-+loc:@batch_normalization_16/moving_variance*
dtype0*
_output_shapes
: *
shape:?*7
shared_name(&batch_normalization_16/moving_variance
?
Gbatch_normalization_16/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp&batch_normalization_16/moving_variance*
_output_shapes
: 
?
-batch_normalization_16/moving_variance/AssignAssignVariableOp&batch_normalization_16/moving_variance7batch_normalization_16/moving_variance/Initializer/ones*9
_class/
-+loc:@batch_normalization_16/moving_variance*
dtype0
?
:batch_normalization_16/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_16/moving_variance*
_output_shapes	
:?*9
_class/
-+loc:@batch_normalization_16/moving_variance*
dtype0
{
"batch_normalization_16/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
w
$batch_normalization_16/cond/switch_tIdentity$batch_normalization_16/cond/Switch:1*
_output_shapes
: *
T0

u
$batch_normalization_16/cond/switch_fIdentity"batch_normalization_16/cond/Switch*
T0
*
_output_shapes
: 
f
#batch_normalization_16/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
*batch_normalization_16/cond/ReadVariableOpReadVariableOp3batch_normalization_16/cond/ReadVariableOp/Switch:1*
dtype0*
_output_shapes	
:?
?
1batch_normalization_16/cond/ReadVariableOp/SwitchSwitchbatch_normalization_16/gamma#batch_normalization_16/cond/pred_id*
T0*/
_class%
#!loc:@batch_normalization_16/gamma*
_output_shapes
: : 
?
,batch_normalization_16/cond/ReadVariableOp_1ReadVariableOp5batch_normalization_16/cond/ReadVariableOp_1/Switch:1*
_output_shapes	
:?*
dtype0
?
3batch_normalization_16/cond/ReadVariableOp_1/SwitchSwitchbatch_normalization_16/beta#batch_normalization_16/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_16/beta*
_output_shapes
: : 
?
!batch_normalization_16/cond/ConstConst%^batch_normalization_16/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
#batch_normalization_16/cond/Const_1Const%^batch_normalization_16/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
*batch_normalization_16/cond/FusedBatchNormFusedBatchNorm3batch_normalization_16/cond/FusedBatchNorm/Switch:1*batch_normalization_16/cond/ReadVariableOp,batch_normalization_16/cond/ReadVariableOp_1!batch_normalization_16/cond/Const#batch_normalization_16/cond/Const_1*
epsilon%o?:*
T0*L
_output_shapes:
8:?????????0?:?:?:?:?
?
1batch_normalization_16/cond/FusedBatchNorm/SwitchSwitchconv2d_11/BiasAdd#batch_normalization_16/cond/pred_id*
T0*$
_class
loc:@conv2d_11/BiasAdd*L
_output_shapes:
8:?????????0?:?????????0?
?
,batch_normalization_16/cond/ReadVariableOp_2ReadVariableOp3batch_normalization_16/cond/ReadVariableOp_2/Switch*
dtype0*
_output_shapes	
:?
?
3batch_normalization_16/cond/ReadVariableOp_2/SwitchSwitchbatch_normalization_16/gamma#batch_normalization_16/cond/pred_id*
T0*/
_class%
#!loc:@batch_normalization_16/gamma*
_output_shapes
: : 
?
,batch_normalization_16/cond/ReadVariableOp_3ReadVariableOp3batch_normalization_16/cond/ReadVariableOp_3/Switch*
dtype0*
_output_shapes	
:?
?
3batch_normalization_16/cond/ReadVariableOp_3/SwitchSwitchbatch_normalization_16/beta#batch_normalization_16/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_16/beta*
_output_shapes
: : 
?
;batch_normalization_16/cond/FusedBatchNorm_1/ReadVariableOpReadVariableOpBbatch_normalization_16/cond/FusedBatchNorm_1/ReadVariableOp/Switch*
dtype0*
_output_shapes	
:?
?
Bbatch_normalization_16/cond/FusedBatchNorm_1/ReadVariableOp/SwitchSwitch"batch_normalization_16/moving_mean#batch_normalization_16/cond/pred_id*
T0*5
_class+
)'loc:@batch_normalization_16/moving_mean*
_output_shapes
: : 
?
=batch_normalization_16/cond/FusedBatchNorm_1/ReadVariableOp_1ReadVariableOpDbatch_normalization_16/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch*
dtype0*
_output_shapes	
:?
?
Dbatch_normalization_16/cond/FusedBatchNorm_1/ReadVariableOp_1/SwitchSwitch&batch_normalization_16/moving_variance#batch_normalization_16/cond/pred_id*
T0*9
_class/
-+loc:@batch_normalization_16/moving_variance*
_output_shapes
: : 
?
,batch_normalization_16/cond/FusedBatchNorm_1FusedBatchNorm3batch_normalization_16/cond/FusedBatchNorm_1/Switch,batch_normalization_16/cond/ReadVariableOp_2,batch_normalization_16/cond/ReadVariableOp_3;batch_normalization_16/cond/FusedBatchNorm_1/ReadVariableOp=batch_normalization_16/cond/FusedBatchNorm_1/ReadVariableOp_1*L
_output_shapes:
8:?????????0?:?:?:?:?*
is_training( *
epsilon%o?:*
T0
?
3batch_normalization_16/cond/FusedBatchNorm_1/SwitchSwitchconv2d_11/BiasAdd#batch_normalization_16/cond/pred_id*$
_class
loc:@conv2d_11/BiasAdd*L
_output_shapes:
8:?????????0?:?????????0?*
T0
?
!batch_normalization_16/cond/MergeMerge,batch_normalization_16/cond/FusedBatchNorm_1*batch_normalization_16/cond/FusedBatchNorm*
T0*
N*2
_output_shapes 
:?????????0?: 
?
#batch_normalization_16/cond/Merge_1Merge.batch_normalization_16/cond/FusedBatchNorm_1:1,batch_normalization_16/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes
	:?: 
?
#batch_normalization_16/cond/Merge_2Merge.batch_normalization_16/cond/FusedBatchNorm_1:2,batch_normalization_16/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes
	:?: 
}
$batch_normalization_16/cond_1/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

{
&batch_normalization_16/cond_1/switch_tIdentity&batch_normalization_16/cond_1/Switch:1*
T0
*
_output_shapes
: 
y
&batch_normalization_16/cond_1/switch_fIdentity$batch_normalization_16/cond_1/Switch*
_output_shapes
: *
T0

h
%batch_normalization_16/cond_1/pred_idIdentitykeras_learning_phase*
_output_shapes
: *
T0

?
#batch_normalization_16/cond_1/ConstConst'^batch_normalization_16/cond_1/switch_t*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
%batch_normalization_16/cond_1/Const_1Const'^batch_normalization_16/cond_1/switch_f*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
#batch_normalization_16/cond_1/MergeMerge%batch_normalization_16/cond_1/Const_1#batch_normalization_16/cond_1/Const*
T0*
N*
_output_shapes
: : 
?
,batch_normalization_16/AssignMovingAvg/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ??*5
_class+
)'loc:@batch_normalization_16/moving_mean
?
*batch_normalization_16/AssignMovingAvg/subSub,batch_normalization_16/AssignMovingAvg/sub/x#batch_normalization_16/cond_1/Merge*
T0*5
_class+
)'loc:@batch_normalization_16/moving_mean*
_output_shapes
: 
?
5batch_normalization_16/AssignMovingAvg/ReadVariableOpReadVariableOp"batch_normalization_16/moving_mean*
dtype0*
_output_shapes	
:?
?
,batch_normalization_16/AssignMovingAvg/sub_1Sub5batch_normalization_16/AssignMovingAvg/ReadVariableOp#batch_normalization_16/cond/Merge_1*
T0*5
_class+
)'loc:@batch_normalization_16/moving_mean*
_output_shapes	
:?
?
*batch_normalization_16/AssignMovingAvg/mulMul,batch_normalization_16/AssignMovingAvg/sub_1*batch_normalization_16/AssignMovingAvg/sub*
T0*5
_class+
)'loc:@batch_normalization_16/moving_mean*
_output_shapes	
:?
?
:batch_normalization_16/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp"batch_normalization_16/moving_mean*batch_normalization_16/AssignMovingAvg/mul*5
_class+
)'loc:@batch_normalization_16/moving_mean*
dtype0
?
7batch_normalization_16/AssignMovingAvg/ReadVariableOp_1ReadVariableOp"batch_normalization_16/moving_mean;^batch_normalization_16/AssignMovingAvg/AssignSubVariableOp*5
_class+
)'loc:@batch_normalization_16/moving_mean*
dtype0*
_output_shapes	
:?
?
.batch_normalization_16/AssignMovingAvg_1/sub/xConst*
valueB
 *  ??*9
_class/
-+loc:@batch_normalization_16/moving_variance*
dtype0*
_output_shapes
: 
?
,batch_normalization_16/AssignMovingAvg_1/subSub.batch_normalization_16/AssignMovingAvg_1/sub/x#batch_normalization_16/cond_1/Merge*
T0*9
_class/
-+loc:@batch_normalization_16/moving_variance*
_output_shapes
: 
?
7batch_normalization_16/AssignMovingAvg_1/ReadVariableOpReadVariableOp&batch_normalization_16/moving_variance*
dtype0*
_output_shapes	
:?
?
.batch_normalization_16/AssignMovingAvg_1/sub_1Sub7batch_normalization_16/AssignMovingAvg_1/ReadVariableOp#batch_normalization_16/cond/Merge_2*
T0*9
_class/
-+loc:@batch_normalization_16/moving_variance*
_output_shapes	
:?
?
,batch_normalization_16/AssignMovingAvg_1/mulMul.batch_normalization_16/AssignMovingAvg_1/sub_1,batch_normalization_16/AssignMovingAvg_1/sub*
T0*9
_class/
-+loc:@batch_normalization_16/moving_variance*
_output_shapes	
:?
?
<batch_normalization_16/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp&batch_normalization_16/moving_variance,batch_normalization_16/AssignMovingAvg_1/mul*
dtype0*9
_class/
-+loc:@batch_normalization_16/moving_variance
?
9batch_normalization_16/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp&batch_normalization_16/moving_variance=^batch_normalization_16/AssignMovingAvg_1/AssignSubVariableOp*
_output_shapes	
:?*9
_class/
-+loc:@batch_normalization_16/moving_variance*
dtype0
{
leaky_re_lu_1_5/LeakyRelu	LeakyRelu!batch_normalization_16/cond/Merge*0
_output_shapes
:?????????0?
?
1conv2d_12/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *#
_class
loc:@conv2d_12/kernel*
dtype0*
_output_shapes
:
?
/conv2d_12/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *????*#
_class
loc:@conv2d_12/kernel*
dtype0
?
/conv2d_12/kernel/Initializer/random_uniform/maxConst*
valueB
 *???<*#
_class
loc:@conv2d_12/kernel*
dtype0*
_output_shapes
: 
?
9conv2d_12/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_12/kernel/Initializer/random_uniform/shape*
dtype0*(
_output_shapes
:??*
seed???)*
T0*#
_class
loc:@conv2d_12/kernel*
seed22
?
/conv2d_12/kernel/Initializer/random_uniform/subSub/conv2d_12/kernel/Initializer/random_uniform/max/conv2d_12/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_12/kernel*
_output_shapes
: 
?
/conv2d_12/kernel/Initializer/random_uniform/mulMul9conv2d_12/kernel/Initializer/random_uniform/RandomUniform/conv2d_12/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_12/kernel*(
_output_shapes
:??
?
+conv2d_12/kernel/Initializer/random_uniformAdd/conv2d_12/kernel/Initializer/random_uniform/mul/conv2d_12/kernel/Initializer/random_uniform/min*#
_class
loc:@conv2d_12/kernel*(
_output_shapes
:??*
T0
?
conv2d_12/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shape:??*!
shared_nameconv2d_12/kernel*#
_class
loc:@conv2d_12/kernel
q
1conv2d_12/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_12/kernel*
_output_shapes
: 
?
conv2d_12/kernel/AssignAssignVariableOpconv2d_12/kernel+conv2d_12/kernel/Initializer/random_uniform*#
_class
loc:@conv2d_12/kernel*
dtype0
?
$conv2d_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_12/kernel*#
_class
loc:@conv2d_12/kernel*
dtype0*(
_output_shapes
:??
?
 conv2d_12/bias/Initializer/zerosConst*
_output_shapes	
:?*
valueB?*    *!
_class
loc:@conv2d_12/bias*
dtype0
?
conv2d_12/biasVarHandleOp*
shape:?*
shared_nameconv2d_12/bias*!
_class
loc:@conv2d_12/bias*
dtype0*
_output_shapes
: 
m
/conv2d_12/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_12/bias*
_output_shapes
: 
?
conv2d_12/bias/AssignAssignVariableOpconv2d_12/bias conv2d_12/bias/Initializer/zeros*!
_class
loc:@conv2d_12/bias*
dtype0
?
"conv2d_12/bias/Read/ReadVariableOpReadVariableOpconv2d_12/bias*!
_class
loc:@conv2d_12/bias*
dtype0*
_output_shapes	
:?
h
conv2d_12/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
z
conv2d_12/Conv2D/ReadVariableOpReadVariableOpconv2d_12/kernel*
dtype0*(
_output_shapes
:??
?
conv2d_12/Conv2DConv2Dleaky_re_lu_1_5/LeakyReluconv2d_12/Conv2D/ReadVariableOp*
paddingSAME*
T0*
strides
*0
_output_shapes
:??????????
l
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOpconv2d_12/bias*
dtype0*
_output_shapes	
:?
?
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D conv2d_12/BiasAdd/ReadVariableOp*
T0*0
_output_shapes
:??????????
?
-batch_normalization_17/gamma/Initializer/onesConst*
valueB?*  ??*/
_class%
#!loc:@batch_normalization_17/gamma*
dtype0*
_output_shapes	
:?
?
batch_normalization_17/gammaVarHandleOp*
_output_shapes
: *
shape:?*-
shared_namebatch_normalization_17/gamma*/
_class%
#!loc:@batch_normalization_17/gamma*
dtype0
?
=batch_normalization_17/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_17/gamma*
_output_shapes
: 
?
#batch_normalization_17/gamma/AssignAssignVariableOpbatch_normalization_17/gamma-batch_normalization_17/gamma/Initializer/ones*/
_class%
#!loc:@batch_normalization_17/gamma*
dtype0
?
0batch_normalization_17/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_17/gamma*
_output_shapes	
:?*/
_class%
#!loc:@batch_normalization_17/gamma*
dtype0
?
-batch_normalization_17/beta/Initializer/zerosConst*
_output_shapes	
:?*
valueB?*    *.
_class$
" loc:@batch_normalization_17/beta*
dtype0
?
batch_normalization_17/betaVarHandleOp*,
shared_namebatch_normalization_17/beta*.
_class$
" loc:@batch_normalization_17/beta*
dtype0*
_output_shapes
: *
shape:?
?
<batch_normalization_17/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_17/beta*
_output_shapes
: 
?
"batch_normalization_17/beta/AssignAssignVariableOpbatch_normalization_17/beta-batch_normalization_17/beta/Initializer/zeros*.
_class$
" loc:@batch_normalization_17/beta*
dtype0
?
/batch_normalization_17/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_17/beta*.
_class$
" loc:@batch_normalization_17/beta*
dtype0*
_output_shapes	
:?
?
4batch_normalization_17/moving_mean/Initializer/zerosConst*
valueB?*    *5
_class+
)'loc:@batch_normalization_17/moving_mean*
dtype0*
_output_shapes	
:?
?
"batch_normalization_17/moving_meanVarHandleOp*3
shared_name$"batch_normalization_17/moving_mean*5
_class+
)'loc:@batch_normalization_17/moving_mean*
dtype0*
_output_shapes
: *
shape:?
?
Cbatch_normalization_17/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp"batch_normalization_17/moving_mean*
_output_shapes
: 
?
)batch_normalization_17/moving_mean/AssignAssignVariableOp"batch_normalization_17/moving_mean4batch_normalization_17/moving_mean/Initializer/zeros*5
_class+
)'loc:@batch_normalization_17/moving_mean*
dtype0
?
6batch_normalization_17/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_17/moving_mean*5
_class+
)'loc:@batch_normalization_17/moving_mean*
dtype0*
_output_shapes	
:?
?
7batch_normalization_17/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes	
:?*
valueB?*  ??*9
_class/
-+loc:@batch_normalization_17/moving_variance
?
&batch_normalization_17/moving_varianceVarHandleOp*
shape:?*7
shared_name(&batch_normalization_17/moving_variance*9
_class/
-+loc:@batch_normalization_17/moving_variance*
dtype0*
_output_shapes
: 
?
Gbatch_normalization_17/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp&batch_normalization_17/moving_variance*
_output_shapes
: 
?
-batch_normalization_17/moving_variance/AssignAssignVariableOp&batch_normalization_17/moving_variance7batch_normalization_17/moving_variance/Initializer/ones*9
_class/
-+loc:@batch_normalization_17/moving_variance*
dtype0
?
:batch_normalization_17/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_17/moving_variance*9
_class/
-+loc:@batch_normalization_17/moving_variance*
dtype0*
_output_shapes	
:?
{
"batch_normalization_17/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
w
$batch_normalization_17/cond/switch_tIdentity$batch_normalization_17/cond/Switch:1*
_output_shapes
: *
T0

u
$batch_normalization_17/cond/switch_fIdentity"batch_normalization_17/cond/Switch*
T0
*
_output_shapes
: 
f
#batch_normalization_17/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
*batch_normalization_17/cond/ReadVariableOpReadVariableOp3batch_normalization_17/cond/ReadVariableOp/Switch:1*
dtype0*
_output_shapes	
:?
?
1batch_normalization_17/cond/ReadVariableOp/SwitchSwitchbatch_normalization_17/gamma#batch_normalization_17/cond/pred_id*
T0*/
_class%
#!loc:@batch_normalization_17/gamma*
_output_shapes
: : 
?
,batch_normalization_17/cond/ReadVariableOp_1ReadVariableOp5batch_normalization_17/cond/ReadVariableOp_1/Switch:1*
_output_shapes	
:?*
dtype0
?
3batch_normalization_17/cond/ReadVariableOp_1/SwitchSwitchbatch_normalization_17/beta#batch_normalization_17/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_17/beta*
_output_shapes
: : 
?
!batch_normalization_17/cond/ConstConst%^batch_normalization_17/cond/switch_t*
_output_shapes
: *
valueB *
dtype0
?
#batch_normalization_17/cond/Const_1Const%^batch_normalization_17/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
*batch_normalization_17/cond/FusedBatchNormFusedBatchNorm3batch_normalization_17/cond/FusedBatchNorm/Switch:1*batch_normalization_17/cond/ReadVariableOp,batch_normalization_17/cond/ReadVariableOp_1!batch_normalization_17/cond/Const#batch_normalization_17/cond/Const_1*
epsilon%o?:*
T0*L
_output_shapes:
8:??????????:?:?:?:?
?
1batch_normalization_17/cond/FusedBatchNorm/SwitchSwitchconv2d_12/BiasAdd#batch_normalization_17/cond/pred_id*
T0*$
_class
loc:@conv2d_12/BiasAdd*L
_output_shapes:
8:??????????:??????????
?
,batch_normalization_17/cond/ReadVariableOp_2ReadVariableOp3batch_normalization_17/cond/ReadVariableOp_2/Switch*
dtype0*
_output_shapes	
:?
?
3batch_normalization_17/cond/ReadVariableOp_2/SwitchSwitchbatch_normalization_17/gamma#batch_normalization_17/cond/pred_id*
_output_shapes
: : *
T0*/
_class%
#!loc:@batch_normalization_17/gamma
?
,batch_normalization_17/cond/ReadVariableOp_3ReadVariableOp3batch_normalization_17/cond/ReadVariableOp_3/Switch*
dtype0*
_output_shapes	
:?
?
3batch_normalization_17/cond/ReadVariableOp_3/SwitchSwitchbatch_normalization_17/beta#batch_normalization_17/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_17/beta*
_output_shapes
: : 
?
;batch_normalization_17/cond/FusedBatchNorm_1/ReadVariableOpReadVariableOpBbatch_normalization_17/cond/FusedBatchNorm_1/ReadVariableOp/Switch*
dtype0*
_output_shapes	
:?
?
Bbatch_normalization_17/cond/FusedBatchNorm_1/ReadVariableOp/SwitchSwitch"batch_normalization_17/moving_mean#batch_normalization_17/cond/pred_id*
T0*5
_class+
)'loc:@batch_normalization_17/moving_mean*
_output_shapes
: : 
?
=batch_normalization_17/cond/FusedBatchNorm_1/ReadVariableOp_1ReadVariableOpDbatch_normalization_17/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch*
dtype0*
_output_shapes	
:?
?
Dbatch_normalization_17/cond/FusedBatchNorm_1/ReadVariableOp_1/SwitchSwitch&batch_normalization_17/moving_variance#batch_normalization_17/cond/pred_id*
T0*9
_class/
-+loc:@batch_normalization_17/moving_variance*
_output_shapes
: : 
?
,batch_normalization_17/cond/FusedBatchNorm_1FusedBatchNorm3batch_normalization_17/cond/FusedBatchNorm_1/Switch,batch_normalization_17/cond/ReadVariableOp_2,batch_normalization_17/cond/ReadVariableOp_3;batch_normalization_17/cond/FusedBatchNorm_1/ReadVariableOp=batch_normalization_17/cond/FusedBatchNorm_1/ReadVariableOp_1*
epsilon%o?:*
T0*L
_output_shapes:
8:??????????:?:?:?:?*
is_training( 
?
3batch_normalization_17/cond/FusedBatchNorm_1/SwitchSwitchconv2d_12/BiasAdd#batch_normalization_17/cond/pred_id*
T0*$
_class
loc:@conv2d_12/BiasAdd*L
_output_shapes:
8:??????????:??????????
?
!batch_normalization_17/cond/MergeMerge,batch_normalization_17/cond/FusedBatchNorm_1*batch_normalization_17/cond/FusedBatchNorm*
T0*
N*2
_output_shapes 
:??????????: 
?
#batch_normalization_17/cond/Merge_1Merge.batch_normalization_17/cond/FusedBatchNorm_1:1,batch_normalization_17/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes
	:?: 
?
#batch_normalization_17/cond/Merge_2Merge.batch_normalization_17/cond/FusedBatchNorm_1:2,batch_normalization_17/cond/FusedBatchNorm:2*
N*
_output_shapes
	:?: *
T0
}
$batch_normalization_17/cond_1/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
{
&batch_normalization_17/cond_1/switch_tIdentity&batch_normalization_17/cond_1/Switch:1*
T0
*
_output_shapes
: 
y
&batch_normalization_17/cond_1/switch_fIdentity$batch_normalization_17/cond_1/Switch*
T0
*
_output_shapes
: 
h
%batch_normalization_17/cond_1/pred_idIdentitykeras_learning_phase*
_output_shapes
: *
T0

?
#batch_normalization_17/cond_1/ConstConst'^batch_normalization_17/cond_1/switch_t*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
%batch_normalization_17/cond_1/Const_1Const'^batch_normalization_17/cond_1/switch_f*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
#batch_normalization_17/cond_1/MergeMerge%batch_normalization_17/cond_1/Const_1#batch_normalization_17/cond_1/Const*
_output_shapes
: : *
T0*
N
?
,batch_normalization_17/AssignMovingAvg/sub/xConst*
valueB
 *  ??*5
_class+
)'loc:@batch_normalization_17/moving_mean*
dtype0*
_output_shapes
: 
?
*batch_normalization_17/AssignMovingAvg/subSub,batch_normalization_17/AssignMovingAvg/sub/x#batch_normalization_17/cond_1/Merge*
T0*5
_class+
)'loc:@batch_normalization_17/moving_mean*
_output_shapes
: 
?
5batch_normalization_17/AssignMovingAvg/ReadVariableOpReadVariableOp"batch_normalization_17/moving_mean*
dtype0*
_output_shapes	
:?
?
,batch_normalization_17/AssignMovingAvg/sub_1Sub5batch_normalization_17/AssignMovingAvg/ReadVariableOp#batch_normalization_17/cond/Merge_1*
T0*5
_class+
)'loc:@batch_normalization_17/moving_mean*
_output_shapes	
:?
?
*batch_normalization_17/AssignMovingAvg/mulMul,batch_normalization_17/AssignMovingAvg/sub_1*batch_normalization_17/AssignMovingAvg/sub*5
_class+
)'loc:@batch_normalization_17/moving_mean*
_output_shapes	
:?*
T0
?
:batch_normalization_17/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp"batch_normalization_17/moving_mean*batch_normalization_17/AssignMovingAvg/mul*5
_class+
)'loc:@batch_normalization_17/moving_mean*
dtype0
?
7batch_normalization_17/AssignMovingAvg/ReadVariableOp_1ReadVariableOp"batch_normalization_17/moving_mean;^batch_normalization_17/AssignMovingAvg/AssignSubVariableOp*5
_class+
)'loc:@batch_normalization_17/moving_mean*
dtype0*
_output_shapes	
:?
?
.batch_normalization_17/AssignMovingAvg_1/sub/xConst*
valueB
 *  ??*9
_class/
-+loc:@batch_normalization_17/moving_variance*
dtype0*
_output_shapes
: 
?
,batch_normalization_17/AssignMovingAvg_1/subSub.batch_normalization_17/AssignMovingAvg_1/sub/x#batch_normalization_17/cond_1/Merge*
T0*9
_class/
-+loc:@batch_normalization_17/moving_variance*
_output_shapes
: 
?
7batch_normalization_17/AssignMovingAvg_1/ReadVariableOpReadVariableOp&batch_normalization_17/moving_variance*
dtype0*
_output_shapes	
:?
?
.batch_normalization_17/AssignMovingAvg_1/sub_1Sub7batch_normalization_17/AssignMovingAvg_1/ReadVariableOp#batch_normalization_17/cond/Merge_2*
_output_shapes	
:?*
T0*9
_class/
-+loc:@batch_normalization_17/moving_variance
?
,batch_normalization_17/AssignMovingAvg_1/mulMul.batch_normalization_17/AssignMovingAvg_1/sub_1,batch_normalization_17/AssignMovingAvg_1/sub*
T0*9
_class/
-+loc:@batch_normalization_17/moving_variance*
_output_shapes	
:?
?
<batch_normalization_17/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp&batch_normalization_17/moving_variance,batch_normalization_17/AssignMovingAvg_1/mul*9
_class/
-+loc:@batch_normalization_17/moving_variance*
dtype0
?
9batch_normalization_17/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp&batch_normalization_17/moving_variance=^batch_normalization_17/AssignMovingAvg_1/AssignSubVariableOp*
_output_shapes	
:?*9
_class/
-+loc:@batch_normalization_17/moving_variance*
dtype0
{
leaky_re_lu_1_6/LeakyRelu	LeakyRelu!batch_normalization_17/cond/Merge*0
_output_shapes
:??????????
?
:conv2d_transpose_6/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *,
_class"
 loc:@conv2d_transpose_6/kernel*
dtype0*
_output_shapes
:
?
8conv2d_transpose_6/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *????*,
_class"
 loc:@conv2d_transpose_6/kernel*
dtype0
?
8conv2d_transpose_6/kernel/Initializer/random_uniform/maxConst*
valueB
 *???<*,
_class"
 loc:@conv2d_transpose_6/kernel*
dtype0*
_output_shapes
: 
?
Bconv2d_transpose_6/kernel/Initializer/random_uniform/RandomUniformRandomUniform:conv2d_transpose_6/kernel/Initializer/random_uniform/shape*
dtype0*(
_output_shapes
:??*
seed???)*
T0*,
_class"
 loc:@conv2d_transpose_6/kernel*
seed22
?
8conv2d_transpose_6/kernel/Initializer/random_uniform/subSub8conv2d_transpose_6/kernel/Initializer/random_uniform/max8conv2d_transpose_6/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@conv2d_transpose_6/kernel*
_output_shapes
: 
?
8conv2d_transpose_6/kernel/Initializer/random_uniform/mulMulBconv2d_transpose_6/kernel/Initializer/random_uniform/RandomUniform8conv2d_transpose_6/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@conv2d_transpose_6/kernel*(
_output_shapes
:??
?
4conv2d_transpose_6/kernel/Initializer/random_uniformAdd8conv2d_transpose_6/kernel/Initializer/random_uniform/mul8conv2d_transpose_6/kernel/Initializer/random_uniform/min*,
_class"
 loc:@conv2d_transpose_6/kernel*(
_output_shapes
:??*
T0
?
conv2d_transpose_6/kernelVarHandleOp*
shape:??**
shared_nameconv2d_transpose_6/kernel*,
_class"
 loc:@conv2d_transpose_6/kernel*
dtype0*
_output_shapes
: 
?
:conv2d_transpose_6/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose_6/kernel*
_output_shapes
: 
?
 conv2d_transpose_6/kernel/AssignAssignVariableOpconv2d_transpose_6/kernel4conv2d_transpose_6/kernel/Initializer/random_uniform*,
_class"
 loc:@conv2d_transpose_6/kernel*
dtype0
?
-conv2d_transpose_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_6/kernel*,
_class"
 loc:@conv2d_transpose_6/kernel*
dtype0*(
_output_shapes
:??
?
)conv2d_transpose_6/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:?*
valueB?*    **
_class 
loc:@conv2d_transpose_6/bias
?
conv2d_transpose_6/biasVarHandleOp*(
shared_nameconv2d_transpose_6/bias**
_class 
loc:@conv2d_transpose_6/bias*
dtype0*
_output_shapes
: *
shape:?

8conv2d_transpose_6/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose_6/bias*
_output_shapes
: 
?
conv2d_transpose_6/bias/AssignAssignVariableOpconv2d_transpose_6/bias)conv2d_transpose_6/bias/Initializer/zeros*
dtype0**
_class 
loc:@conv2d_transpose_6/bias
?
+conv2d_transpose_6/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_6/bias**
_class 
loc:@conv2d_transpose_6/bias*
dtype0*
_output_shapes	
:?
Y
conv2d_transpose_6/ShapeShapeconv2d_12/BiasAdd*
_output_shapes
:*
T0
p
&conv2d_transpose_6/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
r
(conv2d_transpose_6/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
r
(conv2d_transpose_6/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
?
 conv2d_transpose_6/strided_sliceStridedSliceconv2d_transpose_6/Shape&conv2d_transpose_6/strided_slice/stack(conv2d_transpose_6/strided_slice/stack_1(conv2d_transpose_6/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
r
(conv2d_transpose_6/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_6/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_6/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
"conv2d_transpose_6/strided_slice_1StridedSliceconv2d_transpose_6/Shape(conv2d_transpose_6/strided_slice_1/stack*conv2d_transpose_6/strided_slice_1/stack_1*conv2d_transpose_6/strided_slice_1/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
r
(conv2d_transpose_6/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_6/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_6/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
"conv2d_transpose_6/strided_slice_2StridedSliceconv2d_transpose_6/Shape(conv2d_transpose_6/strided_slice_2/stack*conv2d_transpose_6/strided_slice_2/stack_1*conv2d_transpose_6/strided_slice_2/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
Z
conv2d_transpose_6/mul/yConst*
dtype0*
_output_shapes
: *
value	B :
|
conv2d_transpose_6/mulMul"conv2d_transpose_6/strided_slice_1conv2d_transpose_6/mul/y*
T0*
_output_shapes
: 
\
conv2d_transpose_6/mul_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
conv2d_transpose_6/mul_1Mul"conv2d_transpose_6/strided_slice_2conv2d_transpose_6/mul_1/y*
T0*
_output_shapes
: 
]
conv2d_transpose_6/stack/3Const*
value
B :?*
dtype0*
_output_shapes
: 
?
conv2d_transpose_6/stackPack conv2d_transpose_6/strided_sliceconv2d_transpose_6/mulconv2d_transpose_6/mul_1conv2d_transpose_6/stack/3*
N*
_output_shapes
:*
T0
r
(conv2d_transpose_6/strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:
t
*conv2d_transpose_6/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_6/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
"conv2d_transpose_6/strided_slice_3StridedSliceconv2d_transpose_6/stack(conv2d_transpose_6/strided_slice_3/stack*conv2d_transpose_6/strided_slice_3/stack_1*conv2d_transpose_6/strided_slice_3/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
?
2conv2d_transpose_6/conv2d_transpose/ReadVariableOpReadVariableOpconv2d_transpose_6/kernel*
dtype0*(
_output_shapes
:??
?
#conv2d_transpose_6/conv2d_transposeConv2DBackpropInputconv2d_transpose_6/stack2conv2d_transpose_6/conv2d_transpose/ReadVariableOpconv2d_12/BiasAdd*
strides
*0
_output_shapes
:?????????0?*
paddingSAME*
T0
~
)conv2d_transpose_6/BiasAdd/ReadVariableOpReadVariableOpconv2d_transpose_6/bias*
dtype0*
_output_shapes	
:?
?
conv2d_transpose_6/BiasAddBiasAdd#conv2d_transpose_6/conv2d_transpose)conv2d_transpose_6/BiasAdd/ReadVariableOp*0
_output_shapes
:?????????0?*
T0
m
re_lu_1_1/ReluReluconv2d_transpose_6/BiasAdd*
T0*0
_output_shapes
:?????????0?
?
-batch_normalization_18/gamma/Initializer/onesConst*
_output_shapes	
:?*
valueB?*  ??*/
_class%
#!loc:@batch_normalization_18/gamma*
dtype0
?
batch_normalization_18/gammaVarHandleOp*
shape:?*-
shared_namebatch_normalization_18/gamma*/
_class%
#!loc:@batch_normalization_18/gamma*
dtype0*
_output_shapes
: 
?
=batch_normalization_18/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_18/gamma*
_output_shapes
: 
?
#batch_normalization_18/gamma/AssignAssignVariableOpbatch_normalization_18/gamma-batch_normalization_18/gamma/Initializer/ones*/
_class%
#!loc:@batch_normalization_18/gamma*
dtype0
?
0batch_normalization_18/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_18/gamma*/
_class%
#!loc:@batch_normalization_18/gamma*
dtype0*
_output_shapes	
:?
?
-batch_normalization_18/beta/Initializer/zerosConst*
dtype0*
_output_shapes	
:?*
valueB?*    *.
_class$
" loc:@batch_normalization_18/beta
?
batch_normalization_18/betaVarHandleOp*
_output_shapes
: *
shape:?*,
shared_namebatch_normalization_18/beta*.
_class$
" loc:@batch_normalization_18/beta*
dtype0
?
<batch_normalization_18/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_18/beta*
_output_shapes
: 
?
"batch_normalization_18/beta/AssignAssignVariableOpbatch_normalization_18/beta-batch_normalization_18/beta/Initializer/zeros*.
_class$
" loc:@batch_normalization_18/beta*
dtype0
?
/batch_normalization_18/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_18/beta*.
_class$
" loc:@batch_normalization_18/beta*
dtype0*
_output_shapes	
:?
?
4batch_normalization_18/moving_mean/Initializer/zerosConst*
valueB?*    *5
_class+
)'loc:@batch_normalization_18/moving_mean*
dtype0*
_output_shapes	
:?
?
"batch_normalization_18/moving_meanVarHandleOp*3
shared_name$"batch_normalization_18/moving_mean*5
_class+
)'loc:@batch_normalization_18/moving_mean*
dtype0*
_output_shapes
: *
shape:?
?
Cbatch_normalization_18/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp"batch_normalization_18/moving_mean*
_output_shapes
: 
?
)batch_normalization_18/moving_mean/AssignAssignVariableOp"batch_normalization_18/moving_mean4batch_normalization_18/moving_mean/Initializer/zeros*
dtype0*5
_class+
)'loc:@batch_normalization_18/moving_mean
?
6batch_normalization_18/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_18/moving_mean*5
_class+
)'loc:@batch_normalization_18/moving_mean*
dtype0*
_output_shapes	
:?
?
7batch_normalization_18/moving_variance/Initializer/onesConst*
_output_shapes	
:?*
valueB?*  ??*9
_class/
-+loc:@batch_normalization_18/moving_variance*
dtype0
?
&batch_normalization_18/moving_varianceVarHandleOp*
_output_shapes
: *
shape:?*7
shared_name(&batch_normalization_18/moving_variance*9
_class/
-+loc:@batch_normalization_18/moving_variance*
dtype0
?
Gbatch_normalization_18/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp&batch_normalization_18/moving_variance*
_output_shapes
: 
?
-batch_normalization_18/moving_variance/AssignAssignVariableOp&batch_normalization_18/moving_variance7batch_normalization_18/moving_variance/Initializer/ones*9
_class/
-+loc:@batch_normalization_18/moving_variance*
dtype0
?
:batch_normalization_18/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_18/moving_variance*
dtype0*
_output_shapes	
:?*9
_class/
-+loc:@batch_normalization_18/moving_variance
{
"batch_normalization_18/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
w
$batch_normalization_18/cond/switch_tIdentity$batch_normalization_18/cond/Switch:1*
_output_shapes
: *
T0

u
$batch_normalization_18/cond/switch_fIdentity"batch_normalization_18/cond/Switch*
T0
*
_output_shapes
: 
f
#batch_normalization_18/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
*batch_normalization_18/cond/ReadVariableOpReadVariableOp3batch_normalization_18/cond/ReadVariableOp/Switch:1*
dtype0*
_output_shapes	
:?
?
1batch_normalization_18/cond/ReadVariableOp/SwitchSwitchbatch_normalization_18/gamma#batch_normalization_18/cond/pred_id*/
_class%
#!loc:@batch_normalization_18/gamma*
_output_shapes
: : *
T0
?
,batch_normalization_18/cond/ReadVariableOp_1ReadVariableOp5batch_normalization_18/cond/ReadVariableOp_1/Switch:1*
dtype0*
_output_shapes	
:?
?
3batch_normalization_18/cond/ReadVariableOp_1/SwitchSwitchbatch_normalization_18/beta#batch_normalization_18/cond/pred_id*
_output_shapes
: : *
T0*.
_class$
" loc:@batch_normalization_18/beta
?
!batch_normalization_18/cond/ConstConst%^batch_normalization_18/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
#batch_normalization_18/cond/Const_1Const%^batch_normalization_18/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
*batch_normalization_18/cond/FusedBatchNormFusedBatchNorm3batch_normalization_18/cond/FusedBatchNorm/Switch:1*batch_normalization_18/cond/ReadVariableOp,batch_normalization_18/cond/ReadVariableOp_1!batch_normalization_18/cond/Const#batch_normalization_18/cond/Const_1*L
_output_shapes:
8:?????????0?:?:?:?:?*
epsilon%o?:*
T0
?
1batch_normalization_18/cond/FusedBatchNorm/SwitchSwitchre_lu_1_1/Relu#batch_normalization_18/cond/pred_id*L
_output_shapes:
8:?????????0?:?????????0?*
T0*!
_class
loc:@re_lu_1_1/Relu
?
,batch_normalization_18/cond/ReadVariableOp_2ReadVariableOp3batch_normalization_18/cond/ReadVariableOp_2/Switch*
dtype0*
_output_shapes	
:?
?
3batch_normalization_18/cond/ReadVariableOp_2/SwitchSwitchbatch_normalization_18/gamma#batch_normalization_18/cond/pred_id*
_output_shapes
: : *
T0*/
_class%
#!loc:@batch_normalization_18/gamma
?
,batch_normalization_18/cond/ReadVariableOp_3ReadVariableOp3batch_normalization_18/cond/ReadVariableOp_3/Switch*
dtype0*
_output_shapes	
:?
?
3batch_normalization_18/cond/ReadVariableOp_3/SwitchSwitchbatch_normalization_18/beta#batch_normalization_18/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_18/beta*
_output_shapes
: : 
?
;batch_normalization_18/cond/FusedBatchNorm_1/ReadVariableOpReadVariableOpBbatch_normalization_18/cond/FusedBatchNorm_1/ReadVariableOp/Switch*
dtype0*
_output_shapes	
:?
?
Bbatch_normalization_18/cond/FusedBatchNorm_1/ReadVariableOp/SwitchSwitch"batch_normalization_18/moving_mean#batch_normalization_18/cond/pred_id*
_output_shapes
: : *
T0*5
_class+
)'loc:@batch_normalization_18/moving_mean
?
=batch_normalization_18/cond/FusedBatchNorm_1/ReadVariableOp_1ReadVariableOpDbatch_normalization_18/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch*
_output_shapes	
:?*
dtype0
?
Dbatch_normalization_18/cond/FusedBatchNorm_1/ReadVariableOp_1/SwitchSwitch&batch_normalization_18/moving_variance#batch_normalization_18/cond/pred_id*
T0*9
_class/
-+loc:@batch_normalization_18/moving_variance*
_output_shapes
: : 
?
,batch_normalization_18/cond/FusedBatchNorm_1FusedBatchNorm3batch_normalization_18/cond/FusedBatchNorm_1/Switch,batch_normalization_18/cond/ReadVariableOp_2,batch_normalization_18/cond/ReadVariableOp_3;batch_normalization_18/cond/FusedBatchNorm_1/ReadVariableOp=batch_normalization_18/cond/FusedBatchNorm_1/ReadVariableOp_1*
T0*L
_output_shapes:
8:?????????0?:?:?:?:?*
is_training( *
epsilon%o?:
?
3batch_normalization_18/cond/FusedBatchNorm_1/SwitchSwitchre_lu_1_1/Relu#batch_normalization_18/cond/pred_id*
T0*!
_class
loc:@re_lu_1_1/Relu*L
_output_shapes:
8:?????????0?:?????????0?
?
!batch_normalization_18/cond/MergeMerge,batch_normalization_18/cond/FusedBatchNorm_1*batch_normalization_18/cond/FusedBatchNorm*
N*2
_output_shapes 
:?????????0?: *
T0
?
#batch_normalization_18/cond/Merge_1Merge.batch_normalization_18/cond/FusedBatchNorm_1:1,batch_normalization_18/cond/FusedBatchNorm:1*
N*
_output_shapes
	:?: *
T0
?
#batch_normalization_18/cond/Merge_2Merge.batch_normalization_18/cond/FusedBatchNorm_1:2,batch_normalization_18/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes
	:?: 
}
$batch_normalization_18/cond_1/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

{
&batch_normalization_18/cond_1/switch_tIdentity&batch_normalization_18/cond_1/Switch:1*
T0
*
_output_shapes
: 
y
&batch_normalization_18/cond_1/switch_fIdentity$batch_normalization_18/cond_1/Switch*
T0
*
_output_shapes
: 
h
%batch_normalization_18/cond_1/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
#batch_normalization_18/cond_1/ConstConst'^batch_normalization_18/cond_1/switch_t*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
%batch_normalization_18/cond_1/Const_1Const'^batch_normalization_18/cond_1/switch_f*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
#batch_normalization_18/cond_1/MergeMerge%batch_normalization_18/cond_1/Const_1#batch_normalization_18/cond_1/Const*
N*
_output_shapes
: : *
T0
?
,batch_normalization_18/AssignMovingAvg/sub/xConst*
valueB
 *  ??*5
_class+
)'loc:@batch_normalization_18/moving_mean*
dtype0*
_output_shapes
: 
?
*batch_normalization_18/AssignMovingAvg/subSub,batch_normalization_18/AssignMovingAvg/sub/x#batch_normalization_18/cond_1/Merge*
T0*5
_class+
)'loc:@batch_normalization_18/moving_mean*
_output_shapes
: 
?
5batch_normalization_18/AssignMovingAvg/ReadVariableOpReadVariableOp"batch_normalization_18/moving_mean*
dtype0*
_output_shapes	
:?
?
,batch_normalization_18/AssignMovingAvg/sub_1Sub5batch_normalization_18/AssignMovingAvg/ReadVariableOp#batch_normalization_18/cond/Merge_1*
T0*5
_class+
)'loc:@batch_normalization_18/moving_mean*
_output_shapes	
:?
?
*batch_normalization_18/AssignMovingAvg/mulMul,batch_normalization_18/AssignMovingAvg/sub_1*batch_normalization_18/AssignMovingAvg/sub*
T0*5
_class+
)'loc:@batch_normalization_18/moving_mean*
_output_shapes	
:?
?
:batch_normalization_18/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp"batch_normalization_18/moving_mean*batch_normalization_18/AssignMovingAvg/mul*5
_class+
)'loc:@batch_normalization_18/moving_mean*
dtype0
?
7batch_normalization_18/AssignMovingAvg/ReadVariableOp_1ReadVariableOp"batch_normalization_18/moving_mean;^batch_normalization_18/AssignMovingAvg/AssignSubVariableOp*5
_class+
)'loc:@batch_normalization_18/moving_mean*
dtype0*
_output_shapes	
:?
?
.batch_normalization_18/AssignMovingAvg_1/sub/xConst*
valueB
 *  ??*9
_class/
-+loc:@batch_normalization_18/moving_variance*
dtype0*
_output_shapes
: 
?
,batch_normalization_18/AssignMovingAvg_1/subSub.batch_normalization_18/AssignMovingAvg_1/sub/x#batch_normalization_18/cond_1/Merge*
T0*9
_class/
-+loc:@batch_normalization_18/moving_variance*
_output_shapes
: 
?
7batch_normalization_18/AssignMovingAvg_1/ReadVariableOpReadVariableOp&batch_normalization_18/moving_variance*
dtype0*
_output_shapes	
:?
?
.batch_normalization_18/AssignMovingAvg_1/sub_1Sub7batch_normalization_18/AssignMovingAvg_1/ReadVariableOp#batch_normalization_18/cond/Merge_2*
_output_shapes	
:?*
T0*9
_class/
-+loc:@batch_normalization_18/moving_variance
?
,batch_normalization_18/AssignMovingAvg_1/mulMul.batch_normalization_18/AssignMovingAvg_1/sub_1,batch_normalization_18/AssignMovingAvg_1/sub*9
_class/
-+loc:@batch_normalization_18/moving_variance*
_output_shapes	
:?*
T0
?
<batch_normalization_18/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp&batch_normalization_18/moving_variance,batch_normalization_18/AssignMovingAvg_1/mul*9
_class/
-+loc:@batch_normalization_18/moving_variance*
dtype0
?
9batch_normalization_18/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp&batch_normalization_18/moving_variance=^batch_normalization_18/AssignMovingAvg_1/AssignSubVariableOp*
_output_shapes	
:?*9
_class/
-+loc:@batch_normalization_18/moving_variance*
dtype0
n
dropout_3/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_3/cond/switch_tIdentitydropout_3/cond/Switch:1*
_output_shapes
: *
T0

[
dropout_3/cond/switch_fIdentitydropout_3/cond/Switch*
T0
*
_output_shapes
: 
Y
dropout_3/cond/pred_idIdentitykeras_learning_phase*
_output_shapes
: *
T0

z
dropout_3/cond/dropout/rateConst^dropout_3/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
q
dropout_3/cond/dropout/ShapeShape%dropout_3/cond/dropout/Shape/Switch:1*
_output_shapes
:*
T0
?
#dropout_3/cond/dropout/Shape/SwitchSwitch!batch_normalization_18/cond/Mergedropout_3/cond/pred_id*
T0*4
_class*
(&loc:@batch_normalization_18/cond/Merge*L
_output_shapes:
8:?????????0?:?????????0?
?
)dropout_3/cond/dropout/random_uniform/minConst^dropout_3/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
?
)dropout_3/cond/dropout/random_uniform/maxConst^dropout_3/cond/switch_t*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
3dropout_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3/cond/dropout/Shape*
dtype0*0
_output_shapes
:?????????0?*
T0
?
)dropout_3/cond/dropout/random_uniform/subSub)dropout_3/cond/dropout/random_uniform/max)dropout_3/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
?
)dropout_3/cond/dropout/random_uniform/mulMul3dropout_3/cond/dropout/random_uniform/RandomUniform)dropout_3/cond/dropout/random_uniform/sub*
T0*0
_output_shapes
:?????????0?
?
%dropout_3/cond/dropout/random_uniformAdd)dropout_3/cond/dropout/random_uniform/mul)dropout_3/cond/dropout/random_uniform/min*
T0*0
_output_shapes
:?????????0?
{
dropout_3/cond/dropout/sub/xConst^dropout_3/cond/switch_t*
valueB
 *  ??*
dtype0*
_output_shapes
: 
}
dropout_3/cond/dropout/subSubdropout_3/cond/dropout/sub/xdropout_3/cond/dropout/rate*
T0*
_output_shapes
: 

 dropout_3/cond/dropout/truediv/xConst^dropout_3/cond/switch_t*
_output_shapes
: *
valueB
 *  ??*
dtype0
?
dropout_3/cond/dropout/truedivRealDiv dropout_3/cond/dropout/truediv/xdropout_3/cond/dropout/sub*
_output_shapes
: *
T0
?
#dropout_3/cond/dropout/GreaterEqualGreaterEqual%dropout_3/cond/dropout/random_uniformdropout_3/cond/dropout/rate*0
_output_shapes
:?????????0?*
T0
?
dropout_3/cond/dropout/mulMul%dropout_3/cond/dropout/Shape/Switch:1dropout_3/cond/dropout/truediv*
T0*0
_output_shapes
:?????????0?
?
dropout_3/cond/dropout/CastCast#dropout_3/cond/dropout/GreaterEqual*

SrcT0
*0
_output_shapes
:?????????0?*

DstT0
?
dropout_3/cond/dropout/mul_1Muldropout_3/cond/dropout/muldropout_3/cond/dropout/Cast*0
_output_shapes
:?????????0?*
T0
~
dropout_3/cond/IdentityIdentitydropout_3/cond/Identity/Switch*0
_output_shapes
:?????????0?*
T0
?
dropout_3/cond/Identity/SwitchSwitch!batch_normalization_18/cond/Mergedropout_3/cond/pred_id*
T0*4
_class*
(&loc:@batch_normalization_18/cond/Merge*L
_output_shapes:
8:?????????0?:?????????0?
?
dropout_3/cond/MergeMergedropout_3/cond/Identitydropout_3/cond/dropout/mul_1*
T0*
N*2
_output_shapes 
:?????????0?: 
[
concatenate_5/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
?
concatenate_5/concatConcatV2conv2d_11/BiasAdddropout_3/cond/Mergeconcatenate_5/concat/axis*
T0*
N*0
_output_shapes
:?????????0?
?
:conv2d_transpose_7/kernel/Initializer/random_uniform/shapeConst*%
valueB"      ?      *,
_class"
 loc:@conv2d_transpose_7/kernel*
dtype0*
_output_shapes
:
?
8conv2d_transpose_7/kernel/Initializer/random_uniform/minConst*
valueB
 *?\1?*,
_class"
 loc:@conv2d_transpose_7/kernel*
dtype0*
_output_shapes
: 
?
8conv2d_transpose_7/kernel/Initializer/random_uniform/maxConst*
valueB
 *?\1=*,
_class"
 loc:@conv2d_transpose_7/kernel*
dtype0*
_output_shapes
: 
?
Bconv2d_transpose_7/kernel/Initializer/random_uniform/RandomUniformRandomUniform:conv2d_transpose_7/kernel/Initializer/random_uniform/shape*
seed22*
dtype0*(
_output_shapes
:??*
seed???)*
T0*,
_class"
 loc:@conv2d_transpose_7/kernel
?
8conv2d_transpose_7/kernel/Initializer/random_uniform/subSub8conv2d_transpose_7/kernel/Initializer/random_uniform/max8conv2d_transpose_7/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@conv2d_transpose_7/kernel*
_output_shapes
: 
?
8conv2d_transpose_7/kernel/Initializer/random_uniform/mulMulBconv2d_transpose_7/kernel/Initializer/random_uniform/RandomUniform8conv2d_transpose_7/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@conv2d_transpose_7/kernel*(
_output_shapes
:??
?
4conv2d_transpose_7/kernel/Initializer/random_uniformAdd8conv2d_transpose_7/kernel/Initializer/random_uniform/mul8conv2d_transpose_7/kernel/Initializer/random_uniform/min*,
_class"
 loc:@conv2d_transpose_7/kernel*(
_output_shapes
:??*
T0
?
conv2d_transpose_7/kernelVarHandleOp*,
_class"
 loc:@conv2d_transpose_7/kernel*
dtype0*
_output_shapes
: *
shape:??**
shared_nameconv2d_transpose_7/kernel
?
:conv2d_transpose_7/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose_7/kernel*
_output_shapes
: 
?
 conv2d_transpose_7/kernel/AssignAssignVariableOpconv2d_transpose_7/kernel4conv2d_transpose_7/kernel/Initializer/random_uniform*,
_class"
 loc:@conv2d_transpose_7/kernel*
dtype0
?
-conv2d_transpose_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_7/kernel*,
_class"
 loc:@conv2d_transpose_7/kernel*
dtype0*(
_output_shapes
:??
?
)conv2d_transpose_7/bias/Initializer/zerosConst*
valueB?*    **
_class 
loc:@conv2d_transpose_7/bias*
dtype0*
_output_shapes	
:?
?
conv2d_transpose_7/biasVarHandleOp**
_class 
loc:@conv2d_transpose_7/bias*
dtype0*
_output_shapes
: *
shape:?*(
shared_nameconv2d_transpose_7/bias

8conv2d_transpose_7/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose_7/bias*
_output_shapes
: 
?
conv2d_transpose_7/bias/AssignAssignVariableOpconv2d_transpose_7/bias)conv2d_transpose_7/bias/Initializer/zeros**
_class 
loc:@conv2d_transpose_7/bias*
dtype0
?
+conv2d_transpose_7/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_7/bias**
_class 
loc:@conv2d_transpose_7/bias*
dtype0*
_output_shapes	
:?
\
conv2d_transpose_7/ShapeShapeconcatenate_5/concat*
_output_shapes
:*
T0
p
&conv2d_transpose_7/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
r
(conv2d_transpose_7/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
r
(conv2d_transpose_7/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
?
 conv2d_transpose_7/strided_sliceStridedSliceconv2d_transpose_7/Shape&conv2d_transpose_7/strided_slice/stack(conv2d_transpose_7/strided_slice/stack_1(conv2d_transpose_7/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
r
(conv2d_transpose_7/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_7/strided_slice_1/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
t
*conv2d_transpose_7/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
"conv2d_transpose_7/strided_slice_1StridedSliceconv2d_transpose_7/Shape(conv2d_transpose_7/strided_slice_1/stack*conv2d_transpose_7/strided_slice_1/stack_1*conv2d_transpose_7/strided_slice_1/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
r
(conv2d_transpose_7/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_7/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_7/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
"conv2d_transpose_7/strided_slice_2StridedSliceconv2d_transpose_7/Shape(conv2d_transpose_7/strided_slice_2/stack*conv2d_transpose_7/strided_slice_2/stack_1*conv2d_transpose_7/strided_slice_2/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
Z
conv2d_transpose_7/mul/yConst*
value	B :*
dtype0*
_output_shapes
: 
|
conv2d_transpose_7/mulMul"conv2d_transpose_7/strided_slice_1conv2d_transpose_7/mul/y*
T0*
_output_shapes
: 
\
conv2d_transpose_7/mul_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
conv2d_transpose_7/mul_1Mul"conv2d_transpose_7/strided_slice_2conv2d_transpose_7/mul_1/y*
T0*
_output_shapes
: 
]
conv2d_transpose_7/stack/3Const*
value
B :?*
dtype0*
_output_shapes
: 
?
conv2d_transpose_7/stackPack conv2d_transpose_7/strided_sliceconv2d_transpose_7/mulconv2d_transpose_7/mul_1conv2d_transpose_7/stack/3*
T0*
N*
_output_shapes
:
r
(conv2d_transpose_7/strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:
t
*conv2d_transpose_7/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_7/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
"conv2d_transpose_7/strided_slice_3StridedSliceconv2d_transpose_7/stack(conv2d_transpose_7/strided_slice_3/stack*conv2d_transpose_7/strided_slice_3/stack_1*conv2d_transpose_7/strided_slice_3/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
?
2conv2d_transpose_7/conv2d_transpose/ReadVariableOpReadVariableOpconv2d_transpose_7/kernel*
dtype0*(
_output_shapes
:??
?
#conv2d_transpose_7/conv2d_transposeConv2DBackpropInputconv2d_transpose_7/stack2conv2d_transpose_7/conv2d_transpose/ReadVariableOpconcatenate_5/concat*
paddingSAME*
T0*
strides
*0
_output_shapes
:????????? `?
~
)conv2d_transpose_7/BiasAdd/ReadVariableOpReadVariableOpconv2d_transpose_7/bias*
_output_shapes	
:?*
dtype0
?
conv2d_transpose_7/BiasAddBiasAdd#conv2d_transpose_7/conv2d_transpose)conv2d_transpose_7/BiasAdd/ReadVariableOp*0
_output_shapes
:????????? `?*
T0
m
re_lu_1_2/ReluReluconv2d_transpose_7/BiasAdd*
T0*0
_output_shapes
:????????? `?
?
-batch_normalization_19/gamma/Initializer/onesConst*
valueB?*  ??*/
_class%
#!loc:@batch_normalization_19/gamma*
dtype0*
_output_shapes	
:?
?
batch_normalization_19/gammaVarHandleOp*/
_class%
#!loc:@batch_normalization_19/gamma*
dtype0*
_output_shapes
: *
shape:?*-
shared_namebatch_normalization_19/gamma
?
=batch_normalization_19/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_19/gamma*
_output_shapes
: 
?
#batch_normalization_19/gamma/AssignAssignVariableOpbatch_normalization_19/gamma-batch_normalization_19/gamma/Initializer/ones*/
_class%
#!loc:@batch_normalization_19/gamma*
dtype0
?
0batch_normalization_19/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_19/gamma*/
_class%
#!loc:@batch_normalization_19/gamma*
dtype0*
_output_shapes	
:?
?
-batch_normalization_19/beta/Initializer/zerosConst*
valueB?*    *.
_class$
" loc:@batch_normalization_19/beta*
dtype0*
_output_shapes	
:?
?
batch_normalization_19/betaVarHandleOp*
shape:?*,
shared_namebatch_normalization_19/beta*.
_class$
" loc:@batch_normalization_19/beta*
dtype0*
_output_shapes
: 
?
<batch_normalization_19/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_19/beta*
_output_shapes
: 
?
"batch_normalization_19/beta/AssignAssignVariableOpbatch_normalization_19/beta-batch_normalization_19/beta/Initializer/zeros*.
_class$
" loc:@batch_normalization_19/beta*
dtype0
?
/batch_normalization_19/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_19/beta*.
_class$
" loc:@batch_normalization_19/beta*
dtype0*
_output_shapes	
:?
?
4batch_normalization_19/moving_mean/Initializer/zerosConst*
valueB?*    *5
_class+
)'loc:@batch_normalization_19/moving_mean*
dtype0*
_output_shapes	
:?
?
"batch_normalization_19/moving_meanVarHandleOp*
shape:?*3
shared_name$"batch_normalization_19/moving_mean*5
_class+
)'loc:@batch_normalization_19/moving_mean*
dtype0*
_output_shapes
: 
?
Cbatch_normalization_19/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp"batch_normalization_19/moving_mean*
_output_shapes
: 
?
)batch_normalization_19/moving_mean/AssignAssignVariableOp"batch_normalization_19/moving_mean4batch_normalization_19/moving_mean/Initializer/zeros*5
_class+
)'loc:@batch_normalization_19/moving_mean*
dtype0
?
6batch_normalization_19/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_19/moving_mean*5
_class+
)'loc:@batch_normalization_19/moving_mean*
dtype0*
_output_shapes	
:?
?
7batch_normalization_19/moving_variance/Initializer/onesConst*
_output_shapes	
:?*
valueB?*  ??*9
_class/
-+loc:@batch_normalization_19/moving_variance*
dtype0
?
&batch_normalization_19/moving_varianceVarHandleOp*
shape:?*7
shared_name(&batch_normalization_19/moving_variance*9
_class/
-+loc:@batch_normalization_19/moving_variance*
dtype0*
_output_shapes
: 
?
Gbatch_normalization_19/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp&batch_normalization_19/moving_variance*
_output_shapes
: 
?
-batch_normalization_19/moving_variance/AssignAssignVariableOp&batch_normalization_19/moving_variance7batch_normalization_19/moving_variance/Initializer/ones*
dtype0*9
_class/
-+loc:@batch_normalization_19/moving_variance
?
:batch_normalization_19/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_19/moving_variance*9
_class/
-+loc:@batch_normalization_19/moving_variance*
dtype0*
_output_shapes	
:?
{
"batch_normalization_19/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

w
$batch_normalization_19/cond/switch_tIdentity$batch_normalization_19/cond/Switch:1*
T0
*
_output_shapes
: 
u
$batch_normalization_19/cond/switch_fIdentity"batch_normalization_19/cond/Switch*
T0
*
_output_shapes
: 
f
#batch_normalization_19/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
*batch_normalization_19/cond/ReadVariableOpReadVariableOp3batch_normalization_19/cond/ReadVariableOp/Switch:1*
_output_shapes	
:?*
dtype0
?
1batch_normalization_19/cond/ReadVariableOp/SwitchSwitchbatch_normalization_19/gamma#batch_normalization_19/cond/pred_id*
T0*/
_class%
#!loc:@batch_normalization_19/gamma*
_output_shapes
: : 
?
,batch_normalization_19/cond/ReadVariableOp_1ReadVariableOp5batch_normalization_19/cond/ReadVariableOp_1/Switch:1*
dtype0*
_output_shapes	
:?
?
3batch_normalization_19/cond/ReadVariableOp_1/SwitchSwitchbatch_normalization_19/beta#batch_normalization_19/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_19/beta*
_output_shapes
: : 
?
!batch_normalization_19/cond/ConstConst%^batch_normalization_19/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
#batch_normalization_19/cond/Const_1Const%^batch_normalization_19/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
*batch_normalization_19/cond/FusedBatchNormFusedBatchNorm3batch_normalization_19/cond/FusedBatchNorm/Switch:1*batch_normalization_19/cond/ReadVariableOp,batch_normalization_19/cond/ReadVariableOp_1!batch_normalization_19/cond/Const#batch_normalization_19/cond/Const_1*
T0*L
_output_shapes:
8:????????? `?:?:?:?:?*
epsilon%o?:
?
1batch_normalization_19/cond/FusedBatchNorm/SwitchSwitchre_lu_1_2/Relu#batch_normalization_19/cond/pred_id*
T0*!
_class
loc:@re_lu_1_2/Relu*L
_output_shapes:
8:????????? `?:????????? `?
?
,batch_normalization_19/cond/ReadVariableOp_2ReadVariableOp3batch_normalization_19/cond/ReadVariableOp_2/Switch*
dtype0*
_output_shapes	
:?
?
3batch_normalization_19/cond/ReadVariableOp_2/SwitchSwitchbatch_normalization_19/gamma#batch_normalization_19/cond/pred_id*
T0*/
_class%
#!loc:@batch_normalization_19/gamma*
_output_shapes
: : 
?
,batch_normalization_19/cond/ReadVariableOp_3ReadVariableOp3batch_normalization_19/cond/ReadVariableOp_3/Switch*
_output_shapes	
:?*
dtype0
?
3batch_normalization_19/cond/ReadVariableOp_3/SwitchSwitchbatch_normalization_19/beta#batch_normalization_19/cond/pred_id*.
_class$
" loc:@batch_normalization_19/beta*
_output_shapes
: : *
T0
?
;batch_normalization_19/cond/FusedBatchNorm_1/ReadVariableOpReadVariableOpBbatch_normalization_19/cond/FusedBatchNorm_1/ReadVariableOp/Switch*
dtype0*
_output_shapes	
:?
?
Bbatch_normalization_19/cond/FusedBatchNorm_1/ReadVariableOp/SwitchSwitch"batch_normalization_19/moving_mean#batch_normalization_19/cond/pred_id*
_output_shapes
: : *
T0*5
_class+
)'loc:@batch_normalization_19/moving_mean
?
=batch_normalization_19/cond/FusedBatchNorm_1/ReadVariableOp_1ReadVariableOpDbatch_normalization_19/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch*
dtype0*
_output_shapes	
:?
?
Dbatch_normalization_19/cond/FusedBatchNorm_1/ReadVariableOp_1/SwitchSwitch&batch_normalization_19/moving_variance#batch_normalization_19/cond/pred_id*
_output_shapes
: : *
T0*9
_class/
-+loc:@batch_normalization_19/moving_variance
?
,batch_normalization_19/cond/FusedBatchNorm_1FusedBatchNorm3batch_normalization_19/cond/FusedBatchNorm_1/Switch,batch_normalization_19/cond/ReadVariableOp_2,batch_normalization_19/cond/ReadVariableOp_3;batch_normalization_19/cond/FusedBatchNorm_1/ReadVariableOp=batch_normalization_19/cond/FusedBatchNorm_1/ReadVariableOp_1*
T0*L
_output_shapes:
8:????????? `?:?:?:?:?*
is_training( *
epsilon%o?:
?
3batch_normalization_19/cond/FusedBatchNorm_1/SwitchSwitchre_lu_1_2/Relu#batch_normalization_19/cond/pred_id*
T0*!
_class
loc:@re_lu_1_2/Relu*L
_output_shapes:
8:????????? `?:????????? `?
?
!batch_normalization_19/cond/MergeMerge,batch_normalization_19/cond/FusedBatchNorm_1*batch_normalization_19/cond/FusedBatchNorm*
T0*
N*2
_output_shapes 
:????????? `?: 
?
#batch_normalization_19/cond/Merge_1Merge.batch_normalization_19/cond/FusedBatchNorm_1:1,batch_normalization_19/cond/FusedBatchNorm:1*
N*
_output_shapes
	:?: *
T0
?
#batch_normalization_19/cond/Merge_2Merge.batch_normalization_19/cond/FusedBatchNorm_1:2,batch_normalization_19/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes
	:?: 
}
$batch_normalization_19/cond_1/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
{
&batch_normalization_19/cond_1/switch_tIdentity&batch_normalization_19/cond_1/Switch:1*
_output_shapes
: *
T0

y
&batch_normalization_19/cond_1/switch_fIdentity$batch_normalization_19/cond_1/Switch*
T0
*
_output_shapes
: 
h
%batch_normalization_19/cond_1/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
#batch_normalization_19/cond_1/ConstConst'^batch_normalization_19/cond_1/switch_t*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
%batch_normalization_19/cond_1/Const_1Const'^batch_normalization_19/cond_1/switch_f*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
#batch_normalization_19/cond_1/MergeMerge%batch_normalization_19/cond_1/Const_1#batch_normalization_19/cond_1/Const*
T0*
N*
_output_shapes
: : 
?
,batch_normalization_19/AssignMovingAvg/sub/xConst*
valueB
 *  ??*5
_class+
)'loc:@batch_normalization_19/moving_mean*
dtype0*
_output_shapes
: 
?
*batch_normalization_19/AssignMovingAvg/subSub,batch_normalization_19/AssignMovingAvg/sub/x#batch_normalization_19/cond_1/Merge*
T0*5
_class+
)'loc:@batch_normalization_19/moving_mean*
_output_shapes
: 
?
5batch_normalization_19/AssignMovingAvg/ReadVariableOpReadVariableOp"batch_normalization_19/moving_mean*
dtype0*
_output_shapes	
:?
?
,batch_normalization_19/AssignMovingAvg/sub_1Sub5batch_normalization_19/AssignMovingAvg/ReadVariableOp#batch_normalization_19/cond/Merge_1*
T0*5
_class+
)'loc:@batch_normalization_19/moving_mean*
_output_shapes	
:?
?
*batch_normalization_19/AssignMovingAvg/mulMul,batch_normalization_19/AssignMovingAvg/sub_1*batch_normalization_19/AssignMovingAvg/sub*
T0*5
_class+
)'loc:@batch_normalization_19/moving_mean*
_output_shapes	
:?
?
:batch_normalization_19/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp"batch_normalization_19/moving_mean*batch_normalization_19/AssignMovingAvg/mul*5
_class+
)'loc:@batch_normalization_19/moving_mean*
dtype0
?
7batch_normalization_19/AssignMovingAvg/ReadVariableOp_1ReadVariableOp"batch_normalization_19/moving_mean;^batch_normalization_19/AssignMovingAvg/AssignSubVariableOp*5
_class+
)'loc:@batch_normalization_19/moving_mean*
dtype0*
_output_shapes	
:?
?
.batch_normalization_19/AssignMovingAvg_1/sub/xConst*
valueB
 *  ??*9
_class/
-+loc:@batch_normalization_19/moving_variance*
dtype0*
_output_shapes
: 
?
,batch_normalization_19/AssignMovingAvg_1/subSub.batch_normalization_19/AssignMovingAvg_1/sub/x#batch_normalization_19/cond_1/Merge*
T0*9
_class/
-+loc:@batch_normalization_19/moving_variance*
_output_shapes
: 
?
7batch_normalization_19/AssignMovingAvg_1/ReadVariableOpReadVariableOp&batch_normalization_19/moving_variance*
dtype0*
_output_shapes	
:?
?
.batch_normalization_19/AssignMovingAvg_1/sub_1Sub7batch_normalization_19/AssignMovingAvg_1/ReadVariableOp#batch_normalization_19/cond/Merge_2*
T0*9
_class/
-+loc:@batch_normalization_19/moving_variance*
_output_shapes	
:?
?
,batch_normalization_19/AssignMovingAvg_1/mulMul.batch_normalization_19/AssignMovingAvg_1/sub_1,batch_normalization_19/AssignMovingAvg_1/sub*
T0*9
_class/
-+loc:@batch_normalization_19/moving_variance*
_output_shapes	
:?
?
<batch_normalization_19/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp&batch_normalization_19/moving_variance,batch_normalization_19/AssignMovingAvg_1/mul*9
_class/
-+loc:@batch_normalization_19/moving_variance*
dtype0
?
9batch_normalization_19/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp&batch_normalization_19/moving_variance=^batch_normalization_19/AssignMovingAvg_1/AssignSubVariableOp*9
_class/
-+loc:@batch_normalization_19/moving_variance*
dtype0*
_output_shapes	
:?
n
dropout_4/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_4/cond/switch_tIdentitydropout_4/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_4/cond/switch_fIdentitydropout_4/cond/Switch*
T0
*
_output_shapes
: 
Y
dropout_4/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
z
dropout_4/cond/dropout/rateConst^dropout_4/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *   ?
q
dropout_4/cond/dropout/ShapeShape%dropout_4/cond/dropout/Shape/Switch:1*
_output_shapes
:*
T0
?
#dropout_4/cond/dropout/Shape/SwitchSwitch!batch_normalization_19/cond/Mergedropout_4/cond/pred_id*
T0*4
_class*
(&loc:@batch_normalization_19/cond/Merge*L
_output_shapes:
8:????????? `?:????????? `?
?
)dropout_4/cond/dropout/random_uniform/minConst^dropout_4/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
?
)dropout_4/cond/dropout/random_uniform/maxConst^dropout_4/cond/switch_t*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
3dropout_4/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_4/cond/dropout/Shape*
dtype0*0
_output_shapes
:????????? `?*
T0
?
)dropout_4/cond/dropout/random_uniform/subSub)dropout_4/cond/dropout/random_uniform/max)dropout_4/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
?
)dropout_4/cond/dropout/random_uniform/mulMul3dropout_4/cond/dropout/random_uniform/RandomUniform)dropout_4/cond/dropout/random_uniform/sub*
T0*0
_output_shapes
:????????? `?
?
%dropout_4/cond/dropout/random_uniformAdd)dropout_4/cond/dropout/random_uniform/mul)dropout_4/cond/dropout/random_uniform/min*0
_output_shapes
:????????? `?*
T0
{
dropout_4/cond/dropout/sub/xConst^dropout_4/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ??
}
dropout_4/cond/dropout/subSubdropout_4/cond/dropout/sub/xdropout_4/cond/dropout/rate*
_output_shapes
: *
T0

 dropout_4/cond/dropout/truediv/xConst^dropout_4/cond/switch_t*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
dropout_4/cond/dropout/truedivRealDiv dropout_4/cond/dropout/truediv/xdropout_4/cond/dropout/sub*
_output_shapes
: *
T0
?
#dropout_4/cond/dropout/GreaterEqualGreaterEqual%dropout_4/cond/dropout/random_uniformdropout_4/cond/dropout/rate*0
_output_shapes
:????????? `?*
T0
?
dropout_4/cond/dropout/mulMul%dropout_4/cond/dropout/Shape/Switch:1dropout_4/cond/dropout/truediv*
T0*0
_output_shapes
:????????? `?
?
dropout_4/cond/dropout/CastCast#dropout_4/cond/dropout/GreaterEqual*0
_output_shapes
:????????? `?*

DstT0*

SrcT0

?
dropout_4/cond/dropout/mul_1Muldropout_4/cond/dropout/muldropout_4/cond/dropout/Cast*
T0*0
_output_shapes
:????????? `?
~
dropout_4/cond/IdentityIdentitydropout_4/cond/Identity/Switch*0
_output_shapes
:????????? `?*
T0
?
dropout_4/cond/Identity/SwitchSwitch!batch_normalization_19/cond/Mergedropout_4/cond/pred_id*4
_class*
(&loc:@batch_normalization_19/cond/Merge*L
_output_shapes:
8:????????? `?:????????? `?*
T0
?
dropout_4/cond/MergeMergedropout_4/cond/Identitydropout_4/cond/dropout/mul_1*
T0*
N*2
_output_shapes 
:????????? `?: 
[
concatenate_6/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
?
concatenate_6/concatConcatV2conv2d_10/BiasAdddropout_4/cond/Mergeconcatenate_6/concat/axis*
T0*
N*0
_output_shapes
:????????? `?
?
:conv2d_transpose_8/kernel/Initializer/random_uniform/shapeConst*%
valueB"      @      *,
_class"
 loc:@conv2d_transpose_8/kernel*
dtype0*
_output_shapes
:
?
8conv2d_transpose_8/kernel/Initializer/random_uniform/minConst*
valueB
 *??z?*,
_class"
 loc:@conv2d_transpose_8/kernel*
dtype0*
_output_shapes
: 
?
8conv2d_transpose_8/kernel/Initializer/random_uniform/maxConst*
valueB
 *??z=*,
_class"
 loc:@conv2d_transpose_8/kernel*
dtype0*
_output_shapes
: 
?
Bconv2d_transpose_8/kernel/Initializer/random_uniform/RandomUniformRandomUniform:conv2d_transpose_8/kernel/Initializer/random_uniform/shape*'
_output_shapes
:@?*
seed???)*
T0*,
_class"
 loc:@conv2d_transpose_8/kernel*
seed22*
dtype0
?
8conv2d_transpose_8/kernel/Initializer/random_uniform/subSub8conv2d_transpose_8/kernel/Initializer/random_uniform/max8conv2d_transpose_8/kernel/Initializer/random_uniform/min*,
_class"
 loc:@conv2d_transpose_8/kernel*
_output_shapes
: *
T0
?
8conv2d_transpose_8/kernel/Initializer/random_uniform/mulMulBconv2d_transpose_8/kernel/Initializer/random_uniform/RandomUniform8conv2d_transpose_8/kernel/Initializer/random_uniform/sub*'
_output_shapes
:@?*
T0*,
_class"
 loc:@conv2d_transpose_8/kernel
?
4conv2d_transpose_8/kernel/Initializer/random_uniformAdd8conv2d_transpose_8/kernel/Initializer/random_uniform/mul8conv2d_transpose_8/kernel/Initializer/random_uniform/min*,
_class"
 loc:@conv2d_transpose_8/kernel*'
_output_shapes
:@?*
T0
?
conv2d_transpose_8/kernelVarHandleOp**
shared_nameconv2d_transpose_8/kernel*,
_class"
 loc:@conv2d_transpose_8/kernel*
dtype0*
_output_shapes
: *
shape:@?
?
:conv2d_transpose_8/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose_8/kernel*
_output_shapes
: 
?
 conv2d_transpose_8/kernel/AssignAssignVariableOpconv2d_transpose_8/kernel4conv2d_transpose_8/kernel/Initializer/random_uniform*,
_class"
 loc:@conv2d_transpose_8/kernel*
dtype0
?
-conv2d_transpose_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_8/kernel*'
_output_shapes
:@?*,
_class"
 loc:@conv2d_transpose_8/kernel*
dtype0
?
)conv2d_transpose_8/bias/Initializer/zerosConst*
valueB@*    **
_class 
loc:@conv2d_transpose_8/bias*
dtype0*
_output_shapes
:@
?
conv2d_transpose_8/biasVarHandleOp*
_output_shapes
: *
shape:@*(
shared_nameconv2d_transpose_8/bias**
_class 
loc:@conv2d_transpose_8/bias*
dtype0

8conv2d_transpose_8/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose_8/bias*
_output_shapes
: 
?
conv2d_transpose_8/bias/AssignAssignVariableOpconv2d_transpose_8/bias)conv2d_transpose_8/bias/Initializer/zeros**
_class 
loc:@conv2d_transpose_8/bias*
dtype0
?
+conv2d_transpose_8/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_8/bias*
dtype0*
_output_shapes
:@**
_class 
loc:@conv2d_transpose_8/bias
\
conv2d_transpose_8/ShapeShapeconcatenate_6/concat*
T0*
_output_shapes
:
p
&conv2d_transpose_8/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
r
(conv2d_transpose_8/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
r
(conv2d_transpose_8/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
 conv2d_transpose_8/strided_sliceStridedSliceconv2d_transpose_8/Shape&conv2d_transpose_8/strided_slice/stack(conv2d_transpose_8/strided_slice/stack_1(conv2d_transpose_8/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
r
(conv2d_transpose_8/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB:
t
*conv2d_transpose_8/strided_slice_1/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
t
*conv2d_transpose_8/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
"conv2d_transpose_8/strided_slice_1StridedSliceconv2d_transpose_8/Shape(conv2d_transpose_8/strided_slice_1/stack*conv2d_transpose_8/strided_slice_1/stack_1*conv2d_transpose_8/strided_slice_1/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
r
(conv2d_transpose_8/strided_slice_2/stackConst*
dtype0*
_output_shapes
:*
valueB:
t
*conv2d_transpose_8/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_8/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
"conv2d_transpose_8/strided_slice_2StridedSliceconv2d_transpose_8/Shape(conv2d_transpose_8/strided_slice_2/stack*conv2d_transpose_8/strided_slice_2/stack_1*conv2d_transpose_8/strided_slice_2/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
Z
conv2d_transpose_8/mul/yConst*
value	B :*
dtype0*
_output_shapes
: 
|
conv2d_transpose_8/mulMul"conv2d_transpose_8/strided_slice_1conv2d_transpose_8/mul/y*
T0*
_output_shapes
: 
\
conv2d_transpose_8/mul_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
conv2d_transpose_8/mul_1Mul"conv2d_transpose_8/strided_slice_2conv2d_transpose_8/mul_1/y*
_output_shapes
: *
T0
\
conv2d_transpose_8/stack/3Const*
value	B :@*
dtype0*
_output_shapes
: 
?
conv2d_transpose_8/stackPack conv2d_transpose_8/strided_sliceconv2d_transpose_8/mulconv2d_transpose_8/mul_1conv2d_transpose_8/stack/3*
T0*
N*
_output_shapes
:
r
(conv2d_transpose_8/strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:
t
*conv2d_transpose_8/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_8/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
"conv2d_transpose_8/strided_slice_3StridedSliceconv2d_transpose_8/stack(conv2d_transpose_8/strided_slice_3/stack*conv2d_transpose_8/strided_slice_3/stack_1*conv2d_transpose_8/strided_slice_3/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
?
2conv2d_transpose_8/conv2d_transpose/ReadVariableOpReadVariableOpconv2d_transpose_8/kernel*
dtype0*'
_output_shapes
:@?
?
#conv2d_transpose_8/conv2d_transposeConv2DBackpropInputconv2d_transpose_8/stack2conv2d_transpose_8/conv2d_transpose/ReadVariableOpconcatenate_6/concat*
paddingSAME*
T0*
strides
*0
_output_shapes
:?????????@?@
}
)conv2d_transpose_8/BiasAdd/ReadVariableOpReadVariableOpconv2d_transpose_8/bias*
dtype0*
_output_shapes
:@
?
conv2d_transpose_8/BiasAddBiasAdd#conv2d_transpose_8/conv2d_transpose)conv2d_transpose_8/BiasAdd/ReadVariableOp*
T0*0
_output_shapes
:?????????@?@
m
re_lu_1_3/ReluReluconv2d_transpose_8/BiasAdd*0
_output_shapes
:?????????@?@*
T0
?
-batch_normalization_20/gamma/Initializer/onesConst*
valueB@*  ??*/
_class%
#!loc:@batch_normalization_20/gamma*
dtype0*
_output_shapes
:@
?
batch_normalization_20/gammaVarHandleOp*/
_class%
#!loc:@batch_normalization_20/gamma*
dtype0*
_output_shapes
: *
shape:@*-
shared_namebatch_normalization_20/gamma
?
=batch_normalization_20/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_20/gamma*
_output_shapes
: 
?
#batch_normalization_20/gamma/AssignAssignVariableOpbatch_normalization_20/gamma-batch_normalization_20/gamma/Initializer/ones*/
_class%
#!loc:@batch_normalization_20/gamma*
dtype0
?
0batch_normalization_20/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_20/gamma*/
_class%
#!loc:@batch_normalization_20/gamma*
dtype0*
_output_shapes
:@
?
-batch_normalization_20/beta/Initializer/zerosConst*
valueB@*    *.
_class$
" loc:@batch_normalization_20/beta*
dtype0*
_output_shapes
:@
?
batch_normalization_20/betaVarHandleOp*.
_class$
" loc:@batch_normalization_20/beta*
dtype0*
_output_shapes
: *
shape:@*,
shared_namebatch_normalization_20/beta
?
<batch_normalization_20/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_20/beta*
_output_shapes
: 
?
"batch_normalization_20/beta/AssignAssignVariableOpbatch_normalization_20/beta-batch_normalization_20/beta/Initializer/zeros*.
_class$
" loc:@batch_normalization_20/beta*
dtype0
?
/batch_normalization_20/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_20/beta*.
_class$
" loc:@batch_normalization_20/beta*
dtype0*
_output_shapes
:@
?
4batch_normalization_20/moving_mean/Initializer/zerosConst*
_output_shapes
:@*
valueB@*    *5
_class+
)'loc:@batch_normalization_20/moving_mean*
dtype0
?
"batch_normalization_20/moving_meanVarHandleOp*5
_class+
)'loc:@batch_normalization_20/moving_mean*
dtype0*
_output_shapes
: *
shape:@*3
shared_name$"batch_normalization_20/moving_mean
?
Cbatch_normalization_20/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp"batch_normalization_20/moving_mean*
_output_shapes
: 
?
)batch_normalization_20/moving_mean/AssignAssignVariableOp"batch_normalization_20/moving_mean4batch_normalization_20/moving_mean/Initializer/zeros*5
_class+
)'loc:@batch_normalization_20/moving_mean*
dtype0
?
6batch_normalization_20/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_20/moving_mean*
dtype0*
_output_shapes
:@*5
_class+
)'loc:@batch_normalization_20/moving_mean
?
7batch_normalization_20/moving_variance/Initializer/onesConst*
valueB@*  ??*9
_class/
-+loc:@batch_normalization_20/moving_variance*
dtype0*
_output_shapes
:@
?
&batch_normalization_20/moving_varianceVarHandleOp*
_output_shapes
: *
shape:@*7
shared_name(&batch_normalization_20/moving_variance*9
_class/
-+loc:@batch_normalization_20/moving_variance*
dtype0
?
Gbatch_normalization_20/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp&batch_normalization_20/moving_variance*
_output_shapes
: 
?
-batch_normalization_20/moving_variance/AssignAssignVariableOp&batch_normalization_20/moving_variance7batch_normalization_20/moving_variance/Initializer/ones*9
_class/
-+loc:@batch_normalization_20/moving_variance*
dtype0
?
:batch_normalization_20/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_20/moving_variance*9
_class/
-+loc:@batch_normalization_20/moving_variance*
dtype0*
_output_shapes
:@
{
"batch_normalization_20/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
w
$batch_normalization_20/cond/switch_tIdentity$batch_normalization_20/cond/Switch:1*
T0
*
_output_shapes
: 
u
$batch_normalization_20/cond/switch_fIdentity"batch_normalization_20/cond/Switch*
T0
*
_output_shapes
: 
f
#batch_normalization_20/cond/pred_idIdentitykeras_learning_phase*
_output_shapes
: *
T0

?
*batch_normalization_20/cond/ReadVariableOpReadVariableOp3batch_normalization_20/cond/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:@
?
1batch_normalization_20/cond/ReadVariableOp/SwitchSwitchbatch_normalization_20/gamma#batch_normalization_20/cond/pred_id*
T0*/
_class%
#!loc:@batch_normalization_20/gamma*
_output_shapes
: : 
?
,batch_normalization_20/cond/ReadVariableOp_1ReadVariableOp5batch_normalization_20/cond/ReadVariableOp_1/Switch:1*
dtype0*
_output_shapes
:@
?
3batch_normalization_20/cond/ReadVariableOp_1/SwitchSwitchbatch_normalization_20/beta#batch_normalization_20/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_20/beta*
_output_shapes
: : 
?
!batch_normalization_20/cond/ConstConst%^batch_normalization_20/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
#batch_normalization_20/cond/Const_1Const%^batch_normalization_20/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
*batch_normalization_20/cond/FusedBatchNormFusedBatchNorm3batch_normalization_20/cond/FusedBatchNorm/Switch:1*batch_normalization_20/cond/ReadVariableOp,batch_normalization_20/cond/ReadVariableOp_1!batch_normalization_20/cond/Const#batch_normalization_20/cond/Const_1*
epsilon%o?:*
T0*H
_output_shapes6
4:?????????@?@:@:@:@:@
?
1batch_normalization_20/cond/FusedBatchNorm/SwitchSwitchre_lu_1_3/Relu#batch_normalization_20/cond/pred_id*
T0*!
_class
loc:@re_lu_1_3/Relu*L
_output_shapes:
8:?????????@?@:?????????@?@
?
,batch_normalization_20/cond/ReadVariableOp_2ReadVariableOp3batch_normalization_20/cond/ReadVariableOp_2/Switch*
dtype0*
_output_shapes
:@
?
3batch_normalization_20/cond/ReadVariableOp_2/SwitchSwitchbatch_normalization_20/gamma#batch_normalization_20/cond/pred_id*
_output_shapes
: : *
T0*/
_class%
#!loc:@batch_normalization_20/gamma
?
,batch_normalization_20/cond/ReadVariableOp_3ReadVariableOp3batch_normalization_20/cond/ReadVariableOp_3/Switch*
dtype0*
_output_shapes
:@
?
3batch_normalization_20/cond/ReadVariableOp_3/SwitchSwitchbatch_normalization_20/beta#batch_normalization_20/cond/pred_id*.
_class$
" loc:@batch_normalization_20/beta*
_output_shapes
: : *
T0
?
;batch_normalization_20/cond/FusedBatchNorm_1/ReadVariableOpReadVariableOpBbatch_normalization_20/cond/FusedBatchNorm_1/ReadVariableOp/Switch*
dtype0*
_output_shapes
:@
?
Bbatch_normalization_20/cond/FusedBatchNorm_1/ReadVariableOp/SwitchSwitch"batch_normalization_20/moving_mean#batch_normalization_20/cond/pred_id*
T0*5
_class+
)'loc:@batch_normalization_20/moving_mean*
_output_shapes
: : 
?
=batch_normalization_20/cond/FusedBatchNorm_1/ReadVariableOp_1ReadVariableOpDbatch_normalization_20/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:@
?
Dbatch_normalization_20/cond/FusedBatchNorm_1/ReadVariableOp_1/SwitchSwitch&batch_normalization_20/moving_variance#batch_normalization_20/cond/pred_id*
T0*9
_class/
-+loc:@batch_normalization_20/moving_variance*
_output_shapes
: : 
?
,batch_normalization_20/cond/FusedBatchNorm_1FusedBatchNorm3batch_normalization_20/cond/FusedBatchNorm_1/Switch,batch_normalization_20/cond/ReadVariableOp_2,batch_normalization_20/cond/ReadVariableOp_3;batch_normalization_20/cond/FusedBatchNorm_1/ReadVariableOp=batch_normalization_20/cond/FusedBatchNorm_1/ReadVariableOp_1*
epsilon%o?:*
T0*H
_output_shapes6
4:?????????@?@:@:@:@:@*
is_training( 
?
3batch_normalization_20/cond/FusedBatchNorm_1/SwitchSwitchre_lu_1_3/Relu#batch_normalization_20/cond/pred_id*
T0*!
_class
loc:@re_lu_1_3/Relu*L
_output_shapes:
8:?????????@?@:?????????@?@
?
!batch_normalization_20/cond/MergeMerge,batch_normalization_20/cond/FusedBatchNorm_1*batch_normalization_20/cond/FusedBatchNorm*
T0*
N*2
_output_shapes 
:?????????@?@: 
?
#batch_normalization_20/cond/Merge_1Merge.batch_normalization_20/cond/FusedBatchNorm_1:1,batch_normalization_20/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes

:@: 
?
#batch_normalization_20/cond/Merge_2Merge.batch_normalization_20/cond/FusedBatchNorm_1:2,batch_normalization_20/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes

:@: 
}
$batch_normalization_20/cond_1/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
{
&batch_normalization_20/cond_1/switch_tIdentity&batch_normalization_20/cond_1/Switch:1*
T0
*
_output_shapes
: 
y
&batch_normalization_20/cond_1/switch_fIdentity$batch_normalization_20/cond_1/Switch*
T0
*
_output_shapes
: 
h
%batch_normalization_20/cond_1/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
#batch_normalization_20/cond_1/ConstConst'^batch_normalization_20/cond_1/switch_t*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
%batch_normalization_20/cond_1/Const_1Const'^batch_normalization_20/cond_1/switch_f*
_output_shapes
: *
valueB
 *  ??*
dtype0
?
#batch_normalization_20/cond_1/MergeMerge%batch_normalization_20/cond_1/Const_1#batch_normalization_20/cond_1/Const*
_output_shapes
: : *
T0*
N
?
,batch_normalization_20/AssignMovingAvg/sub/xConst*
valueB
 *  ??*5
_class+
)'loc:@batch_normalization_20/moving_mean*
dtype0*
_output_shapes
: 
?
*batch_normalization_20/AssignMovingAvg/subSub,batch_normalization_20/AssignMovingAvg/sub/x#batch_normalization_20/cond_1/Merge*
T0*5
_class+
)'loc:@batch_normalization_20/moving_mean*
_output_shapes
: 
?
5batch_normalization_20/AssignMovingAvg/ReadVariableOpReadVariableOp"batch_normalization_20/moving_mean*
dtype0*
_output_shapes
:@
?
,batch_normalization_20/AssignMovingAvg/sub_1Sub5batch_normalization_20/AssignMovingAvg/ReadVariableOp#batch_normalization_20/cond/Merge_1*
T0*5
_class+
)'loc:@batch_normalization_20/moving_mean*
_output_shapes
:@
?
*batch_normalization_20/AssignMovingAvg/mulMul,batch_normalization_20/AssignMovingAvg/sub_1*batch_normalization_20/AssignMovingAvg/sub*
_output_shapes
:@*
T0*5
_class+
)'loc:@batch_normalization_20/moving_mean
?
:batch_normalization_20/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp"batch_normalization_20/moving_mean*batch_normalization_20/AssignMovingAvg/mul*5
_class+
)'loc:@batch_normalization_20/moving_mean*
dtype0
?
7batch_normalization_20/AssignMovingAvg/ReadVariableOp_1ReadVariableOp"batch_normalization_20/moving_mean;^batch_normalization_20/AssignMovingAvg/AssignSubVariableOp*5
_class+
)'loc:@batch_normalization_20/moving_mean*
dtype0*
_output_shapes
:@
?
.batch_normalization_20/AssignMovingAvg_1/sub/xConst*
valueB
 *  ??*9
_class/
-+loc:@batch_normalization_20/moving_variance*
dtype0*
_output_shapes
: 
?
,batch_normalization_20/AssignMovingAvg_1/subSub.batch_normalization_20/AssignMovingAvg_1/sub/x#batch_normalization_20/cond_1/Merge*
T0*9
_class/
-+loc:@batch_normalization_20/moving_variance*
_output_shapes
: 
?
7batch_normalization_20/AssignMovingAvg_1/ReadVariableOpReadVariableOp&batch_normalization_20/moving_variance*
dtype0*
_output_shapes
:@
?
.batch_normalization_20/AssignMovingAvg_1/sub_1Sub7batch_normalization_20/AssignMovingAvg_1/ReadVariableOp#batch_normalization_20/cond/Merge_2*
T0*9
_class/
-+loc:@batch_normalization_20/moving_variance*
_output_shapes
:@
?
,batch_normalization_20/AssignMovingAvg_1/mulMul.batch_normalization_20/AssignMovingAvg_1/sub_1,batch_normalization_20/AssignMovingAvg_1/sub*
T0*9
_class/
-+loc:@batch_normalization_20/moving_variance*
_output_shapes
:@
?
<batch_normalization_20/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp&batch_normalization_20/moving_variance,batch_normalization_20/AssignMovingAvg_1/mul*9
_class/
-+loc:@batch_normalization_20/moving_variance*
dtype0
?
9batch_normalization_20/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp&batch_normalization_20/moving_variance=^batch_normalization_20/AssignMovingAvg_1/AssignSubVariableOp*9
_class/
-+loc:@batch_normalization_20/moving_variance*
dtype0*
_output_shapes
:@
n
dropout_5/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_5/cond/switch_tIdentitydropout_5/cond/Switch:1*
_output_shapes
: *
T0

[
dropout_5/cond/switch_fIdentitydropout_5/cond/Switch*
T0
*
_output_shapes
: 
Y
dropout_5/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
z
dropout_5/cond/dropout/rateConst^dropout_5/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
q
dropout_5/cond/dropout/ShapeShape%dropout_5/cond/dropout/Shape/Switch:1*
T0*
_output_shapes
:
?
#dropout_5/cond/dropout/Shape/SwitchSwitch!batch_normalization_20/cond/Mergedropout_5/cond/pred_id*
T0*4
_class*
(&loc:@batch_normalization_20/cond/Merge*L
_output_shapes:
8:?????????@?@:?????????@?@
?
)dropout_5/cond/dropout/random_uniform/minConst^dropout_5/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
?
)dropout_5/cond/dropout/random_uniform/maxConst^dropout_5/cond/switch_t*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
3dropout_5/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_5/cond/dropout/Shape*
T0*
dtype0*0
_output_shapes
:?????????@?@
?
)dropout_5/cond/dropout/random_uniform/subSub)dropout_5/cond/dropout/random_uniform/max)dropout_5/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
?
)dropout_5/cond/dropout/random_uniform/mulMul3dropout_5/cond/dropout/random_uniform/RandomUniform)dropout_5/cond/dropout/random_uniform/sub*
T0*0
_output_shapes
:?????????@?@
?
%dropout_5/cond/dropout/random_uniformAdd)dropout_5/cond/dropout/random_uniform/mul)dropout_5/cond/dropout/random_uniform/min*
T0*0
_output_shapes
:?????????@?@
{
dropout_5/cond/dropout/sub/xConst^dropout_5/cond/switch_t*
valueB
 *  ??*
dtype0*
_output_shapes
: 
}
dropout_5/cond/dropout/subSubdropout_5/cond/dropout/sub/xdropout_5/cond/dropout/rate*
_output_shapes
: *
T0

 dropout_5/cond/dropout/truediv/xConst^dropout_5/cond/switch_t*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
dropout_5/cond/dropout/truedivRealDiv dropout_5/cond/dropout/truediv/xdropout_5/cond/dropout/sub*
_output_shapes
: *
T0
?
#dropout_5/cond/dropout/GreaterEqualGreaterEqual%dropout_5/cond/dropout/random_uniformdropout_5/cond/dropout/rate*0
_output_shapes
:?????????@?@*
T0
?
dropout_5/cond/dropout/mulMul%dropout_5/cond/dropout/Shape/Switch:1dropout_5/cond/dropout/truediv*
T0*0
_output_shapes
:?????????@?@
?
dropout_5/cond/dropout/CastCast#dropout_5/cond/dropout/GreaterEqual*0
_output_shapes
:?????????@?@*

DstT0*

SrcT0

?
dropout_5/cond/dropout/mul_1Muldropout_5/cond/dropout/muldropout_5/cond/dropout/Cast*0
_output_shapes
:?????????@?@*
T0
~
dropout_5/cond/IdentityIdentitydropout_5/cond/Identity/Switch*
T0*0
_output_shapes
:?????????@?@
?
dropout_5/cond/Identity/SwitchSwitch!batch_normalization_20/cond/Mergedropout_5/cond/pred_id*
T0*4
_class*
(&loc:@batch_normalization_20/cond/Merge*L
_output_shapes:
8:?????????@?@:?????????@?@
?
dropout_5/cond/MergeMergedropout_5/cond/Identitydropout_5/cond/dropout/mul_1*
T0*
N*2
_output_shapes 
:?????????@?@: 
[
concatenate_7/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
?
concatenate_7/concatConcatV2conv2d_9/BiasAdddropout_5/cond/Mergeconcatenate_7/concat/axis*
T0*
N*1
_output_shapes
:?????????@??
?
:conv2d_transpose_9/kernel/Initializer/random_uniform/shapeConst*%
valueB"          ?   *,
_class"
 loc:@conv2d_transpose_9/kernel*
dtype0*
_output_shapes
:
?
8conv2d_transpose_9/kernel/Initializer/random_uniform/minConst*
valueB
 *?\??*,
_class"
 loc:@conv2d_transpose_9/kernel*
dtype0*
_output_shapes
: 
?
8conv2d_transpose_9/kernel/Initializer/random_uniform/maxConst*
valueB
 *?\?=*,
_class"
 loc:@conv2d_transpose_9/kernel*
dtype0*
_output_shapes
: 
?
Bconv2d_transpose_9/kernel/Initializer/random_uniform/RandomUniformRandomUniform:conv2d_transpose_9/kernel/Initializer/random_uniform/shape*
dtype0*'
_output_shapes
: ?*
seed???)*
T0*,
_class"
 loc:@conv2d_transpose_9/kernel*
seed22
?
8conv2d_transpose_9/kernel/Initializer/random_uniform/subSub8conv2d_transpose_9/kernel/Initializer/random_uniform/max8conv2d_transpose_9/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@conv2d_transpose_9/kernel*
_output_shapes
: 
?
8conv2d_transpose_9/kernel/Initializer/random_uniform/mulMulBconv2d_transpose_9/kernel/Initializer/random_uniform/RandomUniform8conv2d_transpose_9/kernel/Initializer/random_uniform/sub*'
_output_shapes
: ?*
T0*,
_class"
 loc:@conv2d_transpose_9/kernel
?
4conv2d_transpose_9/kernel/Initializer/random_uniformAdd8conv2d_transpose_9/kernel/Initializer/random_uniform/mul8conv2d_transpose_9/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@conv2d_transpose_9/kernel*'
_output_shapes
: ?
?
conv2d_transpose_9/kernelVarHandleOp*,
_class"
 loc:@conv2d_transpose_9/kernel*
dtype0*
_output_shapes
: *
shape: ?**
shared_nameconv2d_transpose_9/kernel
?
:conv2d_transpose_9/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose_9/kernel*
_output_shapes
: 
?
 conv2d_transpose_9/kernel/AssignAssignVariableOpconv2d_transpose_9/kernel4conv2d_transpose_9/kernel/Initializer/random_uniform*,
_class"
 loc:@conv2d_transpose_9/kernel*
dtype0
?
-conv2d_transpose_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_9/kernel*,
_class"
 loc:@conv2d_transpose_9/kernel*
dtype0*'
_output_shapes
: ?
?
)conv2d_transpose_9/bias/Initializer/zerosConst*
valueB *    **
_class 
loc:@conv2d_transpose_9/bias*
dtype0*
_output_shapes
: 
?
conv2d_transpose_9/biasVarHandleOp*
shape: *(
shared_nameconv2d_transpose_9/bias**
_class 
loc:@conv2d_transpose_9/bias*
dtype0*
_output_shapes
: 

8conv2d_transpose_9/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose_9/bias*
_output_shapes
: 
?
conv2d_transpose_9/bias/AssignAssignVariableOpconv2d_transpose_9/bias)conv2d_transpose_9/bias/Initializer/zeros**
_class 
loc:@conv2d_transpose_9/bias*
dtype0
?
+conv2d_transpose_9/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_9/bias**
_class 
loc:@conv2d_transpose_9/bias*
dtype0*
_output_shapes
: 
\
conv2d_transpose_9/ShapeShapeconcatenate_7/concat*
_output_shapes
:*
T0
p
&conv2d_transpose_9/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
r
(conv2d_transpose_9/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
r
(conv2d_transpose_9/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
 conv2d_transpose_9/strided_sliceStridedSliceconv2d_transpose_9/Shape&conv2d_transpose_9/strided_slice/stack(conv2d_transpose_9/strided_slice/stack_1(conv2d_transpose_9/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
r
(conv2d_transpose_9/strided_slice_1/stackConst*
_output_shapes
:*
valueB:*
dtype0
t
*conv2d_transpose_9/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_9/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
"conv2d_transpose_9/strided_slice_1StridedSliceconv2d_transpose_9/Shape(conv2d_transpose_9/strided_slice_1/stack*conv2d_transpose_9/strided_slice_1/stack_1*conv2d_transpose_9/strided_slice_1/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
r
(conv2d_transpose_9/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_9/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*conv2d_transpose_9/strided_slice_2/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
?
"conv2d_transpose_9/strided_slice_2StridedSliceconv2d_transpose_9/Shape(conv2d_transpose_9/strided_slice_2/stack*conv2d_transpose_9/strided_slice_2/stack_1*conv2d_transpose_9/strided_slice_2/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
Z
conv2d_transpose_9/mul/yConst*
value	B :*
dtype0*
_output_shapes
: 
|
conv2d_transpose_9/mulMul"conv2d_transpose_9/strided_slice_1conv2d_transpose_9/mul/y*
T0*
_output_shapes
: 
\
conv2d_transpose_9/mul_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
conv2d_transpose_9/mul_1Mul"conv2d_transpose_9/strided_slice_2conv2d_transpose_9/mul_1/y*
_output_shapes
: *
T0
\
conv2d_transpose_9/stack/3Const*
value	B : *
dtype0*
_output_shapes
: 
?
conv2d_transpose_9/stackPack conv2d_transpose_9/strided_sliceconv2d_transpose_9/mulconv2d_transpose_9/mul_1conv2d_transpose_9/stack/3*
N*
_output_shapes
:*
T0
r
(conv2d_transpose_9/strided_slice_3/stackConst*
dtype0*
_output_shapes
:*
valueB: 
t
*conv2d_transpose_9/strided_slice_3/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
t
*conv2d_transpose_9/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
"conv2d_transpose_9/strided_slice_3StridedSliceconv2d_transpose_9/stack(conv2d_transpose_9/strided_slice_3/stack*conv2d_transpose_9/strided_slice_3/stack_1*conv2d_transpose_9/strided_slice_3/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
?
2conv2d_transpose_9/conv2d_transpose/ReadVariableOpReadVariableOpconv2d_transpose_9/kernel*
dtype0*'
_output_shapes
: ?
?
#conv2d_transpose_9/conv2d_transposeConv2DBackpropInputconv2d_transpose_9/stack2conv2d_transpose_9/conv2d_transpose/ReadVariableOpconcatenate_7/concat*
paddingSAME*
T0*
strides
*1
_output_shapes
:??????????? 
}
)conv2d_transpose_9/BiasAdd/ReadVariableOpReadVariableOpconv2d_transpose_9/bias*
dtype0*
_output_shapes
: 
?
conv2d_transpose_9/BiasAddBiasAdd#conv2d_transpose_9/conv2d_transpose)conv2d_transpose_9/BiasAdd/ReadVariableOp*1
_output_shapes
:??????????? *
T0
n
re_lu_1_4/ReluReluconv2d_transpose_9/BiasAdd*
T0*1
_output_shapes
:??????????? 
?
-batch_normalization_21/gamma/Initializer/onesConst*
valueB *  ??*/
_class%
#!loc:@batch_normalization_21/gamma*
dtype0*
_output_shapes
: 
?
batch_normalization_21/gammaVarHandleOp*
_output_shapes
: *
shape: *-
shared_namebatch_normalization_21/gamma*/
_class%
#!loc:@batch_normalization_21/gamma*
dtype0
?
=batch_normalization_21/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_21/gamma*
_output_shapes
: 
?
#batch_normalization_21/gamma/AssignAssignVariableOpbatch_normalization_21/gamma-batch_normalization_21/gamma/Initializer/ones*/
_class%
#!loc:@batch_normalization_21/gamma*
dtype0
?
0batch_normalization_21/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_21/gamma*
_output_shapes
: */
_class%
#!loc:@batch_normalization_21/gamma*
dtype0
?
-batch_normalization_21/beta/Initializer/zerosConst*
valueB *    *.
_class$
" loc:@batch_normalization_21/beta*
dtype0*
_output_shapes
: 
?
batch_normalization_21/betaVarHandleOp*
shape: *,
shared_namebatch_normalization_21/beta*.
_class$
" loc:@batch_normalization_21/beta*
dtype0*
_output_shapes
: 
?
<batch_normalization_21/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_21/beta*
_output_shapes
: 
?
"batch_normalization_21/beta/AssignAssignVariableOpbatch_normalization_21/beta-batch_normalization_21/beta/Initializer/zeros*.
_class$
" loc:@batch_normalization_21/beta*
dtype0
?
/batch_normalization_21/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_21/beta*.
_class$
" loc:@batch_normalization_21/beta*
dtype0*
_output_shapes
: 
?
4batch_normalization_21/moving_mean/Initializer/zerosConst*
valueB *    *5
_class+
)'loc:@batch_normalization_21/moving_mean*
dtype0*
_output_shapes
: 
?
"batch_normalization_21/moving_meanVarHandleOp*5
_class+
)'loc:@batch_normalization_21/moving_mean*
dtype0*
_output_shapes
: *
shape: *3
shared_name$"batch_normalization_21/moving_mean
?
Cbatch_normalization_21/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp"batch_normalization_21/moving_mean*
_output_shapes
: 
?
)batch_normalization_21/moving_mean/AssignAssignVariableOp"batch_normalization_21/moving_mean4batch_normalization_21/moving_mean/Initializer/zeros*5
_class+
)'loc:@batch_normalization_21/moving_mean*
dtype0
?
6batch_normalization_21/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_21/moving_mean*
dtype0*
_output_shapes
: *5
_class+
)'loc:@batch_normalization_21/moving_mean
?
7batch_normalization_21/moving_variance/Initializer/onesConst*
_output_shapes
: *
valueB *  ??*9
_class/
-+loc:@batch_normalization_21/moving_variance*
dtype0
?
&batch_normalization_21/moving_varianceVarHandleOp*7
shared_name(&batch_normalization_21/moving_variance*9
_class/
-+loc:@batch_normalization_21/moving_variance*
dtype0*
_output_shapes
: *
shape: 
?
Gbatch_normalization_21/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp&batch_normalization_21/moving_variance*
_output_shapes
: 
?
-batch_normalization_21/moving_variance/AssignAssignVariableOp&batch_normalization_21/moving_variance7batch_normalization_21/moving_variance/Initializer/ones*9
_class/
-+loc:@batch_normalization_21/moving_variance*
dtype0
?
:batch_normalization_21/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_21/moving_variance*9
_class/
-+loc:@batch_normalization_21/moving_variance*
dtype0*
_output_shapes
: 
{
"batch_normalization_21/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
w
$batch_normalization_21/cond/switch_tIdentity$batch_normalization_21/cond/Switch:1*
T0
*
_output_shapes
: 
u
$batch_normalization_21/cond/switch_fIdentity"batch_normalization_21/cond/Switch*
T0
*
_output_shapes
: 
f
#batch_normalization_21/cond/pred_idIdentitykeras_learning_phase*
_output_shapes
: *
T0

?
*batch_normalization_21/cond/ReadVariableOpReadVariableOp3batch_normalization_21/cond/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
: 
?
1batch_normalization_21/cond/ReadVariableOp/SwitchSwitchbatch_normalization_21/gamma#batch_normalization_21/cond/pred_id*
T0*/
_class%
#!loc:@batch_normalization_21/gamma*
_output_shapes
: : 
?
,batch_normalization_21/cond/ReadVariableOp_1ReadVariableOp5batch_normalization_21/cond/ReadVariableOp_1/Switch:1*
dtype0*
_output_shapes
: 
?
3batch_normalization_21/cond/ReadVariableOp_1/SwitchSwitchbatch_normalization_21/beta#batch_normalization_21/cond/pred_id*
_output_shapes
: : *
T0*.
_class$
" loc:@batch_normalization_21/beta
?
!batch_normalization_21/cond/ConstConst%^batch_normalization_21/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
#batch_normalization_21/cond/Const_1Const%^batch_normalization_21/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
*batch_normalization_21/cond/FusedBatchNormFusedBatchNorm3batch_normalization_21/cond/FusedBatchNorm/Switch:1*batch_normalization_21/cond/ReadVariableOp,batch_normalization_21/cond/ReadVariableOp_1!batch_normalization_21/cond/Const#batch_normalization_21/cond/Const_1*
T0*I
_output_shapes7
5:??????????? : : : : *
epsilon%o?:
?
1batch_normalization_21/cond/FusedBatchNorm/SwitchSwitchre_lu_1_4/Relu#batch_normalization_21/cond/pred_id*
T0*!
_class
loc:@re_lu_1_4/Relu*N
_output_shapes<
::??????????? :??????????? 
?
,batch_normalization_21/cond/ReadVariableOp_2ReadVariableOp3batch_normalization_21/cond/ReadVariableOp_2/Switch*
dtype0*
_output_shapes
: 
?
3batch_normalization_21/cond/ReadVariableOp_2/SwitchSwitchbatch_normalization_21/gamma#batch_normalization_21/cond/pred_id*
T0*/
_class%
#!loc:@batch_normalization_21/gamma*
_output_shapes
: : 
?
,batch_normalization_21/cond/ReadVariableOp_3ReadVariableOp3batch_normalization_21/cond/ReadVariableOp_3/Switch*
dtype0*
_output_shapes
: 
?
3batch_normalization_21/cond/ReadVariableOp_3/SwitchSwitchbatch_normalization_21/beta#batch_normalization_21/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_21/beta*
_output_shapes
: : 
?
;batch_normalization_21/cond/FusedBatchNorm_1/ReadVariableOpReadVariableOpBbatch_normalization_21/cond/FusedBatchNorm_1/ReadVariableOp/Switch*
dtype0*
_output_shapes
: 
?
Bbatch_normalization_21/cond/FusedBatchNorm_1/ReadVariableOp/SwitchSwitch"batch_normalization_21/moving_mean#batch_normalization_21/cond/pred_id*
T0*5
_class+
)'loc:@batch_normalization_21/moving_mean*
_output_shapes
: : 
?
=batch_normalization_21/cond/FusedBatchNorm_1/ReadVariableOp_1ReadVariableOpDbatch_normalization_21/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
: 
?
Dbatch_normalization_21/cond/FusedBatchNorm_1/ReadVariableOp_1/SwitchSwitch&batch_normalization_21/moving_variance#batch_normalization_21/cond/pred_id*
T0*9
_class/
-+loc:@batch_normalization_21/moving_variance*
_output_shapes
: : 
?
,batch_normalization_21/cond/FusedBatchNorm_1FusedBatchNorm3batch_normalization_21/cond/FusedBatchNorm_1/Switch,batch_normalization_21/cond/ReadVariableOp_2,batch_normalization_21/cond/ReadVariableOp_3;batch_normalization_21/cond/FusedBatchNorm_1/ReadVariableOp=batch_normalization_21/cond/FusedBatchNorm_1/ReadVariableOp_1*
epsilon%o?:*
T0*I
_output_shapes7
5:??????????? : : : : *
is_training( 
?
3batch_normalization_21/cond/FusedBatchNorm_1/SwitchSwitchre_lu_1_4/Relu#batch_normalization_21/cond/pred_id*
T0*!
_class
loc:@re_lu_1_4/Relu*N
_output_shapes<
::??????????? :??????????? 
?
!batch_normalization_21/cond/MergeMerge,batch_normalization_21/cond/FusedBatchNorm_1*batch_normalization_21/cond/FusedBatchNorm*
T0*
N*3
_output_shapes!
:??????????? : 
?
#batch_normalization_21/cond/Merge_1Merge.batch_normalization_21/cond/FusedBatchNorm_1:1,batch_normalization_21/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes

: : 
?
#batch_normalization_21/cond/Merge_2Merge.batch_normalization_21/cond/FusedBatchNorm_1:2,batch_normalization_21/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes

: : 
}
$batch_normalization_21/cond_1/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
{
&batch_normalization_21/cond_1/switch_tIdentity&batch_normalization_21/cond_1/Switch:1*
_output_shapes
: *
T0

y
&batch_normalization_21/cond_1/switch_fIdentity$batch_normalization_21/cond_1/Switch*
_output_shapes
: *
T0

h
%batch_normalization_21/cond_1/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
#batch_normalization_21/cond_1/ConstConst'^batch_normalization_21/cond_1/switch_t*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
%batch_normalization_21/cond_1/Const_1Const'^batch_normalization_21/cond_1/switch_f*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
#batch_normalization_21/cond_1/MergeMerge%batch_normalization_21/cond_1/Const_1#batch_normalization_21/cond_1/Const*
T0*
N*
_output_shapes
: : 
?
,batch_normalization_21/AssignMovingAvg/sub/xConst*
valueB
 *  ??*5
_class+
)'loc:@batch_normalization_21/moving_mean*
dtype0*
_output_shapes
: 
?
*batch_normalization_21/AssignMovingAvg/subSub,batch_normalization_21/AssignMovingAvg/sub/x#batch_normalization_21/cond_1/Merge*
_output_shapes
: *
T0*5
_class+
)'loc:@batch_normalization_21/moving_mean
?
5batch_normalization_21/AssignMovingAvg/ReadVariableOpReadVariableOp"batch_normalization_21/moving_mean*
_output_shapes
: *
dtype0
?
,batch_normalization_21/AssignMovingAvg/sub_1Sub5batch_normalization_21/AssignMovingAvg/ReadVariableOp#batch_normalization_21/cond/Merge_1*
T0*5
_class+
)'loc:@batch_normalization_21/moving_mean*
_output_shapes
: 
?
*batch_normalization_21/AssignMovingAvg/mulMul,batch_normalization_21/AssignMovingAvg/sub_1*batch_normalization_21/AssignMovingAvg/sub*
T0*5
_class+
)'loc:@batch_normalization_21/moving_mean*
_output_shapes
: 
?
:batch_normalization_21/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp"batch_normalization_21/moving_mean*batch_normalization_21/AssignMovingAvg/mul*
dtype0*5
_class+
)'loc:@batch_normalization_21/moving_mean
?
7batch_normalization_21/AssignMovingAvg/ReadVariableOp_1ReadVariableOp"batch_normalization_21/moving_mean;^batch_normalization_21/AssignMovingAvg/AssignSubVariableOp*5
_class+
)'loc:@batch_normalization_21/moving_mean*
dtype0*
_output_shapes
: 
?
.batch_normalization_21/AssignMovingAvg_1/sub/xConst*
_output_shapes
: *
valueB
 *  ??*9
_class/
-+loc:@batch_normalization_21/moving_variance*
dtype0
?
,batch_normalization_21/AssignMovingAvg_1/subSub.batch_normalization_21/AssignMovingAvg_1/sub/x#batch_normalization_21/cond_1/Merge*
_output_shapes
: *
T0*9
_class/
-+loc:@batch_normalization_21/moving_variance
?
7batch_normalization_21/AssignMovingAvg_1/ReadVariableOpReadVariableOp&batch_normalization_21/moving_variance*
dtype0*
_output_shapes
: 
?
.batch_normalization_21/AssignMovingAvg_1/sub_1Sub7batch_normalization_21/AssignMovingAvg_1/ReadVariableOp#batch_normalization_21/cond/Merge_2*
T0*9
_class/
-+loc:@batch_normalization_21/moving_variance*
_output_shapes
: 
?
,batch_normalization_21/AssignMovingAvg_1/mulMul.batch_normalization_21/AssignMovingAvg_1/sub_1,batch_normalization_21/AssignMovingAvg_1/sub*
T0*9
_class/
-+loc:@batch_normalization_21/moving_variance*
_output_shapes
: 
?
<batch_normalization_21/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp&batch_normalization_21/moving_variance,batch_normalization_21/AssignMovingAvg_1/mul*9
_class/
-+loc:@batch_normalization_21/moving_variance*
dtype0
?
9batch_normalization_21/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp&batch_normalization_21/moving_variance=^batch_normalization_21/AssignMovingAvg_1/AssignSubVariableOp*9
_class/
-+loc:@batch_normalization_21/moving_variance*
dtype0*
_output_shapes
: 
[
concatenate_8/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
?
concatenate_8/concatConcatV2conv2d_8/BiasAdd!batch_normalization_21/cond/Mergeconcatenate_8/concat/axis*1
_output_shapes
:???????????@*
T0*
N
?
;conv2d_transpose_10/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*%
valueB"         @   *-
_class#
!loc:@conv2d_transpose_10/kernel*
dtype0
?
9conv2d_transpose_10/kernel/Initializer/random_uniform/minConst*
valueB
 *????*-
_class#
!loc:@conv2d_transpose_10/kernel*
dtype0*
_output_shapes
: 
?
9conv2d_transpose_10/kernel/Initializer/random_uniform/maxConst*
valueB
 *???=*-
_class#
!loc:@conv2d_transpose_10/kernel*
dtype0*
_output_shapes
: 
?
Cconv2d_transpose_10/kernel/Initializer/random_uniform/RandomUniformRandomUniform;conv2d_transpose_10/kernel/Initializer/random_uniform/shape*-
_class#
!loc:@conv2d_transpose_10/kernel*
seed22*
dtype0*&
_output_shapes
:@*
seed???)*
T0
?
9conv2d_transpose_10/kernel/Initializer/random_uniform/subSub9conv2d_transpose_10/kernel/Initializer/random_uniform/max9conv2d_transpose_10/kernel/Initializer/random_uniform/min*
T0*-
_class#
!loc:@conv2d_transpose_10/kernel*
_output_shapes
: 
?
9conv2d_transpose_10/kernel/Initializer/random_uniform/mulMulCconv2d_transpose_10/kernel/Initializer/random_uniform/RandomUniform9conv2d_transpose_10/kernel/Initializer/random_uniform/sub*
T0*-
_class#
!loc:@conv2d_transpose_10/kernel*&
_output_shapes
:@
?
5conv2d_transpose_10/kernel/Initializer/random_uniformAdd9conv2d_transpose_10/kernel/Initializer/random_uniform/mul9conv2d_transpose_10/kernel/Initializer/random_uniform/min*
T0*-
_class#
!loc:@conv2d_transpose_10/kernel*&
_output_shapes
:@
?
conv2d_transpose_10/kernelVarHandleOp*+
shared_nameconv2d_transpose_10/kernel*-
_class#
!loc:@conv2d_transpose_10/kernel*
dtype0*
_output_shapes
: *
shape:@
?
;conv2d_transpose_10/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose_10/kernel*
_output_shapes
: 
?
!conv2d_transpose_10/kernel/AssignAssignVariableOpconv2d_transpose_10/kernel5conv2d_transpose_10/kernel/Initializer/random_uniform*-
_class#
!loc:@conv2d_transpose_10/kernel*
dtype0
?
.conv2d_transpose_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_10/kernel*-
_class#
!loc:@conv2d_transpose_10/kernel*
dtype0*&
_output_shapes
:@
?
*conv2d_transpose_10/bias/Initializer/zerosConst*
valueB*    *+
_class!
loc:@conv2d_transpose_10/bias*
dtype0*
_output_shapes
:
?
conv2d_transpose_10/biasVarHandleOp*)
shared_nameconv2d_transpose_10/bias*+
_class!
loc:@conv2d_transpose_10/bias*
dtype0*
_output_shapes
: *
shape:
?
9conv2d_transpose_10/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose_10/bias*
_output_shapes
: 
?
conv2d_transpose_10/bias/AssignAssignVariableOpconv2d_transpose_10/bias*conv2d_transpose_10/bias/Initializer/zeros*+
_class!
loc:@conv2d_transpose_10/bias*
dtype0
?
,conv2d_transpose_10/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_10/bias*+
_class!
loc:@conv2d_transpose_10/bias*
dtype0*
_output_shapes
:
]
conv2d_transpose_10/ShapeShapeconcatenate_8/concat*
_output_shapes
:*
T0
q
'conv2d_transpose_10/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
s
)conv2d_transpose_10/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
s
)conv2d_transpose_10/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
!conv2d_transpose_10/strided_sliceStridedSliceconv2d_transpose_10/Shape'conv2d_transpose_10/strided_slice/stack)conv2d_transpose_10/strided_slice/stack_1)conv2d_transpose_10/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
s
)conv2d_transpose_10/strided_slice_1/stackConst*
_output_shapes
:*
valueB:*
dtype0
u
+conv2d_transpose_10/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
u
+conv2d_transpose_10/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
#conv2d_transpose_10/strided_slice_1StridedSliceconv2d_transpose_10/Shape)conv2d_transpose_10/strided_slice_1/stack+conv2d_transpose_10/strided_slice_1/stack_1+conv2d_transpose_10/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
s
)conv2d_transpose_10/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
u
+conv2d_transpose_10/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+conv2d_transpose_10/strided_slice_2/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
?
#conv2d_transpose_10/strided_slice_2StridedSliceconv2d_transpose_10/Shape)conv2d_transpose_10/strided_slice_2/stack+conv2d_transpose_10/strided_slice_2/stack_1+conv2d_transpose_10/strided_slice_2/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
[
conv2d_transpose_10/mul/yConst*
value	B :*
dtype0*
_output_shapes
: 

conv2d_transpose_10/mulMul#conv2d_transpose_10/strided_slice_1conv2d_transpose_10/mul/y*
T0*
_output_shapes
: 
]
conv2d_transpose_10/mul_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
conv2d_transpose_10/mul_1Mul#conv2d_transpose_10/strided_slice_2conv2d_transpose_10/mul_1/y*
_output_shapes
: *
T0
]
conv2d_transpose_10/stack/3Const*
value	B :*
dtype0*
_output_shapes
: 
?
conv2d_transpose_10/stackPack!conv2d_transpose_10/strided_sliceconv2d_transpose_10/mulconv2d_transpose_10/mul_1conv2d_transpose_10/stack/3*
T0*
N*
_output_shapes
:
s
)conv2d_transpose_10/strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+conv2d_transpose_10/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+conv2d_transpose_10/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
#conv2d_transpose_10/strided_slice_3StridedSliceconv2d_transpose_10/stack)conv2d_transpose_10/strided_slice_3/stack+conv2d_transpose_10/strided_slice_3/stack_1+conv2d_transpose_10/strided_slice_3/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
3conv2d_transpose_10/conv2d_transpose/ReadVariableOpReadVariableOpconv2d_transpose_10/kernel*
dtype0*&
_output_shapes
:@
?
$conv2d_transpose_10/conv2d_transposeConv2DBackpropInputconv2d_transpose_10/stack3conv2d_transpose_10/conv2d_transpose/ReadVariableOpconcatenate_8/concat*
paddingSAME*
T0*
strides
*1
_output_shapes
:???????????

*conv2d_transpose_10/BiasAdd/ReadVariableOpReadVariableOpconv2d_transpose_10/bias*
dtype0*
_output_shapes
:
?
conv2d_transpose_10/BiasAddBiasAdd$conv2d_transpose_10/conv2d_transpose*conv2d_transpose_10/BiasAdd/ReadVariableOp*1
_output_shapes
:???????????*
T0
o
re_lu_1_5/ReluReluconv2d_transpose_10/BiasAdd*
T0*1
_output_shapes
:???????????
?
-batch_normalization_22/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:*
valueB*  ??*/
_class%
#!loc:@batch_normalization_22/gamma
?
batch_normalization_22/gammaVarHandleOp*-
shared_namebatch_normalization_22/gamma*/
_class%
#!loc:@batch_normalization_22/gamma*
dtype0*
_output_shapes
: *
shape:
?
=batch_normalization_22/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_22/gamma*
_output_shapes
: 
?
#batch_normalization_22/gamma/AssignAssignVariableOpbatch_normalization_22/gamma-batch_normalization_22/gamma/Initializer/ones*
dtype0*/
_class%
#!loc:@batch_normalization_22/gamma
?
0batch_normalization_22/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_22/gamma*
_output_shapes
:*/
_class%
#!loc:@batch_normalization_22/gamma*
dtype0
?
-batch_normalization_22/beta/Initializer/zerosConst*
valueB*    *.
_class$
" loc:@batch_normalization_22/beta*
dtype0*
_output_shapes
:
?
batch_normalization_22/betaVarHandleOp*
shape:*,
shared_namebatch_normalization_22/beta*.
_class$
" loc:@batch_normalization_22/beta*
dtype0*
_output_shapes
: 
?
<batch_normalization_22/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_22/beta*
_output_shapes
: 
?
"batch_normalization_22/beta/AssignAssignVariableOpbatch_normalization_22/beta-batch_normalization_22/beta/Initializer/zeros*.
_class$
" loc:@batch_normalization_22/beta*
dtype0
?
/batch_normalization_22/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_22/beta*
dtype0*
_output_shapes
:*.
_class$
" loc:@batch_normalization_22/beta
?
4batch_normalization_22/moving_mean/Initializer/zerosConst*
valueB*    *5
_class+
)'loc:@batch_normalization_22/moving_mean*
dtype0*
_output_shapes
:
?
"batch_normalization_22/moving_meanVarHandleOp*3
shared_name$"batch_normalization_22/moving_mean*5
_class+
)'loc:@batch_normalization_22/moving_mean*
dtype0*
_output_shapes
: *
shape:
?
Cbatch_normalization_22/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp"batch_normalization_22/moving_mean*
_output_shapes
: 
?
)batch_normalization_22/moving_mean/AssignAssignVariableOp"batch_normalization_22/moving_mean4batch_normalization_22/moving_mean/Initializer/zeros*5
_class+
)'loc:@batch_normalization_22/moving_mean*
dtype0
?
6batch_normalization_22/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_22/moving_mean*5
_class+
)'loc:@batch_normalization_22/moving_mean*
dtype0*
_output_shapes
:
?
7batch_normalization_22/moving_variance/Initializer/onesConst*
valueB*  ??*9
_class/
-+loc:@batch_normalization_22/moving_variance*
dtype0*
_output_shapes
:
?
&batch_normalization_22/moving_varianceVarHandleOp*
shape:*7
shared_name(&batch_normalization_22/moving_variance*9
_class/
-+loc:@batch_normalization_22/moving_variance*
dtype0*
_output_shapes
: 
?
Gbatch_normalization_22/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp&batch_normalization_22/moving_variance*
_output_shapes
: 
?
-batch_normalization_22/moving_variance/AssignAssignVariableOp&batch_normalization_22/moving_variance7batch_normalization_22/moving_variance/Initializer/ones*9
_class/
-+loc:@batch_normalization_22/moving_variance*
dtype0
?
:batch_normalization_22/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_22/moving_variance*9
_class/
-+loc:@batch_normalization_22/moving_variance*
dtype0*
_output_shapes
:
{
"batch_normalization_22/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
w
$batch_normalization_22/cond/switch_tIdentity$batch_normalization_22/cond/Switch:1*
T0
*
_output_shapes
: 
u
$batch_normalization_22/cond/switch_fIdentity"batch_normalization_22/cond/Switch*
T0
*
_output_shapes
: 
f
#batch_normalization_22/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
*batch_normalization_22/cond/ReadVariableOpReadVariableOp3batch_normalization_22/cond/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:
?
1batch_normalization_22/cond/ReadVariableOp/SwitchSwitchbatch_normalization_22/gamma#batch_normalization_22/cond/pred_id*
T0*/
_class%
#!loc:@batch_normalization_22/gamma*
_output_shapes
: : 
?
,batch_normalization_22/cond/ReadVariableOp_1ReadVariableOp5batch_normalization_22/cond/ReadVariableOp_1/Switch:1*
dtype0*
_output_shapes
:
?
3batch_normalization_22/cond/ReadVariableOp_1/SwitchSwitchbatch_normalization_22/beta#batch_normalization_22/cond/pred_id*
_output_shapes
: : *
T0*.
_class$
" loc:@batch_normalization_22/beta
?
!batch_normalization_22/cond/ConstConst%^batch_normalization_22/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
#batch_normalization_22/cond/Const_1Const%^batch_normalization_22/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
*batch_normalization_22/cond/FusedBatchNormFusedBatchNorm3batch_normalization_22/cond/FusedBatchNorm/Switch:1*batch_normalization_22/cond/ReadVariableOp,batch_normalization_22/cond/ReadVariableOp_1!batch_normalization_22/cond/Const#batch_normalization_22/cond/Const_1*
T0*I
_output_shapes7
5:???????????::::*
epsilon%o?:
?
1batch_normalization_22/cond/FusedBatchNorm/SwitchSwitchre_lu_1_5/Relu#batch_normalization_22/cond/pred_id*!
_class
loc:@re_lu_1_5/Relu*N
_output_shapes<
::???????????:???????????*
T0
?
,batch_normalization_22/cond/ReadVariableOp_2ReadVariableOp3batch_normalization_22/cond/ReadVariableOp_2/Switch*
dtype0*
_output_shapes
:
?
3batch_normalization_22/cond/ReadVariableOp_2/SwitchSwitchbatch_normalization_22/gamma#batch_normalization_22/cond/pred_id*/
_class%
#!loc:@batch_normalization_22/gamma*
_output_shapes
: : *
T0
?
,batch_normalization_22/cond/ReadVariableOp_3ReadVariableOp3batch_normalization_22/cond/ReadVariableOp_3/Switch*
dtype0*
_output_shapes
:
?
3batch_normalization_22/cond/ReadVariableOp_3/SwitchSwitchbatch_normalization_22/beta#batch_normalization_22/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_22/beta*
_output_shapes
: : 
?
;batch_normalization_22/cond/FusedBatchNorm_1/ReadVariableOpReadVariableOpBbatch_normalization_22/cond/FusedBatchNorm_1/ReadVariableOp/Switch*
dtype0*
_output_shapes
:
?
Bbatch_normalization_22/cond/FusedBatchNorm_1/ReadVariableOp/SwitchSwitch"batch_normalization_22/moving_mean#batch_normalization_22/cond/pred_id*
T0*5
_class+
)'loc:@batch_normalization_22/moving_mean*
_output_shapes
: : 
?
=batch_normalization_22/cond/FusedBatchNorm_1/ReadVariableOp_1ReadVariableOpDbatch_normalization_22/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:
?
Dbatch_normalization_22/cond/FusedBatchNorm_1/ReadVariableOp_1/SwitchSwitch&batch_normalization_22/moving_variance#batch_normalization_22/cond/pred_id*
_output_shapes
: : *
T0*9
_class/
-+loc:@batch_normalization_22/moving_variance
?
,batch_normalization_22/cond/FusedBatchNorm_1FusedBatchNorm3batch_normalization_22/cond/FusedBatchNorm_1/Switch,batch_normalization_22/cond/ReadVariableOp_2,batch_normalization_22/cond/ReadVariableOp_3;batch_normalization_22/cond/FusedBatchNorm_1/ReadVariableOp=batch_normalization_22/cond/FusedBatchNorm_1/ReadVariableOp_1*I
_output_shapes7
5:???????????::::*
is_training( *
epsilon%o?:*
T0
?
3batch_normalization_22/cond/FusedBatchNorm_1/SwitchSwitchre_lu_1_5/Relu#batch_normalization_22/cond/pred_id*
T0*!
_class
loc:@re_lu_1_5/Relu*N
_output_shapes<
::???????????:???????????
?
!batch_normalization_22/cond/MergeMerge,batch_normalization_22/cond/FusedBatchNorm_1*batch_normalization_22/cond/FusedBatchNorm*
N*3
_output_shapes!
:???????????: *
T0
?
#batch_normalization_22/cond/Merge_1Merge.batch_normalization_22/cond/FusedBatchNorm_1:1,batch_normalization_22/cond/FusedBatchNorm:1*
N*
_output_shapes

:: *
T0
?
#batch_normalization_22/cond/Merge_2Merge.batch_normalization_22/cond/FusedBatchNorm_1:2,batch_normalization_22/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes

:: 
}
$batch_normalization_22/cond_1/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
{
&batch_normalization_22/cond_1/switch_tIdentity&batch_normalization_22/cond_1/Switch:1*
T0
*
_output_shapes
: 
y
&batch_normalization_22/cond_1/switch_fIdentity$batch_normalization_22/cond_1/Switch*
T0
*
_output_shapes
: 
h
%batch_normalization_22/cond_1/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
#batch_normalization_22/cond_1/ConstConst'^batch_normalization_22/cond_1/switch_t*
dtype0*
_output_shapes
: *
valueB
 *?p}?
?
%batch_normalization_22/cond_1/Const_1Const'^batch_normalization_22/cond_1/switch_f*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
#batch_normalization_22/cond_1/MergeMerge%batch_normalization_22/cond_1/Const_1#batch_normalization_22/cond_1/Const*
T0*
N*
_output_shapes
: : 
?
,batch_normalization_22/AssignMovingAvg/sub/xConst*
valueB
 *  ??*5
_class+
)'loc:@batch_normalization_22/moving_mean*
dtype0*
_output_shapes
: 
?
*batch_normalization_22/AssignMovingAvg/subSub,batch_normalization_22/AssignMovingAvg/sub/x#batch_normalization_22/cond_1/Merge*
T0*5
_class+
)'loc:@batch_normalization_22/moving_mean*
_output_shapes
: 
?
5batch_normalization_22/AssignMovingAvg/ReadVariableOpReadVariableOp"batch_normalization_22/moving_mean*
dtype0*
_output_shapes
:
?
,batch_normalization_22/AssignMovingAvg/sub_1Sub5batch_normalization_22/AssignMovingAvg/ReadVariableOp#batch_normalization_22/cond/Merge_1*
T0*5
_class+
)'loc:@batch_normalization_22/moving_mean*
_output_shapes
:
?
*batch_normalization_22/AssignMovingAvg/mulMul,batch_normalization_22/AssignMovingAvg/sub_1*batch_normalization_22/AssignMovingAvg/sub*
T0*5
_class+
)'loc:@batch_normalization_22/moving_mean*
_output_shapes
:
?
:batch_normalization_22/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp"batch_normalization_22/moving_mean*batch_normalization_22/AssignMovingAvg/mul*5
_class+
)'loc:@batch_normalization_22/moving_mean*
dtype0
?
7batch_normalization_22/AssignMovingAvg/ReadVariableOp_1ReadVariableOp"batch_normalization_22/moving_mean;^batch_normalization_22/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:*5
_class+
)'loc:@batch_normalization_22/moving_mean
?
.batch_normalization_22/AssignMovingAvg_1/sub/xConst*
valueB
 *  ??*9
_class/
-+loc:@batch_normalization_22/moving_variance*
dtype0*
_output_shapes
: 
?
,batch_normalization_22/AssignMovingAvg_1/subSub.batch_normalization_22/AssignMovingAvg_1/sub/x#batch_normalization_22/cond_1/Merge*
T0*9
_class/
-+loc:@batch_normalization_22/moving_variance*
_output_shapes
: 
?
7batch_normalization_22/AssignMovingAvg_1/ReadVariableOpReadVariableOp&batch_normalization_22/moving_variance*
dtype0*
_output_shapes
:
?
.batch_normalization_22/AssignMovingAvg_1/sub_1Sub7batch_normalization_22/AssignMovingAvg_1/ReadVariableOp#batch_normalization_22/cond/Merge_2*
_output_shapes
:*
T0*9
_class/
-+loc:@batch_normalization_22/moving_variance
?
,batch_normalization_22/AssignMovingAvg_1/mulMul.batch_normalization_22/AssignMovingAvg_1/sub_1,batch_normalization_22/AssignMovingAvg_1/sub*
T0*9
_class/
-+loc:@batch_normalization_22/moving_variance*
_output_shapes
:
?
<batch_normalization_22/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp&batch_normalization_22/moving_variance,batch_normalization_22/AssignMovingAvg_1/mul*9
_class/
-+loc:@batch_normalization_22/moving_variance*
dtype0
?
9batch_normalization_22/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp&batch_normalization_22/moving_variance=^batch_normalization_22/AssignMovingAvg_1/AssignSubVariableOp*9
_class/
-+loc:@batch_normalization_22/moving_variance*
dtype0*
_output_shapes
:
[
concatenate_9/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
?
concatenate_9/concatConcatV2conv2d_7/BiasAdd!batch_normalization_22/cond/Mergeconcatenate_9/concat/axis*1
_output_shapes
:??????????? *
T0*
N
?
;conv2d_transpose_11/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*%
valueB"             *-
_class#
!loc:@conv2d_transpose_11/kernel*
dtype0
?
9conv2d_transpose_11/kernel/Initializer/random_uniform/minConst*
valueB
 *????*-
_class#
!loc:@conv2d_transpose_11/kernel*
dtype0*
_output_shapes
: 
?
9conv2d_transpose_11/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *???>*-
_class#
!loc:@conv2d_transpose_11/kernel*
dtype0
?
Cconv2d_transpose_11/kernel/Initializer/random_uniform/RandomUniformRandomUniform;conv2d_transpose_11/kernel/Initializer/random_uniform/shape*
T0*-
_class#
!loc:@conv2d_transpose_11/kernel*
seed22*
dtype0*&
_output_shapes
: *
seed???)
?
9conv2d_transpose_11/kernel/Initializer/random_uniform/subSub9conv2d_transpose_11/kernel/Initializer/random_uniform/max9conv2d_transpose_11/kernel/Initializer/random_uniform/min*-
_class#
!loc:@conv2d_transpose_11/kernel*
_output_shapes
: *
T0
?
9conv2d_transpose_11/kernel/Initializer/random_uniform/mulMulCconv2d_transpose_11/kernel/Initializer/random_uniform/RandomUniform9conv2d_transpose_11/kernel/Initializer/random_uniform/sub*
T0*-
_class#
!loc:@conv2d_transpose_11/kernel*&
_output_shapes
: 
?
5conv2d_transpose_11/kernel/Initializer/random_uniformAdd9conv2d_transpose_11/kernel/Initializer/random_uniform/mul9conv2d_transpose_11/kernel/Initializer/random_uniform/min*&
_output_shapes
: *
T0*-
_class#
!loc:@conv2d_transpose_11/kernel
?
conv2d_transpose_11/kernelVarHandleOp*
shape: *+
shared_nameconv2d_transpose_11/kernel*-
_class#
!loc:@conv2d_transpose_11/kernel*
dtype0*
_output_shapes
: 
?
;conv2d_transpose_11/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose_11/kernel*
_output_shapes
: 
?
!conv2d_transpose_11/kernel/AssignAssignVariableOpconv2d_transpose_11/kernel5conv2d_transpose_11/kernel/Initializer/random_uniform*-
_class#
!loc:@conv2d_transpose_11/kernel*
dtype0
?
.conv2d_transpose_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_11/kernel*-
_class#
!loc:@conv2d_transpose_11/kernel*
dtype0*&
_output_shapes
: 
?
*conv2d_transpose_11/bias/Initializer/zerosConst*
valueB*    *+
_class!
loc:@conv2d_transpose_11/bias*
dtype0*
_output_shapes
:
?
conv2d_transpose_11/biasVarHandleOp*
shape:*)
shared_nameconv2d_transpose_11/bias*+
_class!
loc:@conv2d_transpose_11/bias*
dtype0*
_output_shapes
: 
?
9conv2d_transpose_11/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_transpose_11/bias*
_output_shapes
: 
?
conv2d_transpose_11/bias/AssignAssignVariableOpconv2d_transpose_11/bias*conv2d_transpose_11/bias/Initializer/zeros*+
_class!
loc:@conv2d_transpose_11/bias*
dtype0
?
,conv2d_transpose_11/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_11/bias*+
_class!
loc:@conv2d_transpose_11/bias*
dtype0*
_output_shapes
:
]
conv2d_transpose_11/ShapeShapeconcatenate_9/concat*
_output_shapes
:*
T0
q
'conv2d_transpose_11/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
s
)conv2d_transpose_11/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
s
)conv2d_transpose_11/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
!conv2d_transpose_11/strided_sliceStridedSliceconv2d_transpose_11/Shape'conv2d_transpose_11/strided_slice/stack)conv2d_transpose_11/strided_slice/stack_1)conv2d_transpose_11/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
s
)conv2d_transpose_11/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB:
u
+conv2d_transpose_11/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+conv2d_transpose_11/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
#conv2d_transpose_11/strided_slice_1StridedSliceconv2d_transpose_11/Shape)conv2d_transpose_11/strided_slice_1/stack+conv2d_transpose_11/strided_slice_1/stack_1+conv2d_transpose_11/strided_slice_1/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
s
)conv2d_transpose_11/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
u
+conv2d_transpose_11/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+conv2d_transpose_11/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
#conv2d_transpose_11/strided_slice_2StridedSliceconv2d_transpose_11/Shape)conv2d_transpose_11/strided_slice_2/stack+conv2d_transpose_11/strided_slice_2/stack_1+conv2d_transpose_11/strided_slice_2/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
[
conv2d_transpose_11/mul/yConst*
_output_shapes
: *
value	B :*
dtype0

conv2d_transpose_11/mulMul#conv2d_transpose_11/strided_slice_1conv2d_transpose_11/mul/y*
T0*
_output_shapes
: 
]
conv2d_transpose_11/mul_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
conv2d_transpose_11/mul_1Mul#conv2d_transpose_11/strided_slice_2conv2d_transpose_11/mul_1/y*
_output_shapes
: *
T0
]
conv2d_transpose_11/stack/3Const*
value	B :*
dtype0*
_output_shapes
: 
?
conv2d_transpose_11/stackPack!conv2d_transpose_11/strided_sliceconv2d_transpose_11/mulconv2d_transpose_11/mul_1conv2d_transpose_11/stack/3*
T0*
N*
_output_shapes
:
s
)conv2d_transpose_11/strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+conv2d_transpose_11/strided_slice_3/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
u
+conv2d_transpose_11/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
#conv2d_transpose_11/strided_slice_3StridedSliceconv2d_transpose_11/stack)conv2d_transpose_11/strided_slice_3/stack+conv2d_transpose_11/strided_slice_3/stack_1+conv2d_transpose_11/strided_slice_3/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
?
3conv2d_transpose_11/conv2d_transpose/ReadVariableOpReadVariableOpconv2d_transpose_11/kernel*
dtype0*&
_output_shapes
: 
?
$conv2d_transpose_11/conv2d_transposeConv2DBackpropInputconv2d_transpose_11/stack3conv2d_transpose_11/conv2d_transpose/ReadVariableOpconcatenate_9/concat*1
_output_shapes
:???????????*
paddingSAME*
T0*
strides


*conv2d_transpose_11/BiasAdd/ReadVariableOpReadVariableOpconv2d_transpose_11/bias*
_output_shapes
:*
dtype0
?
conv2d_transpose_11/BiasAddBiasAdd$conv2d_transpose_11/conv2d_transpose*conv2d_transpose_11/BiasAdd/ReadVariableOp*
T0*1
_output_shapes
:???????????
o
re_lu_1_6/ReluReluconv2d_transpose_11/BiasAdd*1
_output_shapes
:???????????*
T0
?
-batch_normalization_23/gamma/Initializer/onesConst*
_output_shapes
:*
valueB*  ??*/
_class%
#!loc:@batch_normalization_23/gamma*
dtype0
?
batch_normalization_23/gammaVarHandleOp*-
shared_namebatch_normalization_23/gamma*/
_class%
#!loc:@batch_normalization_23/gamma*
dtype0*
_output_shapes
: *
shape:
?
=batch_normalization_23/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_23/gamma*
_output_shapes
: 
?
#batch_normalization_23/gamma/AssignAssignVariableOpbatch_normalization_23/gamma-batch_normalization_23/gamma/Initializer/ones*/
_class%
#!loc:@batch_normalization_23/gamma*
dtype0
?
0batch_normalization_23/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_23/gamma*/
_class%
#!loc:@batch_normalization_23/gamma*
dtype0*
_output_shapes
:
?
-batch_normalization_23/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *.
_class$
" loc:@batch_normalization_23/beta
?
batch_normalization_23/betaVarHandleOp*
_output_shapes
: *
shape:*,
shared_namebatch_normalization_23/beta*.
_class$
" loc:@batch_normalization_23/beta*
dtype0
?
<batch_normalization_23/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_23/beta*
_output_shapes
: 
?
"batch_normalization_23/beta/AssignAssignVariableOpbatch_normalization_23/beta-batch_normalization_23/beta/Initializer/zeros*.
_class$
" loc:@batch_normalization_23/beta*
dtype0
?
/batch_normalization_23/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_23/beta*.
_class$
" loc:@batch_normalization_23/beta*
dtype0*
_output_shapes
:
?
4batch_normalization_23/moving_mean/Initializer/zerosConst*
_output_shapes
:*
valueB*    *5
_class+
)'loc:@batch_normalization_23/moving_mean*
dtype0
?
"batch_normalization_23/moving_meanVarHandleOp*
dtype0*
_output_shapes
: *
shape:*3
shared_name$"batch_normalization_23/moving_mean*5
_class+
)'loc:@batch_normalization_23/moving_mean
?
Cbatch_normalization_23/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp"batch_normalization_23/moving_mean*
_output_shapes
: 
?
)batch_normalization_23/moving_mean/AssignAssignVariableOp"batch_normalization_23/moving_mean4batch_normalization_23/moving_mean/Initializer/zeros*5
_class+
)'loc:@batch_normalization_23/moving_mean*
dtype0
?
6batch_normalization_23/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_23/moving_mean*5
_class+
)'loc:@batch_normalization_23/moving_mean*
dtype0*
_output_shapes
:
?
7batch_normalization_23/moving_variance/Initializer/onesConst*
valueB*  ??*9
_class/
-+loc:@batch_normalization_23/moving_variance*
dtype0*
_output_shapes
:
?
&batch_normalization_23/moving_varianceVarHandleOp*7
shared_name(&batch_normalization_23/moving_variance*9
_class/
-+loc:@batch_normalization_23/moving_variance*
dtype0*
_output_shapes
: *
shape:
?
Gbatch_normalization_23/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp&batch_normalization_23/moving_variance*
_output_shapes
: 
?
-batch_normalization_23/moving_variance/AssignAssignVariableOp&batch_normalization_23/moving_variance7batch_normalization_23/moving_variance/Initializer/ones*9
_class/
-+loc:@batch_normalization_23/moving_variance*
dtype0
?
:batch_normalization_23/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_23/moving_variance*
dtype0*
_output_shapes
:*9
_class/
-+loc:@batch_normalization_23/moving_variance
{
"batch_normalization_23/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
w
$batch_normalization_23/cond/switch_tIdentity$batch_normalization_23/cond/Switch:1*
T0
*
_output_shapes
: 
u
$batch_normalization_23/cond/switch_fIdentity"batch_normalization_23/cond/Switch*
T0
*
_output_shapes
: 
f
#batch_normalization_23/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
*batch_normalization_23/cond/ReadVariableOpReadVariableOp3batch_normalization_23/cond/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:
?
1batch_normalization_23/cond/ReadVariableOp/SwitchSwitchbatch_normalization_23/gamma#batch_normalization_23/cond/pred_id*
_output_shapes
: : *
T0*/
_class%
#!loc:@batch_normalization_23/gamma
?
,batch_normalization_23/cond/ReadVariableOp_1ReadVariableOp5batch_normalization_23/cond/ReadVariableOp_1/Switch:1*
dtype0*
_output_shapes
:
?
3batch_normalization_23/cond/ReadVariableOp_1/SwitchSwitchbatch_normalization_23/beta#batch_normalization_23/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_23/beta*
_output_shapes
: : 
?
!batch_normalization_23/cond/ConstConst%^batch_normalization_23/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
#batch_normalization_23/cond/Const_1Const%^batch_normalization_23/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
?
*batch_normalization_23/cond/FusedBatchNormFusedBatchNorm3batch_normalization_23/cond/FusedBatchNorm/Switch:1*batch_normalization_23/cond/ReadVariableOp,batch_normalization_23/cond/ReadVariableOp_1!batch_normalization_23/cond/Const#batch_normalization_23/cond/Const_1*I
_output_shapes7
5:???????????::::*
epsilon%o?:*
T0
?
1batch_normalization_23/cond/FusedBatchNorm/SwitchSwitchre_lu_1_6/Relu#batch_normalization_23/cond/pred_id*
T0*!
_class
loc:@re_lu_1_6/Relu*N
_output_shapes<
::???????????:???????????
?
,batch_normalization_23/cond/ReadVariableOp_2ReadVariableOp3batch_normalization_23/cond/ReadVariableOp_2/Switch*
_output_shapes
:*
dtype0
?
3batch_normalization_23/cond/ReadVariableOp_2/SwitchSwitchbatch_normalization_23/gamma#batch_normalization_23/cond/pred_id*
T0*/
_class%
#!loc:@batch_normalization_23/gamma*
_output_shapes
: : 
?
,batch_normalization_23/cond/ReadVariableOp_3ReadVariableOp3batch_normalization_23/cond/ReadVariableOp_3/Switch*
dtype0*
_output_shapes
:
?
3batch_normalization_23/cond/ReadVariableOp_3/SwitchSwitchbatch_normalization_23/beta#batch_normalization_23/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_23/beta*
_output_shapes
: : 
?
;batch_normalization_23/cond/FusedBatchNorm_1/ReadVariableOpReadVariableOpBbatch_normalization_23/cond/FusedBatchNorm_1/ReadVariableOp/Switch*
dtype0*
_output_shapes
:
?
Bbatch_normalization_23/cond/FusedBatchNorm_1/ReadVariableOp/SwitchSwitch"batch_normalization_23/moving_mean#batch_normalization_23/cond/pred_id*
T0*5
_class+
)'loc:@batch_normalization_23/moving_mean*
_output_shapes
: : 
?
=batch_normalization_23/cond/FusedBatchNorm_1/ReadVariableOp_1ReadVariableOpDbatch_normalization_23/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:
?
Dbatch_normalization_23/cond/FusedBatchNorm_1/ReadVariableOp_1/SwitchSwitch&batch_normalization_23/moving_variance#batch_normalization_23/cond/pred_id*
_output_shapes
: : *
T0*9
_class/
-+loc:@batch_normalization_23/moving_variance
?
,batch_normalization_23/cond/FusedBatchNorm_1FusedBatchNorm3batch_normalization_23/cond/FusedBatchNorm_1/Switch,batch_normalization_23/cond/ReadVariableOp_2,batch_normalization_23/cond/ReadVariableOp_3;batch_normalization_23/cond/FusedBatchNorm_1/ReadVariableOp=batch_normalization_23/cond/FusedBatchNorm_1/ReadVariableOp_1*
T0*I
_output_shapes7
5:???????????::::*
is_training( *
epsilon%o?:
?
3batch_normalization_23/cond/FusedBatchNorm_1/SwitchSwitchre_lu_1_6/Relu#batch_normalization_23/cond/pred_id*N
_output_shapes<
::???????????:???????????*
T0*!
_class
loc:@re_lu_1_6/Relu
?
!batch_normalization_23/cond/MergeMerge,batch_normalization_23/cond/FusedBatchNorm_1*batch_normalization_23/cond/FusedBatchNorm*
N*3
_output_shapes!
:???????????: *
T0
?
#batch_normalization_23/cond/Merge_1Merge.batch_normalization_23/cond/FusedBatchNorm_1:1,batch_normalization_23/cond/FusedBatchNorm:1*
_output_shapes

:: *
T0*
N
?
#batch_normalization_23/cond/Merge_2Merge.batch_normalization_23/cond/FusedBatchNorm_1:2,batch_normalization_23/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes

:: 
}
$batch_normalization_23/cond_1/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
{
&batch_normalization_23/cond_1/switch_tIdentity&batch_normalization_23/cond_1/Switch:1*
T0
*
_output_shapes
: 
y
&batch_normalization_23/cond_1/switch_fIdentity$batch_normalization_23/cond_1/Switch*
_output_shapes
: *
T0

h
%batch_normalization_23/cond_1/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
?
#batch_normalization_23/cond_1/ConstConst'^batch_normalization_23/cond_1/switch_t*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
%batch_normalization_23/cond_1/Const_1Const'^batch_normalization_23/cond_1/switch_f*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
#batch_normalization_23/cond_1/MergeMerge%batch_normalization_23/cond_1/Const_1#batch_normalization_23/cond_1/Const*
T0*
N*
_output_shapes
: : 
?
,batch_normalization_23/AssignMovingAvg/sub/xConst*
_output_shapes
: *
valueB
 *  ??*5
_class+
)'loc:@batch_normalization_23/moving_mean*
dtype0
?
*batch_normalization_23/AssignMovingAvg/subSub,batch_normalization_23/AssignMovingAvg/sub/x#batch_normalization_23/cond_1/Merge*
T0*5
_class+
)'loc:@batch_normalization_23/moving_mean*
_output_shapes
: 
?
5batch_normalization_23/AssignMovingAvg/ReadVariableOpReadVariableOp"batch_normalization_23/moving_mean*
dtype0*
_output_shapes
:
?
,batch_normalization_23/AssignMovingAvg/sub_1Sub5batch_normalization_23/AssignMovingAvg/ReadVariableOp#batch_normalization_23/cond/Merge_1*
T0*5
_class+
)'loc:@batch_normalization_23/moving_mean*
_output_shapes
:
?
*batch_normalization_23/AssignMovingAvg/mulMul,batch_normalization_23/AssignMovingAvg/sub_1*batch_normalization_23/AssignMovingAvg/sub*
T0*5
_class+
)'loc:@batch_normalization_23/moving_mean*
_output_shapes
:
?
:batch_normalization_23/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp"batch_normalization_23/moving_mean*batch_normalization_23/AssignMovingAvg/mul*5
_class+
)'loc:@batch_normalization_23/moving_mean*
dtype0
?
7batch_normalization_23/AssignMovingAvg/ReadVariableOp_1ReadVariableOp"batch_normalization_23/moving_mean;^batch_normalization_23/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:*5
_class+
)'loc:@batch_normalization_23/moving_mean
?
.batch_normalization_23/AssignMovingAvg_1/sub/xConst*
valueB
 *  ??*9
_class/
-+loc:@batch_normalization_23/moving_variance*
dtype0*
_output_shapes
: 
?
,batch_normalization_23/AssignMovingAvg_1/subSub.batch_normalization_23/AssignMovingAvg_1/sub/x#batch_normalization_23/cond_1/Merge*
T0*9
_class/
-+loc:@batch_normalization_23/moving_variance*
_output_shapes
: 
?
7batch_normalization_23/AssignMovingAvg_1/ReadVariableOpReadVariableOp&batch_normalization_23/moving_variance*
_output_shapes
:*
dtype0
?
.batch_normalization_23/AssignMovingAvg_1/sub_1Sub7batch_normalization_23/AssignMovingAvg_1/ReadVariableOp#batch_normalization_23/cond/Merge_2*
T0*9
_class/
-+loc:@batch_normalization_23/moving_variance*
_output_shapes
:
?
,batch_normalization_23/AssignMovingAvg_1/mulMul.batch_normalization_23/AssignMovingAvg_1/sub_1,batch_normalization_23/AssignMovingAvg_1/sub*9
_class/
-+loc:@batch_normalization_23/moving_variance*
_output_shapes
:*
T0
?
<batch_normalization_23/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp&batch_normalization_23/moving_variance,batch_normalization_23/AssignMovingAvg_1/mul*9
_class/
-+loc:@batch_normalization_23/moving_variance*
dtype0
?
9batch_normalization_23/AssignMovingAvg_1/ReadVariableOp_1ReadVariableOp&batch_normalization_23/moving_variance=^batch_normalization_23/AssignMovingAvg_1/AssignSubVariableOp*9
_class/
-+loc:@batch_normalization_23/moving_variance*
dtype0*
_output_shapes
:
?
1conv2d_13/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*%
valueB"            *#
_class
loc:@conv2d_13/kernel*
dtype0
?
/conv2d_13/kernel/Initializer/random_uniform/minConst*
valueB
 *q??*#
_class
loc:@conv2d_13/kernel*
dtype0*
_output_shapes
: 
?
/conv2d_13/kernel/Initializer/random_uniform/maxConst*
valueB
 *q??*#
_class
loc:@conv2d_13/kernel*
dtype0*
_output_shapes
: 
?
9conv2d_13/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_13/kernel/Initializer/random_uniform/shape*
seed???)*
T0*#
_class
loc:@conv2d_13/kernel*
seed22*
dtype0*&
_output_shapes
:
?
/conv2d_13/kernel/Initializer/random_uniform/subSub/conv2d_13/kernel/Initializer/random_uniform/max/conv2d_13/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_13/kernel*
_output_shapes
: 
?
/conv2d_13/kernel/Initializer/random_uniform/mulMul9conv2d_13/kernel/Initializer/random_uniform/RandomUniform/conv2d_13/kernel/Initializer/random_uniform/sub*#
_class
loc:@conv2d_13/kernel*&
_output_shapes
:*
T0
?
+conv2d_13/kernel/Initializer/random_uniformAdd/conv2d_13/kernel/Initializer/random_uniform/mul/conv2d_13/kernel/Initializer/random_uniform/min*&
_output_shapes
:*
T0*#
_class
loc:@conv2d_13/kernel
?
conv2d_13/kernelVarHandleOp*
shape:*!
shared_nameconv2d_13/kernel*#
_class
loc:@conv2d_13/kernel*
dtype0*
_output_shapes
: 
q
1conv2d_13/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_13/kernel*
_output_shapes
: 
?
conv2d_13/kernel/AssignAssignVariableOpconv2d_13/kernel+conv2d_13/kernel/Initializer/random_uniform*#
_class
loc:@conv2d_13/kernel*
dtype0
?
$conv2d_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_13/kernel*#
_class
loc:@conv2d_13/kernel*
dtype0*&
_output_shapes
:
?
 conv2d_13/bias/Initializer/zerosConst*
valueB*    *!
_class
loc:@conv2d_13/bias*
dtype0*
_output_shapes
:
?
conv2d_13/biasVarHandleOp*
shared_nameconv2d_13/bias*!
_class
loc:@conv2d_13/bias*
dtype0*
_output_shapes
: *
shape:
m
/conv2d_13/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_13/bias*
_output_shapes
: 
?
conv2d_13/bias/AssignAssignVariableOpconv2d_13/bias conv2d_13/bias/Initializer/zeros*
dtype0*!
_class
loc:@conv2d_13/bias
?
"conv2d_13/bias/Read/ReadVariableOpReadVariableOpconv2d_13/bias*!
_class
loc:@conv2d_13/bias*
dtype0*
_output_shapes
:
h
conv2d_13/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
o
conv2d_13/filter_shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
p
conv2d_13/stackConst*
_output_shapes

:*)
value B"            *
dtype0
?
6conv2d_13/required_space_to_batch_paddings/input_shapeConst*
valueB"      *
dtype0*
_output_shapes
:
?
3conv2d_13/required_space_to_batch_paddings/paddingsConst*)
value B"            *
dtype0*
_output_shapes

:
?
0conv2d_13/required_space_to_batch_paddings/cropsConst*)
value B"                *
dtype0*
_output_shapes

:
u
$conv2d_13/SpaceToBatchND/block_shapeConst*
valueB"      *
dtype0*
_output_shapes
:
?
!conv2d_13/SpaceToBatchND/paddingsConst*)
value B"            *
dtype0*
_output_shapes

:
?
conv2d_13/SpaceToBatchNDSpaceToBatchND!batch_normalization_23/cond/Merge$conv2d_13/SpaceToBatchND/block_shape!conv2d_13/SpaceToBatchND/paddings*
T0*1
_output_shapes
:???????????
x
conv2d_13/Conv2D/ReadVariableOpReadVariableOpconv2d_13/kernel*
dtype0*&
_output_shapes
:
?
conv2d_13/Conv2DConv2Dconv2d_13/SpaceToBatchNDconv2d_13/Conv2D/ReadVariableOp*
strides
*1
_output_shapes
:???????????*
paddingVALID*
T0
u
$conv2d_13/BatchToSpaceND/block_shapeConst*
valueB"      *
dtype0*
_output_shapes
:

conv2d_13/BatchToSpaceND/cropsConst*)
value B"                *
dtype0*
_output_shapes

:
?
conv2d_13/BatchToSpaceNDBatchToSpaceNDconv2d_13/Conv2D$conv2d_13/BatchToSpaceND/block_shapeconv2d_13/BatchToSpaceND/crops*
T0*1
_output_shapes
:???????????
k
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOpconv2d_13/bias*
dtype0*
_output_shapes
:
?
conv2d_13/BiasAddBiasAddconv2d_13/BatchToSpaceND conv2d_13/BiasAdd/ReadVariableOp*
T0*1
_output_shapes
:???????????
k
conv2d_13/SigmoidSigmoidconv2d_13/BiasAdd*
T0*1
_output_shapes
:???????????
?
accompaniment_spectrogram/mulMulconv2d_13/Sigmoidstrided_slice_3*
T0*1
_output_shapes
:???????????
J
pow/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
e
powPowvocals_spectrogram/mulpow/y*
T0*1
_output_shapes
:???????????
L
pow_1/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
p
pow_1Powaccompaniment_spectrogram/mulpow_1/y*
T0*1
_output_shapes
:???????????
f
	Sum/inputPackpowpow_1*
N*5
_output_shapes#
!:???????????*
T0
W
Sum/reduction_indicesConst*
value	B : *
dtype0*
_output_shapes
: 
h
SumSum	Sum/inputSum/reduction_indices*
T0*1
_output_shapes
:???????????
L
add_1/yConst*
valueB
 *???.*
dtype0*
_output_shapes
: 
V
add_1AddSumadd_1/y*1
_output_shapes
:???????????*
T0
L
pow_2/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
i
pow_2Powvocals_spectrogram/mulpow_2/y*1
_output_shapes
:???????????*
T0
L
add_2/yConst*
valueB
 *??[.*
dtype0*
_output_shapes
: 
X
add_2Addpow_2add_2/y*
T0*1
_output_shapes
:???????????
\
truedivRealDivadd_2add_1*1
_output_shapes
:???????????*
T0
>
Shape_3Shapetruediv*
_output_shapes
:*
T0
_
strided_slice_4/stackConst*
valueB: *
dtype0*
_output_shapes
:
a
strided_slice_4/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
a
strided_slice_4/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
strided_slice_4StridedSliceShape_3strided_slice_4/stackstrided_slice_4/stack_1strided_slice_4/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
_
strided_slice_5/stackConst*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_5/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
a
strided_slice_5/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
strided_slice_5StridedSliceShape_3strided_slice_5/stackstrided_slice_5/stack_1strided_slice_5/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
h
strided_slice_6/stackConst*
_output_shapes
:*
valueB:
?????????*
dtype0
a
strided_slice_6/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
a
strided_slice_6/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
strided_slice_6StridedSliceShape_3strided_slice_6/stackstrided_slice_6/stack_1strided_slice_6/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
S
	zeros/mulMulstrided_slice_4strided_slice_5*
T0*
_output_shapes
: 
O
zeros/mul_1/yConst*
_output_shapes
: *
value	B :*
dtype0
M
zeros/mul_1Mul	zeros/mulzeros/mul_1/y*
_output_shapes
: *
T0
Q
zeros/mul_2Mulzeros/mul_1strided_slice_6*
T0*
_output_shapes
: 
O
zeros/Less/yConst*
dtype0*
_output_shapes
: *
value
B :?
N

zeros/LessLesszeros/mul_2zeros/Less/y*
T0*
_output_shapes
: 
P
zeros/packed/2Const*
value	B :*
dtype0*
_output_shapes
: 
?
zeros/packedPackstrided_slice_4strided_slice_5zeros/packed/2strided_slice_6*
T0*
N*
_output_shapes
:
P
zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
t
zerosFillzeros/packedzeros/Const*
T0*A
_output_shapes/
-:+???????????????????????????
g
Tile/multiplesConst*%
valueB"           *
dtype0*
_output_shapes
:
p
TileTilezerosTile/multiples*B
_output_shapes0
.:,????????????????????????????*
T0
O
concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B :
w
concat_1ConcatV2truedivTileconcat_1/axis*1
_output_shapes
:???????????*
T0*
N
?
Shape_4Shapeconcat_1*
T0*
_output_shapes
:
_
strided_slice_7/stackConst*
valueB: *
dtype0*
_output_shapes
:
a
strided_slice_7/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_7/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
?
strided_slice_7StridedSliceShape_4strided_slice_7/stackstrided_slice_7/stack_1strided_slice_7/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
_
strided_slice_8/stackConst*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_8/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
a
strided_slice_8/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
?
strided_slice_8StridedSliceShape_4strided_slice_8/stackstrided_slice_8/stack_1strided_slice_8/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
M
mulMulstrided_slice_7strided_slice_8*
_output_shapes
: *
T0
_
strided_slice_9/stackConst*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_9/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
a
strided_slice_9/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
strided_slice_9StridedSliceShape_4strided_slice_9/stackstrided_slice_9/stack_1strided_slice_9/stack_2*
_output_shapes
:*
Index0*
T0*
end_mask
L
concat_2/values_0Packmul*
N*
_output_shapes
:*
T0
O
concat_2/axisConst*
_output_shapes
: *
value	B : *
dtype0
u
concat_2ConcatV2concat_2/values_0strided_slice_9concat_2/axis*
T0*
N*
_output_shapes
:
_
	Reshape_1Reshapeconcat_1concat_2*
T0*,
_output_shapes
:??????????
B
Shape_5Shapetranspose_1*
T0*
_output_shapes
:
`
strided_slice_10/stackConst*
valueB: *
dtype0*
_output_shapes
:
b
strided_slice_10/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
b
strided_slice_10/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
strided_slice_10StridedSliceShape_5strided_slice_10/stackstrided_slice_10/stack_1strided_slice_10/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
g
strided_slice_11/stackConst*
valueB"        *
dtype0*
_output_shapes
:
\
strided_slice_11/stack_1/1Const*
value	B : *
dtype0*
_output_shapes
: 
|
strided_slice_11/stack_1Packstrided_slice_10strided_slice_11/stack_1/1*
T0*
N*
_output_shapes
:
i
strided_slice_11/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
strided_slice_11StridedSlice	Reshape_1strided_slice_11/stackstrided_slice_11/stack_1strided_slice_11/stack_2*
T0*
Index0*

begin_mask*
ellipsis_mask*,
_output_shapes
:??????????
d
CastCaststrided_slice_11*,
_output_shapes
:??????????*

DstT0*

SrcT0
V
mul_1MulCasttranspose_1*
T0*,
_output_shapes
:??????????
e
transpose_2/permConst*!
valueB"          *
dtype0*
_output_shapes
:
h
transpose_2	Transposemul_1transpose_2/perm*,
_output_shapes
:??????????*
T0
\
inverse_stft/frame_lengthConst*
value
B :? *
dtype0*
_output_shapes
: 
Z
inverse_stft/frame_stepConst*
dtype0*
_output_shapes
: *
value
B :?
U
inverse_stft/ConstConst*
value
B :? *
dtype0*
_output_shapes
: 
c
inverse_stft/irfft/packedPackinverse_stft/Const*
T0*
N*
_output_shapes
:
q
inverse_stft/irfftIRFFTtranspose_2inverse_stft/irfft/packed*,
_output_shapes
:?????????? 
c
!inverse_stft/hann_window/periodicConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
x
inverse_stft/hann_window/CastCast!inverse_stft/hann_window/periodic*

SrcT0
*
_output_shapes
: *

DstT0
e
#inverse_stft/hann_window/FloorMod/yConst*
dtype0*
_output_shapes
: *
value	B :
?
!inverse_stft/hann_window/FloorModFloorModinverse_stft/frame_length#inverse_stft/hann_window/FloorMod/y*
T0*
_output_shapes
: 
`
inverse_stft/hann_window/sub/xConst*
value	B :*
dtype0*
_output_shapes
: 
?
inverse_stft/hann_window/subSubinverse_stft/hann_window/sub/x!inverse_stft/hann_window/FloorMod*
_output_shapes
: *
T0
?
inverse_stft/hann_window/mulMulinverse_stft/hann_window/Castinverse_stft/hann_window/sub*
_output_shapes
: *
T0
}
inverse_stft/hann_window/addAddinverse_stft/frame_lengthinverse_stft/hann_window/mul*
T0*
_output_shapes
: 
b
 inverse_stft/hann_window/sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
inverse_stft/hann_window/sub_1Subinverse_stft/hann_window/add inverse_stft/hann_window/sub_1/y*
_output_shapes
: *
T0
w
inverse_stft/hann_window/Cast_1Castinverse_stft/hann_window/sub_1*
_output_shapes
: *

DstT0*

SrcT0
f
$inverse_stft/hann_window/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
f
$inverse_stft/hann_window/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
inverse_stft/hann_window/rangeRange$inverse_stft/hann_window/range/startinverse_stft/frame_length$inverse_stft/hann_window/range/delta*
_output_shapes	
:? 
|
inverse_stft/hann_window/Cast_2Castinverse_stft/hann_window/range*
_output_shapes	
:? *

DstT0*

SrcT0
c
inverse_stft/hann_window/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *??@
?
inverse_stft/hann_window/mul_1Mulinverse_stft/hann_window/Constinverse_stft/hann_window/Cast_2*
T0*
_output_shapes	
:? 
?
 inverse_stft/hann_window/truedivRealDivinverse_stft/hann_window/mul_1inverse_stft/hann_window/Cast_1*
_output_shapes	
:? *
T0
k
inverse_stft/hann_window/CosCos inverse_stft/hann_window/truediv*
_output_shapes	
:? *
T0
e
 inverse_stft/hann_window/mul_2/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
?
inverse_stft/hann_window/mul_2Mul inverse_stft/hann_window/mul_2/xinverse_stft/hann_window/Cos*
_output_shapes	
:? *
T0
e
 inverse_stft/hann_window/sub_2/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
?
inverse_stft/hann_window/sub_2Sub inverse_stft/hann_window/sub_2/xinverse_stft/hann_window/mul_2*
_output_shapes	
:? *
T0
?
inverse_stft/mulMulinverse_stft/irfftinverse_stft/hann_window/sub_2*,
_output_shapes
:?????????? *
T0
b
"inverse_stft/overlap_and_add/ShapeShapeinverse_stft/mul*
_output_shapes
:*
T0
z
0inverse_stft/overlap_and_add/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
?
2inverse_stft/overlap_and_add/strided_slice/stack_1Const*
valueB:
?????????*
dtype0*
_output_shapes
:
|
2inverse_stft/overlap_and_add/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
*inverse_stft/overlap_and_add/strided_sliceStridedSlice"inverse_stft/overlap_and_add/Shape0inverse_stft/overlap_and_add/strided_slice/stack2inverse_stft/overlap_and_add/strided_slice/stack_12inverse_stft/overlap_and_add/strided_slice/stack_2*
_output_shapes
:*

begin_mask*
Index0*
T0
c
!inverse_stft/overlap_and_add/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
?
2inverse_stft/overlap_and_add/strided_slice_1/stackConst*
valueB:
?????????*
dtype0*
_output_shapes
:
~
4inverse_stft/overlap_and_add/strided_slice_1/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
~
4inverse_stft/overlap_and_add/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
,inverse_stft/overlap_and_add/strided_slice_1StridedSlice"inverse_stft/overlap_and_add/Shape2inverse_stft/overlap_and_add/strided_slice_1/stack4inverse_stft/overlap_and_add/strided_slice_1/stack_14inverse_stft/overlap_and_add/strided_slice_1/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
?
2inverse_stft/overlap_and_add/strided_slice_2/stackConst*
valueB:
?????????*
dtype0*
_output_shapes
:
?
4inverse_stft/overlap_and_add/strided_slice_2/stack_1Const*
valueB:
?????????*
dtype0*
_output_shapes
:
~
4inverse_stft/overlap_and_add/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
,inverse_stft/overlap_and_add/strided_slice_2StridedSlice"inverse_stft/overlap_and_add/Shape2inverse_stft/overlap_and_add/strided_slice_2/stack4inverse_stft/overlap_and_add/strided_slice_2/stack_14inverse_stft/overlap_and_add/strided_slice_2/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
d
"inverse_stft/overlap_and_add/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
 inverse_stft/overlap_and_add/subSub,inverse_stft/overlap_and_add/strided_slice_2"inverse_stft/overlap_and_add/sub/y*
T0*
_output_shapes
: 
?
 inverse_stft/overlap_and_add/mulMulinverse_stft/frame_step inverse_stft/overlap_and_add/sub*
_output_shapes
: *
T0
?
 inverse_stft/overlap_and_add/addAdd,inverse_stft/overlap_and_add/strided_slice_1 inverse_stft/overlap_and_add/mul*
T0*
_output_shapes
: 
v
 inverse_stft/overlap_and_add/NegNeg,inverse_stft/overlap_and_add/strided_slice_1*
T0*
_output_shapes
: 
?
%inverse_stft/overlap_and_add/floordivFloorDiv inverse_stft/overlap_and_add/Neginverse_stft/frame_step*
_output_shapes
: *
T0
q
"inverse_stft/overlap_and_add/Neg_1Neg%inverse_stft/overlap_and_add/floordiv*
_output_shapes
: *
T0
?
"inverse_stft/overlap_and_add/mul_1Mul"inverse_stft/overlap_and_add/Neg_1inverse_stft/frame_step*
T0*
_output_shapes
: 
?
"inverse_stft/overlap_and_add/sub_1Sub"inverse_stft/overlap_and_add/mul_1,inverse_stft/overlap_and_add/strided_slice_1*
T0*
_output_shapes
: 
j
(inverse_stft/overlap_and_add/zeros/mul/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
&inverse_stft/overlap_and_add/zeros/mulMul!inverse_stft/overlap_and_add/Size(inverse_stft/overlap_and_add/zeros/mul/y*
_output_shapes
: *
T0
l
)inverse_stft/overlap_and_add/zeros/Less/yConst*
value
B :?*
dtype0*
_output_shapes
: 
?
'inverse_stft/overlap_and_add/zeros/LessLess&inverse_stft/overlap_and_add/zeros/mul)inverse_stft/overlap_and_add/zeros/Less/y*
T0*
_output_shapes
: 
m
+inverse_stft/overlap_and_add/zeros/packed/1Const*
value	B :*
dtype0*
_output_shapes
: 
?
)inverse_stft/overlap_and_add/zeros/packedPack!inverse_stft/overlap_and_add/Size+inverse_stft/overlap_and_add/zeros/packed/1*
N*
_output_shapes
:*
T0
j
(inverse_stft/overlap_and_add/zeros/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
?
"inverse_stft/overlap_and_add/zerosFill)inverse_stft/overlap_and_add/zeros/packed(inverse_stft/overlap_and_add/zeros/Const*
_output_shapes

:*
T0
r
0inverse_stft/overlap_and_add/concat/values_1/0/0Const*
_output_shapes
: *
value	B : *
dtype0
?
.inverse_stft/overlap_and_add/concat/values_1/0Pack0inverse_stft/overlap_and_add/concat/values_1/0/0"inverse_stft/overlap_and_add/Neg_1*
T0*
N*
_output_shapes
:
r
0inverse_stft/overlap_and_add/concat/values_1/1/0Const*
value	B : *
dtype0*
_output_shapes
: 
?
.inverse_stft/overlap_and_add/concat/values_1/1Pack0inverse_stft/overlap_and_add/concat/values_1/1/0"inverse_stft/overlap_and_add/sub_1*
N*
_output_shapes
:*
T0
?
,inverse_stft/overlap_and_add/concat/values_1Pack.inverse_stft/overlap_and_add/concat/values_1/0.inverse_stft/overlap_and_add/concat/values_1/1*
T0*
N*
_output_shapes

:
j
(inverse_stft/overlap_and_add/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
?
#inverse_stft/overlap_and_add/concatConcatV2"inverse_stft/overlap_and_add/zeros,inverse_stft/overlap_and_add/concat/values_1(inverse_stft/overlap_and_add/concat/axis*
T0*
N*
_output_shapes

:
?
 inverse_stft/overlap_and_add/PadPadinverse_stft/mul#inverse_stft/overlap_and_add/concat*=
_output_shapes+
):'???????????????????????????*
T0
?
"inverse_stft/overlap_and_add/add_1Add,inverse_stft/overlap_and_add/strided_slice_2"inverse_stft/overlap_and_add/Neg_1*
T0*
_output_shapes
: 
?
.inverse_stft/overlap_and_add/concat_1/values_1Pack"inverse_stft/overlap_and_add/add_1"inverse_stft/overlap_and_add/Neg_1inverse_stft/frame_step*
T0*
N*
_output_shapes
:
l
*inverse_stft/overlap_and_add/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
%inverse_stft/overlap_and_add/concat_1ConcatV2*inverse_stft/overlap_and_add/strided_slice.inverse_stft/overlap_and_add/concat_1/values_1*inverse_stft/overlap_and_add/concat_1/axis*
T0*
N*
_output_shapes
:
?
$inverse_stft/overlap_and_add/ReshapeReshape inverse_stft/overlap_and_add/Pad%inverse_stft/overlap_and_add/concat_1*
T0*9
_output_shapes'
%:#???????????????????
j
(inverse_stft/overlap_and_add/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(inverse_stft/overlap_and_add/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
"inverse_stft/overlap_and_add/rangeRange(inverse_stft/overlap_and_add/range/start!inverse_stft/overlap_and_add/Size(inverse_stft/overlap_and_add/range/delta*
_output_shapes
:
y
$inverse_stft/overlap_and_add/add_2/yConst*!
valueB"          *
dtype0*
_output_shapes
:
?
"inverse_stft/overlap_and_add/add_2Add!inverse_stft/overlap_and_add/Size$inverse_stft/overlap_and_add/add_2/y*
T0*
_output_shapes
:
l
*inverse_stft/overlap_and_add/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
%inverse_stft/overlap_and_add/concat_2ConcatV2"inverse_stft/overlap_and_add/range"inverse_stft/overlap_and_add/add_2*inverse_stft/overlap_and_add/concat_2/axis*
T0*
N*
_output_shapes
:
?
&inverse_stft/overlap_and_add/transpose	Transpose$inverse_stft/overlap_and_add/Reshape%inverse_stft/overlap_and_add/concat_2*
T0*9
_output_shapes'
%:#???????????????????
?
"inverse_stft/overlap_and_add/add_3Add,inverse_stft/overlap_and_add/strided_slice_2"inverse_stft/overlap_and_add/Neg_1*
_output_shapes
: *
T0
?
"inverse_stft/overlap_and_add/mul_2Mul"inverse_stft/overlap_and_add/add_3"inverse_stft/overlap_and_add/Neg_1*
_output_shapes
: *
T0
?
.inverse_stft/overlap_and_add/concat_3/values_1Pack"inverse_stft/overlap_and_add/mul_2inverse_stft/frame_step*
T0*
N*
_output_shapes
:
l
*inverse_stft/overlap_and_add/concat_3/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
%inverse_stft/overlap_and_add/concat_3ConcatV2*inverse_stft/overlap_and_add/strided_slice.inverse_stft/overlap_and_add/concat_3/values_1*inverse_stft/overlap_and_add/concat_3/axis*
N*
_output_shapes
:*
T0
?
&inverse_stft/overlap_and_add/Reshape_1Reshape&inverse_stft/overlap_and_add/transpose%inverse_stft/overlap_and_add/concat_3*
T0*,
_output_shapes
:??????????
?
"inverse_stft/overlap_and_add/add_4Add,inverse_stft/overlap_and_add/strided_slice_2"inverse_stft/overlap_and_add/Neg_1*
_output_shapes
: *
T0
f
$inverse_stft/overlap_and_add/sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
"inverse_stft/overlap_and_add/sub_2Sub"inverse_stft/overlap_and_add/add_4$inverse_stft/overlap_and_add/sub_2/y*
T0*
_output_shapes
: 
?
"inverse_stft/overlap_and_add/mul_3Mul"inverse_stft/overlap_and_add/sub_2"inverse_stft/overlap_and_add/Neg_1*
T0*
_output_shapes
: 
?
2inverse_stft/overlap_and_add/strided_slice_3/stackConst*!
valueB"            *
dtype0*
_output_shapes
:
x
6inverse_stft/overlap_and_add/strided_slice_3/stack_1/0Const*
value	B : *
dtype0*
_output_shapes
: 
x
6inverse_stft/overlap_and_add/strided_slice_3/stack_1/2Const*
_output_shapes
: *
value	B : *
dtype0
?
4inverse_stft/overlap_and_add/strided_slice_3/stack_1Pack6inverse_stft/overlap_and_add/strided_slice_3/stack_1/0"inverse_stft/overlap_and_add/mul_36inverse_stft/overlap_and_add/strided_slice_3/stack_1/2*
N*
_output_shapes
:*
T0
?
4inverse_stft/overlap_and_add/strided_slice_3/stack_2Const*!
valueB"         *
dtype0*
_output_shapes
:
?
,inverse_stft/overlap_and_add/strided_slice_3StridedSlice&inverse_stft/overlap_and_add/Reshape_12inverse_stft/overlap_and_add/strided_slice_3/stack4inverse_stft/overlap_and_add/strided_slice_3/stack_14inverse_stft/overlap_and_add/strided_slice_3/stack_2*,
_output_shapes
:??????????*
Index0*
T0*

begin_mask*
ellipsis_mask*
end_mask
?
"inverse_stft/overlap_and_add/add_5Add,inverse_stft/overlap_and_add/strided_slice_2"inverse_stft/overlap_and_add/Neg_1*
_output_shapes
: *
T0
f
$inverse_stft/overlap_and_add/sub_3/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
"inverse_stft/overlap_and_add/sub_3Sub"inverse_stft/overlap_and_add/add_5$inverse_stft/overlap_and_add/sub_3/y*
T0*
_output_shapes
: 
?
.inverse_stft/overlap_and_add/concat_4/values_1Pack"inverse_stft/overlap_and_add/Neg_1"inverse_stft/overlap_and_add/sub_3inverse_stft/frame_step*
T0*
N*
_output_shapes
:
l
*inverse_stft/overlap_and_add/concat_4/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
%inverse_stft/overlap_and_add/concat_4ConcatV2*inverse_stft/overlap_and_add/strided_slice.inverse_stft/overlap_and_add/concat_4/values_1*inverse_stft/overlap_and_add/concat_4/axis*
T0*
N*
_output_shapes
:
?
&inverse_stft/overlap_and_add/Reshape_2Reshape,inverse_stft/overlap_and_add/strided_slice_3%inverse_stft/overlap_and_add/concat_4*
T0*9
_output_shapes'
%:#???????????????????
}
2inverse_stft/overlap_and_add/Sum/reduction_indicesConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
 inverse_stft/overlap_and_add/SumSum&inverse_stft/overlap_and_add/Reshape_22inverse_stft/overlap_and_add/Sum/reduction_indices*,
_output_shapes
:??????????*
T0
?
"inverse_stft/overlap_and_add/add_6Add,inverse_stft/overlap_and_add/strided_slice_2"inverse_stft/overlap_and_add/Neg_1*
T0*
_output_shapes
: 
f
$inverse_stft/overlap_and_add/sub_4/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
"inverse_stft/overlap_and_add/sub_4Sub"inverse_stft/overlap_and_add/add_6$inverse_stft/overlap_and_add/sub_4/y*
_output_shapes
: *
T0
?
"inverse_stft/overlap_and_add/mul_4Mul"inverse_stft/overlap_and_add/sub_4inverse_stft/frame_step*
T0*
_output_shapes
: 
?
.inverse_stft/overlap_and_add/concat_5/values_1Pack"inverse_stft/overlap_and_add/mul_4*
T0*
N*
_output_shapes
:
l
*inverse_stft/overlap_and_add/concat_5/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
%inverse_stft/overlap_and_add/concat_5ConcatV2*inverse_stft/overlap_and_add/strided_slice.inverse_stft/overlap_and_add/concat_5/values_1*inverse_stft/overlap_and_add/concat_5/axis*
N*
_output_shapes
:*
T0
?
&inverse_stft/overlap_and_add/Reshape_3Reshape inverse_stft/overlap_and_add/Sum%inverse_stft/overlap_and_add/concat_5*
T0*'
_output_shapes
:?????????
?
2inverse_stft/overlap_and_add/strided_slice_4/stackConst*
valueB"        *
dtype0*
_output_shapes
:
x
6inverse_stft/overlap_and_add/strided_slice_4/stack_1/0Const*
value	B : *
dtype0*
_output_shapes
: 
?
4inverse_stft/overlap_and_add/strided_slice_4/stack_1Pack6inverse_stft/overlap_and_add/strided_slice_4/stack_1/0 inverse_stft/overlap_and_add/add*
T0*
N*
_output_shapes
:
?
4inverse_stft/overlap_and_add/strided_slice_4/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
,inverse_stft/overlap_and_add/strided_slice_4StridedSlice&inverse_stft/overlap_and_add/Reshape_32inverse_stft/overlap_and_add/strided_slice_4/stack4inverse_stft/overlap_and_add/strided_slice_4/stack_14inverse_stft/overlap_and_add/strided_slice_4/stack_2*'
_output_shapes
:?????????*
T0*
Index0*
ellipsis_mask*

begin_mask
L
mul_2/yConst*
valueB
 *??*?*
dtype0*
_output_shapes
: 
u
mul_2Mul,inverse_stft/overlap_and_add/strided_slice_4mul_2/y*
T0*'
_output_shapes
:?????????
a
transpose_3/permConst*
valueB"       *
dtype0*
_output_shapes
:
c
transpose_3	Transposemul_2transpose_3/perm*
T0*'
_output_shapes
:?????????
B
Shape_6ShapePlaceholder*
T0*
_output_shapes
:
`
strided_slice_12/stackConst*
valueB: *
dtype0*
_output_shapes
:
b
strided_slice_12/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_12/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
?
strided_slice_12StridedSliceShape_6strided_slice_12/stackstrided_slice_12/stack_1strided_slice_12/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
g
strided_slice_13/stackConst*
dtype0*
_output_shapes
:*
valueB"        
\
strided_slice_13/stack_1/1Const*
value	B : *
dtype0*
_output_shapes
: 
|
strided_slice_13/stack_1Packstrided_slice_12strided_slice_13/stack_1/1*
N*
_output_shapes
:*
T0
i
strided_slice_13/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
strided_slice_13StridedSlicetranspose_3strided_slice_13/stackstrided_slice_13/stack_1strided_slice_13/stack_2*

begin_mask*
T0*
Index0*
end_mask*'
_output_shapes
:?????????
L
pow_3/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
p
pow_3Powaccompaniment_spectrogram/mulpow_3/y*1
_output_shapes
:???????????*
T0
L
add_3/yConst*
_output_shapes
: *
valueB
 *??[.*
dtype0
X
add_3Addpow_3add_3/y*
T0*1
_output_shapes
:???????????
^
	truediv_1RealDivadd_3add_1*1
_output_shapes
:???????????*
T0
@
Shape_7Shape	truediv_1*
_output_shapes
:*
T0
`
strided_slice_14/stackConst*
dtype0*
_output_shapes
:*
valueB: 
b
strided_slice_14/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_14/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
strided_slice_14StridedSliceShape_7strided_slice_14/stackstrided_slice_14/stack_1strided_slice_14/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
`
strided_slice_15/stackConst*
dtype0*
_output_shapes
:*
valueB:
b
strided_slice_15/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_15/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
strided_slice_15StridedSliceShape_7strided_slice_15/stackstrided_slice_15/stack_1strided_slice_15/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
i
strided_slice_16/stackConst*
valueB:
?????????*
dtype0*
_output_shapes
:
b
strided_slice_16/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
b
strided_slice_16/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
strided_slice_16StridedSliceShape_7strided_slice_16/stackstrided_slice_16/stack_1strided_slice_16/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
W
zeros_1/mulMulstrided_slice_14strided_slice_15*
_output_shapes
: *
T0
Q
zeros_1/mul_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
S
zeros_1/mul_1Mulzeros_1/mulzeros_1/mul_1/y*
T0*
_output_shapes
: 
V
zeros_1/mul_2Mulzeros_1/mul_1strided_slice_16*
T0*
_output_shapes
: 
Q
zeros_1/Less/yConst*
value
B :?*
dtype0*
_output_shapes
: 
T
zeros_1/LessLesszeros_1/mul_2zeros_1/Less/y*
_output_shapes
: *
T0
R
zeros_1/packed/2Const*
value	B :*
dtype0*
_output_shapes
: 
?
zeros_1/packedPackstrided_slice_14strided_slice_15zeros_1/packed/2strided_slice_16*
T0*
N*
_output_shapes
:
R
zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
z
zeros_1Fillzeros_1/packedzeros_1/Const*
T0*A
_output_shapes/
-:+???????????????????????????
i
Tile_1/multiplesConst*%
valueB"           *
dtype0*
_output_shapes
:
v
Tile_1Tilezeros_1Tile_1/multiples*
T0*B
_output_shapes0
.:,????????????????????????????
O
concat_3/axisConst*
value	B :*
dtype0*
_output_shapes
: 
{
concat_3ConcatV2	truediv_1Tile_1concat_3/axis*
T0*
N*1
_output_shapes
:???????????
?
Shape_8Shapeconcat_3*
_output_shapes
:*
T0
`
strided_slice_17/stackConst*
valueB: *
dtype0*
_output_shapes
:
b
strided_slice_17/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_17/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
strided_slice_17StridedSliceShape_8strided_slice_17/stackstrided_slice_17/stack_1strided_slice_17/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
`
strided_slice_18/stackConst*
_output_shapes
:*
valueB:*
dtype0
b
strided_slice_18/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_18/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
?
strided_slice_18StridedSliceShape_8strided_slice_18/stackstrided_slice_18/stack_1strided_slice_18/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
Q
mul_3Mulstrided_slice_17strided_slice_18*
_output_shapes
: *
T0
`
strided_slice_19/stackConst*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_19/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
b
strided_slice_19/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
strided_slice_19StridedSliceShape_8strided_slice_19/stackstrided_slice_19/stack_1strided_slice_19/stack_2*
Index0*
T0*
end_mask*
_output_shapes
:
N
concat_4/values_0Packmul_3*
_output_shapes
:*
T0*
N
O
concat_4/axisConst*
_output_shapes
: *
value	B : *
dtype0
v
concat_4ConcatV2concat_4/values_0strided_slice_19concat_4/axis*
N*
_output_shapes
:*
T0
_
	Reshape_2Reshapeconcat_3concat_4*,
_output_shapes
:??????????*
T0
B
Shape_9Shapetranspose_1*
T0*
_output_shapes
:
`
strided_slice_20/stackConst*
_output_shapes
:*
valueB: *
dtype0
b
strided_slice_20/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_20/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
strided_slice_20StridedSliceShape_9strided_slice_20/stackstrided_slice_20/stack_1strided_slice_20/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
g
strided_slice_21/stackConst*
valueB"        *
dtype0*
_output_shapes
:
\
strided_slice_21/stack_1/1Const*
value	B : *
dtype0*
_output_shapes
: 
|
strided_slice_21/stack_1Packstrided_slice_20strided_slice_21/stack_1/1*
_output_shapes
:*
T0*
N
i
strided_slice_21/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0
?
strided_slice_21StridedSlice	Reshape_2strided_slice_21/stackstrided_slice_21/stack_1strided_slice_21/stack_2*
T0*
Index0*
ellipsis_mask*

begin_mask*,
_output_shapes
:??????????
f
Cast_1Caststrided_slice_21*

SrcT0*,
_output_shapes
:??????????*

DstT0
X
mul_4MulCast_1transpose_1*,
_output_shapes
:??????????*
T0
e
transpose_4/permConst*
dtype0*
_output_shapes
:*!
valueB"          
h
transpose_4	Transposemul_4transpose_4/perm*,
_output_shapes
:??????????*
T0
^
inverse_stft_1/frame_lengthConst*
_output_shapes
: *
value
B :? *
dtype0
\
inverse_stft_1/frame_stepConst*
value
B :?*
dtype0*
_output_shapes
: 
W
inverse_stft_1/ConstConst*
value
B :? *
dtype0*
_output_shapes
: 
g
inverse_stft_1/irfft/packedPackinverse_stft_1/Const*
T0*
N*
_output_shapes
:
u
inverse_stft_1/irfftIRFFTtranspose_4inverse_stft_1/irfft/packed*,
_output_shapes
:?????????? 
e
#inverse_stft_1/hann_window/periodicConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
|
inverse_stft_1/hann_window/CastCast#inverse_stft_1/hann_window/periodic*
_output_shapes
: *

DstT0*

SrcT0

g
%inverse_stft_1/hann_window/FloorMod/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
#inverse_stft_1/hann_window/FloorModFloorModinverse_stft_1/frame_length%inverse_stft_1/hann_window/FloorMod/y*
T0*
_output_shapes
: 
b
 inverse_stft_1/hann_window/sub/xConst*
value	B :*
dtype0*
_output_shapes
: 
?
inverse_stft_1/hann_window/subSub inverse_stft_1/hann_window/sub/x#inverse_stft_1/hann_window/FloorMod*
T0*
_output_shapes
: 
?
inverse_stft_1/hann_window/mulMulinverse_stft_1/hann_window/Castinverse_stft_1/hann_window/sub*
T0*
_output_shapes
: 
?
inverse_stft_1/hann_window/addAddinverse_stft_1/frame_lengthinverse_stft_1/hann_window/mul*
T0*
_output_shapes
: 
d
"inverse_stft_1/hann_window/sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
 inverse_stft_1/hann_window/sub_1Subinverse_stft_1/hann_window/add"inverse_stft_1/hann_window/sub_1/y*
_output_shapes
: *
T0
{
!inverse_stft_1/hann_window/Cast_1Cast inverse_stft_1/hann_window/sub_1*
_output_shapes
: *

DstT0*

SrcT0
h
&inverse_stft_1/hann_window/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
h
&inverse_stft_1/hann_window/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
 inverse_stft_1/hann_window/rangeRange&inverse_stft_1/hann_window/range/startinverse_stft_1/frame_length&inverse_stft_1/hann_window/range/delta*
_output_shapes	
:? 
?
!inverse_stft_1/hann_window/Cast_2Cast inverse_stft_1/hann_window/range*
_output_shapes	
:? *

DstT0*

SrcT0
e
 inverse_stft_1/hann_window/ConstConst*
valueB
 *??@*
dtype0*
_output_shapes
: 
?
 inverse_stft_1/hann_window/mul_1Mul inverse_stft_1/hann_window/Const!inverse_stft_1/hann_window/Cast_2*
T0*
_output_shapes	
:? 
?
"inverse_stft_1/hann_window/truedivRealDiv inverse_stft_1/hann_window/mul_1!inverse_stft_1/hann_window/Cast_1*
T0*
_output_shapes	
:? 
o
inverse_stft_1/hann_window/CosCos"inverse_stft_1/hann_window/truediv*
T0*
_output_shapes	
:? 
g
"inverse_stft_1/hann_window/mul_2/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
?
 inverse_stft_1/hann_window/mul_2Mul"inverse_stft_1/hann_window/mul_2/xinverse_stft_1/hann_window/Cos*
T0*
_output_shapes	
:? 
g
"inverse_stft_1/hann_window/sub_2/xConst*
dtype0*
_output_shapes
: *
valueB
 *   ?
?
 inverse_stft_1/hann_window/sub_2Sub"inverse_stft_1/hann_window/sub_2/x inverse_stft_1/hann_window/mul_2*
T0*
_output_shapes	
:? 
?
inverse_stft_1/mulMulinverse_stft_1/irfft inverse_stft_1/hann_window/sub_2*
T0*,
_output_shapes
:?????????? 
f
$inverse_stft_1/overlap_and_add/ShapeShapeinverse_stft_1/mul*
T0*
_output_shapes
:
|
2inverse_stft_1/overlap_and_add/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
?
4inverse_stft_1/overlap_and_add/strided_slice/stack_1Const*
valueB:
?????????*
dtype0*
_output_shapes
:
~
4inverse_stft_1/overlap_and_add/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
?
,inverse_stft_1/overlap_and_add/strided_sliceStridedSlice$inverse_stft_1/overlap_and_add/Shape2inverse_stft_1/overlap_and_add/strided_slice/stack4inverse_stft_1/overlap_and_add/strided_slice/stack_14inverse_stft_1/overlap_and_add/strided_slice/stack_2*
_output_shapes
:*
T0*
Index0*

begin_mask
e
#inverse_stft_1/overlap_and_add/SizeConst*
dtype0*
_output_shapes
: *
value	B :
?
4inverse_stft_1/overlap_and_add/strided_slice_1/stackConst*
valueB:
?????????*
dtype0*
_output_shapes
:
?
6inverse_stft_1/overlap_and_add/strided_slice_1/stack_1Const*
_output_shapes
:*
valueB: *
dtype0
?
6inverse_stft_1/overlap_and_add/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
.inverse_stft_1/overlap_and_add/strided_slice_1StridedSlice$inverse_stft_1/overlap_and_add/Shape4inverse_stft_1/overlap_and_add/strided_slice_1/stack6inverse_stft_1/overlap_and_add/strided_slice_1/stack_16inverse_stft_1/overlap_and_add/strided_slice_1/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
?
4inverse_stft_1/overlap_and_add/strided_slice_2/stackConst*
valueB:
?????????*
dtype0*
_output_shapes
:
?
6inverse_stft_1/overlap_and_add/strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
?????????
?
6inverse_stft_1/overlap_and_add/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
.inverse_stft_1/overlap_and_add/strided_slice_2StridedSlice$inverse_stft_1/overlap_and_add/Shape4inverse_stft_1/overlap_and_add/strided_slice_2/stack6inverse_stft_1/overlap_and_add/strided_slice_2/stack_16inverse_stft_1/overlap_and_add/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
f
$inverse_stft_1/overlap_and_add/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
"inverse_stft_1/overlap_and_add/subSub.inverse_stft_1/overlap_and_add/strided_slice_2$inverse_stft_1/overlap_and_add/sub/y*
T0*
_output_shapes
: 
?
"inverse_stft_1/overlap_and_add/mulMulinverse_stft_1/frame_step"inverse_stft_1/overlap_and_add/sub*
T0*
_output_shapes
: 
?
"inverse_stft_1/overlap_and_add/addAdd.inverse_stft_1/overlap_and_add/strided_slice_1"inverse_stft_1/overlap_and_add/mul*
_output_shapes
: *
T0
z
"inverse_stft_1/overlap_and_add/NegNeg.inverse_stft_1/overlap_and_add/strided_slice_1*
T0*
_output_shapes
: 
?
'inverse_stft_1/overlap_and_add/floordivFloorDiv"inverse_stft_1/overlap_and_add/Neginverse_stft_1/frame_step*
_output_shapes
: *
T0
u
$inverse_stft_1/overlap_and_add/Neg_1Neg'inverse_stft_1/overlap_and_add/floordiv*
_output_shapes
: *
T0
?
$inverse_stft_1/overlap_and_add/mul_1Mul$inverse_stft_1/overlap_and_add/Neg_1inverse_stft_1/frame_step*
T0*
_output_shapes
: 
?
$inverse_stft_1/overlap_and_add/sub_1Sub$inverse_stft_1/overlap_and_add/mul_1.inverse_stft_1/overlap_and_add/strided_slice_1*
T0*
_output_shapes
: 
l
*inverse_stft_1/overlap_and_add/zeros/mul/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
(inverse_stft_1/overlap_and_add/zeros/mulMul#inverse_stft_1/overlap_and_add/Size*inverse_stft_1/overlap_and_add/zeros/mul/y*
_output_shapes
: *
T0
n
+inverse_stft_1/overlap_and_add/zeros/Less/yConst*
_output_shapes
: *
value
B :?*
dtype0
?
)inverse_stft_1/overlap_and_add/zeros/LessLess(inverse_stft_1/overlap_and_add/zeros/mul+inverse_stft_1/overlap_and_add/zeros/Less/y*
_output_shapes
: *
T0
o
-inverse_stft_1/overlap_and_add/zeros/packed/1Const*
_output_shapes
: *
value	B :*
dtype0
?
+inverse_stft_1/overlap_and_add/zeros/packedPack#inverse_stft_1/overlap_and_add/Size-inverse_stft_1/overlap_and_add/zeros/packed/1*
_output_shapes
:*
T0*
N
l
*inverse_stft_1/overlap_and_add/zeros/ConstConst*
_output_shapes
: *
value	B : *
dtype0
?
$inverse_stft_1/overlap_and_add/zerosFill+inverse_stft_1/overlap_and_add/zeros/packed*inverse_stft_1/overlap_and_add/zeros/Const*
_output_shapes

:*
T0
t
2inverse_stft_1/overlap_and_add/concat/values_1/0/0Const*
value	B : *
dtype0*
_output_shapes
: 
?
0inverse_stft_1/overlap_and_add/concat/values_1/0Pack2inverse_stft_1/overlap_and_add/concat/values_1/0/0$inverse_stft_1/overlap_and_add/Neg_1*
T0*
N*
_output_shapes
:
t
2inverse_stft_1/overlap_and_add/concat/values_1/1/0Const*
value	B : *
dtype0*
_output_shapes
: 
?
0inverse_stft_1/overlap_and_add/concat/values_1/1Pack2inverse_stft_1/overlap_and_add/concat/values_1/1/0$inverse_stft_1/overlap_and_add/sub_1*
T0*
N*
_output_shapes
:
?
.inverse_stft_1/overlap_and_add/concat/values_1Pack0inverse_stft_1/overlap_and_add/concat/values_1/00inverse_stft_1/overlap_and_add/concat/values_1/1*
T0*
N*
_output_shapes

:
l
*inverse_stft_1/overlap_and_add/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
%inverse_stft_1/overlap_and_add/concatConcatV2$inverse_stft_1/overlap_and_add/zeros.inverse_stft_1/overlap_and_add/concat/values_1*inverse_stft_1/overlap_and_add/concat/axis*
N*
_output_shapes

:*
T0
?
"inverse_stft_1/overlap_and_add/PadPadinverse_stft_1/mul%inverse_stft_1/overlap_and_add/concat*=
_output_shapes+
):'???????????????????????????*
T0
?
$inverse_stft_1/overlap_and_add/add_1Add.inverse_stft_1/overlap_and_add/strided_slice_2$inverse_stft_1/overlap_and_add/Neg_1*
_output_shapes
: *
T0
?
0inverse_stft_1/overlap_and_add/concat_1/values_1Pack$inverse_stft_1/overlap_and_add/add_1$inverse_stft_1/overlap_and_add/Neg_1inverse_stft_1/frame_step*
T0*
N*
_output_shapes
:
n
,inverse_stft_1/overlap_and_add/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
'inverse_stft_1/overlap_and_add/concat_1ConcatV2,inverse_stft_1/overlap_and_add/strided_slice0inverse_stft_1/overlap_and_add/concat_1/values_1,inverse_stft_1/overlap_and_add/concat_1/axis*
_output_shapes
:*
T0*
N
?
&inverse_stft_1/overlap_and_add/ReshapeReshape"inverse_stft_1/overlap_and_add/Pad'inverse_stft_1/overlap_and_add/concat_1*
T0*9
_output_shapes'
%:#???????????????????
l
*inverse_stft_1/overlap_and_add/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
l
*inverse_stft_1/overlap_and_add/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
$inverse_stft_1/overlap_and_add/rangeRange*inverse_stft_1/overlap_and_add/range/start#inverse_stft_1/overlap_and_add/Size*inverse_stft_1/overlap_and_add/range/delta*
_output_shapes
:
{
&inverse_stft_1/overlap_and_add/add_2/yConst*!
valueB"          *
dtype0*
_output_shapes
:
?
$inverse_stft_1/overlap_and_add/add_2Add#inverse_stft_1/overlap_and_add/Size&inverse_stft_1/overlap_and_add/add_2/y*
_output_shapes
:*
T0
n
,inverse_stft_1/overlap_and_add/concat_2/axisConst*
_output_shapes
: *
value	B : *
dtype0
?
'inverse_stft_1/overlap_and_add/concat_2ConcatV2$inverse_stft_1/overlap_and_add/range$inverse_stft_1/overlap_and_add/add_2,inverse_stft_1/overlap_and_add/concat_2/axis*
_output_shapes
:*
T0*
N
?
(inverse_stft_1/overlap_and_add/transpose	Transpose&inverse_stft_1/overlap_and_add/Reshape'inverse_stft_1/overlap_and_add/concat_2*
T0*9
_output_shapes'
%:#???????????????????
?
$inverse_stft_1/overlap_and_add/add_3Add.inverse_stft_1/overlap_and_add/strided_slice_2$inverse_stft_1/overlap_and_add/Neg_1*
T0*
_output_shapes
: 
?
$inverse_stft_1/overlap_and_add/mul_2Mul$inverse_stft_1/overlap_and_add/add_3$inverse_stft_1/overlap_and_add/Neg_1*
_output_shapes
: *
T0
?
0inverse_stft_1/overlap_and_add/concat_3/values_1Pack$inverse_stft_1/overlap_and_add/mul_2inverse_stft_1/frame_step*
_output_shapes
:*
T0*
N
n
,inverse_stft_1/overlap_and_add/concat_3/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
'inverse_stft_1/overlap_and_add/concat_3ConcatV2,inverse_stft_1/overlap_and_add/strided_slice0inverse_stft_1/overlap_and_add/concat_3/values_1,inverse_stft_1/overlap_and_add/concat_3/axis*
T0*
N*
_output_shapes
:
?
(inverse_stft_1/overlap_and_add/Reshape_1Reshape(inverse_stft_1/overlap_and_add/transpose'inverse_stft_1/overlap_and_add/concat_3*
T0*,
_output_shapes
:??????????
?
$inverse_stft_1/overlap_and_add/add_4Add.inverse_stft_1/overlap_and_add/strided_slice_2$inverse_stft_1/overlap_and_add/Neg_1*
_output_shapes
: *
T0
h
&inverse_stft_1/overlap_and_add/sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
$inverse_stft_1/overlap_and_add/sub_2Sub$inverse_stft_1/overlap_and_add/add_4&inverse_stft_1/overlap_and_add/sub_2/y*
_output_shapes
: *
T0
?
$inverse_stft_1/overlap_and_add/mul_3Mul$inverse_stft_1/overlap_and_add/sub_2$inverse_stft_1/overlap_and_add/Neg_1*
T0*
_output_shapes
: 
?
4inverse_stft_1/overlap_and_add/strided_slice_3/stackConst*!
valueB"            *
dtype0*
_output_shapes
:
z
8inverse_stft_1/overlap_and_add/strided_slice_3/stack_1/0Const*
value	B : *
dtype0*
_output_shapes
: 
z
8inverse_stft_1/overlap_and_add/strided_slice_3/stack_1/2Const*
dtype0*
_output_shapes
: *
value	B : 
?
6inverse_stft_1/overlap_and_add/strided_slice_3/stack_1Pack8inverse_stft_1/overlap_and_add/strided_slice_3/stack_1/0$inverse_stft_1/overlap_and_add/mul_38inverse_stft_1/overlap_and_add/strided_slice_3/stack_1/2*
T0*
N*
_output_shapes
:
?
6inverse_stft_1/overlap_and_add/strided_slice_3/stack_2Const*!
valueB"         *
dtype0*
_output_shapes
:
?
.inverse_stft_1/overlap_and_add/strided_slice_3StridedSlice(inverse_stft_1/overlap_and_add/Reshape_14inverse_stft_1/overlap_and_add/strided_slice_3/stack6inverse_stft_1/overlap_and_add/strided_slice_3/stack_16inverse_stft_1/overlap_and_add/strided_slice_3/stack_2*

begin_mask*
ellipsis_mask*
end_mask*,
_output_shapes
:??????????*
Index0*
T0
?
$inverse_stft_1/overlap_and_add/add_5Add.inverse_stft_1/overlap_and_add/strided_slice_2$inverse_stft_1/overlap_and_add/Neg_1*
T0*
_output_shapes
: 
h
&inverse_stft_1/overlap_and_add/sub_3/yConst*
dtype0*
_output_shapes
: *
value	B :
?
$inverse_stft_1/overlap_and_add/sub_3Sub$inverse_stft_1/overlap_and_add/add_5&inverse_stft_1/overlap_and_add/sub_3/y*
_output_shapes
: *
T0
?
0inverse_stft_1/overlap_and_add/concat_4/values_1Pack$inverse_stft_1/overlap_and_add/Neg_1$inverse_stft_1/overlap_and_add/sub_3inverse_stft_1/frame_step*
N*
_output_shapes
:*
T0
n
,inverse_stft_1/overlap_and_add/concat_4/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
'inverse_stft_1/overlap_and_add/concat_4ConcatV2,inverse_stft_1/overlap_and_add/strided_slice0inverse_stft_1/overlap_and_add/concat_4/values_1,inverse_stft_1/overlap_and_add/concat_4/axis*
T0*
N*
_output_shapes
:
?
(inverse_stft_1/overlap_and_add/Reshape_2Reshape.inverse_stft_1/overlap_and_add/strided_slice_3'inverse_stft_1/overlap_and_add/concat_4*9
_output_shapes'
%:#???????????????????*
T0

4inverse_stft_1/overlap_and_add/Sum/reduction_indicesConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
"inverse_stft_1/overlap_and_add/SumSum(inverse_stft_1/overlap_and_add/Reshape_24inverse_stft_1/overlap_and_add/Sum/reduction_indices*,
_output_shapes
:??????????*
T0
?
$inverse_stft_1/overlap_and_add/add_6Add.inverse_stft_1/overlap_and_add/strided_slice_2$inverse_stft_1/overlap_and_add/Neg_1*
_output_shapes
: *
T0
h
&inverse_stft_1/overlap_and_add/sub_4/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
$inverse_stft_1/overlap_and_add/sub_4Sub$inverse_stft_1/overlap_and_add/add_6&inverse_stft_1/overlap_and_add/sub_4/y*
T0*
_output_shapes
: 
?
$inverse_stft_1/overlap_and_add/mul_4Mul$inverse_stft_1/overlap_and_add/sub_4inverse_stft_1/frame_step*
T0*
_output_shapes
: 
?
0inverse_stft_1/overlap_and_add/concat_5/values_1Pack$inverse_stft_1/overlap_and_add/mul_4*
T0*
N*
_output_shapes
:
n
,inverse_stft_1/overlap_and_add/concat_5/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
'inverse_stft_1/overlap_and_add/concat_5ConcatV2,inverse_stft_1/overlap_and_add/strided_slice0inverse_stft_1/overlap_and_add/concat_5/values_1,inverse_stft_1/overlap_and_add/concat_5/axis*
N*
_output_shapes
:*
T0
?
(inverse_stft_1/overlap_and_add/Reshape_3Reshape"inverse_stft_1/overlap_and_add/Sum'inverse_stft_1/overlap_and_add/concat_5*
T0*'
_output_shapes
:?????????
?
4inverse_stft_1/overlap_and_add/strided_slice_4/stackConst*
valueB"        *
dtype0*
_output_shapes
:
z
8inverse_stft_1/overlap_and_add/strided_slice_4/stack_1/0Const*
value	B : *
dtype0*
_output_shapes
: 
?
6inverse_stft_1/overlap_and_add/strided_slice_4/stack_1Pack8inverse_stft_1/overlap_and_add/strided_slice_4/stack_1/0"inverse_stft_1/overlap_and_add/add*
T0*
N*
_output_shapes
:
?
6inverse_stft_1/overlap_and_add/strided_slice_4/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
.inverse_stft_1/overlap_and_add/strided_slice_4StridedSlice(inverse_stft_1/overlap_and_add/Reshape_34inverse_stft_1/overlap_and_add/strided_slice_4/stack6inverse_stft_1/overlap_and_add/strided_slice_4/stack_16inverse_stft_1/overlap_and_add/strided_slice_4/stack_2*
T0*
Index0*

begin_mask*
ellipsis_mask*'
_output_shapes
:?????????
L
mul_5/yConst*
valueB
 *??*?*
dtype0*
_output_shapes
: 
w
mul_5Mul.inverse_stft_1/overlap_and_add/strided_slice_4mul_5/y*
T0*'
_output_shapes
:?????????
a
transpose_5/permConst*
valueB"       *
dtype0*
_output_shapes
:
c
transpose_5	Transposemul_5transpose_5/perm*'
_output_shapes
:?????????*
T0
C
Shape_10ShapePlaceholder*
T0*
_output_shapes
:
`
strided_slice_22/stackConst*
valueB: *
dtype0*
_output_shapes
:
b
strided_slice_22/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_22/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
strided_slice_22StridedSliceShape_10strided_slice_22/stackstrided_slice_22/stack_1strided_slice_22/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
g
strided_slice_23/stackConst*
_output_shapes
:*
valueB"        *
dtype0
\
strided_slice_23/stack_1/1Const*
value	B : *
dtype0*
_output_shapes
: 
|
strided_slice_23/stack_1Packstrided_slice_22strided_slice_23/stack_1/1*
T0*
N*
_output_shapes
:
i
strided_slice_23/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
?
strided_slice_23StridedSlicetranspose_5strided_slice_23/stackstrided_slice_23/stack_1strided_slice_23/stack_2*
end_mask*'
_output_shapes
:?????????*

begin_mask*
T0*
Index0

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
?
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_81698a3cc0314662867327a0fcda9143/part*
dtype0*
_output_shapes
: 
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
N
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
?
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
?"
save/SaveV2/tensor_namesConst"/device:CPU:0*?!
value?!B?!?Bbatch_normalization/betaBbatch_normalization/gammaBbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/gammaB!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBbatch_normalization_10/betaBbatch_normalization_10/gammaB"batch_normalization_10/moving_meanB&batch_normalization_10/moving_varianceBbatch_normalization_11/betaBbatch_normalization_11/gammaB"batch_normalization_11/moving_meanB&batch_normalization_11/moving_varianceBbatch_normalization_12/betaBbatch_normalization_12/gammaB"batch_normalization_12/moving_meanB&batch_normalization_12/moving_varianceBbatch_normalization_13/betaBbatch_normalization_13/gammaB"batch_normalization_13/moving_meanB&batch_normalization_13/moving_varianceBbatch_normalization_14/betaBbatch_normalization_14/gammaB"batch_normalization_14/moving_meanB&batch_normalization_14/moving_varianceBbatch_normalization_15/betaBbatch_normalization_15/gammaB"batch_normalization_15/moving_meanB&batch_normalization_15/moving_varianceBbatch_normalization_16/betaBbatch_normalization_16/gammaB"batch_normalization_16/moving_meanB&batch_normalization_16/moving_varianceBbatch_normalization_17/betaBbatch_normalization_17/gammaB"batch_normalization_17/moving_meanB&batch_normalization_17/moving_varianceBbatch_normalization_18/betaBbatch_normalization_18/gammaB"batch_normalization_18/moving_meanB&batch_normalization_18/moving_varianceBbatch_normalization_19/betaBbatch_normalization_19/gammaB"batch_normalization_19/moving_meanB&batch_normalization_19/moving_varianceBbatch_normalization_2/betaBbatch_normalization_2/gammaB!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBbatch_normalization_20/betaBbatch_normalization_20/gammaB"batch_normalization_20/moving_meanB&batch_normalization_20/moving_varianceBbatch_normalization_21/betaBbatch_normalization_21/gammaB"batch_normalization_21/moving_meanB&batch_normalization_21/moving_varianceBbatch_normalization_22/betaBbatch_normalization_22/gammaB"batch_normalization_22/moving_meanB&batch_normalization_22/moving_varianceBbatch_normalization_23/betaBbatch_normalization_23/gammaB"batch_normalization_23/moving_meanB&batch_normalization_23/moving_varianceBbatch_normalization_3/betaBbatch_normalization_3/gammaB!batch_normalization_3/moving_meanB%batch_normalization_3/moving_varianceBbatch_normalization_4/betaBbatch_normalization_4/gammaB!batch_normalization_4/moving_meanB%batch_normalization_4/moving_varianceBbatch_normalization_5/betaBbatch_normalization_5/gammaB!batch_normalization_5/moving_meanB%batch_normalization_5/moving_varianceBbatch_normalization_6/betaBbatch_normalization_6/gammaB!batch_normalization_6/moving_meanB%batch_normalization_6/moving_varianceBbatch_normalization_7/betaBbatch_normalization_7/gammaB!batch_normalization_7/moving_meanB%batch_normalization_7/moving_varianceBbatch_normalization_8/betaBbatch_normalization_8/gammaB!batch_normalization_8/moving_meanB%batch_normalization_8/moving_varianceBbatch_normalization_9/betaBbatch_normalization_9/gammaB!batch_normalization_9/moving_meanB%batch_normalization_9/moving_varianceBconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_10/biasBconv2d_10/kernelBconv2d_11/biasBconv2d_11/kernelBconv2d_12/biasBconv2d_12/kernelBconv2d_13/biasBconv2d_13/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_3/biasBconv2d_3/kernelBconv2d_4/biasBconv2d_4/kernelBconv2d_5/biasBconv2d_5/kernelBconv2d_6/biasBconv2d_6/kernelBconv2d_7/biasBconv2d_7/kernelBconv2d_8/biasBconv2d_8/kernelBconv2d_9/biasBconv2d_9/kernelBconv2d_transpose/biasBconv2d_transpose/kernelBconv2d_transpose_1/biasBconv2d_transpose_1/kernelBconv2d_transpose_10/biasBconv2d_transpose_10/kernelBconv2d_transpose_11/biasBconv2d_transpose_11/kernelBconv2d_transpose_2/biasBconv2d_transpose_2/kernelBconv2d_transpose_3/biasBconv2d_transpose_3/kernelBconv2d_transpose_4/biasBconv2d_transpose_4/kernelBconv2d_transpose_5/biasBconv2d_transpose_5/kernelBconv2d_transpose_6/biasBconv2d_transpose_6/kernelBconv2d_transpose_7/biasBconv2d_transpose_7/kernelBconv2d_transpose_8/biasBconv2d_transpose_8/kernelBconv2d_transpose_9/biasBconv2d_transpose_9/kernelBglobal_step*
dtype0*
_output_shapes	
:?
?
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:?*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
?:
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices,batch_normalization/beta/Read/ReadVariableOp-batch_normalization/gamma/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp/batch_normalization_1/gamma/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOp/batch_normalization_10/beta/Read/ReadVariableOp0batch_normalization_10/gamma/Read/ReadVariableOp6batch_normalization_10/moving_mean/Read/ReadVariableOp:batch_normalization_10/moving_variance/Read/ReadVariableOp/batch_normalization_11/beta/Read/ReadVariableOp0batch_normalization_11/gamma/Read/ReadVariableOp6batch_normalization_11/moving_mean/Read/ReadVariableOp:batch_normalization_11/moving_variance/Read/ReadVariableOp/batch_normalization_12/beta/Read/ReadVariableOp0batch_normalization_12/gamma/Read/ReadVariableOp6batch_normalization_12/moving_mean/Read/ReadVariableOp:batch_normalization_12/moving_variance/Read/ReadVariableOp/batch_normalization_13/beta/Read/ReadVariableOp0batch_normalization_13/gamma/Read/ReadVariableOp6batch_normalization_13/moving_mean/Read/ReadVariableOp:batch_normalization_13/moving_variance/Read/ReadVariableOp/batch_normalization_14/beta/Read/ReadVariableOp0batch_normalization_14/gamma/Read/ReadVariableOp6batch_normalization_14/moving_mean/Read/ReadVariableOp:batch_normalization_14/moving_variance/Read/ReadVariableOp/batch_normalization_15/beta/Read/ReadVariableOp0batch_normalization_15/gamma/Read/ReadVariableOp6batch_normalization_15/moving_mean/Read/ReadVariableOp:batch_normalization_15/moving_variance/Read/ReadVariableOp/batch_normalization_16/beta/Read/ReadVariableOp0batch_normalization_16/gamma/Read/ReadVariableOp6batch_normalization_16/moving_mean/Read/ReadVariableOp:batch_normalization_16/moving_variance/Read/ReadVariableOp/batch_normalization_17/beta/Read/ReadVariableOp0batch_normalization_17/gamma/Read/ReadVariableOp6batch_normalization_17/moving_mean/Read/ReadVariableOp:batch_normalization_17/moving_variance/Read/ReadVariableOp/batch_normalization_18/beta/Read/ReadVariableOp0batch_normalization_18/gamma/Read/ReadVariableOp6batch_normalization_18/moving_mean/Read/ReadVariableOp:batch_normalization_18/moving_variance/Read/ReadVariableOp/batch_normalization_19/beta/Read/ReadVariableOp0batch_normalization_19/gamma/Read/ReadVariableOp6batch_normalization_19/moving_mean/Read/ReadVariableOp:batch_normalization_19/moving_variance/Read/ReadVariableOp.batch_normalization_2/beta/Read/ReadVariableOp/batch_normalization_2/gamma/Read/ReadVariableOp5batch_normalization_2/moving_mean/Read/ReadVariableOp9batch_normalization_2/moving_variance/Read/ReadVariableOp/batch_normalization_20/beta/Read/ReadVariableOp0batch_normalization_20/gamma/Read/ReadVariableOp6batch_normalization_20/moving_mean/Read/ReadVariableOp:batch_normalization_20/moving_variance/Read/ReadVariableOp/batch_normalization_21/beta/Read/ReadVariableOp0batch_normalization_21/gamma/Read/ReadVariableOp6batch_normalization_21/moving_mean/Read/ReadVariableOp:batch_normalization_21/moving_variance/Read/ReadVariableOp/batch_normalization_22/beta/Read/ReadVariableOp0batch_normalization_22/gamma/Read/ReadVariableOp6batch_normalization_22/moving_mean/Read/ReadVariableOp:batch_normalization_22/moving_variance/Read/ReadVariableOp/batch_normalization_23/beta/Read/ReadVariableOp0batch_normalization_23/gamma/Read/ReadVariableOp6batch_normalization_23/moving_mean/Read/ReadVariableOp:batch_normalization_23/moving_variance/Read/ReadVariableOp.batch_normalization_3/beta/Read/ReadVariableOp/batch_normalization_3/gamma/Read/ReadVariableOp5batch_normalization_3/moving_mean/Read/ReadVariableOp9batch_normalization_3/moving_variance/Read/ReadVariableOp.batch_normalization_4/beta/Read/ReadVariableOp/batch_normalization_4/gamma/Read/ReadVariableOp5batch_normalization_4/moving_mean/Read/ReadVariableOp9batch_normalization_4/moving_variance/Read/ReadVariableOp.batch_normalization_5/beta/Read/ReadVariableOp/batch_normalization_5/gamma/Read/ReadVariableOp5batch_normalization_5/moving_mean/Read/ReadVariableOp9batch_normalization_5/moving_variance/Read/ReadVariableOp.batch_normalization_6/beta/Read/ReadVariableOp/batch_normalization_6/gamma/Read/ReadVariableOp5batch_normalization_6/moving_mean/Read/ReadVariableOp9batch_normalization_6/moving_variance/Read/ReadVariableOp.batch_normalization_7/beta/Read/ReadVariableOp/batch_normalization_7/gamma/Read/ReadVariableOp5batch_normalization_7/moving_mean/Read/ReadVariableOp9batch_normalization_7/moving_variance/Read/ReadVariableOp.batch_normalization_8/beta/Read/ReadVariableOp/batch_normalization_8/gamma/Read/ReadVariableOp5batch_normalization_8/moving_mean/Read/ReadVariableOp9batch_normalization_8/moving_variance/Read/ReadVariableOp.batch_normalization_9/beta/Read/ReadVariableOp/batch_normalization_9/gamma/Read/ReadVariableOp5batch_normalization_9/moving_mean/Read/ReadVariableOp9batch_normalization_9/moving_variance/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp"conv2d_10/bias/Read/ReadVariableOp$conv2d_10/kernel/Read/ReadVariableOp"conv2d_11/bias/Read/ReadVariableOp$conv2d_11/kernel/Read/ReadVariableOp"conv2d_12/bias/Read/ReadVariableOp$conv2d_12/kernel/Read/ReadVariableOp"conv2d_13/bias/Read/ReadVariableOp$conv2d_13/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOp#conv2d_6/kernel/Read/ReadVariableOp!conv2d_7/bias/Read/ReadVariableOp#conv2d_7/kernel/Read/ReadVariableOp!conv2d_8/bias/Read/ReadVariableOp#conv2d_8/kernel/Read/ReadVariableOp!conv2d_9/bias/Read/ReadVariableOp#conv2d_9/kernel/Read/ReadVariableOp)conv2d_transpose/bias/Read/ReadVariableOp+conv2d_transpose/kernel/Read/ReadVariableOp+conv2d_transpose_1/bias/Read/ReadVariableOp-conv2d_transpose_1/kernel/Read/ReadVariableOp,conv2d_transpose_10/bias/Read/ReadVariableOp.conv2d_transpose_10/kernel/Read/ReadVariableOp,conv2d_transpose_11/bias/Read/ReadVariableOp.conv2d_transpose_11/kernel/Read/ReadVariableOp+conv2d_transpose_2/bias/Read/ReadVariableOp-conv2d_transpose_2/kernel/Read/ReadVariableOp+conv2d_transpose_3/bias/Read/ReadVariableOp-conv2d_transpose_3/kernel/Read/ReadVariableOp+conv2d_transpose_4/bias/Read/ReadVariableOp-conv2d_transpose_4/kernel/Read/ReadVariableOp+conv2d_transpose_5/bias/Read/ReadVariableOp-conv2d_transpose_5/kernel/Read/ReadVariableOp+conv2d_transpose_6/bias/Read/ReadVariableOp-conv2d_transpose_6/kernel/Read/ReadVariableOp+conv2d_transpose_7/bias/Read/ReadVariableOp-conv2d_transpose_7/kernel/Read/ReadVariableOp+conv2d_transpose_8/bias/Read/ReadVariableOp-conv2d_transpose_8/kernel/Read/ReadVariableOp+conv2d_transpose_9/bias/Read/ReadVariableOp-conv2d_transpose_9/kernel/Read/ReadVariableOpglobal_step"/device:CPU:0*?
dtypes?
?2?	
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*
N*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
?
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
?"
save/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes	
:?*?!
value?!B?!?Bbatch_normalization/betaBbatch_normalization/gammaBbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/gammaB!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBbatch_normalization_10/betaBbatch_normalization_10/gammaB"batch_normalization_10/moving_meanB&batch_normalization_10/moving_varianceBbatch_normalization_11/betaBbatch_normalization_11/gammaB"batch_normalization_11/moving_meanB&batch_normalization_11/moving_varianceBbatch_normalization_12/betaBbatch_normalization_12/gammaB"batch_normalization_12/moving_meanB&batch_normalization_12/moving_varianceBbatch_normalization_13/betaBbatch_normalization_13/gammaB"batch_normalization_13/moving_meanB&batch_normalization_13/moving_varianceBbatch_normalization_14/betaBbatch_normalization_14/gammaB"batch_normalization_14/moving_meanB&batch_normalization_14/moving_varianceBbatch_normalization_15/betaBbatch_normalization_15/gammaB"batch_normalization_15/moving_meanB&batch_normalization_15/moving_varianceBbatch_normalization_16/betaBbatch_normalization_16/gammaB"batch_normalization_16/moving_meanB&batch_normalization_16/moving_varianceBbatch_normalization_17/betaBbatch_normalization_17/gammaB"batch_normalization_17/moving_meanB&batch_normalization_17/moving_varianceBbatch_normalization_18/betaBbatch_normalization_18/gammaB"batch_normalization_18/moving_meanB&batch_normalization_18/moving_varianceBbatch_normalization_19/betaBbatch_normalization_19/gammaB"batch_normalization_19/moving_meanB&batch_normalization_19/moving_varianceBbatch_normalization_2/betaBbatch_normalization_2/gammaB!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBbatch_normalization_20/betaBbatch_normalization_20/gammaB"batch_normalization_20/moving_meanB&batch_normalization_20/moving_varianceBbatch_normalization_21/betaBbatch_normalization_21/gammaB"batch_normalization_21/moving_meanB&batch_normalization_21/moving_varianceBbatch_normalization_22/betaBbatch_normalization_22/gammaB"batch_normalization_22/moving_meanB&batch_normalization_22/moving_varianceBbatch_normalization_23/betaBbatch_normalization_23/gammaB"batch_normalization_23/moving_meanB&batch_normalization_23/moving_varianceBbatch_normalization_3/betaBbatch_normalization_3/gammaB!batch_normalization_3/moving_meanB%batch_normalization_3/moving_varianceBbatch_normalization_4/betaBbatch_normalization_4/gammaB!batch_normalization_4/moving_meanB%batch_normalization_4/moving_varianceBbatch_normalization_5/betaBbatch_normalization_5/gammaB!batch_normalization_5/moving_meanB%batch_normalization_5/moving_varianceBbatch_normalization_6/betaBbatch_normalization_6/gammaB!batch_normalization_6/moving_meanB%batch_normalization_6/moving_varianceBbatch_normalization_7/betaBbatch_normalization_7/gammaB!batch_normalization_7/moving_meanB%batch_normalization_7/moving_varianceBbatch_normalization_8/betaBbatch_normalization_8/gammaB!batch_normalization_8/moving_meanB%batch_normalization_8/moving_varianceBbatch_normalization_9/betaBbatch_normalization_9/gammaB!batch_normalization_9/moving_meanB%batch_normalization_9/moving_varianceBconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_10/biasBconv2d_10/kernelBconv2d_11/biasBconv2d_11/kernelBconv2d_12/biasBconv2d_12/kernelBconv2d_13/biasBconv2d_13/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_3/biasBconv2d_3/kernelBconv2d_4/biasBconv2d_4/kernelBconv2d_5/biasBconv2d_5/kernelBconv2d_6/biasBconv2d_6/kernelBconv2d_7/biasBconv2d_7/kernelBconv2d_8/biasBconv2d_8/kernelBconv2d_9/biasBconv2d_9/kernelBconv2d_transpose/biasBconv2d_transpose/kernelBconv2d_transpose_1/biasBconv2d_transpose_1/kernelBconv2d_transpose_10/biasBconv2d_transpose_10/kernelBconv2d_transpose_11/biasBconv2d_transpose_11/kernelBconv2d_transpose_2/biasBconv2d_transpose_2/kernelBconv2d_transpose_3/biasBconv2d_transpose_3/kernelBconv2d_transpose_4/biasBconv2d_transpose_4/kernelBconv2d_transpose_5/biasBconv2d_transpose_5/kernelBconv2d_transpose_6/biasBconv2d_transpose_6/kernelBconv2d_transpose_7/biasBconv2d_transpose_7/kernelBconv2d_transpose_8/biasBconv2d_transpose_8/kernelBconv2d_transpose_9/biasBconv2d_transpose_9/kernelBglobal_step
?
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:?*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypes?
?2?	
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
a
save/AssignVariableOpAssignVariableOpbatch_normalization/betasave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
d
save/AssignVariableOp_1AssignVariableOpbatch_normalization/gammasave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
_output_shapes
:*
T0
j
save/AssignVariableOp_2AssignVariableOpbatch_normalization/moving_meansave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0*
_output_shapes
:
n
save/AssignVariableOp_3AssignVariableOp#batch_normalization/moving_variancesave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
e
save/AssignVariableOp_4AssignVariableOpbatch_normalization_1/betasave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
_output_shapes
:*
T0
f
save/AssignVariableOp_5AssignVariableOpbatch_normalization_1/gammasave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
l
save/AssignVariableOp_6AssignVariableOp!batch_normalization_1/moving_meansave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
p
save/AssignVariableOp_7AssignVariableOp%batch_normalization_1/moving_variancesave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
_output_shapes
:*
T0
f
save/AssignVariableOp_8AssignVariableOpbatch_normalization_10/betasave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
h
save/AssignVariableOp_9AssignVariableOpbatch_normalization_10/gammasave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
_output_shapes
:*
T0
o
save/AssignVariableOp_10AssignVariableOp"batch_normalization_10/moving_meansave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
_output_shapes
:*
T0
s
save/AssignVariableOp_11AssignVariableOp&batch_normalization_10/moving_variancesave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
h
save/AssignVariableOp_12AssignVariableOpbatch_normalization_11/betasave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
i
save/AssignVariableOp_13AssignVariableOpbatch_normalization_11/gammasave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:
o
save/AssignVariableOp_14AssignVariableOp"batch_normalization_11/moving_meansave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
_output_shapes
:*
T0
s
save/AssignVariableOp_15AssignVariableOp&batch_normalization_11/moving_variancesave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
_output_shapes
:*
T0
h
save/AssignVariableOp_16AssignVariableOpbatch_normalization_12/betasave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:
i
save/AssignVariableOp_17AssignVariableOpbatch_normalization_12/gammasave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
T0*
_output_shapes
:
o
save/AssignVariableOp_18AssignVariableOp"batch_normalization_12/moving_meansave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
s
save/AssignVariableOp_19AssignVariableOp&batch_normalization_12/moving_variancesave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
T0*
_output_shapes
:
h
save/AssignVariableOp_20AssignVariableOpbatch_normalization_13/betasave/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:21*
_output_shapes
:*
T0
i
save/AssignVariableOp_21AssignVariableOpbatch_normalization_13/gammasave/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:22*
T0*
_output_shapes
:
o
save/AssignVariableOp_22AssignVariableOp"batch_normalization_13/moving_meansave/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:23*
T0*
_output_shapes
:
s
save/AssignVariableOp_23AssignVariableOp&batch_normalization_13/moving_variancesave/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:24*
T0*
_output_shapes
:
h
save/AssignVariableOp_24AssignVariableOpbatch_normalization_14/betasave/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:25*
_output_shapes
:*
T0
i
save/AssignVariableOp_25AssignVariableOpbatch_normalization_14/gammasave/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:26*
_output_shapes
:*
T0
o
save/AssignVariableOp_26AssignVariableOp"batch_normalization_14/moving_meansave/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:27*
T0*
_output_shapes
:
s
save/AssignVariableOp_27AssignVariableOp&batch_normalization_14/moving_variancesave/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:28*
_output_shapes
:*
T0
h
save/AssignVariableOp_28AssignVariableOpbatch_normalization_15/betasave/Identity_29*
dtype0
R
save/Identity_30Identitysave/RestoreV2:29*
T0*
_output_shapes
:
i
save/AssignVariableOp_29AssignVariableOpbatch_normalization_15/gammasave/Identity_30*
dtype0
R
save/Identity_31Identitysave/RestoreV2:30*
_output_shapes
:*
T0
o
save/AssignVariableOp_30AssignVariableOp"batch_normalization_15/moving_meansave/Identity_31*
dtype0
R
save/Identity_32Identitysave/RestoreV2:31*
T0*
_output_shapes
:
s
save/AssignVariableOp_31AssignVariableOp&batch_normalization_15/moving_variancesave/Identity_32*
dtype0
R
save/Identity_33Identitysave/RestoreV2:32*
_output_shapes
:*
T0
h
save/AssignVariableOp_32AssignVariableOpbatch_normalization_16/betasave/Identity_33*
dtype0
R
save/Identity_34Identitysave/RestoreV2:33*
_output_shapes
:*
T0
i
save/AssignVariableOp_33AssignVariableOpbatch_normalization_16/gammasave/Identity_34*
dtype0
R
save/Identity_35Identitysave/RestoreV2:34*
T0*
_output_shapes
:
o
save/AssignVariableOp_34AssignVariableOp"batch_normalization_16/moving_meansave/Identity_35*
dtype0
R
save/Identity_36Identitysave/RestoreV2:35*
_output_shapes
:*
T0
s
save/AssignVariableOp_35AssignVariableOp&batch_normalization_16/moving_variancesave/Identity_36*
dtype0
R
save/Identity_37Identitysave/RestoreV2:36*
_output_shapes
:*
T0
h
save/AssignVariableOp_36AssignVariableOpbatch_normalization_17/betasave/Identity_37*
dtype0
R
save/Identity_38Identitysave/RestoreV2:37*
T0*
_output_shapes
:
i
save/AssignVariableOp_37AssignVariableOpbatch_normalization_17/gammasave/Identity_38*
dtype0
R
save/Identity_39Identitysave/RestoreV2:38*
T0*
_output_shapes
:
o
save/AssignVariableOp_38AssignVariableOp"batch_normalization_17/moving_meansave/Identity_39*
dtype0
R
save/Identity_40Identitysave/RestoreV2:39*
_output_shapes
:*
T0
s
save/AssignVariableOp_39AssignVariableOp&batch_normalization_17/moving_variancesave/Identity_40*
dtype0
R
save/Identity_41Identitysave/RestoreV2:40*
_output_shapes
:*
T0
h
save/AssignVariableOp_40AssignVariableOpbatch_normalization_18/betasave/Identity_41*
dtype0
R
save/Identity_42Identitysave/RestoreV2:41*
T0*
_output_shapes
:
i
save/AssignVariableOp_41AssignVariableOpbatch_normalization_18/gammasave/Identity_42*
dtype0
R
save/Identity_43Identitysave/RestoreV2:42*
_output_shapes
:*
T0
o
save/AssignVariableOp_42AssignVariableOp"batch_normalization_18/moving_meansave/Identity_43*
dtype0
R
save/Identity_44Identitysave/RestoreV2:43*
T0*
_output_shapes
:
s
save/AssignVariableOp_43AssignVariableOp&batch_normalization_18/moving_variancesave/Identity_44*
dtype0
R
save/Identity_45Identitysave/RestoreV2:44*
_output_shapes
:*
T0
h
save/AssignVariableOp_44AssignVariableOpbatch_normalization_19/betasave/Identity_45*
dtype0
R
save/Identity_46Identitysave/RestoreV2:45*
T0*
_output_shapes
:
i
save/AssignVariableOp_45AssignVariableOpbatch_normalization_19/gammasave/Identity_46*
dtype0
R
save/Identity_47Identitysave/RestoreV2:46*
T0*
_output_shapes
:
o
save/AssignVariableOp_46AssignVariableOp"batch_normalization_19/moving_meansave/Identity_47*
dtype0
R
save/Identity_48Identitysave/RestoreV2:47*
_output_shapes
:*
T0
s
save/AssignVariableOp_47AssignVariableOp&batch_normalization_19/moving_variancesave/Identity_48*
dtype0
R
save/Identity_49Identitysave/RestoreV2:48*
_output_shapes
:*
T0
g
save/AssignVariableOp_48AssignVariableOpbatch_normalization_2/betasave/Identity_49*
dtype0
R
save/Identity_50Identitysave/RestoreV2:49*
T0*
_output_shapes
:
h
save/AssignVariableOp_49AssignVariableOpbatch_normalization_2/gammasave/Identity_50*
dtype0
R
save/Identity_51Identitysave/RestoreV2:50*
T0*
_output_shapes
:
n
save/AssignVariableOp_50AssignVariableOp!batch_normalization_2/moving_meansave/Identity_51*
dtype0
R
save/Identity_52Identitysave/RestoreV2:51*
T0*
_output_shapes
:
r
save/AssignVariableOp_51AssignVariableOp%batch_normalization_2/moving_variancesave/Identity_52*
dtype0
R
save/Identity_53Identitysave/RestoreV2:52*
_output_shapes
:*
T0
h
save/AssignVariableOp_52AssignVariableOpbatch_normalization_20/betasave/Identity_53*
dtype0
R
save/Identity_54Identitysave/RestoreV2:53*
T0*
_output_shapes
:
i
save/AssignVariableOp_53AssignVariableOpbatch_normalization_20/gammasave/Identity_54*
dtype0
R
save/Identity_55Identitysave/RestoreV2:54*
_output_shapes
:*
T0
o
save/AssignVariableOp_54AssignVariableOp"batch_normalization_20/moving_meansave/Identity_55*
dtype0
R
save/Identity_56Identitysave/RestoreV2:55*
T0*
_output_shapes
:
s
save/AssignVariableOp_55AssignVariableOp&batch_normalization_20/moving_variancesave/Identity_56*
dtype0
R
save/Identity_57Identitysave/RestoreV2:56*
T0*
_output_shapes
:
h
save/AssignVariableOp_56AssignVariableOpbatch_normalization_21/betasave/Identity_57*
dtype0
R
save/Identity_58Identitysave/RestoreV2:57*
T0*
_output_shapes
:
i
save/AssignVariableOp_57AssignVariableOpbatch_normalization_21/gammasave/Identity_58*
dtype0
R
save/Identity_59Identitysave/RestoreV2:58*
T0*
_output_shapes
:
o
save/AssignVariableOp_58AssignVariableOp"batch_normalization_21/moving_meansave/Identity_59*
dtype0
R
save/Identity_60Identitysave/RestoreV2:59*
_output_shapes
:*
T0
s
save/AssignVariableOp_59AssignVariableOp&batch_normalization_21/moving_variancesave/Identity_60*
dtype0
R
save/Identity_61Identitysave/RestoreV2:60*
_output_shapes
:*
T0
h
save/AssignVariableOp_60AssignVariableOpbatch_normalization_22/betasave/Identity_61*
dtype0
R
save/Identity_62Identitysave/RestoreV2:61*
_output_shapes
:*
T0
i
save/AssignVariableOp_61AssignVariableOpbatch_normalization_22/gammasave/Identity_62*
dtype0
R
save/Identity_63Identitysave/RestoreV2:62*
T0*
_output_shapes
:
o
save/AssignVariableOp_62AssignVariableOp"batch_normalization_22/moving_meansave/Identity_63*
dtype0
R
save/Identity_64Identitysave/RestoreV2:63*
T0*
_output_shapes
:
s
save/AssignVariableOp_63AssignVariableOp&batch_normalization_22/moving_variancesave/Identity_64*
dtype0
R
save/Identity_65Identitysave/RestoreV2:64*
T0*
_output_shapes
:
h
save/AssignVariableOp_64AssignVariableOpbatch_normalization_23/betasave/Identity_65*
dtype0
R
save/Identity_66Identitysave/RestoreV2:65*
T0*
_output_shapes
:
i
save/AssignVariableOp_65AssignVariableOpbatch_normalization_23/gammasave/Identity_66*
dtype0
R
save/Identity_67Identitysave/RestoreV2:66*
T0*
_output_shapes
:
o
save/AssignVariableOp_66AssignVariableOp"batch_normalization_23/moving_meansave/Identity_67*
dtype0
R
save/Identity_68Identitysave/RestoreV2:67*
T0*
_output_shapes
:
s
save/AssignVariableOp_67AssignVariableOp&batch_normalization_23/moving_variancesave/Identity_68*
dtype0
R
save/Identity_69Identitysave/RestoreV2:68*
T0*
_output_shapes
:
g
save/AssignVariableOp_68AssignVariableOpbatch_normalization_3/betasave/Identity_69*
dtype0
R
save/Identity_70Identitysave/RestoreV2:69*
T0*
_output_shapes
:
h
save/AssignVariableOp_69AssignVariableOpbatch_normalization_3/gammasave/Identity_70*
dtype0
R
save/Identity_71Identitysave/RestoreV2:70*
_output_shapes
:*
T0
n
save/AssignVariableOp_70AssignVariableOp!batch_normalization_3/moving_meansave/Identity_71*
dtype0
R
save/Identity_72Identitysave/RestoreV2:71*
T0*
_output_shapes
:
r
save/AssignVariableOp_71AssignVariableOp%batch_normalization_3/moving_variancesave/Identity_72*
dtype0
R
save/Identity_73Identitysave/RestoreV2:72*
T0*
_output_shapes
:
g
save/AssignVariableOp_72AssignVariableOpbatch_normalization_4/betasave/Identity_73*
dtype0
R
save/Identity_74Identitysave/RestoreV2:73*
_output_shapes
:*
T0
h
save/AssignVariableOp_73AssignVariableOpbatch_normalization_4/gammasave/Identity_74*
dtype0
R
save/Identity_75Identitysave/RestoreV2:74*
_output_shapes
:*
T0
n
save/AssignVariableOp_74AssignVariableOp!batch_normalization_4/moving_meansave/Identity_75*
dtype0
R
save/Identity_76Identitysave/RestoreV2:75*
T0*
_output_shapes
:
r
save/AssignVariableOp_75AssignVariableOp%batch_normalization_4/moving_variancesave/Identity_76*
dtype0
R
save/Identity_77Identitysave/RestoreV2:76*
T0*
_output_shapes
:
g
save/AssignVariableOp_76AssignVariableOpbatch_normalization_5/betasave/Identity_77*
dtype0
R
save/Identity_78Identitysave/RestoreV2:77*
T0*
_output_shapes
:
h
save/AssignVariableOp_77AssignVariableOpbatch_normalization_5/gammasave/Identity_78*
dtype0
R
save/Identity_79Identitysave/RestoreV2:78*
T0*
_output_shapes
:
n
save/AssignVariableOp_78AssignVariableOp!batch_normalization_5/moving_meansave/Identity_79*
dtype0
R
save/Identity_80Identitysave/RestoreV2:79*
T0*
_output_shapes
:
r
save/AssignVariableOp_79AssignVariableOp%batch_normalization_5/moving_variancesave/Identity_80*
dtype0
R
save/Identity_81Identitysave/RestoreV2:80*
T0*
_output_shapes
:
g
save/AssignVariableOp_80AssignVariableOpbatch_normalization_6/betasave/Identity_81*
dtype0
R
save/Identity_82Identitysave/RestoreV2:81*
T0*
_output_shapes
:
h
save/AssignVariableOp_81AssignVariableOpbatch_normalization_6/gammasave/Identity_82*
dtype0
R
save/Identity_83Identitysave/RestoreV2:82*
_output_shapes
:*
T0
n
save/AssignVariableOp_82AssignVariableOp!batch_normalization_6/moving_meansave/Identity_83*
dtype0
R
save/Identity_84Identitysave/RestoreV2:83*
T0*
_output_shapes
:
r
save/AssignVariableOp_83AssignVariableOp%batch_normalization_6/moving_variancesave/Identity_84*
dtype0
R
save/Identity_85Identitysave/RestoreV2:84*
T0*
_output_shapes
:
g
save/AssignVariableOp_84AssignVariableOpbatch_normalization_7/betasave/Identity_85*
dtype0
R
save/Identity_86Identitysave/RestoreV2:85*
T0*
_output_shapes
:
h
save/AssignVariableOp_85AssignVariableOpbatch_normalization_7/gammasave/Identity_86*
dtype0
R
save/Identity_87Identitysave/RestoreV2:86*
T0*
_output_shapes
:
n
save/AssignVariableOp_86AssignVariableOp!batch_normalization_7/moving_meansave/Identity_87*
dtype0
R
save/Identity_88Identitysave/RestoreV2:87*
_output_shapes
:*
T0
r
save/AssignVariableOp_87AssignVariableOp%batch_normalization_7/moving_variancesave/Identity_88*
dtype0
R
save/Identity_89Identitysave/RestoreV2:88*
_output_shapes
:*
T0
g
save/AssignVariableOp_88AssignVariableOpbatch_normalization_8/betasave/Identity_89*
dtype0
R
save/Identity_90Identitysave/RestoreV2:89*
T0*
_output_shapes
:
h
save/AssignVariableOp_89AssignVariableOpbatch_normalization_8/gammasave/Identity_90*
dtype0
R
save/Identity_91Identitysave/RestoreV2:90*
_output_shapes
:*
T0
n
save/AssignVariableOp_90AssignVariableOp!batch_normalization_8/moving_meansave/Identity_91*
dtype0
R
save/Identity_92Identitysave/RestoreV2:91*
T0*
_output_shapes
:
r
save/AssignVariableOp_91AssignVariableOp%batch_normalization_8/moving_variancesave/Identity_92*
dtype0
R
save/Identity_93Identitysave/RestoreV2:92*
T0*
_output_shapes
:
g
save/AssignVariableOp_92AssignVariableOpbatch_normalization_9/betasave/Identity_93*
dtype0
R
save/Identity_94Identitysave/RestoreV2:93*
T0*
_output_shapes
:
h
save/AssignVariableOp_93AssignVariableOpbatch_normalization_9/gammasave/Identity_94*
dtype0
R
save/Identity_95Identitysave/RestoreV2:94*
_output_shapes
:*
T0
n
save/AssignVariableOp_94AssignVariableOp!batch_normalization_9/moving_meansave/Identity_95*
dtype0
R
save/Identity_96Identitysave/RestoreV2:95*
T0*
_output_shapes
:
r
save/AssignVariableOp_95AssignVariableOp%batch_normalization_9/moving_variancesave/Identity_96*
dtype0
R
save/Identity_97Identitysave/RestoreV2:96*
_output_shapes
:*
T0
X
save/AssignVariableOp_96AssignVariableOpconv2d/biassave/Identity_97*
dtype0
R
save/Identity_98Identitysave/RestoreV2:97*
T0*
_output_shapes
:
Z
save/AssignVariableOp_97AssignVariableOpconv2d/kernelsave/Identity_98*
dtype0
R
save/Identity_99Identitysave/RestoreV2:98*
_output_shapes
:*
T0
Z
save/AssignVariableOp_98AssignVariableOpconv2d_1/biassave/Identity_99*
dtype0
S
save/Identity_100Identitysave/RestoreV2:99*
T0*
_output_shapes
:
]
save/AssignVariableOp_99AssignVariableOpconv2d_1/kernelsave/Identity_100*
dtype0
T
save/Identity_101Identitysave/RestoreV2:100*
_output_shapes
:*
T0
]
save/AssignVariableOp_100AssignVariableOpconv2d_10/biassave/Identity_101*
dtype0
T
save/Identity_102Identitysave/RestoreV2:101*
_output_shapes
:*
T0
_
save/AssignVariableOp_101AssignVariableOpconv2d_10/kernelsave/Identity_102*
dtype0
T
save/Identity_103Identitysave/RestoreV2:102*
T0*
_output_shapes
:
]
save/AssignVariableOp_102AssignVariableOpconv2d_11/biassave/Identity_103*
dtype0
T
save/Identity_104Identitysave/RestoreV2:103*
_output_shapes
:*
T0
_
save/AssignVariableOp_103AssignVariableOpconv2d_11/kernelsave/Identity_104*
dtype0
T
save/Identity_105Identitysave/RestoreV2:104*
T0*
_output_shapes
:
]
save/AssignVariableOp_104AssignVariableOpconv2d_12/biassave/Identity_105*
dtype0
T
save/Identity_106Identitysave/RestoreV2:105*
T0*
_output_shapes
:
_
save/AssignVariableOp_105AssignVariableOpconv2d_12/kernelsave/Identity_106*
dtype0
T
save/Identity_107Identitysave/RestoreV2:106*
T0*
_output_shapes
:
]
save/AssignVariableOp_106AssignVariableOpconv2d_13/biassave/Identity_107*
dtype0
T
save/Identity_108Identitysave/RestoreV2:107*
T0*
_output_shapes
:
_
save/AssignVariableOp_107AssignVariableOpconv2d_13/kernelsave/Identity_108*
dtype0
T
save/Identity_109Identitysave/RestoreV2:108*
T0*
_output_shapes
:
\
save/AssignVariableOp_108AssignVariableOpconv2d_2/biassave/Identity_109*
dtype0
T
save/Identity_110Identitysave/RestoreV2:109*
T0*
_output_shapes
:
^
save/AssignVariableOp_109AssignVariableOpconv2d_2/kernelsave/Identity_110*
dtype0
T
save/Identity_111Identitysave/RestoreV2:110*
T0*
_output_shapes
:
\
save/AssignVariableOp_110AssignVariableOpconv2d_3/biassave/Identity_111*
dtype0
T
save/Identity_112Identitysave/RestoreV2:111*
_output_shapes
:*
T0
^
save/AssignVariableOp_111AssignVariableOpconv2d_3/kernelsave/Identity_112*
dtype0
T
save/Identity_113Identitysave/RestoreV2:112*
T0*
_output_shapes
:
\
save/AssignVariableOp_112AssignVariableOpconv2d_4/biassave/Identity_113*
dtype0
T
save/Identity_114Identitysave/RestoreV2:113*
T0*
_output_shapes
:
^
save/AssignVariableOp_113AssignVariableOpconv2d_4/kernelsave/Identity_114*
dtype0
T
save/Identity_115Identitysave/RestoreV2:114*
T0*
_output_shapes
:
\
save/AssignVariableOp_114AssignVariableOpconv2d_5/biassave/Identity_115*
dtype0
T
save/Identity_116Identitysave/RestoreV2:115*
T0*
_output_shapes
:
^
save/AssignVariableOp_115AssignVariableOpconv2d_5/kernelsave/Identity_116*
dtype0
T
save/Identity_117Identitysave/RestoreV2:116*
_output_shapes
:*
T0
\
save/AssignVariableOp_116AssignVariableOpconv2d_6/biassave/Identity_117*
dtype0
T
save/Identity_118Identitysave/RestoreV2:117*
T0*
_output_shapes
:
^
save/AssignVariableOp_117AssignVariableOpconv2d_6/kernelsave/Identity_118*
dtype0
T
save/Identity_119Identitysave/RestoreV2:118*
T0*
_output_shapes
:
\
save/AssignVariableOp_118AssignVariableOpconv2d_7/biassave/Identity_119*
dtype0
T
save/Identity_120Identitysave/RestoreV2:119*
_output_shapes
:*
T0
^
save/AssignVariableOp_119AssignVariableOpconv2d_7/kernelsave/Identity_120*
dtype0
T
save/Identity_121Identitysave/RestoreV2:120*
T0*
_output_shapes
:
\
save/AssignVariableOp_120AssignVariableOpconv2d_8/biassave/Identity_121*
dtype0
T
save/Identity_122Identitysave/RestoreV2:121*
_output_shapes
:*
T0
^
save/AssignVariableOp_121AssignVariableOpconv2d_8/kernelsave/Identity_122*
dtype0
T
save/Identity_123Identitysave/RestoreV2:122*
T0*
_output_shapes
:
\
save/AssignVariableOp_122AssignVariableOpconv2d_9/biassave/Identity_123*
dtype0
T
save/Identity_124Identitysave/RestoreV2:123*
T0*
_output_shapes
:
^
save/AssignVariableOp_123AssignVariableOpconv2d_9/kernelsave/Identity_124*
dtype0
T
save/Identity_125Identitysave/RestoreV2:124*
T0*
_output_shapes
:
d
save/AssignVariableOp_124AssignVariableOpconv2d_transpose/biassave/Identity_125*
dtype0
T
save/Identity_126Identitysave/RestoreV2:125*
_output_shapes
:*
T0
f
save/AssignVariableOp_125AssignVariableOpconv2d_transpose/kernelsave/Identity_126*
dtype0
T
save/Identity_127Identitysave/RestoreV2:126*
_output_shapes
:*
T0
f
save/AssignVariableOp_126AssignVariableOpconv2d_transpose_1/biassave/Identity_127*
dtype0
T
save/Identity_128Identitysave/RestoreV2:127*
T0*
_output_shapes
:
h
save/AssignVariableOp_127AssignVariableOpconv2d_transpose_1/kernelsave/Identity_128*
dtype0
T
save/Identity_129Identitysave/RestoreV2:128*
T0*
_output_shapes
:
g
save/AssignVariableOp_128AssignVariableOpconv2d_transpose_10/biassave/Identity_129*
dtype0
T
save/Identity_130Identitysave/RestoreV2:129*
_output_shapes
:*
T0
i
save/AssignVariableOp_129AssignVariableOpconv2d_transpose_10/kernelsave/Identity_130*
dtype0
T
save/Identity_131Identitysave/RestoreV2:130*
_output_shapes
:*
T0
g
save/AssignVariableOp_130AssignVariableOpconv2d_transpose_11/biassave/Identity_131*
dtype0
T
save/Identity_132Identitysave/RestoreV2:131*
T0*
_output_shapes
:
i
save/AssignVariableOp_131AssignVariableOpconv2d_transpose_11/kernelsave/Identity_132*
dtype0
T
save/Identity_133Identitysave/RestoreV2:132*
_output_shapes
:*
T0
f
save/AssignVariableOp_132AssignVariableOpconv2d_transpose_2/biassave/Identity_133*
dtype0
T
save/Identity_134Identitysave/RestoreV2:133*
T0*
_output_shapes
:
h
save/AssignVariableOp_133AssignVariableOpconv2d_transpose_2/kernelsave/Identity_134*
dtype0
T
save/Identity_135Identitysave/RestoreV2:134*
_output_shapes
:*
T0
f
save/AssignVariableOp_134AssignVariableOpconv2d_transpose_3/biassave/Identity_135*
dtype0
T
save/Identity_136Identitysave/RestoreV2:135*
_output_shapes
:*
T0
h
save/AssignVariableOp_135AssignVariableOpconv2d_transpose_3/kernelsave/Identity_136*
dtype0
T
save/Identity_137Identitysave/RestoreV2:136*
T0*
_output_shapes
:
f
save/AssignVariableOp_136AssignVariableOpconv2d_transpose_4/biassave/Identity_137*
dtype0
T
save/Identity_138Identitysave/RestoreV2:137*
_output_shapes
:*
T0
h
save/AssignVariableOp_137AssignVariableOpconv2d_transpose_4/kernelsave/Identity_138*
dtype0
T
save/Identity_139Identitysave/RestoreV2:138*
_output_shapes
:*
T0
f
save/AssignVariableOp_138AssignVariableOpconv2d_transpose_5/biassave/Identity_139*
dtype0
T
save/Identity_140Identitysave/RestoreV2:139*
T0*
_output_shapes
:
h
save/AssignVariableOp_139AssignVariableOpconv2d_transpose_5/kernelsave/Identity_140*
dtype0
T
save/Identity_141Identitysave/RestoreV2:140*
T0*
_output_shapes
:
f
save/AssignVariableOp_140AssignVariableOpconv2d_transpose_6/biassave/Identity_141*
dtype0
T
save/Identity_142Identitysave/RestoreV2:141*
T0*
_output_shapes
:
h
save/AssignVariableOp_141AssignVariableOpconv2d_transpose_6/kernelsave/Identity_142*
dtype0
T
save/Identity_143Identitysave/RestoreV2:142*
T0*
_output_shapes
:
f
save/AssignVariableOp_142AssignVariableOpconv2d_transpose_7/biassave/Identity_143*
dtype0
T
save/Identity_144Identitysave/RestoreV2:143*
_output_shapes
:*
T0
h
save/AssignVariableOp_143AssignVariableOpconv2d_transpose_7/kernelsave/Identity_144*
dtype0
T
save/Identity_145Identitysave/RestoreV2:144*
_output_shapes
:*
T0
f
save/AssignVariableOp_144AssignVariableOpconv2d_transpose_8/biassave/Identity_145*
dtype0
T
save/Identity_146Identitysave/RestoreV2:145*
_output_shapes
:*
T0
h
save/AssignVariableOp_145AssignVariableOpconv2d_transpose_8/kernelsave/Identity_146*
dtype0
T
save/Identity_147Identitysave/RestoreV2:146*
T0*
_output_shapes
:
f
save/AssignVariableOp_146AssignVariableOpconv2d_transpose_9/biassave/Identity_147*
dtype0
T
save/Identity_148Identitysave/RestoreV2:147*
T0*
_output_shapes
:
h
save/AssignVariableOp_147AssignVariableOpconv2d_transpose_9/kernelsave/Identity_148*
dtype0
w
save/AssignAssignglobal_stepsave/RestoreV2:148*
_class
loc:@global_step*
_output_shapes
: *
T0	
?
save/restore_shardNoOp^save/Assign^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_100^save/AssignVariableOp_101^save/AssignVariableOp_102^save/AssignVariableOp_103^save/AssignVariableOp_104^save/AssignVariableOp_105^save/AssignVariableOp_106^save/AssignVariableOp_107^save/AssignVariableOp_108^save/AssignVariableOp_109^save/AssignVariableOp_11^save/AssignVariableOp_110^save/AssignVariableOp_111^save/AssignVariableOp_112^save/AssignVariableOp_113^save/AssignVariableOp_114^save/AssignVariableOp_115^save/AssignVariableOp_116^save/AssignVariableOp_117^save/AssignVariableOp_118^save/AssignVariableOp_119^save/AssignVariableOp_12^save/AssignVariableOp_120^save/AssignVariableOp_121^save/AssignVariableOp_122^save/AssignVariableOp_123^save/AssignVariableOp_124^save/AssignVariableOp_125^save/AssignVariableOp_126^save/AssignVariableOp_127^save/AssignVariableOp_128^save/AssignVariableOp_129^save/AssignVariableOp_13^save/AssignVariableOp_130^save/AssignVariableOp_131^save/AssignVariableOp_132^save/AssignVariableOp_133^save/AssignVariableOp_134^save/AssignVariableOp_135^save/AssignVariableOp_136^save/AssignVariableOp_137^save/AssignVariableOp_138^save/AssignVariableOp_139^save/AssignVariableOp_14^save/AssignVariableOp_140^save/AssignVariableOp_141^save/AssignVariableOp_142^save/AssignVariableOp_143^save/AssignVariableOp_144^save/AssignVariableOp_145^save/AssignVariableOp_146^save/AssignVariableOp_147^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_29^save/AssignVariableOp_3^save/AssignVariableOp_30^save/AssignVariableOp_31^save/AssignVariableOp_32^save/AssignVariableOp_33^save/AssignVariableOp_34^save/AssignVariableOp_35^save/AssignVariableOp_36^save/AssignVariableOp_37^save/AssignVariableOp_38^save/AssignVariableOp_39^save/AssignVariableOp_4^save/AssignVariableOp_40^save/AssignVariableOp_41^save/AssignVariableOp_42^save/AssignVariableOp_43^save/AssignVariableOp_44^save/AssignVariableOp_45^save/AssignVariableOp_46^save/AssignVariableOp_47^save/AssignVariableOp_48^save/AssignVariableOp_49^save/AssignVariableOp_5^save/AssignVariableOp_50^save/AssignVariableOp_51^save/AssignVariableOp_52^save/AssignVariableOp_53^save/AssignVariableOp_54^save/AssignVariableOp_55^save/AssignVariableOp_56^save/AssignVariableOp_57^save/AssignVariableOp_58^save/AssignVariableOp_59^save/AssignVariableOp_6^save/AssignVariableOp_60^save/AssignVariableOp_61^save/AssignVariableOp_62^save/AssignVariableOp_63^save/AssignVariableOp_64^save/AssignVariableOp_65^save/AssignVariableOp_66^save/AssignVariableOp_67^save/AssignVariableOp_68^save/AssignVariableOp_69^save/AssignVariableOp_7^save/AssignVariableOp_70^save/AssignVariableOp_71^save/AssignVariableOp_72^save/AssignVariableOp_73^save/AssignVariableOp_74^save/AssignVariableOp_75^save/AssignVariableOp_76^save/AssignVariableOp_77^save/AssignVariableOp_78^save/AssignVariableOp_79^save/AssignVariableOp_8^save/AssignVariableOp_80^save/AssignVariableOp_81^save/AssignVariableOp_82^save/AssignVariableOp_83^save/AssignVariableOp_84^save/AssignVariableOp_85^save/AssignVariableOp_86^save/AssignVariableOp_87^save/AssignVariableOp_88^save/AssignVariableOp_89^save/AssignVariableOp_9^save/AssignVariableOp_90^save/AssignVariableOp_91^save/AssignVariableOp_92^save/AssignVariableOp_93^save/AssignVariableOp_94^save/AssignVariableOp_95^save/AssignVariableOp_96^save/AssignVariableOp_97^save/AssignVariableOp_98^save/AssignVariableOp_99
-
save/restore_allNoOp^save/restore_shard"&<
save/Const:0save/Identity:0save/restore_all (5 @F8"m
global_step^\
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H"??
cond_context????
?
"batch_normalization/cond/cond_text"batch_normalization/cond/pred_id:0#batch_normalization/cond/switch_t:0 *?
batch_normalization/beta:0
 batch_normalization/cond/Const:0
"batch_normalization/cond/Const_1:0
0batch_normalization/cond/FusedBatchNorm/Switch:1
)batch_normalization/cond/FusedBatchNorm:0
)batch_normalization/cond/FusedBatchNorm:1
)batch_normalization/cond/FusedBatchNorm:2
)batch_normalization/cond/FusedBatchNorm:3
)batch_normalization/cond/FusedBatchNorm:4
0batch_normalization/cond/ReadVariableOp/Switch:1
)batch_normalization/cond/ReadVariableOp:0
2batch_normalization/cond/ReadVariableOp_1/Switch:1
+batch_normalization/cond/ReadVariableOp_1:0
"batch_normalization/cond/pred_id:0
#batch_normalization/cond/switch_t:0
batch_normalization/gamma:0
conv2d/BiasAdd:0P
batch_normalization/beta:02batch_normalization/cond/ReadVariableOp_1/Switch:1D
conv2d/BiasAdd:00batch_normalization/cond/FusedBatchNorm/Switch:1H
"batch_normalization/cond/pred_id:0"batch_normalization/cond/pred_id:0O
batch_normalization/gamma:00batch_normalization/cond/ReadVariableOp/Switch:1
?
$batch_normalization/cond/cond_text_1"batch_normalization/cond/pred_id:0#batch_normalization/cond/switch_f:0*?
batch_normalization/beta:0
Abatch_normalization/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0
:batch_normalization/cond/FusedBatchNorm_1/ReadVariableOp:0
Cbatch_normalization/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
<batch_normalization/cond/FusedBatchNorm_1/ReadVariableOp_1:0
2batch_normalization/cond/FusedBatchNorm_1/Switch:0
+batch_normalization/cond/FusedBatchNorm_1:0
+batch_normalization/cond/FusedBatchNorm_1:1
+batch_normalization/cond/FusedBatchNorm_1:2
+batch_normalization/cond/FusedBatchNorm_1:3
+batch_normalization/cond/FusedBatchNorm_1:4
2batch_normalization/cond/ReadVariableOp_2/Switch:0
+batch_normalization/cond/ReadVariableOp_2:0
2batch_normalization/cond/ReadVariableOp_3/Switch:0
+batch_normalization/cond/ReadVariableOp_3:0
"batch_normalization/cond/pred_id:0
#batch_normalization/cond/switch_f:0
batch_normalization/gamma:0
!batch_normalization/moving_mean:0
%batch_normalization/moving_variance:0
conv2d/BiasAdd:0P
batch_normalization/beta:02batch_normalization/cond/ReadVariableOp_3/Switch:0F
conv2d/BiasAdd:02batch_normalization/cond/FusedBatchNorm_1/Switch:0Q
batch_normalization/gamma:02batch_normalization/cond/ReadVariableOp_2/Switch:0H
"batch_normalization/cond/pred_id:0"batch_normalization/cond/pred_id:0f
!batch_normalization/moving_mean:0Abatch_normalization/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0l
%batch_normalization/moving_variance:0Cbatch_normalization/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
?
$batch_normalization/cond_1/cond_text$batch_normalization/cond_1/pred_id:0%batch_normalization/cond_1/switch_t:0 *?
"batch_normalization/cond_1/Const:0
$batch_normalization/cond_1/pred_id:0
%batch_normalization/cond_1/switch_t:0L
$batch_normalization/cond_1/pred_id:0$batch_normalization/cond_1/pred_id:0
?
&batch_normalization/cond_1/cond_text_1$batch_normalization/cond_1/pred_id:0%batch_normalization/cond_1/switch_f:0*?
$batch_normalization/cond_1/Const_1:0
$batch_normalization/cond_1/pred_id:0
%batch_normalization/cond_1/switch_f:0L
$batch_normalization/cond_1/pred_id:0$batch_normalization/cond_1/pred_id:0
?
$batch_normalization_1/cond/cond_text$batch_normalization_1/cond/pred_id:0%batch_normalization_1/cond/switch_t:0 *?
batch_normalization_1/beta:0
"batch_normalization_1/cond/Const:0
$batch_normalization_1/cond/Const_1:0
2batch_normalization_1/cond/FusedBatchNorm/Switch:1
+batch_normalization_1/cond/FusedBatchNorm:0
+batch_normalization_1/cond/FusedBatchNorm:1
+batch_normalization_1/cond/FusedBatchNorm:2
+batch_normalization_1/cond/FusedBatchNorm:3
+batch_normalization_1/cond/FusedBatchNorm:4
2batch_normalization_1/cond/ReadVariableOp/Switch:1
+batch_normalization_1/cond/ReadVariableOp:0
4batch_normalization_1/cond/ReadVariableOp_1/Switch:1
-batch_normalization_1/cond/ReadVariableOp_1:0
$batch_normalization_1/cond/pred_id:0
%batch_normalization_1/cond/switch_t:0
batch_normalization_1/gamma:0
conv2d_1/BiasAdd:0S
batch_normalization_1/gamma:02batch_normalization_1/cond/ReadVariableOp/Switch:1T
batch_normalization_1/beta:04batch_normalization_1/cond/ReadVariableOp_1/Switch:1H
conv2d_1/BiasAdd:02batch_normalization_1/cond/FusedBatchNorm/Switch:1L
$batch_normalization_1/cond/pred_id:0$batch_normalization_1/cond/pred_id:0
?
&batch_normalization_1/cond/cond_text_1$batch_normalization_1/cond/pred_id:0%batch_normalization_1/cond/switch_f:0*?
batch_normalization_1/beta:0
Cbatch_normalization_1/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0
<batch_normalization_1/cond/FusedBatchNorm_1/ReadVariableOp:0
Ebatch_normalization_1/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
>batch_normalization_1/cond/FusedBatchNorm_1/ReadVariableOp_1:0
4batch_normalization_1/cond/FusedBatchNorm_1/Switch:0
-batch_normalization_1/cond/FusedBatchNorm_1:0
-batch_normalization_1/cond/FusedBatchNorm_1:1
-batch_normalization_1/cond/FusedBatchNorm_1:2
-batch_normalization_1/cond/FusedBatchNorm_1:3
-batch_normalization_1/cond/FusedBatchNorm_1:4
4batch_normalization_1/cond/ReadVariableOp_2/Switch:0
-batch_normalization_1/cond/ReadVariableOp_2:0
4batch_normalization_1/cond/ReadVariableOp_3/Switch:0
-batch_normalization_1/cond/ReadVariableOp_3:0
$batch_normalization_1/cond/pred_id:0
%batch_normalization_1/cond/switch_f:0
batch_normalization_1/gamma:0
#batch_normalization_1/moving_mean:0
'batch_normalization_1/moving_variance:0
conv2d_1/BiasAdd:0L
$batch_normalization_1/cond/pred_id:0$batch_normalization_1/cond/pred_id:0j
#batch_normalization_1/moving_mean:0Cbatch_normalization_1/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0p
'batch_normalization_1/moving_variance:0Ebatch_normalization_1/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0J
conv2d_1/BiasAdd:04batch_normalization_1/cond/FusedBatchNorm_1/Switch:0T
batch_normalization_1/beta:04batch_normalization_1/cond/ReadVariableOp_3/Switch:0U
batch_normalization_1/gamma:04batch_normalization_1/cond/ReadVariableOp_2/Switch:0
?
&batch_normalization_1/cond_1/cond_text&batch_normalization_1/cond_1/pred_id:0'batch_normalization_1/cond_1/switch_t:0 *?
$batch_normalization_1/cond_1/Const:0
&batch_normalization_1/cond_1/pred_id:0
'batch_normalization_1/cond_1/switch_t:0P
&batch_normalization_1/cond_1/pred_id:0&batch_normalization_1/cond_1/pred_id:0
?
(batch_normalization_1/cond_1/cond_text_1&batch_normalization_1/cond_1/pred_id:0'batch_normalization_1/cond_1/switch_f:0*?
&batch_normalization_1/cond_1/Const_1:0
&batch_normalization_1/cond_1/pred_id:0
'batch_normalization_1/cond_1/switch_f:0P
&batch_normalization_1/cond_1/pred_id:0&batch_normalization_1/cond_1/pred_id:0
?
$batch_normalization_2/cond/cond_text$batch_normalization_2/cond/pred_id:0%batch_normalization_2/cond/switch_t:0 *?
batch_normalization_2/beta:0
"batch_normalization_2/cond/Const:0
$batch_normalization_2/cond/Const_1:0
2batch_normalization_2/cond/FusedBatchNorm/Switch:1
+batch_normalization_2/cond/FusedBatchNorm:0
+batch_normalization_2/cond/FusedBatchNorm:1
+batch_normalization_2/cond/FusedBatchNorm:2
+batch_normalization_2/cond/FusedBatchNorm:3
+batch_normalization_2/cond/FusedBatchNorm:4
2batch_normalization_2/cond/ReadVariableOp/Switch:1
+batch_normalization_2/cond/ReadVariableOp:0
4batch_normalization_2/cond/ReadVariableOp_1/Switch:1
-batch_normalization_2/cond/ReadVariableOp_1:0
$batch_normalization_2/cond/pred_id:0
%batch_normalization_2/cond/switch_t:0
batch_normalization_2/gamma:0
conv2d_2/BiasAdd:0S
batch_normalization_2/gamma:02batch_normalization_2/cond/ReadVariableOp/Switch:1T
batch_normalization_2/beta:04batch_normalization_2/cond/ReadVariableOp_1/Switch:1L
$batch_normalization_2/cond/pred_id:0$batch_normalization_2/cond/pred_id:0H
conv2d_2/BiasAdd:02batch_normalization_2/cond/FusedBatchNorm/Switch:1
?
&batch_normalization_2/cond/cond_text_1$batch_normalization_2/cond/pred_id:0%batch_normalization_2/cond/switch_f:0*?
batch_normalization_2/beta:0
Cbatch_normalization_2/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0
<batch_normalization_2/cond/FusedBatchNorm_1/ReadVariableOp:0
Ebatch_normalization_2/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
>batch_normalization_2/cond/FusedBatchNorm_1/ReadVariableOp_1:0
4batch_normalization_2/cond/FusedBatchNorm_1/Switch:0
-batch_normalization_2/cond/FusedBatchNorm_1:0
-batch_normalization_2/cond/FusedBatchNorm_1:1
-batch_normalization_2/cond/FusedBatchNorm_1:2
-batch_normalization_2/cond/FusedBatchNorm_1:3
-batch_normalization_2/cond/FusedBatchNorm_1:4
4batch_normalization_2/cond/ReadVariableOp_2/Switch:0
-batch_normalization_2/cond/ReadVariableOp_2:0
4batch_normalization_2/cond/ReadVariableOp_3/Switch:0
-batch_normalization_2/cond/ReadVariableOp_3:0
$batch_normalization_2/cond/pred_id:0
%batch_normalization_2/cond/switch_f:0
batch_normalization_2/gamma:0
#batch_normalization_2/moving_mean:0
'batch_normalization_2/moving_variance:0
conv2d_2/BiasAdd:0U
batch_normalization_2/gamma:04batch_normalization_2/cond/ReadVariableOp_2/Switch:0j
#batch_normalization_2/moving_mean:0Cbatch_normalization_2/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0p
'batch_normalization_2/moving_variance:0Ebatch_normalization_2/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0L
$batch_normalization_2/cond/pred_id:0$batch_normalization_2/cond/pred_id:0J
conv2d_2/BiasAdd:04batch_normalization_2/cond/FusedBatchNorm_1/Switch:0T
batch_normalization_2/beta:04batch_normalization_2/cond/ReadVariableOp_3/Switch:0
?
&batch_normalization_2/cond_1/cond_text&batch_normalization_2/cond_1/pred_id:0'batch_normalization_2/cond_1/switch_t:0 *?
$batch_normalization_2/cond_1/Const:0
&batch_normalization_2/cond_1/pred_id:0
'batch_normalization_2/cond_1/switch_t:0P
&batch_normalization_2/cond_1/pred_id:0&batch_normalization_2/cond_1/pred_id:0
?
(batch_normalization_2/cond_1/cond_text_1&batch_normalization_2/cond_1/pred_id:0'batch_normalization_2/cond_1/switch_f:0*?
&batch_normalization_2/cond_1/Const_1:0
&batch_normalization_2/cond_1/pred_id:0
'batch_normalization_2/cond_1/switch_f:0P
&batch_normalization_2/cond_1/pred_id:0&batch_normalization_2/cond_1/pred_id:0
?
$batch_normalization_3/cond/cond_text$batch_normalization_3/cond/pred_id:0%batch_normalization_3/cond/switch_t:0 *?
batch_normalization_3/beta:0
"batch_normalization_3/cond/Const:0
$batch_normalization_3/cond/Const_1:0
2batch_normalization_3/cond/FusedBatchNorm/Switch:1
+batch_normalization_3/cond/FusedBatchNorm:0
+batch_normalization_3/cond/FusedBatchNorm:1
+batch_normalization_3/cond/FusedBatchNorm:2
+batch_normalization_3/cond/FusedBatchNorm:3
+batch_normalization_3/cond/FusedBatchNorm:4
2batch_normalization_3/cond/ReadVariableOp/Switch:1
+batch_normalization_3/cond/ReadVariableOp:0
4batch_normalization_3/cond/ReadVariableOp_1/Switch:1
-batch_normalization_3/cond/ReadVariableOp_1:0
$batch_normalization_3/cond/pred_id:0
%batch_normalization_3/cond/switch_t:0
batch_normalization_3/gamma:0
conv2d_3/BiasAdd:0L
$batch_normalization_3/cond/pred_id:0$batch_normalization_3/cond/pred_id:0S
batch_normalization_3/gamma:02batch_normalization_3/cond/ReadVariableOp/Switch:1T
batch_normalization_3/beta:04batch_normalization_3/cond/ReadVariableOp_1/Switch:1H
conv2d_3/BiasAdd:02batch_normalization_3/cond/FusedBatchNorm/Switch:1
?
&batch_normalization_3/cond/cond_text_1$batch_normalization_3/cond/pred_id:0%batch_normalization_3/cond/switch_f:0*?
batch_normalization_3/beta:0
Cbatch_normalization_3/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0
<batch_normalization_3/cond/FusedBatchNorm_1/ReadVariableOp:0
Ebatch_normalization_3/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
>batch_normalization_3/cond/FusedBatchNorm_1/ReadVariableOp_1:0
4batch_normalization_3/cond/FusedBatchNorm_1/Switch:0
-batch_normalization_3/cond/FusedBatchNorm_1:0
-batch_normalization_3/cond/FusedBatchNorm_1:1
-batch_normalization_3/cond/FusedBatchNorm_1:2
-batch_normalization_3/cond/FusedBatchNorm_1:3
-batch_normalization_3/cond/FusedBatchNorm_1:4
4batch_normalization_3/cond/ReadVariableOp_2/Switch:0
-batch_normalization_3/cond/ReadVariableOp_2:0
4batch_normalization_3/cond/ReadVariableOp_3/Switch:0
-batch_normalization_3/cond/ReadVariableOp_3:0
$batch_normalization_3/cond/pred_id:0
%batch_normalization_3/cond/switch_f:0
batch_normalization_3/gamma:0
#batch_normalization_3/moving_mean:0
'batch_normalization_3/moving_variance:0
conv2d_3/BiasAdd:0J
conv2d_3/BiasAdd:04batch_normalization_3/cond/FusedBatchNorm_1/Switch:0L
$batch_normalization_3/cond/pred_id:0$batch_normalization_3/cond/pred_id:0U
batch_normalization_3/gamma:04batch_normalization_3/cond/ReadVariableOp_2/Switch:0T
batch_normalization_3/beta:04batch_normalization_3/cond/ReadVariableOp_3/Switch:0j
#batch_normalization_3/moving_mean:0Cbatch_normalization_3/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0p
'batch_normalization_3/moving_variance:0Ebatch_normalization_3/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
?
&batch_normalization_3/cond_1/cond_text&batch_normalization_3/cond_1/pred_id:0'batch_normalization_3/cond_1/switch_t:0 *?
$batch_normalization_3/cond_1/Const:0
&batch_normalization_3/cond_1/pred_id:0
'batch_normalization_3/cond_1/switch_t:0P
&batch_normalization_3/cond_1/pred_id:0&batch_normalization_3/cond_1/pred_id:0
?
(batch_normalization_3/cond_1/cond_text_1&batch_normalization_3/cond_1/pred_id:0'batch_normalization_3/cond_1/switch_f:0*?
&batch_normalization_3/cond_1/Const_1:0
&batch_normalization_3/cond_1/pred_id:0
'batch_normalization_3/cond_1/switch_f:0P
&batch_normalization_3/cond_1/pred_id:0&batch_normalization_3/cond_1/pred_id:0
?
$batch_normalization_4/cond/cond_text$batch_normalization_4/cond/pred_id:0%batch_normalization_4/cond/switch_t:0 *?
batch_normalization_4/beta:0
"batch_normalization_4/cond/Const:0
$batch_normalization_4/cond/Const_1:0
2batch_normalization_4/cond/FusedBatchNorm/Switch:1
+batch_normalization_4/cond/FusedBatchNorm:0
+batch_normalization_4/cond/FusedBatchNorm:1
+batch_normalization_4/cond/FusedBatchNorm:2
+batch_normalization_4/cond/FusedBatchNorm:3
+batch_normalization_4/cond/FusedBatchNorm:4
2batch_normalization_4/cond/ReadVariableOp/Switch:1
+batch_normalization_4/cond/ReadVariableOp:0
4batch_normalization_4/cond/ReadVariableOp_1/Switch:1
-batch_normalization_4/cond/ReadVariableOp_1:0
$batch_normalization_4/cond/pred_id:0
%batch_normalization_4/cond/switch_t:0
batch_normalization_4/gamma:0
conv2d_4/BiasAdd:0S
batch_normalization_4/gamma:02batch_normalization_4/cond/ReadVariableOp/Switch:1T
batch_normalization_4/beta:04batch_normalization_4/cond/ReadVariableOp_1/Switch:1L
$batch_normalization_4/cond/pred_id:0$batch_normalization_4/cond/pred_id:0H
conv2d_4/BiasAdd:02batch_normalization_4/cond/FusedBatchNorm/Switch:1
?
&batch_normalization_4/cond/cond_text_1$batch_normalization_4/cond/pred_id:0%batch_normalization_4/cond/switch_f:0*?
batch_normalization_4/beta:0
Cbatch_normalization_4/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0
<batch_normalization_4/cond/FusedBatchNorm_1/ReadVariableOp:0
Ebatch_normalization_4/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
>batch_normalization_4/cond/FusedBatchNorm_1/ReadVariableOp_1:0
4batch_normalization_4/cond/FusedBatchNorm_1/Switch:0
-batch_normalization_4/cond/FusedBatchNorm_1:0
-batch_normalization_4/cond/FusedBatchNorm_1:1
-batch_normalization_4/cond/FusedBatchNorm_1:2
-batch_normalization_4/cond/FusedBatchNorm_1:3
-batch_normalization_4/cond/FusedBatchNorm_1:4
4batch_normalization_4/cond/ReadVariableOp_2/Switch:0
-batch_normalization_4/cond/ReadVariableOp_2:0
4batch_normalization_4/cond/ReadVariableOp_3/Switch:0
-batch_normalization_4/cond/ReadVariableOp_3:0
$batch_normalization_4/cond/pred_id:0
%batch_normalization_4/cond/switch_f:0
batch_normalization_4/gamma:0
#batch_normalization_4/moving_mean:0
'batch_normalization_4/moving_variance:0
conv2d_4/BiasAdd:0J
conv2d_4/BiasAdd:04batch_normalization_4/cond/FusedBatchNorm_1/Switch:0L
$batch_normalization_4/cond/pred_id:0$batch_normalization_4/cond/pred_id:0U
batch_normalization_4/gamma:04batch_normalization_4/cond/ReadVariableOp_2/Switch:0p
'batch_normalization_4/moving_variance:0Ebatch_normalization_4/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0T
batch_normalization_4/beta:04batch_normalization_4/cond/ReadVariableOp_3/Switch:0j
#batch_normalization_4/moving_mean:0Cbatch_normalization_4/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0
?
&batch_normalization_4/cond_1/cond_text&batch_normalization_4/cond_1/pred_id:0'batch_normalization_4/cond_1/switch_t:0 *?
$batch_normalization_4/cond_1/Const:0
&batch_normalization_4/cond_1/pred_id:0
'batch_normalization_4/cond_1/switch_t:0P
&batch_normalization_4/cond_1/pred_id:0&batch_normalization_4/cond_1/pred_id:0
?
(batch_normalization_4/cond_1/cond_text_1&batch_normalization_4/cond_1/pred_id:0'batch_normalization_4/cond_1/switch_f:0*?
&batch_normalization_4/cond_1/Const_1:0
&batch_normalization_4/cond_1/pred_id:0
'batch_normalization_4/cond_1/switch_f:0P
&batch_normalization_4/cond_1/pred_id:0&batch_normalization_4/cond_1/pred_id:0
?
$batch_normalization_5/cond/cond_text$batch_normalization_5/cond/pred_id:0%batch_normalization_5/cond/switch_t:0 *?
batch_normalization_5/beta:0
"batch_normalization_5/cond/Const:0
$batch_normalization_5/cond/Const_1:0
2batch_normalization_5/cond/FusedBatchNorm/Switch:1
+batch_normalization_5/cond/FusedBatchNorm:0
+batch_normalization_5/cond/FusedBatchNorm:1
+batch_normalization_5/cond/FusedBatchNorm:2
+batch_normalization_5/cond/FusedBatchNorm:3
+batch_normalization_5/cond/FusedBatchNorm:4
2batch_normalization_5/cond/ReadVariableOp/Switch:1
+batch_normalization_5/cond/ReadVariableOp:0
4batch_normalization_5/cond/ReadVariableOp_1/Switch:1
-batch_normalization_5/cond/ReadVariableOp_1:0
$batch_normalization_5/cond/pred_id:0
%batch_normalization_5/cond/switch_t:0
batch_normalization_5/gamma:0
conv2d_5/BiasAdd:0T
batch_normalization_5/beta:04batch_normalization_5/cond/ReadVariableOp_1/Switch:1H
conv2d_5/BiasAdd:02batch_normalization_5/cond/FusedBatchNorm/Switch:1L
$batch_normalization_5/cond/pred_id:0$batch_normalization_5/cond/pred_id:0S
batch_normalization_5/gamma:02batch_normalization_5/cond/ReadVariableOp/Switch:1
?
&batch_normalization_5/cond/cond_text_1$batch_normalization_5/cond/pred_id:0%batch_normalization_5/cond/switch_f:0*?
batch_normalization_5/beta:0
Cbatch_normalization_5/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0
<batch_normalization_5/cond/FusedBatchNorm_1/ReadVariableOp:0
Ebatch_normalization_5/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
>batch_normalization_5/cond/FusedBatchNorm_1/ReadVariableOp_1:0
4batch_normalization_5/cond/FusedBatchNorm_1/Switch:0
-batch_normalization_5/cond/FusedBatchNorm_1:0
-batch_normalization_5/cond/FusedBatchNorm_1:1
-batch_normalization_5/cond/FusedBatchNorm_1:2
-batch_normalization_5/cond/FusedBatchNorm_1:3
-batch_normalization_5/cond/FusedBatchNorm_1:4
4batch_normalization_5/cond/ReadVariableOp_2/Switch:0
-batch_normalization_5/cond/ReadVariableOp_2:0
4batch_normalization_5/cond/ReadVariableOp_3/Switch:0
-batch_normalization_5/cond/ReadVariableOp_3:0
$batch_normalization_5/cond/pred_id:0
%batch_normalization_5/cond/switch_f:0
batch_normalization_5/gamma:0
#batch_normalization_5/moving_mean:0
'batch_normalization_5/moving_variance:0
conv2d_5/BiasAdd:0L
$batch_normalization_5/cond/pred_id:0$batch_normalization_5/cond/pred_id:0j
#batch_normalization_5/moving_mean:0Cbatch_normalization_5/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0p
'batch_normalization_5/moving_variance:0Ebatch_normalization_5/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0J
conv2d_5/BiasAdd:04batch_normalization_5/cond/FusedBatchNorm_1/Switch:0T
batch_normalization_5/beta:04batch_normalization_5/cond/ReadVariableOp_3/Switch:0U
batch_normalization_5/gamma:04batch_normalization_5/cond/ReadVariableOp_2/Switch:0
?
&batch_normalization_5/cond_1/cond_text&batch_normalization_5/cond_1/pred_id:0'batch_normalization_5/cond_1/switch_t:0 *?
$batch_normalization_5/cond_1/Const:0
&batch_normalization_5/cond_1/pred_id:0
'batch_normalization_5/cond_1/switch_t:0P
&batch_normalization_5/cond_1/pred_id:0&batch_normalization_5/cond_1/pred_id:0
?
(batch_normalization_5/cond_1/cond_text_1&batch_normalization_5/cond_1/pred_id:0'batch_normalization_5/cond_1/switch_f:0*?
&batch_normalization_5/cond_1/Const_1:0
&batch_normalization_5/cond_1/pred_id:0
'batch_normalization_5/cond_1/switch_f:0P
&batch_normalization_5/cond_1/pred_id:0&batch_normalization_5/cond_1/pred_id:0
?
$batch_normalization_6/cond/cond_text$batch_normalization_6/cond/pred_id:0%batch_normalization_6/cond/switch_t:0 *?
batch_normalization_6/beta:0
"batch_normalization_6/cond/Const:0
$batch_normalization_6/cond/Const_1:0
2batch_normalization_6/cond/FusedBatchNorm/Switch:1
+batch_normalization_6/cond/FusedBatchNorm:0
+batch_normalization_6/cond/FusedBatchNorm:1
+batch_normalization_6/cond/FusedBatchNorm:2
+batch_normalization_6/cond/FusedBatchNorm:3
+batch_normalization_6/cond/FusedBatchNorm:4
2batch_normalization_6/cond/ReadVariableOp/Switch:1
+batch_normalization_6/cond/ReadVariableOp:0
4batch_normalization_6/cond/ReadVariableOp_1/Switch:1
-batch_normalization_6/cond/ReadVariableOp_1:0
$batch_normalization_6/cond/pred_id:0
%batch_normalization_6/cond/switch_t:0
batch_normalization_6/gamma:0
re_lu/Relu:0B
re_lu/Relu:02batch_normalization_6/cond/FusedBatchNorm/Switch:1S
batch_normalization_6/gamma:02batch_normalization_6/cond/ReadVariableOp/Switch:1T
batch_normalization_6/beta:04batch_normalization_6/cond/ReadVariableOp_1/Switch:1L
$batch_normalization_6/cond/pred_id:0$batch_normalization_6/cond/pred_id:0
?
&batch_normalization_6/cond/cond_text_1$batch_normalization_6/cond/pred_id:0%batch_normalization_6/cond/switch_f:0*?
batch_normalization_6/beta:0
Cbatch_normalization_6/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0
<batch_normalization_6/cond/FusedBatchNorm_1/ReadVariableOp:0
Ebatch_normalization_6/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
>batch_normalization_6/cond/FusedBatchNorm_1/ReadVariableOp_1:0
4batch_normalization_6/cond/FusedBatchNorm_1/Switch:0
-batch_normalization_6/cond/FusedBatchNorm_1:0
-batch_normalization_6/cond/FusedBatchNorm_1:1
-batch_normalization_6/cond/FusedBatchNorm_1:2
-batch_normalization_6/cond/FusedBatchNorm_1:3
-batch_normalization_6/cond/FusedBatchNorm_1:4
4batch_normalization_6/cond/ReadVariableOp_2/Switch:0
-batch_normalization_6/cond/ReadVariableOp_2:0
4batch_normalization_6/cond/ReadVariableOp_3/Switch:0
-batch_normalization_6/cond/ReadVariableOp_3:0
$batch_normalization_6/cond/pred_id:0
%batch_normalization_6/cond/switch_f:0
batch_normalization_6/gamma:0
#batch_normalization_6/moving_mean:0
'batch_normalization_6/moving_variance:0
re_lu/Relu:0D
re_lu/Relu:04batch_normalization_6/cond/FusedBatchNorm_1/Switch:0U
batch_normalization_6/gamma:04batch_normalization_6/cond/ReadVariableOp_2/Switch:0j
#batch_normalization_6/moving_mean:0Cbatch_normalization_6/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0p
'batch_normalization_6/moving_variance:0Ebatch_normalization_6/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0L
$batch_normalization_6/cond/pred_id:0$batch_normalization_6/cond/pred_id:0T
batch_normalization_6/beta:04batch_normalization_6/cond/ReadVariableOp_3/Switch:0
?
&batch_normalization_6/cond_1/cond_text&batch_normalization_6/cond_1/pred_id:0'batch_normalization_6/cond_1/switch_t:0 *?
$batch_normalization_6/cond_1/Const:0
&batch_normalization_6/cond_1/pred_id:0
'batch_normalization_6/cond_1/switch_t:0P
&batch_normalization_6/cond_1/pred_id:0&batch_normalization_6/cond_1/pred_id:0
?
(batch_normalization_6/cond_1/cond_text_1&batch_normalization_6/cond_1/pred_id:0'batch_normalization_6/cond_1/switch_f:0*?
&batch_normalization_6/cond_1/Const_1:0
&batch_normalization_6/cond_1/pred_id:0
'batch_normalization_6/cond_1/switch_f:0P
&batch_normalization_6/cond_1/pred_id:0&batch_normalization_6/cond_1/pred_id:0
?
dropout/cond/cond_textdropout/cond/pred_id:0dropout/cond/switch_t:0 *?
"batch_normalization_6/cond/Merge:0
dropout/cond/dropout/Cast:0
#dropout/cond/dropout/GreaterEqual:0
#dropout/cond/dropout/Shape/Switch:1
dropout/cond/dropout/Shape:0
dropout/cond/dropout/mul:0
dropout/cond/dropout/mul_1:0
3dropout/cond/dropout/random_uniform/RandomUniform:0
)dropout/cond/dropout/random_uniform/max:0
)dropout/cond/dropout/random_uniform/min:0
)dropout/cond/dropout/random_uniform/mul:0
)dropout/cond/dropout/random_uniform/sub:0
%dropout/cond/dropout/random_uniform:0
dropout/cond/dropout/rate:0
dropout/cond/dropout/sub/x:0
dropout/cond/dropout/sub:0
 dropout/cond/dropout/truediv/x:0
dropout/cond/dropout/truediv:0
dropout/cond/pred_id:0
dropout/cond/switch_t:0I
"batch_normalization_6/cond/Merge:0#dropout/cond/dropout/Shape/Switch:10
dropout/cond/pred_id:0dropout/cond/pred_id:0
?
dropout/cond/cond_text_1dropout/cond/pred_id:0dropout/cond/switch_f:0*?
"batch_normalization_6/cond/Merge:0
dropout/cond/Identity/Switch:0
dropout/cond/Identity:0
dropout/cond/pred_id:0
dropout/cond/switch_f:0D
"batch_normalization_6/cond/Merge:0dropout/cond/Identity/Switch:00
dropout/cond/pred_id:0dropout/cond/pred_id:0
?
$batch_normalization_7/cond/cond_text$batch_normalization_7/cond/pred_id:0%batch_normalization_7/cond/switch_t:0 *?
batch_normalization_7/beta:0
"batch_normalization_7/cond/Const:0
$batch_normalization_7/cond/Const_1:0
2batch_normalization_7/cond/FusedBatchNorm/Switch:1
+batch_normalization_7/cond/FusedBatchNorm:0
+batch_normalization_7/cond/FusedBatchNorm:1
+batch_normalization_7/cond/FusedBatchNorm:2
+batch_normalization_7/cond/FusedBatchNorm:3
+batch_normalization_7/cond/FusedBatchNorm:4
2batch_normalization_7/cond/ReadVariableOp/Switch:1
+batch_normalization_7/cond/ReadVariableOp:0
4batch_normalization_7/cond/ReadVariableOp_1/Switch:1
-batch_normalization_7/cond/ReadVariableOp_1:0
$batch_normalization_7/cond/pred_id:0
%batch_normalization_7/cond/switch_t:0
batch_normalization_7/gamma:0
re_lu_1/Relu:0S
batch_normalization_7/gamma:02batch_normalization_7/cond/ReadVariableOp/Switch:1D
re_lu_1/Relu:02batch_normalization_7/cond/FusedBatchNorm/Switch:1T
batch_normalization_7/beta:04batch_normalization_7/cond/ReadVariableOp_1/Switch:1L
$batch_normalization_7/cond/pred_id:0$batch_normalization_7/cond/pred_id:0
?
&batch_normalization_7/cond/cond_text_1$batch_normalization_7/cond/pred_id:0%batch_normalization_7/cond/switch_f:0*?
batch_normalization_7/beta:0
Cbatch_normalization_7/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0
<batch_normalization_7/cond/FusedBatchNorm_1/ReadVariableOp:0
Ebatch_normalization_7/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
>batch_normalization_7/cond/FusedBatchNorm_1/ReadVariableOp_1:0
4batch_normalization_7/cond/FusedBatchNorm_1/Switch:0
-batch_normalization_7/cond/FusedBatchNorm_1:0
-batch_normalization_7/cond/FusedBatchNorm_1:1
-batch_normalization_7/cond/FusedBatchNorm_1:2
-batch_normalization_7/cond/FusedBatchNorm_1:3
-batch_normalization_7/cond/FusedBatchNorm_1:4
4batch_normalization_7/cond/ReadVariableOp_2/Switch:0
-batch_normalization_7/cond/ReadVariableOp_2:0
4batch_normalization_7/cond/ReadVariableOp_3/Switch:0
-batch_normalization_7/cond/ReadVariableOp_3:0
$batch_normalization_7/cond/pred_id:0
%batch_normalization_7/cond/switch_f:0
batch_normalization_7/gamma:0
#batch_normalization_7/moving_mean:0
'batch_normalization_7/moving_variance:0
re_lu_1/Relu:0L
$batch_normalization_7/cond/pred_id:0$batch_normalization_7/cond/pred_id:0U
batch_normalization_7/gamma:04batch_normalization_7/cond/ReadVariableOp_2/Switch:0F
re_lu_1/Relu:04batch_normalization_7/cond/FusedBatchNorm_1/Switch:0T
batch_normalization_7/beta:04batch_normalization_7/cond/ReadVariableOp_3/Switch:0j
#batch_normalization_7/moving_mean:0Cbatch_normalization_7/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0p
'batch_normalization_7/moving_variance:0Ebatch_normalization_7/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
?
&batch_normalization_7/cond_1/cond_text&batch_normalization_7/cond_1/pred_id:0'batch_normalization_7/cond_1/switch_t:0 *?
$batch_normalization_7/cond_1/Const:0
&batch_normalization_7/cond_1/pred_id:0
'batch_normalization_7/cond_1/switch_t:0P
&batch_normalization_7/cond_1/pred_id:0&batch_normalization_7/cond_1/pred_id:0
?
(batch_normalization_7/cond_1/cond_text_1&batch_normalization_7/cond_1/pred_id:0'batch_normalization_7/cond_1/switch_f:0*?
&batch_normalization_7/cond_1/Const_1:0
&batch_normalization_7/cond_1/pred_id:0
'batch_normalization_7/cond_1/switch_f:0P
&batch_normalization_7/cond_1/pred_id:0&batch_normalization_7/cond_1/pred_id:0
?
dropout_1/cond/cond_textdropout_1/cond/pred_id:0dropout_1/cond/switch_t:0 *?
"batch_normalization_7/cond/Merge:0
dropout_1/cond/dropout/Cast:0
%dropout_1/cond/dropout/GreaterEqual:0
%dropout_1/cond/dropout/Shape/Switch:1
dropout_1/cond/dropout/Shape:0
dropout_1/cond/dropout/mul:0
dropout_1/cond/dropout/mul_1:0
5dropout_1/cond/dropout/random_uniform/RandomUniform:0
+dropout_1/cond/dropout/random_uniform/max:0
+dropout_1/cond/dropout/random_uniform/min:0
+dropout_1/cond/dropout/random_uniform/mul:0
+dropout_1/cond/dropout/random_uniform/sub:0
'dropout_1/cond/dropout/random_uniform:0
dropout_1/cond/dropout/rate:0
dropout_1/cond/dropout/sub/x:0
dropout_1/cond/dropout/sub:0
"dropout_1/cond/dropout/truediv/x:0
 dropout_1/cond/dropout/truediv:0
dropout_1/cond/pred_id:0
dropout_1/cond/switch_t:0K
"batch_normalization_7/cond/Merge:0%dropout_1/cond/dropout/Shape/Switch:14
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:0
?
dropout_1/cond/cond_text_1dropout_1/cond/pred_id:0dropout_1/cond/switch_f:0*?
"batch_normalization_7/cond/Merge:0
 dropout_1/cond/Identity/Switch:0
dropout_1/cond/Identity:0
dropout_1/cond/pred_id:0
dropout_1/cond/switch_f:0F
"batch_normalization_7/cond/Merge:0 dropout_1/cond/Identity/Switch:04
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:0
?
$batch_normalization_8/cond/cond_text$batch_normalization_8/cond/pred_id:0%batch_normalization_8/cond/switch_t:0 *?
batch_normalization_8/beta:0
"batch_normalization_8/cond/Const:0
$batch_normalization_8/cond/Const_1:0
2batch_normalization_8/cond/FusedBatchNorm/Switch:1
+batch_normalization_8/cond/FusedBatchNorm:0
+batch_normalization_8/cond/FusedBatchNorm:1
+batch_normalization_8/cond/FusedBatchNorm:2
+batch_normalization_8/cond/FusedBatchNorm:3
+batch_normalization_8/cond/FusedBatchNorm:4
2batch_normalization_8/cond/ReadVariableOp/Switch:1
+batch_normalization_8/cond/ReadVariableOp:0
4batch_normalization_8/cond/ReadVariableOp_1/Switch:1
-batch_normalization_8/cond/ReadVariableOp_1:0
$batch_normalization_8/cond/pred_id:0
%batch_normalization_8/cond/switch_t:0
batch_normalization_8/gamma:0
re_lu_2/Relu:0S
batch_normalization_8/gamma:02batch_normalization_8/cond/ReadVariableOp/Switch:1T
batch_normalization_8/beta:04batch_normalization_8/cond/ReadVariableOp_1/Switch:1L
$batch_normalization_8/cond/pred_id:0$batch_normalization_8/cond/pred_id:0D
re_lu_2/Relu:02batch_normalization_8/cond/FusedBatchNorm/Switch:1
?
&batch_normalization_8/cond/cond_text_1$batch_normalization_8/cond/pred_id:0%batch_normalization_8/cond/switch_f:0*?
batch_normalization_8/beta:0
Cbatch_normalization_8/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0
<batch_normalization_8/cond/FusedBatchNorm_1/ReadVariableOp:0
Ebatch_normalization_8/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
>batch_normalization_8/cond/FusedBatchNorm_1/ReadVariableOp_1:0
4batch_normalization_8/cond/FusedBatchNorm_1/Switch:0
-batch_normalization_8/cond/FusedBatchNorm_1:0
-batch_normalization_8/cond/FusedBatchNorm_1:1
-batch_normalization_8/cond/FusedBatchNorm_1:2
-batch_normalization_8/cond/FusedBatchNorm_1:3
-batch_normalization_8/cond/FusedBatchNorm_1:4
4batch_normalization_8/cond/ReadVariableOp_2/Switch:0
-batch_normalization_8/cond/ReadVariableOp_2:0
4batch_normalization_8/cond/ReadVariableOp_3/Switch:0
-batch_normalization_8/cond/ReadVariableOp_3:0
$batch_normalization_8/cond/pred_id:0
%batch_normalization_8/cond/switch_f:0
batch_normalization_8/gamma:0
#batch_normalization_8/moving_mean:0
'batch_normalization_8/moving_variance:0
re_lu_2/Relu:0L
$batch_normalization_8/cond/pred_id:0$batch_normalization_8/cond/pred_id:0F
re_lu_2/Relu:04batch_normalization_8/cond/FusedBatchNorm_1/Switch:0U
batch_normalization_8/gamma:04batch_normalization_8/cond/ReadVariableOp_2/Switch:0p
'batch_normalization_8/moving_variance:0Ebatch_normalization_8/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0T
batch_normalization_8/beta:04batch_normalization_8/cond/ReadVariableOp_3/Switch:0j
#batch_normalization_8/moving_mean:0Cbatch_normalization_8/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0
?
&batch_normalization_8/cond_1/cond_text&batch_normalization_8/cond_1/pred_id:0'batch_normalization_8/cond_1/switch_t:0 *?
$batch_normalization_8/cond_1/Const:0
&batch_normalization_8/cond_1/pred_id:0
'batch_normalization_8/cond_1/switch_t:0P
&batch_normalization_8/cond_1/pred_id:0&batch_normalization_8/cond_1/pred_id:0
?
(batch_normalization_8/cond_1/cond_text_1&batch_normalization_8/cond_1/pred_id:0'batch_normalization_8/cond_1/switch_f:0*?
&batch_normalization_8/cond_1/Const_1:0
&batch_normalization_8/cond_1/pred_id:0
'batch_normalization_8/cond_1/switch_f:0P
&batch_normalization_8/cond_1/pred_id:0&batch_normalization_8/cond_1/pred_id:0
?
dropout_2/cond/cond_textdropout_2/cond/pred_id:0dropout_2/cond/switch_t:0 *?
"batch_normalization_8/cond/Merge:0
dropout_2/cond/dropout/Cast:0
%dropout_2/cond/dropout/GreaterEqual:0
%dropout_2/cond/dropout/Shape/Switch:1
dropout_2/cond/dropout/Shape:0
dropout_2/cond/dropout/mul:0
dropout_2/cond/dropout/mul_1:0
5dropout_2/cond/dropout/random_uniform/RandomUniform:0
+dropout_2/cond/dropout/random_uniform/max:0
+dropout_2/cond/dropout/random_uniform/min:0
+dropout_2/cond/dropout/random_uniform/mul:0
+dropout_2/cond/dropout/random_uniform/sub:0
'dropout_2/cond/dropout/random_uniform:0
dropout_2/cond/dropout/rate:0
dropout_2/cond/dropout/sub/x:0
dropout_2/cond/dropout/sub:0
"dropout_2/cond/dropout/truediv/x:0
 dropout_2/cond/dropout/truediv:0
dropout_2/cond/pred_id:0
dropout_2/cond/switch_t:0K
"batch_normalization_8/cond/Merge:0%dropout_2/cond/dropout/Shape/Switch:14
dropout_2/cond/pred_id:0dropout_2/cond/pred_id:0
?
dropout_2/cond/cond_text_1dropout_2/cond/pred_id:0dropout_2/cond/switch_f:0*?
"batch_normalization_8/cond/Merge:0
 dropout_2/cond/Identity/Switch:0
dropout_2/cond/Identity:0
dropout_2/cond/pred_id:0
dropout_2/cond/switch_f:0F
"batch_normalization_8/cond/Merge:0 dropout_2/cond/Identity/Switch:04
dropout_2/cond/pred_id:0dropout_2/cond/pred_id:0
?
$batch_normalization_9/cond/cond_text$batch_normalization_9/cond/pred_id:0%batch_normalization_9/cond/switch_t:0 *?
batch_normalization_9/beta:0
"batch_normalization_9/cond/Const:0
$batch_normalization_9/cond/Const_1:0
2batch_normalization_9/cond/FusedBatchNorm/Switch:1
+batch_normalization_9/cond/FusedBatchNorm:0
+batch_normalization_9/cond/FusedBatchNorm:1
+batch_normalization_9/cond/FusedBatchNorm:2
+batch_normalization_9/cond/FusedBatchNorm:3
+batch_normalization_9/cond/FusedBatchNorm:4
2batch_normalization_9/cond/ReadVariableOp/Switch:1
+batch_normalization_9/cond/ReadVariableOp:0
4batch_normalization_9/cond/ReadVariableOp_1/Switch:1
-batch_normalization_9/cond/ReadVariableOp_1:0
$batch_normalization_9/cond/pred_id:0
%batch_normalization_9/cond/switch_t:0
batch_normalization_9/gamma:0
re_lu_3/Relu:0S
batch_normalization_9/gamma:02batch_normalization_9/cond/ReadVariableOp/Switch:1D
re_lu_3/Relu:02batch_normalization_9/cond/FusedBatchNorm/Switch:1T
batch_normalization_9/beta:04batch_normalization_9/cond/ReadVariableOp_1/Switch:1L
$batch_normalization_9/cond/pred_id:0$batch_normalization_9/cond/pred_id:0
?
&batch_normalization_9/cond/cond_text_1$batch_normalization_9/cond/pred_id:0%batch_normalization_9/cond/switch_f:0*?
batch_normalization_9/beta:0
Cbatch_normalization_9/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0
<batch_normalization_9/cond/FusedBatchNorm_1/ReadVariableOp:0
Ebatch_normalization_9/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
>batch_normalization_9/cond/FusedBatchNorm_1/ReadVariableOp_1:0
4batch_normalization_9/cond/FusedBatchNorm_1/Switch:0
-batch_normalization_9/cond/FusedBatchNorm_1:0
-batch_normalization_9/cond/FusedBatchNorm_1:1
-batch_normalization_9/cond/FusedBatchNorm_1:2
-batch_normalization_9/cond/FusedBatchNorm_1:3
-batch_normalization_9/cond/FusedBatchNorm_1:4
4batch_normalization_9/cond/ReadVariableOp_2/Switch:0
-batch_normalization_9/cond/ReadVariableOp_2:0
4batch_normalization_9/cond/ReadVariableOp_3/Switch:0
-batch_normalization_9/cond/ReadVariableOp_3:0
$batch_normalization_9/cond/pred_id:0
%batch_normalization_9/cond/switch_f:0
batch_normalization_9/gamma:0
#batch_normalization_9/moving_mean:0
'batch_normalization_9/moving_variance:0
re_lu_3/Relu:0j
#batch_normalization_9/moving_mean:0Cbatch_normalization_9/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0p
'batch_normalization_9/moving_variance:0Ebatch_normalization_9/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0F
re_lu_3/Relu:04batch_normalization_9/cond/FusedBatchNorm_1/Switch:0T
batch_normalization_9/beta:04batch_normalization_9/cond/ReadVariableOp_3/Switch:0U
batch_normalization_9/gamma:04batch_normalization_9/cond/ReadVariableOp_2/Switch:0L
$batch_normalization_9/cond/pred_id:0$batch_normalization_9/cond/pred_id:0
?
&batch_normalization_9/cond_1/cond_text&batch_normalization_9/cond_1/pred_id:0'batch_normalization_9/cond_1/switch_t:0 *?
$batch_normalization_9/cond_1/Const:0
&batch_normalization_9/cond_1/pred_id:0
'batch_normalization_9/cond_1/switch_t:0P
&batch_normalization_9/cond_1/pred_id:0&batch_normalization_9/cond_1/pred_id:0
?
(batch_normalization_9/cond_1/cond_text_1&batch_normalization_9/cond_1/pred_id:0'batch_normalization_9/cond_1/switch_f:0*?
&batch_normalization_9/cond_1/Const_1:0
&batch_normalization_9/cond_1/pred_id:0
'batch_normalization_9/cond_1/switch_f:0P
&batch_normalization_9/cond_1/pred_id:0&batch_normalization_9/cond_1/pred_id:0
?	
%batch_normalization_10/cond/cond_text%batch_normalization_10/cond/pred_id:0&batch_normalization_10/cond/switch_t:0 *?
batch_normalization_10/beta:0
#batch_normalization_10/cond/Const:0
%batch_normalization_10/cond/Const_1:0
3batch_normalization_10/cond/FusedBatchNorm/Switch:1
,batch_normalization_10/cond/FusedBatchNorm:0
,batch_normalization_10/cond/FusedBatchNorm:1
,batch_normalization_10/cond/FusedBatchNorm:2
,batch_normalization_10/cond/FusedBatchNorm:3
,batch_normalization_10/cond/FusedBatchNorm:4
3batch_normalization_10/cond/ReadVariableOp/Switch:1
,batch_normalization_10/cond/ReadVariableOp:0
5batch_normalization_10/cond/ReadVariableOp_1/Switch:1
.batch_normalization_10/cond/ReadVariableOp_1:0
%batch_normalization_10/cond/pred_id:0
&batch_normalization_10/cond/switch_t:0
batch_normalization_10/gamma:0
re_lu_4/Relu:0N
%batch_normalization_10/cond/pred_id:0%batch_normalization_10/cond/pred_id:0E
re_lu_4/Relu:03batch_normalization_10/cond/FusedBatchNorm/Switch:1U
batch_normalization_10/gamma:03batch_normalization_10/cond/ReadVariableOp/Switch:1V
batch_normalization_10/beta:05batch_normalization_10/cond/ReadVariableOp_1/Switch:1
?
'batch_normalization_10/cond/cond_text_1%batch_normalization_10/cond/pred_id:0&batch_normalization_10/cond/switch_f:0*?
batch_normalization_10/beta:0
Dbatch_normalization_10/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0
=batch_normalization_10/cond/FusedBatchNorm_1/ReadVariableOp:0
Fbatch_normalization_10/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
?batch_normalization_10/cond/FusedBatchNorm_1/ReadVariableOp_1:0
5batch_normalization_10/cond/FusedBatchNorm_1/Switch:0
.batch_normalization_10/cond/FusedBatchNorm_1:0
.batch_normalization_10/cond/FusedBatchNorm_1:1
.batch_normalization_10/cond/FusedBatchNorm_1:2
.batch_normalization_10/cond/FusedBatchNorm_1:3
.batch_normalization_10/cond/FusedBatchNorm_1:4
5batch_normalization_10/cond/ReadVariableOp_2/Switch:0
.batch_normalization_10/cond/ReadVariableOp_2:0
5batch_normalization_10/cond/ReadVariableOp_3/Switch:0
.batch_normalization_10/cond/ReadVariableOp_3:0
%batch_normalization_10/cond/pred_id:0
&batch_normalization_10/cond/switch_f:0
batch_normalization_10/gamma:0
$batch_normalization_10/moving_mean:0
(batch_normalization_10/moving_variance:0
re_lu_4/Relu:0l
$batch_normalization_10/moving_mean:0Dbatch_normalization_10/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0r
(batch_normalization_10/moving_variance:0Fbatch_normalization_10/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0V
batch_normalization_10/beta:05batch_normalization_10/cond/ReadVariableOp_3/Switch:0G
re_lu_4/Relu:05batch_normalization_10/cond/FusedBatchNorm_1/Switch:0W
batch_normalization_10/gamma:05batch_normalization_10/cond/ReadVariableOp_2/Switch:0N
%batch_normalization_10/cond/pred_id:0%batch_normalization_10/cond/pred_id:0
?
'batch_normalization_10/cond_1/cond_text'batch_normalization_10/cond_1/pred_id:0(batch_normalization_10/cond_1/switch_t:0 *?
%batch_normalization_10/cond_1/Const:0
'batch_normalization_10/cond_1/pred_id:0
(batch_normalization_10/cond_1/switch_t:0R
'batch_normalization_10/cond_1/pred_id:0'batch_normalization_10/cond_1/pred_id:0
?
)batch_normalization_10/cond_1/cond_text_1'batch_normalization_10/cond_1/pred_id:0(batch_normalization_10/cond_1/switch_f:0*?
'batch_normalization_10/cond_1/Const_1:0
'batch_normalization_10/cond_1/pred_id:0
(batch_normalization_10/cond_1/switch_f:0R
'batch_normalization_10/cond_1/pred_id:0'batch_normalization_10/cond_1/pred_id:0
?	
%batch_normalization_11/cond/cond_text%batch_normalization_11/cond/pred_id:0&batch_normalization_11/cond/switch_t:0 *?
batch_normalization_11/beta:0
#batch_normalization_11/cond/Const:0
%batch_normalization_11/cond/Const_1:0
3batch_normalization_11/cond/FusedBatchNorm/Switch:1
,batch_normalization_11/cond/FusedBatchNorm:0
,batch_normalization_11/cond/FusedBatchNorm:1
,batch_normalization_11/cond/FusedBatchNorm:2
,batch_normalization_11/cond/FusedBatchNorm:3
,batch_normalization_11/cond/FusedBatchNorm:4
3batch_normalization_11/cond/ReadVariableOp/Switch:1
,batch_normalization_11/cond/ReadVariableOp:0
5batch_normalization_11/cond/ReadVariableOp_1/Switch:1
.batch_normalization_11/cond/ReadVariableOp_1:0
%batch_normalization_11/cond/pred_id:0
&batch_normalization_11/cond/switch_t:0
batch_normalization_11/gamma:0
re_lu_5/Relu:0U
batch_normalization_11/gamma:03batch_normalization_11/cond/ReadVariableOp/Switch:1V
batch_normalization_11/beta:05batch_normalization_11/cond/ReadVariableOp_1/Switch:1N
%batch_normalization_11/cond/pred_id:0%batch_normalization_11/cond/pred_id:0E
re_lu_5/Relu:03batch_normalization_11/cond/FusedBatchNorm/Switch:1
?
'batch_normalization_11/cond/cond_text_1%batch_normalization_11/cond/pred_id:0&batch_normalization_11/cond/switch_f:0*?
batch_normalization_11/beta:0
Dbatch_normalization_11/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0
=batch_normalization_11/cond/FusedBatchNorm_1/ReadVariableOp:0
Fbatch_normalization_11/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
?batch_normalization_11/cond/FusedBatchNorm_1/ReadVariableOp_1:0
5batch_normalization_11/cond/FusedBatchNorm_1/Switch:0
.batch_normalization_11/cond/FusedBatchNorm_1:0
.batch_normalization_11/cond/FusedBatchNorm_1:1
.batch_normalization_11/cond/FusedBatchNorm_1:2
.batch_normalization_11/cond/FusedBatchNorm_1:3
.batch_normalization_11/cond/FusedBatchNorm_1:4
5batch_normalization_11/cond/ReadVariableOp_2/Switch:0
.batch_normalization_11/cond/ReadVariableOp_2:0
5batch_normalization_11/cond/ReadVariableOp_3/Switch:0
.batch_normalization_11/cond/ReadVariableOp_3:0
%batch_normalization_11/cond/pred_id:0
&batch_normalization_11/cond/switch_f:0
batch_normalization_11/gamma:0
$batch_normalization_11/moving_mean:0
(batch_normalization_11/moving_variance:0
re_lu_5/Relu:0V
batch_normalization_11/beta:05batch_normalization_11/cond/ReadVariableOp_3/Switch:0G
re_lu_5/Relu:05batch_normalization_11/cond/FusedBatchNorm_1/Switch:0W
batch_normalization_11/gamma:05batch_normalization_11/cond/ReadVariableOp_2/Switch:0l
$batch_normalization_11/moving_mean:0Dbatch_normalization_11/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0r
(batch_normalization_11/moving_variance:0Fbatch_normalization_11/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0N
%batch_normalization_11/cond/pred_id:0%batch_normalization_11/cond/pred_id:0
?
'batch_normalization_11/cond_1/cond_text'batch_normalization_11/cond_1/pred_id:0(batch_normalization_11/cond_1/switch_t:0 *?
%batch_normalization_11/cond_1/Const:0
'batch_normalization_11/cond_1/pred_id:0
(batch_normalization_11/cond_1/switch_t:0R
'batch_normalization_11/cond_1/pred_id:0'batch_normalization_11/cond_1/pred_id:0
?
)batch_normalization_11/cond_1/cond_text_1'batch_normalization_11/cond_1/pred_id:0(batch_normalization_11/cond_1/switch_f:0*?
'batch_normalization_11/cond_1/Const_1:0
'batch_normalization_11/cond_1/pred_id:0
(batch_normalization_11/cond_1/switch_f:0R
'batch_normalization_11/cond_1/pred_id:0'batch_normalization_11/cond_1/pred_id:0
?	
%batch_normalization_12/cond/cond_text%batch_normalization_12/cond/pred_id:0&batch_normalization_12/cond/switch_t:0 *?
batch_normalization_12/beta:0
#batch_normalization_12/cond/Const:0
%batch_normalization_12/cond/Const_1:0
3batch_normalization_12/cond/FusedBatchNorm/Switch:1
,batch_normalization_12/cond/FusedBatchNorm:0
,batch_normalization_12/cond/FusedBatchNorm:1
,batch_normalization_12/cond/FusedBatchNorm:2
,batch_normalization_12/cond/FusedBatchNorm:3
,batch_normalization_12/cond/FusedBatchNorm:4
3batch_normalization_12/cond/ReadVariableOp/Switch:1
,batch_normalization_12/cond/ReadVariableOp:0
5batch_normalization_12/cond/ReadVariableOp_1/Switch:1
.batch_normalization_12/cond/ReadVariableOp_1:0
%batch_normalization_12/cond/pred_id:0
&batch_normalization_12/cond/switch_t:0
batch_normalization_12/gamma:0
conv2d_7/BiasAdd:0N
%batch_normalization_12/cond/pred_id:0%batch_normalization_12/cond/pred_id:0U
batch_normalization_12/gamma:03batch_normalization_12/cond/ReadVariableOp/Switch:1I
conv2d_7/BiasAdd:03batch_normalization_12/cond/FusedBatchNorm/Switch:1V
batch_normalization_12/beta:05batch_normalization_12/cond/ReadVariableOp_1/Switch:1
?
'batch_normalization_12/cond/cond_text_1%batch_normalization_12/cond/pred_id:0&batch_normalization_12/cond/switch_f:0*?
batch_normalization_12/beta:0
Dbatch_normalization_12/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0
=batch_normalization_12/cond/FusedBatchNorm_1/ReadVariableOp:0
Fbatch_normalization_12/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
?batch_normalization_12/cond/FusedBatchNorm_1/ReadVariableOp_1:0
5batch_normalization_12/cond/FusedBatchNorm_1/Switch:0
.batch_normalization_12/cond/FusedBatchNorm_1:0
.batch_normalization_12/cond/FusedBatchNorm_1:1
.batch_normalization_12/cond/FusedBatchNorm_1:2
.batch_normalization_12/cond/FusedBatchNorm_1:3
.batch_normalization_12/cond/FusedBatchNorm_1:4
5batch_normalization_12/cond/ReadVariableOp_2/Switch:0
.batch_normalization_12/cond/ReadVariableOp_2:0
5batch_normalization_12/cond/ReadVariableOp_3/Switch:0
.batch_normalization_12/cond/ReadVariableOp_3:0
%batch_normalization_12/cond/pred_id:0
&batch_normalization_12/cond/switch_f:0
batch_normalization_12/gamma:0
$batch_normalization_12/moving_mean:0
(batch_normalization_12/moving_variance:0
conv2d_7/BiasAdd:0N
%batch_normalization_12/cond/pred_id:0%batch_normalization_12/cond/pred_id:0W
batch_normalization_12/gamma:05batch_normalization_12/cond/ReadVariableOp_2/Switch:0K
conv2d_7/BiasAdd:05batch_normalization_12/cond/FusedBatchNorm_1/Switch:0V
batch_normalization_12/beta:05batch_normalization_12/cond/ReadVariableOp_3/Switch:0l
$batch_normalization_12/moving_mean:0Dbatch_normalization_12/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0r
(batch_normalization_12/moving_variance:0Fbatch_normalization_12/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
?
'batch_normalization_12/cond_1/cond_text'batch_normalization_12/cond_1/pred_id:0(batch_normalization_12/cond_1/switch_t:0 *?
%batch_normalization_12/cond_1/Const:0
'batch_normalization_12/cond_1/pred_id:0
(batch_normalization_12/cond_1/switch_t:0R
'batch_normalization_12/cond_1/pred_id:0'batch_normalization_12/cond_1/pred_id:0
?
)batch_normalization_12/cond_1/cond_text_1'batch_normalization_12/cond_1/pred_id:0(batch_normalization_12/cond_1/switch_f:0*?
'batch_normalization_12/cond_1/Const_1:0
'batch_normalization_12/cond_1/pred_id:0
(batch_normalization_12/cond_1/switch_f:0R
'batch_normalization_12/cond_1/pred_id:0'batch_normalization_12/cond_1/pred_id:0
?	
%batch_normalization_13/cond/cond_text%batch_normalization_13/cond/pred_id:0&batch_normalization_13/cond/switch_t:0 *?
batch_normalization_13/beta:0
#batch_normalization_13/cond/Const:0
%batch_normalization_13/cond/Const_1:0
3batch_normalization_13/cond/FusedBatchNorm/Switch:1
,batch_normalization_13/cond/FusedBatchNorm:0
,batch_normalization_13/cond/FusedBatchNorm:1
,batch_normalization_13/cond/FusedBatchNorm:2
,batch_normalization_13/cond/FusedBatchNorm:3
,batch_normalization_13/cond/FusedBatchNorm:4
3batch_normalization_13/cond/ReadVariableOp/Switch:1
,batch_normalization_13/cond/ReadVariableOp:0
5batch_normalization_13/cond/ReadVariableOp_1/Switch:1
.batch_normalization_13/cond/ReadVariableOp_1:0
%batch_normalization_13/cond/pred_id:0
&batch_normalization_13/cond/switch_t:0
batch_normalization_13/gamma:0
conv2d_8/BiasAdd:0U
batch_normalization_13/gamma:03batch_normalization_13/cond/ReadVariableOp/Switch:1V
batch_normalization_13/beta:05batch_normalization_13/cond/ReadVariableOp_1/Switch:1I
conv2d_8/BiasAdd:03batch_normalization_13/cond/FusedBatchNorm/Switch:1N
%batch_normalization_13/cond/pred_id:0%batch_normalization_13/cond/pred_id:0
?
'batch_normalization_13/cond/cond_text_1%batch_normalization_13/cond/pred_id:0&batch_normalization_13/cond/switch_f:0*?
batch_normalization_13/beta:0
Dbatch_normalization_13/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0
=batch_normalization_13/cond/FusedBatchNorm_1/ReadVariableOp:0
Fbatch_normalization_13/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
?batch_normalization_13/cond/FusedBatchNorm_1/ReadVariableOp_1:0
5batch_normalization_13/cond/FusedBatchNorm_1/Switch:0
.batch_normalization_13/cond/FusedBatchNorm_1:0
.batch_normalization_13/cond/FusedBatchNorm_1:1
.batch_normalization_13/cond/FusedBatchNorm_1:2
.batch_normalization_13/cond/FusedBatchNorm_1:3
.batch_normalization_13/cond/FusedBatchNorm_1:4
5batch_normalization_13/cond/ReadVariableOp_2/Switch:0
.batch_normalization_13/cond/ReadVariableOp_2:0
5batch_normalization_13/cond/ReadVariableOp_3/Switch:0
.batch_normalization_13/cond/ReadVariableOp_3:0
%batch_normalization_13/cond/pred_id:0
&batch_normalization_13/cond/switch_f:0
batch_normalization_13/gamma:0
$batch_normalization_13/moving_mean:0
(batch_normalization_13/moving_variance:0
conv2d_8/BiasAdd:0K
conv2d_8/BiasAdd:05batch_normalization_13/cond/FusedBatchNorm_1/Switch:0N
%batch_normalization_13/cond/pred_id:0%batch_normalization_13/cond/pred_id:0W
batch_normalization_13/gamma:05batch_normalization_13/cond/ReadVariableOp_2/Switch:0V
batch_normalization_13/beta:05batch_normalization_13/cond/ReadVariableOp_3/Switch:0l
$batch_normalization_13/moving_mean:0Dbatch_normalization_13/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0r
(batch_normalization_13/moving_variance:0Fbatch_normalization_13/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
?
'batch_normalization_13/cond_1/cond_text'batch_normalization_13/cond_1/pred_id:0(batch_normalization_13/cond_1/switch_t:0 *?
%batch_normalization_13/cond_1/Const:0
'batch_normalization_13/cond_1/pred_id:0
(batch_normalization_13/cond_1/switch_t:0R
'batch_normalization_13/cond_1/pred_id:0'batch_normalization_13/cond_1/pred_id:0
?
)batch_normalization_13/cond_1/cond_text_1'batch_normalization_13/cond_1/pred_id:0(batch_normalization_13/cond_1/switch_f:0*?
'batch_normalization_13/cond_1/Const_1:0
'batch_normalization_13/cond_1/pred_id:0
(batch_normalization_13/cond_1/switch_f:0R
'batch_normalization_13/cond_1/pred_id:0'batch_normalization_13/cond_1/pred_id:0
?	
%batch_normalization_14/cond/cond_text%batch_normalization_14/cond/pred_id:0&batch_normalization_14/cond/switch_t:0 *?
batch_normalization_14/beta:0
#batch_normalization_14/cond/Const:0
%batch_normalization_14/cond/Const_1:0
3batch_normalization_14/cond/FusedBatchNorm/Switch:1
,batch_normalization_14/cond/FusedBatchNorm:0
,batch_normalization_14/cond/FusedBatchNorm:1
,batch_normalization_14/cond/FusedBatchNorm:2
,batch_normalization_14/cond/FusedBatchNorm:3
,batch_normalization_14/cond/FusedBatchNorm:4
3batch_normalization_14/cond/ReadVariableOp/Switch:1
,batch_normalization_14/cond/ReadVariableOp:0
5batch_normalization_14/cond/ReadVariableOp_1/Switch:1
.batch_normalization_14/cond/ReadVariableOp_1:0
%batch_normalization_14/cond/pred_id:0
&batch_normalization_14/cond/switch_t:0
batch_normalization_14/gamma:0
conv2d_9/BiasAdd:0U
batch_normalization_14/gamma:03batch_normalization_14/cond/ReadVariableOp/Switch:1I
conv2d_9/BiasAdd:03batch_normalization_14/cond/FusedBatchNorm/Switch:1V
batch_normalization_14/beta:05batch_normalization_14/cond/ReadVariableOp_1/Switch:1N
%batch_normalization_14/cond/pred_id:0%batch_normalization_14/cond/pred_id:0
?
'batch_normalization_14/cond/cond_text_1%batch_normalization_14/cond/pred_id:0&batch_normalization_14/cond/switch_f:0*?
batch_normalization_14/beta:0
Dbatch_normalization_14/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0
=batch_normalization_14/cond/FusedBatchNorm_1/ReadVariableOp:0
Fbatch_normalization_14/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
?batch_normalization_14/cond/FusedBatchNorm_1/ReadVariableOp_1:0
5batch_normalization_14/cond/FusedBatchNorm_1/Switch:0
.batch_normalization_14/cond/FusedBatchNorm_1:0
.batch_normalization_14/cond/FusedBatchNorm_1:1
.batch_normalization_14/cond/FusedBatchNorm_1:2
.batch_normalization_14/cond/FusedBatchNorm_1:3
.batch_normalization_14/cond/FusedBatchNorm_1:4
5batch_normalization_14/cond/ReadVariableOp_2/Switch:0
.batch_normalization_14/cond/ReadVariableOp_2:0
5batch_normalization_14/cond/ReadVariableOp_3/Switch:0
.batch_normalization_14/cond/ReadVariableOp_3:0
%batch_normalization_14/cond/pred_id:0
&batch_normalization_14/cond/switch_f:0
batch_normalization_14/gamma:0
$batch_normalization_14/moving_mean:0
(batch_normalization_14/moving_variance:0
conv2d_9/BiasAdd:0V
batch_normalization_14/beta:05batch_normalization_14/cond/ReadVariableOp_3/Switch:0W
batch_normalization_14/gamma:05batch_normalization_14/cond/ReadVariableOp_2/Switch:0K
conv2d_9/BiasAdd:05batch_normalization_14/cond/FusedBatchNorm_1/Switch:0N
%batch_normalization_14/cond/pred_id:0%batch_normalization_14/cond/pred_id:0l
$batch_normalization_14/moving_mean:0Dbatch_normalization_14/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0r
(batch_normalization_14/moving_variance:0Fbatch_normalization_14/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
?
'batch_normalization_14/cond_1/cond_text'batch_normalization_14/cond_1/pred_id:0(batch_normalization_14/cond_1/switch_t:0 *?
%batch_normalization_14/cond_1/Const:0
'batch_normalization_14/cond_1/pred_id:0
(batch_normalization_14/cond_1/switch_t:0R
'batch_normalization_14/cond_1/pred_id:0'batch_normalization_14/cond_1/pred_id:0
?
)batch_normalization_14/cond_1/cond_text_1'batch_normalization_14/cond_1/pred_id:0(batch_normalization_14/cond_1/switch_f:0*?
'batch_normalization_14/cond_1/Const_1:0
'batch_normalization_14/cond_1/pred_id:0
(batch_normalization_14/cond_1/switch_f:0R
'batch_normalization_14/cond_1/pred_id:0'batch_normalization_14/cond_1/pred_id:0
?	
%batch_normalization_15/cond/cond_text%batch_normalization_15/cond/pred_id:0&batch_normalization_15/cond/switch_t:0 *?
batch_normalization_15/beta:0
#batch_normalization_15/cond/Const:0
%batch_normalization_15/cond/Const_1:0
3batch_normalization_15/cond/FusedBatchNorm/Switch:1
,batch_normalization_15/cond/FusedBatchNorm:0
,batch_normalization_15/cond/FusedBatchNorm:1
,batch_normalization_15/cond/FusedBatchNorm:2
,batch_normalization_15/cond/FusedBatchNorm:3
,batch_normalization_15/cond/FusedBatchNorm:4
3batch_normalization_15/cond/ReadVariableOp/Switch:1
,batch_normalization_15/cond/ReadVariableOp:0
5batch_normalization_15/cond/ReadVariableOp_1/Switch:1
.batch_normalization_15/cond/ReadVariableOp_1:0
%batch_normalization_15/cond/pred_id:0
&batch_normalization_15/cond/switch_t:0
batch_normalization_15/gamma:0
conv2d_10/BiasAdd:0V
batch_normalization_15/beta:05batch_normalization_15/cond/ReadVariableOp_1/Switch:1N
%batch_normalization_15/cond/pred_id:0%batch_normalization_15/cond/pred_id:0U
batch_normalization_15/gamma:03batch_normalization_15/cond/ReadVariableOp/Switch:1J
conv2d_10/BiasAdd:03batch_normalization_15/cond/FusedBatchNorm/Switch:1
?
'batch_normalization_15/cond/cond_text_1%batch_normalization_15/cond/pred_id:0&batch_normalization_15/cond/switch_f:0*?
batch_normalization_15/beta:0
Dbatch_normalization_15/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0
=batch_normalization_15/cond/FusedBatchNorm_1/ReadVariableOp:0
Fbatch_normalization_15/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
?batch_normalization_15/cond/FusedBatchNorm_1/ReadVariableOp_1:0
5batch_normalization_15/cond/FusedBatchNorm_1/Switch:0
.batch_normalization_15/cond/FusedBatchNorm_1:0
.batch_normalization_15/cond/FusedBatchNorm_1:1
.batch_normalization_15/cond/FusedBatchNorm_1:2
.batch_normalization_15/cond/FusedBatchNorm_1:3
.batch_normalization_15/cond/FusedBatchNorm_1:4
5batch_normalization_15/cond/ReadVariableOp_2/Switch:0
.batch_normalization_15/cond/ReadVariableOp_2:0
5batch_normalization_15/cond/ReadVariableOp_3/Switch:0
.batch_normalization_15/cond/ReadVariableOp_3:0
%batch_normalization_15/cond/pred_id:0
&batch_normalization_15/cond/switch_f:0
batch_normalization_15/gamma:0
$batch_normalization_15/moving_mean:0
(batch_normalization_15/moving_variance:0
conv2d_10/BiasAdd:0L
conv2d_10/BiasAdd:05batch_normalization_15/cond/FusedBatchNorm_1/Switch:0V
batch_normalization_15/beta:05batch_normalization_15/cond/ReadVariableOp_3/Switch:0W
batch_normalization_15/gamma:05batch_normalization_15/cond/ReadVariableOp_2/Switch:0l
$batch_normalization_15/moving_mean:0Dbatch_normalization_15/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0r
(batch_normalization_15/moving_variance:0Fbatch_normalization_15/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0N
%batch_normalization_15/cond/pred_id:0%batch_normalization_15/cond/pred_id:0
?
'batch_normalization_15/cond_1/cond_text'batch_normalization_15/cond_1/pred_id:0(batch_normalization_15/cond_1/switch_t:0 *?
%batch_normalization_15/cond_1/Const:0
'batch_normalization_15/cond_1/pred_id:0
(batch_normalization_15/cond_1/switch_t:0R
'batch_normalization_15/cond_1/pred_id:0'batch_normalization_15/cond_1/pred_id:0
?
)batch_normalization_15/cond_1/cond_text_1'batch_normalization_15/cond_1/pred_id:0(batch_normalization_15/cond_1/switch_f:0*?
'batch_normalization_15/cond_1/Const_1:0
'batch_normalization_15/cond_1/pred_id:0
(batch_normalization_15/cond_1/switch_f:0R
'batch_normalization_15/cond_1/pred_id:0'batch_normalization_15/cond_1/pred_id:0
?	
%batch_normalization_16/cond/cond_text%batch_normalization_16/cond/pred_id:0&batch_normalization_16/cond/switch_t:0 *?
batch_normalization_16/beta:0
#batch_normalization_16/cond/Const:0
%batch_normalization_16/cond/Const_1:0
3batch_normalization_16/cond/FusedBatchNorm/Switch:1
,batch_normalization_16/cond/FusedBatchNorm:0
,batch_normalization_16/cond/FusedBatchNorm:1
,batch_normalization_16/cond/FusedBatchNorm:2
,batch_normalization_16/cond/FusedBatchNorm:3
,batch_normalization_16/cond/FusedBatchNorm:4
3batch_normalization_16/cond/ReadVariableOp/Switch:1
,batch_normalization_16/cond/ReadVariableOp:0
5batch_normalization_16/cond/ReadVariableOp_1/Switch:1
.batch_normalization_16/cond/ReadVariableOp_1:0
%batch_normalization_16/cond/pred_id:0
&batch_normalization_16/cond/switch_t:0
batch_normalization_16/gamma:0
conv2d_11/BiasAdd:0V
batch_normalization_16/beta:05batch_normalization_16/cond/ReadVariableOp_1/Switch:1N
%batch_normalization_16/cond/pred_id:0%batch_normalization_16/cond/pred_id:0U
batch_normalization_16/gamma:03batch_normalization_16/cond/ReadVariableOp/Switch:1J
conv2d_11/BiasAdd:03batch_normalization_16/cond/FusedBatchNorm/Switch:1
?
'batch_normalization_16/cond/cond_text_1%batch_normalization_16/cond/pred_id:0&batch_normalization_16/cond/switch_f:0*?
batch_normalization_16/beta:0
Dbatch_normalization_16/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0
=batch_normalization_16/cond/FusedBatchNorm_1/ReadVariableOp:0
Fbatch_normalization_16/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
?batch_normalization_16/cond/FusedBatchNorm_1/ReadVariableOp_1:0
5batch_normalization_16/cond/FusedBatchNorm_1/Switch:0
.batch_normalization_16/cond/FusedBatchNorm_1:0
.batch_normalization_16/cond/FusedBatchNorm_1:1
.batch_normalization_16/cond/FusedBatchNorm_1:2
.batch_normalization_16/cond/FusedBatchNorm_1:3
.batch_normalization_16/cond/FusedBatchNorm_1:4
5batch_normalization_16/cond/ReadVariableOp_2/Switch:0
.batch_normalization_16/cond/ReadVariableOp_2:0
5batch_normalization_16/cond/ReadVariableOp_3/Switch:0
.batch_normalization_16/cond/ReadVariableOp_3:0
%batch_normalization_16/cond/pred_id:0
&batch_normalization_16/cond/switch_f:0
batch_normalization_16/gamma:0
$batch_normalization_16/moving_mean:0
(batch_normalization_16/moving_variance:0
conv2d_11/BiasAdd:0V
batch_normalization_16/beta:05batch_normalization_16/cond/ReadVariableOp_3/Switch:0l
$batch_normalization_16/moving_mean:0Dbatch_normalization_16/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0r
(batch_normalization_16/moving_variance:0Fbatch_normalization_16/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0N
%batch_normalization_16/cond/pred_id:0%batch_normalization_16/cond/pred_id:0L
conv2d_11/BiasAdd:05batch_normalization_16/cond/FusedBatchNorm_1/Switch:0W
batch_normalization_16/gamma:05batch_normalization_16/cond/ReadVariableOp_2/Switch:0
?
'batch_normalization_16/cond_1/cond_text'batch_normalization_16/cond_1/pred_id:0(batch_normalization_16/cond_1/switch_t:0 *?
%batch_normalization_16/cond_1/Const:0
'batch_normalization_16/cond_1/pred_id:0
(batch_normalization_16/cond_1/switch_t:0R
'batch_normalization_16/cond_1/pred_id:0'batch_normalization_16/cond_1/pred_id:0
?
)batch_normalization_16/cond_1/cond_text_1'batch_normalization_16/cond_1/pred_id:0(batch_normalization_16/cond_1/switch_f:0*?
'batch_normalization_16/cond_1/Const_1:0
'batch_normalization_16/cond_1/pred_id:0
(batch_normalization_16/cond_1/switch_f:0R
'batch_normalization_16/cond_1/pred_id:0'batch_normalization_16/cond_1/pred_id:0
?	
%batch_normalization_17/cond/cond_text%batch_normalization_17/cond/pred_id:0&batch_normalization_17/cond/switch_t:0 *?
batch_normalization_17/beta:0
#batch_normalization_17/cond/Const:0
%batch_normalization_17/cond/Const_1:0
3batch_normalization_17/cond/FusedBatchNorm/Switch:1
,batch_normalization_17/cond/FusedBatchNorm:0
,batch_normalization_17/cond/FusedBatchNorm:1
,batch_normalization_17/cond/FusedBatchNorm:2
,batch_normalization_17/cond/FusedBatchNorm:3
,batch_normalization_17/cond/FusedBatchNorm:4
3batch_normalization_17/cond/ReadVariableOp/Switch:1
,batch_normalization_17/cond/ReadVariableOp:0
5batch_normalization_17/cond/ReadVariableOp_1/Switch:1
.batch_normalization_17/cond/ReadVariableOp_1:0
%batch_normalization_17/cond/pred_id:0
&batch_normalization_17/cond/switch_t:0
batch_normalization_17/gamma:0
conv2d_12/BiasAdd:0N
%batch_normalization_17/cond/pred_id:0%batch_normalization_17/cond/pred_id:0U
batch_normalization_17/gamma:03batch_normalization_17/cond/ReadVariableOp/Switch:1J
conv2d_12/BiasAdd:03batch_normalization_17/cond/FusedBatchNorm/Switch:1V
batch_normalization_17/beta:05batch_normalization_17/cond/ReadVariableOp_1/Switch:1
?
'batch_normalization_17/cond/cond_text_1%batch_normalization_17/cond/pred_id:0&batch_normalization_17/cond/switch_f:0*?
batch_normalization_17/beta:0
Dbatch_normalization_17/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0
=batch_normalization_17/cond/FusedBatchNorm_1/ReadVariableOp:0
Fbatch_normalization_17/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
?batch_normalization_17/cond/FusedBatchNorm_1/ReadVariableOp_1:0
5batch_normalization_17/cond/FusedBatchNorm_1/Switch:0
.batch_normalization_17/cond/FusedBatchNorm_1:0
.batch_normalization_17/cond/FusedBatchNorm_1:1
.batch_normalization_17/cond/FusedBatchNorm_1:2
.batch_normalization_17/cond/FusedBatchNorm_1:3
.batch_normalization_17/cond/FusedBatchNorm_1:4
5batch_normalization_17/cond/ReadVariableOp_2/Switch:0
.batch_normalization_17/cond/ReadVariableOp_2:0
5batch_normalization_17/cond/ReadVariableOp_3/Switch:0
.batch_normalization_17/cond/ReadVariableOp_3:0
%batch_normalization_17/cond/pred_id:0
&batch_normalization_17/cond/switch_f:0
batch_normalization_17/gamma:0
$batch_normalization_17/moving_mean:0
(batch_normalization_17/moving_variance:0
conv2d_12/BiasAdd:0N
%batch_normalization_17/cond/pred_id:0%batch_normalization_17/cond/pred_id:0W
batch_normalization_17/gamma:05batch_normalization_17/cond/ReadVariableOp_2/Switch:0V
batch_normalization_17/beta:05batch_normalization_17/cond/ReadVariableOp_3/Switch:0l
$batch_normalization_17/moving_mean:0Dbatch_normalization_17/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0r
(batch_normalization_17/moving_variance:0Fbatch_normalization_17/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0L
conv2d_12/BiasAdd:05batch_normalization_17/cond/FusedBatchNorm_1/Switch:0
?
'batch_normalization_17/cond_1/cond_text'batch_normalization_17/cond_1/pred_id:0(batch_normalization_17/cond_1/switch_t:0 *?
%batch_normalization_17/cond_1/Const:0
'batch_normalization_17/cond_1/pred_id:0
(batch_normalization_17/cond_1/switch_t:0R
'batch_normalization_17/cond_1/pred_id:0'batch_normalization_17/cond_1/pred_id:0
?
)batch_normalization_17/cond_1/cond_text_1'batch_normalization_17/cond_1/pred_id:0(batch_normalization_17/cond_1/switch_f:0*?
'batch_normalization_17/cond_1/Const_1:0
'batch_normalization_17/cond_1/pred_id:0
(batch_normalization_17/cond_1/switch_f:0R
'batch_normalization_17/cond_1/pred_id:0'batch_normalization_17/cond_1/pred_id:0
?	
%batch_normalization_18/cond/cond_text%batch_normalization_18/cond/pred_id:0&batch_normalization_18/cond/switch_t:0 *?
batch_normalization_18/beta:0
#batch_normalization_18/cond/Const:0
%batch_normalization_18/cond/Const_1:0
3batch_normalization_18/cond/FusedBatchNorm/Switch:1
,batch_normalization_18/cond/FusedBatchNorm:0
,batch_normalization_18/cond/FusedBatchNorm:1
,batch_normalization_18/cond/FusedBatchNorm:2
,batch_normalization_18/cond/FusedBatchNorm:3
,batch_normalization_18/cond/FusedBatchNorm:4
3batch_normalization_18/cond/ReadVariableOp/Switch:1
,batch_normalization_18/cond/ReadVariableOp:0
5batch_normalization_18/cond/ReadVariableOp_1/Switch:1
.batch_normalization_18/cond/ReadVariableOp_1:0
%batch_normalization_18/cond/pred_id:0
&batch_normalization_18/cond/switch_t:0
batch_normalization_18/gamma:0
re_lu_1_1/Relu:0G
re_lu_1_1/Relu:03batch_normalization_18/cond/FusedBatchNorm/Switch:1V
batch_normalization_18/beta:05batch_normalization_18/cond/ReadVariableOp_1/Switch:1N
%batch_normalization_18/cond/pred_id:0%batch_normalization_18/cond/pred_id:0U
batch_normalization_18/gamma:03batch_normalization_18/cond/ReadVariableOp/Switch:1
?
'batch_normalization_18/cond/cond_text_1%batch_normalization_18/cond/pred_id:0&batch_normalization_18/cond/switch_f:0*?
batch_normalization_18/beta:0
Dbatch_normalization_18/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0
=batch_normalization_18/cond/FusedBatchNorm_1/ReadVariableOp:0
Fbatch_normalization_18/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
?batch_normalization_18/cond/FusedBatchNorm_1/ReadVariableOp_1:0
5batch_normalization_18/cond/FusedBatchNorm_1/Switch:0
.batch_normalization_18/cond/FusedBatchNorm_1:0
.batch_normalization_18/cond/FusedBatchNorm_1:1
.batch_normalization_18/cond/FusedBatchNorm_1:2
.batch_normalization_18/cond/FusedBatchNorm_1:3
.batch_normalization_18/cond/FusedBatchNorm_1:4
5batch_normalization_18/cond/ReadVariableOp_2/Switch:0
.batch_normalization_18/cond/ReadVariableOp_2:0
5batch_normalization_18/cond/ReadVariableOp_3/Switch:0
.batch_normalization_18/cond/ReadVariableOp_3:0
%batch_normalization_18/cond/pred_id:0
&batch_normalization_18/cond/switch_f:0
batch_normalization_18/gamma:0
$batch_normalization_18/moving_mean:0
(batch_normalization_18/moving_variance:0
re_lu_1_1/Relu:0V
batch_normalization_18/beta:05batch_normalization_18/cond/ReadVariableOp_3/Switch:0W
batch_normalization_18/gamma:05batch_normalization_18/cond/ReadVariableOp_2/Switch:0I
re_lu_1_1/Relu:05batch_normalization_18/cond/FusedBatchNorm_1/Switch:0N
%batch_normalization_18/cond/pred_id:0%batch_normalization_18/cond/pred_id:0l
$batch_normalization_18/moving_mean:0Dbatch_normalization_18/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0r
(batch_normalization_18/moving_variance:0Fbatch_normalization_18/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
?
'batch_normalization_18/cond_1/cond_text'batch_normalization_18/cond_1/pred_id:0(batch_normalization_18/cond_1/switch_t:0 *?
%batch_normalization_18/cond_1/Const:0
'batch_normalization_18/cond_1/pred_id:0
(batch_normalization_18/cond_1/switch_t:0R
'batch_normalization_18/cond_1/pred_id:0'batch_normalization_18/cond_1/pred_id:0
?
)batch_normalization_18/cond_1/cond_text_1'batch_normalization_18/cond_1/pred_id:0(batch_normalization_18/cond_1/switch_f:0*?
'batch_normalization_18/cond_1/Const_1:0
'batch_normalization_18/cond_1/pred_id:0
(batch_normalization_18/cond_1/switch_f:0R
'batch_normalization_18/cond_1/pred_id:0'batch_normalization_18/cond_1/pred_id:0
?
dropout_3/cond/cond_textdropout_3/cond/pred_id:0dropout_3/cond/switch_t:0 *?
#batch_normalization_18/cond/Merge:0
dropout_3/cond/dropout/Cast:0
%dropout_3/cond/dropout/GreaterEqual:0
%dropout_3/cond/dropout/Shape/Switch:1
dropout_3/cond/dropout/Shape:0
dropout_3/cond/dropout/mul:0
dropout_3/cond/dropout/mul_1:0
5dropout_3/cond/dropout/random_uniform/RandomUniform:0
+dropout_3/cond/dropout/random_uniform/max:0
+dropout_3/cond/dropout/random_uniform/min:0
+dropout_3/cond/dropout/random_uniform/mul:0
+dropout_3/cond/dropout/random_uniform/sub:0
'dropout_3/cond/dropout/random_uniform:0
dropout_3/cond/dropout/rate:0
dropout_3/cond/dropout/sub/x:0
dropout_3/cond/dropout/sub:0
"dropout_3/cond/dropout/truediv/x:0
 dropout_3/cond/dropout/truediv:0
dropout_3/cond/pred_id:0
dropout_3/cond/switch_t:0L
#batch_normalization_18/cond/Merge:0%dropout_3/cond/dropout/Shape/Switch:14
dropout_3/cond/pred_id:0dropout_3/cond/pred_id:0
?
dropout_3/cond/cond_text_1dropout_3/cond/pred_id:0dropout_3/cond/switch_f:0*?
#batch_normalization_18/cond/Merge:0
 dropout_3/cond/Identity/Switch:0
dropout_3/cond/Identity:0
dropout_3/cond/pred_id:0
dropout_3/cond/switch_f:0G
#batch_normalization_18/cond/Merge:0 dropout_3/cond/Identity/Switch:04
dropout_3/cond/pred_id:0dropout_3/cond/pred_id:0
?	
%batch_normalization_19/cond/cond_text%batch_normalization_19/cond/pred_id:0&batch_normalization_19/cond/switch_t:0 *?
batch_normalization_19/beta:0
#batch_normalization_19/cond/Const:0
%batch_normalization_19/cond/Const_1:0
3batch_normalization_19/cond/FusedBatchNorm/Switch:1
,batch_normalization_19/cond/FusedBatchNorm:0
,batch_normalization_19/cond/FusedBatchNorm:1
,batch_normalization_19/cond/FusedBatchNorm:2
,batch_normalization_19/cond/FusedBatchNorm:3
,batch_normalization_19/cond/FusedBatchNorm:4
3batch_normalization_19/cond/ReadVariableOp/Switch:1
,batch_normalization_19/cond/ReadVariableOp:0
5batch_normalization_19/cond/ReadVariableOp_1/Switch:1
.batch_normalization_19/cond/ReadVariableOp_1:0
%batch_normalization_19/cond/pred_id:0
&batch_normalization_19/cond/switch_t:0
batch_normalization_19/gamma:0
re_lu_1_2/Relu:0U
batch_normalization_19/gamma:03batch_normalization_19/cond/ReadVariableOp/Switch:1G
re_lu_1_2/Relu:03batch_normalization_19/cond/FusedBatchNorm/Switch:1V
batch_normalization_19/beta:05batch_normalization_19/cond/ReadVariableOp_1/Switch:1N
%batch_normalization_19/cond/pred_id:0%batch_normalization_19/cond/pred_id:0
?
'batch_normalization_19/cond/cond_text_1%batch_normalization_19/cond/pred_id:0&batch_normalization_19/cond/switch_f:0*?
batch_normalization_19/beta:0
Dbatch_normalization_19/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0
=batch_normalization_19/cond/FusedBatchNorm_1/ReadVariableOp:0
Fbatch_normalization_19/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
?batch_normalization_19/cond/FusedBatchNorm_1/ReadVariableOp_1:0
5batch_normalization_19/cond/FusedBatchNorm_1/Switch:0
.batch_normalization_19/cond/FusedBatchNorm_1:0
.batch_normalization_19/cond/FusedBatchNorm_1:1
.batch_normalization_19/cond/FusedBatchNorm_1:2
.batch_normalization_19/cond/FusedBatchNorm_1:3
.batch_normalization_19/cond/FusedBatchNorm_1:4
5batch_normalization_19/cond/ReadVariableOp_2/Switch:0
.batch_normalization_19/cond/ReadVariableOp_2:0
5batch_normalization_19/cond/ReadVariableOp_3/Switch:0
.batch_normalization_19/cond/ReadVariableOp_3:0
%batch_normalization_19/cond/pred_id:0
&batch_normalization_19/cond/switch_f:0
batch_normalization_19/gamma:0
$batch_normalization_19/moving_mean:0
(batch_normalization_19/moving_variance:0
re_lu_1_2/Relu:0I
re_lu_1_2/Relu:05batch_normalization_19/cond/FusedBatchNorm_1/Switch:0W
batch_normalization_19/gamma:05batch_normalization_19/cond/ReadVariableOp_2/Switch:0l
$batch_normalization_19/moving_mean:0Dbatch_normalization_19/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0r
(batch_normalization_19/moving_variance:0Fbatch_normalization_19/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0N
%batch_normalization_19/cond/pred_id:0%batch_normalization_19/cond/pred_id:0V
batch_normalization_19/beta:05batch_normalization_19/cond/ReadVariableOp_3/Switch:0
?
'batch_normalization_19/cond_1/cond_text'batch_normalization_19/cond_1/pred_id:0(batch_normalization_19/cond_1/switch_t:0 *?
%batch_normalization_19/cond_1/Const:0
'batch_normalization_19/cond_1/pred_id:0
(batch_normalization_19/cond_1/switch_t:0R
'batch_normalization_19/cond_1/pred_id:0'batch_normalization_19/cond_1/pred_id:0
?
)batch_normalization_19/cond_1/cond_text_1'batch_normalization_19/cond_1/pred_id:0(batch_normalization_19/cond_1/switch_f:0*?
'batch_normalization_19/cond_1/Const_1:0
'batch_normalization_19/cond_1/pred_id:0
(batch_normalization_19/cond_1/switch_f:0R
'batch_normalization_19/cond_1/pred_id:0'batch_normalization_19/cond_1/pred_id:0
?
dropout_4/cond/cond_textdropout_4/cond/pred_id:0dropout_4/cond/switch_t:0 *?
#batch_normalization_19/cond/Merge:0
dropout_4/cond/dropout/Cast:0
%dropout_4/cond/dropout/GreaterEqual:0
%dropout_4/cond/dropout/Shape/Switch:1
dropout_4/cond/dropout/Shape:0
dropout_4/cond/dropout/mul:0
dropout_4/cond/dropout/mul_1:0
5dropout_4/cond/dropout/random_uniform/RandomUniform:0
+dropout_4/cond/dropout/random_uniform/max:0
+dropout_4/cond/dropout/random_uniform/min:0
+dropout_4/cond/dropout/random_uniform/mul:0
+dropout_4/cond/dropout/random_uniform/sub:0
'dropout_4/cond/dropout/random_uniform:0
dropout_4/cond/dropout/rate:0
dropout_4/cond/dropout/sub/x:0
dropout_4/cond/dropout/sub:0
"dropout_4/cond/dropout/truediv/x:0
 dropout_4/cond/dropout/truediv:0
dropout_4/cond/pred_id:0
dropout_4/cond/switch_t:0L
#batch_normalization_19/cond/Merge:0%dropout_4/cond/dropout/Shape/Switch:14
dropout_4/cond/pred_id:0dropout_4/cond/pred_id:0
?
dropout_4/cond/cond_text_1dropout_4/cond/pred_id:0dropout_4/cond/switch_f:0*?
#batch_normalization_19/cond/Merge:0
 dropout_4/cond/Identity/Switch:0
dropout_4/cond/Identity:0
dropout_4/cond/pred_id:0
dropout_4/cond/switch_f:0G
#batch_normalization_19/cond/Merge:0 dropout_4/cond/Identity/Switch:04
dropout_4/cond/pred_id:0dropout_4/cond/pred_id:0
?	
%batch_normalization_20/cond/cond_text%batch_normalization_20/cond/pred_id:0&batch_normalization_20/cond/switch_t:0 *?
batch_normalization_20/beta:0
#batch_normalization_20/cond/Const:0
%batch_normalization_20/cond/Const_1:0
3batch_normalization_20/cond/FusedBatchNorm/Switch:1
,batch_normalization_20/cond/FusedBatchNorm:0
,batch_normalization_20/cond/FusedBatchNorm:1
,batch_normalization_20/cond/FusedBatchNorm:2
,batch_normalization_20/cond/FusedBatchNorm:3
,batch_normalization_20/cond/FusedBatchNorm:4
3batch_normalization_20/cond/ReadVariableOp/Switch:1
,batch_normalization_20/cond/ReadVariableOp:0
5batch_normalization_20/cond/ReadVariableOp_1/Switch:1
.batch_normalization_20/cond/ReadVariableOp_1:0
%batch_normalization_20/cond/pred_id:0
&batch_normalization_20/cond/switch_t:0
batch_normalization_20/gamma:0
re_lu_1_3/Relu:0U
batch_normalization_20/gamma:03batch_normalization_20/cond/ReadVariableOp/Switch:1V
batch_normalization_20/beta:05batch_normalization_20/cond/ReadVariableOp_1/Switch:1G
re_lu_1_3/Relu:03batch_normalization_20/cond/FusedBatchNorm/Switch:1N
%batch_normalization_20/cond/pred_id:0%batch_normalization_20/cond/pred_id:0
?
'batch_normalization_20/cond/cond_text_1%batch_normalization_20/cond/pred_id:0&batch_normalization_20/cond/switch_f:0*?
batch_normalization_20/beta:0
Dbatch_normalization_20/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0
=batch_normalization_20/cond/FusedBatchNorm_1/ReadVariableOp:0
Fbatch_normalization_20/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
?batch_normalization_20/cond/FusedBatchNorm_1/ReadVariableOp_1:0
5batch_normalization_20/cond/FusedBatchNorm_1/Switch:0
.batch_normalization_20/cond/FusedBatchNorm_1:0
.batch_normalization_20/cond/FusedBatchNorm_1:1
.batch_normalization_20/cond/FusedBatchNorm_1:2
.batch_normalization_20/cond/FusedBatchNorm_1:3
.batch_normalization_20/cond/FusedBatchNorm_1:4
5batch_normalization_20/cond/ReadVariableOp_2/Switch:0
.batch_normalization_20/cond/ReadVariableOp_2:0
5batch_normalization_20/cond/ReadVariableOp_3/Switch:0
.batch_normalization_20/cond/ReadVariableOp_3:0
%batch_normalization_20/cond/pred_id:0
&batch_normalization_20/cond/switch_f:0
batch_normalization_20/gamma:0
$batch_normalization_20/moving_mean:0
(batch_normalization_20/moving_variance:0
re_lu_1_3/Relu:0V
batch_normalization_20/beta:05batch_normalization_20/cond/ReadVariableOp_3/Switch:0W
batch_normalization_20/gamma:05batch_normalization_20/cond/ReadVariableOp_2/Switch:0I
re_lu_1_3/Relu:05batch_normalization_20/cond/FusedBatchNorm_1/Switch:0l
$batch_normalization_20/moving_mean:0Dbatch_normalization_20/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0r
(batch_normalization_20/moving_variance:0Fbatch_normalization_20/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0N
%batch_normalization_20/cond/pred_id:0%batch_normalization_20/cond/pred_id:0
?
'batch_normalization_20/cond_1/cond_text'batch_normalization_20/cond_1/pred_id:0(batch_normalization_20/cond_1/switch_t:0 *?
%batch_normalization_20/cond_1/Const:0
'batch_normalization_20/cond_1/pred_id:0
(batch_normalization_20/cond_1/switch_t:0R
'batch_normalization_20/cond_1/pred_id:0'batch_normalization_20/cond_1/pred_id:0
?
)batch_normalization_20/cond_1/cond_text_1'batch_normalization_20/cond_1/pred_id:0(batch_normalization_20/cond_1/switch_f:0*?
'batch_normalization_20/cond_1/Const_1:0
'batch_normalization_20/cond_1/pred_id:0
(batch_normalization_20/cond_1/switch_f:0R
'batch_normalization_20/cond_1/pred_id:0'batch_normalization_20/cond_1/pred_id:0
?
dropout_5/cond/cond_textdropout_5/cond/pred_id:0dropout_5/cond/switch_t:0 *?
#batch_normalization_20/cond/Merge:0
dropout_5/cond/dropout/Cast:0
%dropout_5/cond/dropout/GreaterEqual:0
%dropout_5/cond/dropout/Shape/Switch:1
dropout_5/cond/dropout/Shape:0
dropout_5/cond/dropout/mul:0
dropout_5/cond/dropout/mul_1:0
5dropout_5/cond/dropout/random_uniform/RandomUniform:0
+dropout_5/cond/dropout/random_uniform/max:0
+dropout_5/cond/dropout/random_uniform/min:0
+dropout_5/cond/dropout/random_uniform/mul:0
+dropout_5/cond/dropout/random_uniform/sub:0
'dropout_5/cond/dropout/random_uniform:0
dropout_5/cond/dropout/rate:0
dropout_5/cond/dropout/sub/x:0
dropout_5/cond/dropout/sub:0
"dropout_5/cond/dropout/truediv/x:0
 dropout_5/cond/dropout/truediv:0
dropout_5/cond/pred_id:0
dropout_5/cond/switch_t:0L
#batch_normalization_20/cond/Merge:0%dropout_5/cond/dropout/Shape/Switch:14
dropout_5/cond/pred_id:0dropout_5/cond/pred_id:0
?
dropout_5/cond/cond_text_1dropout_5/cond/pred_id:0dropout_5/cond/switch_f:0*?
#batch_normalization_20/cond/Merge:0
 dropout_5/cond/Identity/Switch:0
dropout_5/cond/Identity:0
dropout_5/cond/pred_id:0
dropout_5/cond/switch_f:04
dropout_5/cond/pred_id:0dropout_5/cond/pred_id:0G
#batch_normalization_20/cond/Merge:0 dropout_5/cond/Identity/Switch:0
?	
%batch_normalization_21/cond/cond_text%batch_normalization_21/cond/pred_id:0&batch_normalization_21/cond/switch_t:0 *?
batch_normalization_21/beta:0
#batch_normalization_21/cond/Const:0
%batch_normalization_21/cond/Const_1:0
3batch_normalization_21/cond/FusedBatchNorm/Switch:1
,batch_normalization_21/cond/FusedBatchNorm:0
,batch_normalization_21/cond/FusedBatchNorm:1
,batch_normalization_21/cond/FusedBatchNorm:2
,batch_normalization_21/cond/FusedBatchNorm:3
,batch_normalization_21/cond/FusedBatchNorm:4
3batch_normalization_21/cond/ReadVariableOp/Switch:1
,batch_normalization_21/cond/ReadVariableOp:0
5batch_normalization_21/cond/ReadVariableOp_1/Switch:1
.batch_normalization_21/cond/ReadVariableOp_1:0
%batch_normalization_21/cond/pred_id:0
&batch_normalization_21/cond/switch_t:0
batch_normalization_21/gamma:0
re_lu_1_4/Relu:0V
batch_normalization_21/beta:05batch_normalization_21/cond/ReadVariableOp_1/Switch:1G
re_lu_1_4/Relu:03batch_normalization_21/cond/FusedBatchNorm/Switch:1N
%batch_normalization_21/cond/pred_id:0%batch_normalization_21/cond/pred_id:0U
batch_normalization_21/gamma:03batch_normalization_21/cond/ReadVariableOp/Switch:1
?
'batch_normalization_21/cond/cond_text_1%batch_normalization_21/cond/pred_id:0&batch_normalization_21/cond/switch_f:0*?
batch_normalization_21/beta:0
Dbatch_normalization_21/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0
=batch_normalization_21/cond/FusedBatchNorm_1/ReadVariableOp:0
Fbatch_normalization_21/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
?batch_normalization_21/cond/FusedBatchNorm_1/ReadVariableOp_1:0
5batch_normalization_21/cond/FusedBatchNorm_1/Switch:0
.batch_normalization_21/cond/FusedBatchNorm_1:0
.batch_normalization_21/cond/FusedBatchNorm_1:1
.batch_normalization_21/cond/FusedBatchNorm_1:2
.batch_normalization_21/cond/FusedBatchNorm_1:3
.batch_normalization_21/cond/FusedBatchNorm_1:4
5batch_normalization_21/cond/ReadVariableOp_2/Switch:0
.batch_normalization_21/cond/ReadVariableOp_2:0
5batch_normalization_21/cond/ReadVariableOp_3/Switch:0
.batch_normalization_21/cond/ReadVariableOp_3:0
%batch_normalization_21/cond/pred_id:0
&batch_normalization_21/cond/switch_f:0
batch_normalization_21/gamma:0
$batch_normalization_21/moving_mean:0
(batch_normalization_21/moving_variance:0
re_lu_1_4/Relu:0V
batch_normalization_21/beta:05batch_normalization_21/cond/ReadVariableOp_3/Switch:0l
$batch_normalization_21/moving_mean:0Dbatch_normalization_21/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0r
(batch_normalization_21/moving_variance:0Fbatch_normalization_21/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0I
re_lu_1_4/Relu:05batch_normalization_21/cond/FusedBatchNorm_1/Switch:0N
%batch_normalization_21/cond/pred_id:0%batch_normalization_21/cond/pred_id:0W
batch_normalization_21/gamma:05batch_normalization_21/cond/ReadVariableOp_2/Switch:0
?
'batch_normalization_21/cond_1/cond_text'batch_normalization_21/cond_1/pred_id:0(batch_normalization_21/cond_1/switch_t:0 *?
%batch_normalization_21/cond_1/Const:0
'batch_normalization_21/cond_1/pred_id:0
(batch_normalization_21/cond_1/switch_t:0R
'batch_normalization_21/cond_1/pred_id:0'batch_normalization_21/cond_1/pred_id:0
?
)batch_normalization_21/cond_1/cond_text_1'batch_normalization_21/cond_1/pred_id:0(batch_normalization_21/cond_1/switch_f:0*?
'batch_normalization_21/cond_1/Const_1:0
'batch_normalization_21/cond_1/pred_id:0
(batch_normalization_21/cond_1/switch_f:0R
'batch_normalization_21/cond_1/pred_id:0'batch_normalization_21/cond_1/pred_id:0
?	
%batch_normalization_22/cond/cond_text%batch_normalization_22/cond/pred_id:0&batch_normalization_22/cond/switch_t:0 *?
batch_normalization_22/beta:0
#batch_normalization_22/cond/Const:0
%batch_normalization_22/cond/Const_1:0
3batch_normalization_22/cond/FusedBatchNorm/Switch:1
,batch_normalization_22/cond/FusedBatchNorm:0
,batch_normalization_22/cond/FusedBatchNorm:1
,batch_normalization_22/cond/FusedBatchNorm:2
,batch_normalization_22/cond/FusedBatchNorm:3
,batch_normalization_22/cond/FusedBatchNorm:4
3batch_normalization_22/cond/ReadVariableOp/Switch:1
,batch_normalization_22/cond/ReadVariableOp:0
5batch_normalization_22/cond/ReadVariableOp_1/Switch:1
.batch_normalization_22/cond/ReadVariableOp_1:0
%batch_normalization_22/cond/pred_id:0
&batch_normalization_22/cond/switch_t:0
batch_normalization_22/gamma:0
re_lu_1_5/Relu:0N
%batch_normalization_22/cond/pred_id:0%batch_normalization_22/cond/pred_id:0U
batch_normalization_22/gamma:03batch_normalization_22/cond/ReadVariableOp/Switch:1V
batch_normalization_22/beta:05batch_normalization_22/cond/ReadVariableOp_1/Switch:1G
re_lu_1_5/Relu:03batch_normalization_22/cond/FusedBatchNorm/Switch:1
?
'batch_normalization_22/cond/cond_text_1%batch_normalization_22/cond/pred_id:0&batch_normalization_22/cond/switch_f:0*?
batch_normalization_22/beta:0
Dbatch_normalization_22/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0
=batch_normalization_22/cond/FusedBatchNorm_1/ReadVariableOp:0
Fbatch_normalization_22/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
?batch_normalization_22/cond/FusedBatchNorm_1/ReadVariableOp_1:0
5batch_normalization_22/cond/FusedBatchNorm_1/Switch:0
.batch_normalization_22/cond/FusedBatchNorm_1:0
.batch_normalization_22/cond/FusedBatchNorm_1:1
.batch_normalization_22/cond/FusedBatchNorm_1:2
.batch_normalization_22/cond/FusedBatchNorm_1:3
.batch_normalization_22/cond/FusedBatchNorm_1:4
5batch_normalization_22/cond/ReadVariableOp_2/Switch:0
.batch_normalization_22/cond/ReadVariableOp_2:0
5batch_normalization_22/cond/ReadVariableOp_3/Switch:0
.batch_normalization_22/cond/ReadVariableOp_3:0
%batch_normalization_22/cond/pred_id:0
&batch_normalization_22/cond/switch_f:0
batch_normalization_22/gamma:0
$batch_normalization_22/moving_mean:0
(batch_normalization_22/moving_variance:0
re_lu_1_5/Relu:0W
batch_normalization_22/gamma:05batch_normalization_22/cond/ReadVariableOp_2/Switch:0r
(batch_normalization_22/moving_variance:0Fbatch_normalization_22/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0V
batch_normalization_22/beta:05batch_normalization_22/cond/ReadVariableOp_3/Switch:0l
$batch_normalization_22/moving_mean:0Dbatch_normalization_22/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0I
re_lu_1_5/Relu:05batch_normalization_22/cond/FusedBatchNorm_1/Switch:0N
%batch_normalization_22/cond/pred_id:0%batch_normalization_22/cond/pred_id:0
?
'batch_normalization_22/cond_1/cond_text'batch_normalization_22/cond_1/pred_id:0(batch_normalization_22/cond_1/switch_t:0 *?
%batch_normalization_22/cond_1/Const:0
'batch_normalization_22/cond_1/pred_id:0
(batch_normalization_22/cond_1/switch_t:0R
'batch_normalization_22/cond_1/pred_id:0'batch_normalization_22/cond_1/pred_id:0
?
)batch_normalization_22/cond_1/cond_text_1'batch_normalization_22/cond_1/pred_id:0(batch_normalization_22/cond_1/switch_f:0*?
'batch_normalization_22/cond_1/Const_1:0
'batch_normalization_22/cond_1/pred_id:0
(batch_normalization_22/cond_1/switch_f:0R
'batch_normalization_22/cond_1/pred_id:0'batch_normalization_22/cond_1/pred_id:0
?	
%batch_normalization_23/cond/cond_text%batch_normalization_23/cond/pred_id:0&batch_normalization_23/cond/switch_t:0 *?
batch_normalization_23/beta:0
#batch_normalization_23/cond/Const:0
%batch_normalization_23/cond/Const_1:0
3batch_normalization_23/cond/FusedBatchNorm/Switch:1
,batch_normalization_23/cond/FusedBatchNorm:0
,batch_normalization_23/cond/FusedBatchNorm:1
,batch_normalization_23/cond/FusedBatchNorm:2
,batch_normalization_23/cond/FusedBatchNorm:3
,batch_normalization_23/cond/FusedBatchNorm:4
3batch_normalization_23/cond/ReadVariableOp/Switch:1
,batch_normalization_23/cond/ReadVariableOp:0
5batch_normalization_23/cond/ReadVariableOp_1/Switch:1
.batch_normalization_23/cond/ReadVariableOp_1:0
%batch_normalization_23/cond/pred_id:0
&batch_normalization_23/cond/switch_t:0
batch_normalization_23/gamma:0
re_lu_1_6/Relu:0U
batch_normalization_23/gamma:03batch_normalization_23/cond/ReadVariableOp/Switch:1V
batch_normalization_23/beta:05batch_normalization_23/cond/ReadVariableOp_1/Switch:1G
re_lu_1_6/Relu:03batch_normalization_23/cond/FusedBatchNorm/Switch:1N
%batch_normalization_23/cond/pred_id:0%batch_normalization_23/cond/pred_id:0
?
'batch_normalization_23/cond/cond_text_1%batch_normalization_23/cond/pred_id:0&batch_normalization_23/cond/switch_f:0*?
batch_normalization_23/beta:0
Dbatch_normalization_23/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0
=batch_normalization_23/cond/FusedBatchNorm_1/ReadVariableOp:0
Fbatch_normalization_23/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0
?batch_normalization_23/cond/FusedBatchNorm_1/ReadVariableOp_1:0
5batch_normalization_23/cond/FusedBatchNorm_1/Switch:0
.batch_normalization_23/cond/FusedBatchNorm_1:0
.batch_normalization_23/cond/FusedBatchNorm_1:1
.batch_normalization_23/cond/FusedBatchNorm_1:2
.batch_normalization_23/cond/FusedBatchNorm_1:3
.batch_normalization_23/cond/FusedBatchNorm_1:4
5batch_normalization_23/cond/ReadVariableOp_2/Switch:0
.batch_normalization_23/cond/ReadVariableOp_2:0
5batch_normalization_23/cond/ReadVariableOp_3/Switch:0
.batch_normalization_23/cond/ReadVariableOp_3:0
%batch_normalization_23/cond/pred_id:0
&batch_normalization_23/cond/switch_f:0
batch_normalization_23/gamma:0
$batch_normalization_23/moving_mean:0
(batch_normalization_23/moving_variance:0
re_lu_1_6/Relu:0N
%batch_normalization_23/cond/pred_id:0%batch_normalization_23/cond/pred_id:0l
$batch_normalization_23/moving_mean:0Dbatch_normalization_23/cond/FusedBatchNorm_1/ReadVariableOp/Switch:0r
(batch_normalization_23/moving_variance:0Fbatch_normalization_23/cond/FusedBatchNorm_1/ReadVariableOp_1/Switch:0V
batch_normalization_23/beta:05batch_normalization_23/cond/ReadVariableOp_3/Switch:0W
batch_normalization_23/gamma:05batch_normalization_23/cond/ReadVariableOp_2/Switch:0I
re_lu_1_6/Relu:05batch_normalization_23/cond/FusedBatchNorm_1/Switch:0
?
'batch_normalization_23/cond_1/cond_text'batch_normalization_23/cond_1/pred_id:0(batch_normalization_23/cond_1/switch_t:0 *?
%batch_normalization_23/cond_1/Const:0
'batch_normalization_23/cond_1/pred_id:0
(batch_normalization_23/cond_1/switch_t:0R
'batch_normalization_23/cond_1/pred_id:0'batch_normalization_23/cond_1/pred_id:0
?
)batch_normalization_23/cond_1/cond_text_1'batch_normalization_23/cond_1/pred_id:0(batch_normalization_23/cond_1/switch_f:0*?
'batch_normalization_23/cond_1/Const_1:0
'batch_normalization_23/cond_1/pred_id:0
(batch_normalization_23/cond_1/switch_f:0R
'batch_normalization_23/cond_1/pred_id:0'batch_normalization_23/cond_1/pred_id:0"??
	variables????
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08
?
batch_normalization/gamma:0 batch_normalization/gamma/Assign/batch_normalization/gamma/Read/ReadVariableOp:0(2,batch_normalization/gamma/Initializer/ones:08
?
batch_normalization/beta:0batch_normalization/beta/Assign.batch_normalization/beta/Read/ReadVariableOp:0(2,batch_normalization/beta/Initializer/zeros:08
?
!batch_normalization/moving_mean:0&batch_normalization/moving_mean/Assign5batch_normalization/moving_mean/Read/ReadVariableOp:0(23batch_normalization/moving_mean/Initializer/zeros:0@H
?
%batch_normalization/moving_variance:0*batch_normalization/moving_variance/Assign9batch_normalization/moving_variance/Read/ReadVariableOp:0(26batch_normalization/moving_variance/Initializer/ones:0@H
?
conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08
?
batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign1batch_normalization_1/gamma/Read/ReadVariableOp:0(2.batch_normalization_1/gamma/Initializer/ones:08
?
batch_normalization_1/beta:0!batch_normalization_1/beta/Assign0batch_normalization_1/beta/Read/ReadVariableOp:0(2.batch_normalization_1/beta/Initializer/zeros:08
?
#batch_normalization_1/moving_mean:0(batch_normalization_1/moving_mean/Assign7batch_normalization_1/moving_mean/Read/ReadVariableOp:0(25batch_normalization_1/moving_mean/Initializer/zeros:0@H
?
'batch_normalization_1/moving_variance:0,batch_normalization_1/moving_variance/Assign;batch_normalization_1/moving_variance/Read/ReadVariableOp:0(28batch_normalization_1/moving_variance/Initializer/ones:0@H
?
conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2,conv2d_2/kernel/Initializer/random_uniform:08
s
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2!conv2d_2/bias/Initializer/zeros:08
?
batch_normalization_2/gamma:0"batch_normalization_2/gamma/Assign1batch_normalization_2/gamma/Read/ReadVariableOp:0(2.batch_normalization_2/gamma/Initializer/ones:08
?
batch_normalization_2/beta:0!batch_normalization_2/beta/Assign0batch_normalization_2/beta/Read/ReadVariableOp:0(2.batch_normalization_2/beta/Initializer/zeros:08
?
#batch_normalization_2/moving_mean:0(batch_normalization_2/moving_mean/Assign7batch_normalization_2/moving_mean/Read/ReadVariableOp:0(25batch_normalization_2/moving_mean/Initializer/zeros:0@H
?
'batch_normalization_2/moving_variance:0,batch_normalization_2/moving_variance/Assign;batch_normalization_2/moving_variance/Read/ReadVariableOp:0(28batch_normalization_2/moving_variance/Initializer/ones:0@H
?
conv2d_3/kernel:0conv2d_3/kernel/Assign%conv2d_3/kernel/Read/ReadVariableOp:0(2,conv2d_3/kernel/Initializer/random_uniform:08
s
conv2d_3/bias:0conv2d_3/bias/Assign#conv2d_3/bias/Read/ReadVariableOp:0(2!conv2d_3/bias/Initializer/zeros:08
?
batch_normalization_3/gamma:0"batch_normalization_3/gamma/Assign1batch_normalization_3/gamma/Read/ReadVariableOp:0(2.batch_normalization_3/gamma/Initializer/ones:08
?
batch_normalization_3/beta:0!batch_normalization_3/beta/Assign0batch_normalization_3/beta/Read/ReadVariableOp:0(2.batch_normalization_3/beta/Initializer/zeros:08
?
#batch_normalization_3/moving_mean:0(batch_normalization_3/moving_mean/Assign7batch_normalization_3/moving_mean/Read/ReadVariableOp:0(25batch_normalization_3/moving_mean/Initializer/zeros:0@H
?
'batch_normalization_3/moving_variance:0,batch_normalization_3/moving_variance/Assign;batch_normalization_3/moving_variance/Read/ReadVariableOp:0(28batch_normalization_3/moving_variance/Initializer/ones:0@H
?
conv2d_4/kernel:0conv2d_4/kernel/Assign%conv2d_4/kernel/Read/ReadVariableOp:0(2,conv2d_4/kernel/Initializer/random_uniform:08
s
conv2d_4/bias:0conv2d_4/bias/Assign#conv2d_4/bias/Read/ReadVariableOp:0(2!conv2d_4/bias/Initializer/zeros:08
?
batch_normalization_4/gamma:0"batch_normalization_4/gamma/Assign1batch_normalization_4/gamma/Read/ReadVariableOp:0(2.batch_normalization_4/gamma/Initializer/ones:08
?
batch_normalization_4/beta:0!batch_normalization_4/beta/Assign0batch_normalization_4/beta/Read/ReadVariableOp:0(2.batch_normalization_4/beta/Initializer/zeros:08
?
#batch_normalization_4/moving_mean:0(batch_normalization_4/moving_mean/Assign7batch_normalization_4/moving_mean/Read/ReadVariableOp:0(25batch_normalization_4/moving_mean/Initializer/zeros:0@H
?
'batch_normalization_4/moving_variance:0,batch_normalization_4/moving_variance/Assign;batch_normalization_4/moving_variance/Read/ReadVariableOp:0(28batch_normalization_4/moving_variance/Initializer/ones:0@H
?
conv2d_5/kernel:0conv2d_5/kernel/Assign%conv2d_5/kernel/Read/ReadVariableOp:0(2,conv2d_5/kernel/Initializer/random_uniform:08
s
conv2d_5/bias:0conv2d_5/bias/Assign#conv2d_5/bias/Read/ReadVariableOp:0(2!conv2d_5/bias/Initializer/zeros:08
?
batch_normalization_5/gamma:0"batch_normalization_5/gamma/Assign1batch_normalization_5/gamma/Read/ReadVariableOp:0(2.batch_normalization_5/gamma/Initializer/ones:08
?
batch_normalization_5/beta:0!batch_normalization_5/beta/Assign0batch_normalization_5/beta/Read/ReadVariableOp:0(2.batch_normalization_5/beta/Initializer/zeros:08
?
#batch_normalization_5/moving_mean:0(batch_normalization_5/moving_mean/Assign7batch_normalization_5/moving_mean/Read/ReadVariableOp:0(25batch_normalization_5/moving_mean/Initializer/zeros:0@H
?
'batch_normalization_5/moving_variance:0,batch_normalization_5/moving_variance/Assign;batch_normalization_5/moving_variance/Read/ReadVariableOp:0(28batch_normalization_5/moving_variance/Initializer/ones:0@H
?
conv2d_transpose/kernel:0conv2d_transpose/kernel/Assign-conv2d_transpose/kernel/Read/ReadVariableOp:0(24conv2d_transpose/kernel/Initializer/random_uniform:08
?
conv2d_transpose/bias:0conv2d_transpose/bias/Assign+conv2d_transpose/bias/Read/ReadVariableOp:0(2)conv2d_transpose/bias/Initializer/zeros:08
?
batch_normalization_6/gamma:0"batch_normalization_6/gamma/Assign1batch_normalization_6/gamma/Read/ReadVariableOp:0(2.batch_normalization_6/gamma/Initializer/ones:08
?
batch_normalization_6/beta:0!batch_normalization_6/beta/Assign0batch_normalization_6/beta/Read/ReadVariableOp:0(2.batch_normalization_6/beta/Initializer/zeros:08
?
#batch_normalization_6/moving_mean:0(batch_normalization_6/moving_mean/Assign7batch_normalization_6/moving_mean/Read/ReadVariableOp:0(25batch_normalization_6/moving_mean/Initializer/zeros:0@H
?
'batch_normalization_6/moving_variance:0,batch_normalization_6/moving_variance/Assign;batch_normalization_6/moving_variance/Read/ReadVariableOp:0(28batch_normalization_6/moving_variance/Initializer/ones:0@H
?
conv2d_transpose_1/kernel:0 conv2d_transpose_1/kernel/Assign/conv2d_transpose_1/kernel/Read/ReadVariableOp:0(26conv2d_transpose_1/kernel/Initializer/random_uniform:08
?
conv2d_transpose_1/bias:0conv2d_transpose_1/bias/Assign-conv2d_transpose_1/bias/Read/ReadVariableOp:0(2+conv2d_transpose_1/bias/Initializer/zeros:08
?
batch_normalization_7/gamma:0"batch_normalization_7/gamma/Assign1batch_normalization_7/gamma/Read/ReadVariableOp:0(2.batch_normalization_7/gamma/Initializer/ones:08
?
batch_normalization_7/beta:0!batch_normalization_7/beta/Assign0batch_normalization_7/beta/Read/ReadVariableOp:0(2.batch_normalization_7/beta/Initializer/zeros:08
?
#batch_normalization_7/moving_mean:0(batch_normalization_7/moving_mean/Assign7batch_normalization_7/moving_mean/Read/ReadVariableOp:0(25batch_normalization_7/moving_mean/Initializer/zeros:0@H
?
'batch_normalization_7/moving_variance:0,batch_normalization_7/moving_variance/Assign;batch_normalization_7/moving_variance/Read/ReadVariableOp:0(28batch_normalization_7/moving_variance/Initializer/ones:0@H
?
conv2d_transpose_2/kernel:0 conv2d_transpose_2/kernel/Assign/conv2d_transpose_2/kernel/Read/ReadVariableOp:0(26conv2d_transpose_2/kernel/Initializer/random_uniform:08
?
conv2d_transpose_2/bias:0conv2d_transpose_2/bias/Assign-conv2d_transpose_2/bias/Read/ReadVariableOp:0(2+conv2d_transpose_2/bias/Initializer/zeros:08
?
batch_normalization_8/gamma:0"batch_normalization_8/gamma/Assign1batch_normalization_8/gamma/Read/ReadVariableOp:0(2.batch_normalization_8/gamma/Initializer/ones:08
?
batch_normalization_8/beta:0!batch_normalization_8/beta/Assign0batch_normalization_8/beta/Read/ReadVariableOp:0(2.batch_normalization_8/beta/Initializer/zeros:08
?
#batch_normalization_8/moving_mean:0(batch_normalization_8/moving_mean/Assign7batch_normalization_8/moving_mean/Read/ReadVariableOp:0(25batch_normalization_8/moving_mean/Initializer/zeros:0@H
?
'batch_normalization_8/moving_variance:0,batch_normalization_8/moving_variance/Assign;batch_normalization_8/moving_variance/Read/ReadVariableOp:0(28batch_normalization_8/moving_variance/Initializer/ones:0@H
?
conv2d_transpose_3/kernel:0 conv2d_transpose_3/kernel/Assign/conv2d_transpose_3/kernel/Read/ReadVariableOp:0(26conv2d_transpose_3/kernel/Initializer/random_uniform:08
?
conv2d_transpose_3/bias:0conv2d_transpose_3/bias/Assign-conv2d_transpose_3/bias/Read/ReadVariableOp:0(2+conv2d_transpose_3/bias/Initializer/zeros:08
?
batch_normalization_9/gamma:0"batch_normalization_9/gamma/Assign1batch_normalization_9/gamma/Read/ReadVariableOp:0(2.batch_normalization_9/gamma/Initializer/ones:08
?
batch_normalization_9/beta:0!batch_normalization_9/beta/Assign0batch_normalization_9/beta/Read/ReadVariableOp:0(2.batch_normalization_9/beta/Initializer/zeros:08
?
#batch_normalization_9/moving_mean:0(batch_normalization_9/moving_mean/Assign7batch_normalization_9/moving_mean/Read/ReadVariableOp:0(25batch_normalization_9/moving_mean/Initializer/zeros:0@H
?
'batch_normalization_9/moving_variance:0,batch_normalization_9/moving_variance/Assign;batch_normalization_9/moving_variance/Read/ReadVariableOp:0(28batch_normalization_9/moving_variance/Initializer/ones:0@H
?
conv2d_transpose_4/kernel:0 conv2d_transpose_4/kernel/Assign/conv2d_transpose_4/kernel/Read/ReadVariableOp:0(26conv2d_transpose_4/kernel/Initializer/random_uniform:08
?
conv2d_transpose_4/bias:0conv2d_transpose_4/bias/Assign-conv2d_transpose_4/bias/Read/ReadVariableOp:0(2+conv2d_transpose_4/bias/Initializer/zeros:08
?
batch_normalization_10/gamma:0#batch_normalization_10/gamma/Assign2batch_normalization_10/gamma/Read/ReadVariableOp:0(2/batch_normalization_10/gamma/Initializer/ones:08
?
batch_normalization_10/beta:0"batch_normalization_10/beta/Assign1batch_normalization_10/beta/Read/ReadVariableOp:0(2/batch_normalization_10/beta/Initializer/zeros:08
?
$batch_normalization_10/moving_mean:0)batch_normalization_10/moving_mean/Assign8batch_normalization_10/moving_mean/Read/ReadVariableOp:0(26batch_normalization_10/moving_mean/Initializer/zeros:0@H
?
(batch_normalization_10/moving_variance:0-batch_normalization_10/moving_variance/Assign<batch_normalization_10/moving_variance/Read/ReadVariableOp:0(29batch_normalization_10/moving_variance/Initializer/ones:0@H
?
conv2d_transpose_5/kernel:0 conv2d_transpose_5/kernel/Assign/conv2d_transpose_5/kernel/Read/ReadVariableOp:0(26conv2d_transpose_5/kernel/Initializer/random_uniform:08
?
conv2d_transpose_5/bias:0conv2d_transpose_5/bias/Assign-conv2d_transpose_5/bias/Read/ReadVariableOp:0(2+conv2d_transpose_5/bias/Initializer/zeros:08
?
batch_normalization_11/gamma:0#batch_normalization_11/gamma/Assign2batch_normalization_11/gamma/Read/ReadVariableOp:0(2/batch_normalization_11/gamma/Initializer/ones:08
?
batch_normalization_11/beta:0"batch_normalization_11/beta/Assign1batch_normalization_11/beta/Read/ReadVariableOp:0(2/batch_normalization_11/beta/Initializer/zeros:08
?
$batch_normalization_11/moving_mean:0)batch_normalization_11/moving_mean/Assign8batch_normalization_11/moving_mean/Read/ReadVariableOp:0(26batch_normalization_11/moving_mean/Initializer/zeros:0@H
?
(batch_normalization_11/moving_variance:0-batch_normalization_11/moving_variance/Assign<batch_normalization_11/moving_variance/Read/ReadVariableOp:0(29batch_normalization_11/moving_variance/Initializer/ones:0@H
?
conv2d_6/kernel:0conv2d_6/kernel/Assign%conv2d_6/kernel/Read/ReadVariableOp:0(2,conv2d_6/kernel/Initializer/random_uniform:08
s
conv2d_6/bias:0conv2d_6/bias/Assign#conv2d_6/bias/Read/ReadVariableOp:0(2!conv2d_6/bias/Initializer/zeros:08
?
conv2d_7/kernel:0conv2d_7/kernel/Assign%conv2d_7/kernel/Read/ReadVariableOp:0(2,conv2d_7/kernel/Initializer/random_uniform:08
s
conv2d_7/bias:0conv2d_7/bias/Assign#conv2d_7/bias/Read/ReadVariableOp:0(2!conv2d_7/bias/Initializer/zeros:08
?
batch_normalization_12/gamma:0#batch_normalization_12/gamma/Assign2batch_normalization_12/gamma/Read/ReadVariableOp:0(2/batch_normalization_12/gamma/Initializer/ones:08
?
batch_normalization_12/beta:0"batch_normalization_12/beta/Assign1batch_normalization_12/beta/Read/ReadVariableOp:0(2/batch_normalization_12/beta/Initializer/zeros:08
?
$batch_normalization_12/moving_mean:0)batch_normalization_12/moving_mean/Assign8batch_normalization_12/moving_mean/Read/ReadVariableOp:0(26batch_normalization_12/moving_mean/Initializer/zeros:0@H
?
(batch_normalization_12/moving_variance:0-batch_normalization_12/moving_variance/Assign<batch_normalization_12/moving_variance/Read/ReadVariableOp:0(29batch_normalization_12/moving_variance/Initializer/ones:0@H
?
conv2d_8/kernel:0conv2d_8/kernel/Assign%conv2d_8/kernel/Read/ReadVariableOp:0(2,conv2d_8/kernel/Initializer/random_uniform:08
s
conv2d_8/bias:0conv2d_8/bias/Assign#conv2d_8/bias/Read/ReadVariableOp:0(2!conv2d_8/bias/Initializer/zeros:08
?
batch_normalization_13/gamma:0#batch_normalization_13/gamma/Assign2batch_normalization_13/gamma/Read/ReadVariableOp:0(2/batch_normalization_13/gamma/Initializer/ones:08
?
batch_normalization_13/beta:0"batch_normalization_13/beta/Assign1batch_normalization_13/beta/Read/ReadVariableOp:0(2/batch_normalization_13/beta/Initializer/zeros:08
?
$batch_normalization_13/moving_mean:0)batch_normalization_13/moving_mean/Assign8batch_normalization_13/moving_mean/Read/ReadVariableOp:0(26batch_normalization_13/moving_mean/Initializer/zeros:0@H
?
(batch_normalization_13/moving_variance:0-batch_normalization_13/moving_variance/Assign<batch_normalization_13/moving_variance/Read/ReadVariableOp:0(29batch_normalization_13/moving_variance/Initializer/ones:0@H
?
conv2d_9/kernel:0conv2d_9/kernel/Assign%conv2d_9/kernel/Read/ReadVariableOp:0(2,conv2d_9/kernel/Initializer/random_uniform:08
s
conv2d_9/bias:0conv2d_9/bias/Assign#conv2d_9/bias/Read/ReadVariableOp:0(2!conv2d_9/bias/Initializer/zeros:08
?
batch_normalization_14/gamma:0#batch_normalization_14/gamma/Assign2batch_normalization_14/gamma/Read/ReadVariableOp:0(2/batch_normalization_14/gamma/Initializer/ones:08
?
batch_normalization_14/beta:0"batch_normalization_14/beta/Assign1batch_normalization_14/beta/Read/ReadVariableOp:0(2/batch_normalization_14/beta/Initializer/zeros:08
?
$batch_normalization_14/moving_mean:0)batch_normalization_14/moving_mean/Assign8batch_normalization_14/moving_mean/Read/ReadVariableOp:0(26batch_normalization_14/moving_mean/Initializer/zeros:0@H
?
(batch_normalization_14/moving_variance:0-batch_normalization_14/moving_variance/Assign<batch_normalization_14/moving_variance/Read/ReadVariableOp:0(29batch_normalization_14/moving_variance/Initializer/ones:0@H
?
conv2d_10/kernel:0conv2d_10/kernel/Assign&conv2d_10/kernel/Read/ReadVariableOp:0(2-conv2d_10/kernel/Initializer/random_uniform:08
w
conv2d_10/bias:0conv2d_10/bias/Assign$conv2d_10/bias/Read/ReadVariableOp:0(2"conv2d_10/bias/Initializer/zeros:08
?
batch_normalization_15/gamma:0#batch_normalization_15/gamma/Assign2batch_normalization_15/gamma/Read/ReadVariableOp:0(2/batch_normalization_15/gamma/Initializer/ones:08
?
batch_normalization_15/beta:0"batch_normalization_15/beta/Assign1batch_normalization_15/beta/Read/ReadVariableOp:0(2/batch_normalization_15/beta/Initializer/zeros:08
?
$batch_normalization_15/moving_mean:0)batch_normalization_15/moving_mean/Assign8batch_normalization_15/moving_mean/Read/ReadVariableOp:0(26batch_normalization_15/moving_mean/Initializer/zeros:0@H
?
(batch_normalization_15/moving_variance:0-batch_normalization_15/moving_variance/Assign<batch_normalization_15/moving_variance/Read/ReadVariableOp:0(29batch_normalization_15/moving_variance/Initializer/ones:0@H
?
conv2d_11/kernel:0conv2d_11/kernel/Assign&conv2d_11/kernel/Read/ReadVariableOp:0(2-conv2d_11/kernel/Initializer/random_uniform:08
w
conv2d_11/bias:0conv2d_11/bias/Assign$conv2d_11/bias/Read/ReadVariableOp:0(2"conv2d_11/bias/Initializer/zeros:08
?
batch_normalization_16/gamma:0#batch_normalization_16/gamma/Assign2batch_normalization_16/gamma/Read/ReadVariableOp:0(2/batch_normalization_16/gamma/Initializer/ones:08
?
batch_normalization_16/beta:0"batch_normalization_16/beta/Assign1batch_normalization_16/beta/Read/ReadVariableOp:0(2/batch_normalization_16/beta/Initializer/zeros:08
?
$batch_normalization_16/moving_mean:0)batch_normalization_16/moving_mean/Assign8batch_normalization_16/moving_mean/Read/ReadVariableOp:0(26batch_normalization_16/moving_mean/Initializer/zeros:0@H
?
(batch_normalization_16/moving_variance:0-batch_normalization_16/moving_variance/Assign<batch_normalization_16/moving_variance/Read/ReadVariableOp:0(29batch_normalization_16/moving_variance/Initializer/ones:0@H
?
conv2d_12/kernel:0conv2d_12/kernel/Assign&conv2d_12/kernel/Read/ReadVariableOp:0(2-conv2d_12/kernel/Initializer/random_uniform:08
w
conv2d_12/bias:0conv2d_12/bias/Assign$conv2d_12/bias/Read/ReadVariableOp:0(2"conv2d_12/bias/Initializer/zeros:08
?
batch_normalization_17/gamma:0#batch_normalization_17/gamma/Assign2batch_normalization_17/gamma/Read/ReadVariableOp:0(2/batch_normalization_17/gamma/Initializer/ones:08
?
batch_normalization_17/beta:0"batch_normalization_17/beta/Assign1batch_normalization_17/beta/Read/ReadVariableOp:0(2/batch_normalization_17/beta/Initializer/zeros:08
?
$batch_normalization_17/moving_mean:0)batch_normalization_17/moving_mean/Assign8batch_normalization_17/moving_mean/Read/ReadVariableOp:0(26batch_normalization_17/moving_mean/Initializer/zeros:0@H
?
(batch_normalization_17/moving_variance:0-batch_normalization_17/moving_variance/Assign<batch_normalization_17/moving_variance/Read/ReadVariableOp:0(29batch_normalization_17/moving_variance/Initializer/ones:0@H
?
conv2d_transpose_6/kernel:0 conv2d_transpose_6/kernel/Assign/conv2d_transpose_6/kernel/Read/ReadVariableOp:0(26conv2d_transpose_6/kernel/Initializer/random_uniform:08
?
conv2d_transpose_6/bias:0conv2d_transpose_6/bias/Assign-conv2d_transpose_6/bias/Read/ReadVariableOp:0(2+conv2d_transpose_6/bias/Initializer/zeros:08
?
batch_normalization_18/gamma:0#batch_normalization_18/gamma/Assign2batch_normalization_18/gamma/Read/ReadVariableOp:0(2/batch_normalization_18/gamma/Initializer/ones:08
?
batch_normalization_18/beta:0"batch_normalization_18/beta/Assign1batch_normalization_18/beta/Read/ReadVariableOp:0(2/batch_normalization_18/beta/Initializer/zeros:08
?
$batch_normalization_18/moving_mean:0)batch_normalization_18/moving_mean/Assign8batch_normalization_18/moving_mean/Read/ReadVariableOp:0(26batch_normalization_18/moving_mean/Initializer/zeros:0@H
?
(batch_normalization_18/moving_variance:0-batch_normalization_18/moving_variance/Assign<batch_normalization_18/moving_variance/Read/ReadVariableOp:0(29batch_normalization_18/moving_variance/Initializer/ones:0@H
?
conv2d_transpose_7/kernel:0 conv2d_transpose_7/kernel/Assign/conv2d_transpose_7/kernel/Read/ReadVariableOp:0(26conv2d_transpose_7/kernel/Initializer/random_uniform:08
?
conv2d_transpose_7/bias:0conv2d_transpose_7/bias/Assign-conv2d_transpose_7/bias/Read/ReadVariableOp:0(2+conv2d_transpose_7/bias/Initializer/zeros:08
?
batch_normalization_19/gamma:0#batch_normalization_19/gamma/Assign2batch_normalization_19/gamma/Read/ReadVariableOp:0(2/batch_normalization_19/gamma/Initializer/ones:08
?
batch_normalization_19/beta:0"batch_normalization_19/beta/Assign1batch_normalization_19/beta/Read/ReadVariableOp:0(2/batch_normalization_19/beta/Initializer/zeros:08
?
$batch_normalization_19/moving_mean:0)batch_normalization_19/moving_mean/Assign8batch_normalization_19/moving_mean/Read/ReadVariableOp:0(26batch_normalization_19/moving_mean/Initializer/zeros:0@H
?
(batch_normalization_19/moving_variance:0-batch_normalization_19/moving_variance/Assign<batch_normalization_19/moving_variance/Read/ReadVariableOp:0(29batch_normalization_19/moving_variance/Initializer/ones:0@H
?
conv2d_transpose_8/kernel:0 conv2d_transpose_8/kernel/Assign/conv2d_transpose_8/kernel/Read/ReadVariableOp:0(26conv2d_transpose_8/kernel/Initializer/random_uniform:08
?
conv2d_transpose_8/bias:0conv2d_transpose_8/bias/Assign-conv2d_transpose_8/bias/Read/ReadVariableOp:0(2+conv2d_transpose_8/bias/Initializer/zeros:08
?
batch_normalization_20/gamma:0#batch_normalization_20/gamma/Assign2batch_normalization_20/gamma/Read/ReadVariableOp:0(2/batch_normalization_20/gamma/Initializer/ones:08
?
batch_normalization_20/beta:0"batch_normalization_20/beta/Assign1batch_normalization_20/beta/Read/ReadVariableOp:0(2/batch_normalization_20/beta/Initializer/zeros:08
?
$batch_normalization_20/moving_mean:0)batch_normalization_20/moving_mean/Assign8batch_normalization_20/moving_mean/Read/ReadVariableOp:0(26batch_normalization_20/moving_mean/Initializer/zeros:0@H
?
(batch_normalization_20/moving_variance:0-batch_normalization_20/moving_variance/Assign<batch_normalization_20/moving_variance/Read/ReadVariableOp:0(29batch_normalization_20/moving_variance/Initializer/ones:0@H
?
conv2d_transpose_9/kernel:0 conv2d_transpose_9/kernel/Assign/conv2d_transpose_9/kernel/Read/ReadVariableOp:0(26conv2d_transpose_9/kernel/Initializer/random_uniform:08
?
conv2d_transpose_9/bias:0conv2d_transpose_9/bias/Assign-conv2d_transpose_9/bias/Read/ReadVariableOp:0(2+conv2d_transpose_9/bias/Initializer/zeros:08
?
batch_normalization_21/gamma:0#batch_normalization_21/gamma/Assign2batch_normalization_21/gamma/Read/ReadVariableOp:0(2/batch_normalization_21/gamma/Initializer/ones:08
?
batch_normalization_21/beta:0"batch_normalization_21/beta/Assign1batch_normalization_21/beta/Read/ReadVariableOp:0(2/batch_normalization_21/beta/Initializer/zeros:08
?
$batch_normalization_21/moving_mean:0)batch_normalization_21/moving_mean/Assign8batch_normalization_21/moving_mean/Read/ReadVariableOp:0(26batch_normalization_21/moving_mean/Initializer/zeros:0@H
?
(batch_normalization_21/moving_variance:0-batch_normalization_21/moving_variance/Assign<batch_normalization_21/moving_variance/Read/ReadVariableOp:0(29batch_normalization_21/moving_variance/Initializer/ones:0@H
?
conv2d_transpose_10/kernel:0!conv2d_transpose_10/kernel/Assign0conv2d_transpose_10/kernel/Read/ReadVariableOp:0(27conv2d_transpose_10/kernel/Initializer/random_uniform:08
?
conv2d_transpose_10/bias:0conv2d_transpose_10/bias/Assign.conv2d_transpose_10/bias/Read/ReadVariableOp:0(2,conv2d_transpose_10/bias/Initializer/zeros:08
?
batch_normalization_22/gamma:0#batch_normalization_22/gamma/Assign2batch_normalization_22/gamma/Read/ReadVariableOp:0(2/batch_normalization_22/gamma/Initializer/ones:08
?
batch_normalization_22/beta:0"batch_normalization_22/beta/Assign1batch_normalization_22/beta/Read/ReadVariableOp:0(2/batch_normalization_22/beta/Initializer/zeros:08
?
$batch_normalization_22/moving_mean:0)batch_normalization_22/moving_mean/Assign8batch_normalization_22/moving_mean/Read/ReadVariableOp:0(26batch_normalization_22/moving_mean/Initializer/zeros:0@H
?
(batch_normalization_22/moving_variance:0-batch_normalization_22/moving_variance/Assign<batch_normalization_22/moving_variance/Read/ReadVariableOp:0(29batch_normalization_22/moving_variance/Initializer/ones:0@H
?
conv2d_transpose_11/kernel:0!conv2d_transpose_11/kernel/Assign0conv2d_transpose_11/kernel/Read/ReadVariableOp:0(27conv2d_transpose_11/kernel/Initializer/random_uniform:08
?
conv2d_transpose_11/bias:0conv2d_transpose_11/bias/Assign.conv2d_transpose_11/bias/Read/ReadVariableOp:0(2,conv2d_transpose_11/bias/Initializer/zeros:08
?
batch_normalization_23/gamma:0#batch_normalization_23/gamma/Assign2batch_normalization_23/gamma/Read/ReadVariableOp:0(2/batch_normalization_23/gamma/Initializer/ones:08
?
batch_normalization_23/beta:0"batch_normalization_23/beta/Assign1batch_normalization_23/beta/Read/ReadVariableOp:0(2/batch_normalization_23/beta/Initializer/zeros:08
?
$batch_normalization_23/moving_mean:0)batch_normalization_23/moving_mean/Assign8batch_normalization_23/moving_mean/Read/ReadVariableOp:0(26batch_normalization_23/moving_mean/Initializer/zeros:0@H
?
(batch_normalization_23/moving_variance:0-batch_normalization_23/moving_variance/Assign<batch_normalization_23/moving_variance/Read/ReadVariableOp:0(29batch_normalization_23/moving_variance/Initializer/ones:0@H
?
conv2d_13/kernel:0conv2d_13/kernel/Assign&conv2d_13/kernel/Read/ReadVariableOp:0(2-conv2d_13/kernel/Initializer/random_uniform:08
w
conv2d_13/bias:0conv2d_13/bias/Assign$conv2d_13/bias/Read/ReadVariableOp:0(2"conv2d_13/bias/Initializer/zeros:08"%
saved_model_main_op


group_deps"?|
trainable_variables?{?{
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08
?
batch_normalization/gamma:0 batch_normalization/gamma/Assign/batch_normalization/gamma/Read/ReadVariableOp:0(2,batch_normalization/gamma/Initializer/ones:08
?
batch_normalization/beta:0batch_normalization/beta/Assign.batch_normalization/beta/Read/ReadVariableOp:0(2,batch_normalization/beta/Initializer/zeros:08
?
conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08
?
batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign1batch_normalization_1/gamma/Read/ReadVariableOp:0(2.batch_normalization_1/gamma/Initializer/ones:08
?
batch_normalization_1/beta:0!batch_normalization_1/beta/Assign0batch_normalization_1/beta/Read/ReadVariableOp:0(2.batch_normalization_1/beta/Initializer/zeros:08
?
conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2,conv2d_2/kernel/Initializer/random_uniform:08
s
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2!conv2d_2/bias/Initializer/zeros:08
?
batch_normalization_2/gamma:0"batch_normalization_2/gamma/Assign1batch_normalization_2/gamma/Read/ReadVariableOp:0(2.batch_normalization_2/gamma/Initializer/ones:08
?
batch_normalization_2/beta:0!batch_normalization_2/beta/Assign0batch_normalization_2/beta/Read/ReadVariableOp:0(2.batch_normalization_2/beta/Initializer/zeros:08
?
conv2d_3/kernel:0conv2d_3/kernel/Assign%conv2d_3/kernel/Read/ReadVariableOp:0(2,conv2d_3/kernel/Initializer/random_uniform:08
s
conv2d_3/bias:0conv2d_3/bias/Assign#conv2d_3/bias/Read/ReadVariableOp:0(2!conv2d_3/bias/Initializer/zeros:08
?
batch_normalization_3/gamma:0"batch_normalization_3/gamma/Assign1batch_normalization_3/gamma/Read/ReadVariableOp:0(2.batch_normalization_3/gamma/Initializer/ones:08
?
batch_normalization_3/beta:0!batch_normalization_3/beta/Assign0batch_normalization_3/beta/Read/ReadVariableOp:0(2.batch_normalization_3/beta/Initializer/zeros:08
?
conv2d_4/kernel:0conv2d_4/kernel/Assign%conv2d_4/kernel/Read/ReadVariableOp:0(2,conv2d_4/kernel/Initializer/random_uniform:08
s
conv2d_4/bias:0conv2d_4/bias/Assign#conv2d_4/bias/Read/ReadVariableOp:0(2!conv2d_4/bias/Initializer/zeros:08
?
batch_normalization_4/gamma:0"batch_normalization_4/gamma/Assign1batch_normalization_4/gamma/Read/ReadVariableOp:0(2.batch_normalization_4/gamma/Initializer/ones:08
?
batch_normalization_4/beta:0!batch_normalization_4/beta/Assign0batch_normalization_4/beta/Read/ReadVariableOp:0(2.batch_normalization_4/beta/Initializer/zeros:08
?
conv2d_5/kernel:0conv2d_5/kernel/Assign%conv2d_5/kernel/Read/ReadVariableOp:0(2,conv2d_5/kernel/Initializer/random_uniform:08
s
conv2d_5/bias:0conv2d_5/bias/Assign#conv2d_5/bias/Read/ReadVariableOp:0(2!conv2d_5/bias/Initializer/zeros:08
?
batch_normalization_5/gamma:0"batch_normalization_5/gamma/Assign1batch_normalization_5/gamma/Read/ReadVariableOp:0(2.batch_normalization_5/gamma/Initializer/ones:08
?
batch_normalization_5/beta:0!batch_normalization_5/beta/Assign0batch_normalization_5/beta/Read/ReadVariableOp:0(2.batch_normalization_5/beta/Initializer/zeros:08
?
conv2d_transpose/kernel:0conv2d_transpose/kernel/Assign-conv2d_transpose/kernel/Read/ReadVariableOp:0(24conv2d_transpose/kernel/Initializer/random_uniform:08
?
conv2d_transpose/bias:0conv2d_transpose/bias/Assign+conv2d_transpose/bias/Read/ReadVariableOp:0(2)conv2d_transpose/bias/Initializer/zeros:08
?
batch_normalization_6/gamma:0"batch_normalization_6/gamma/Assign1batch_normalization_6/gamma/Read/ReadVariableOp:0(2.batch_normalization_6/gamma/Initializer/ones:08
?
batch_normalization_6/beta:0!batch_normalization_6/beta/Assign0batch_normalization_6/beta/Read/ReadVariableOp:0(2.batch_normalization_6/beta/Initializer/zeros:08
?
conv2d_transpose_1/kernel:0 conv2d_transpose_1/kernel/Assign/conv2d_transpose_1/kernel/Read/ReadVariableOp:0(26conv2d_transpose_1/kernel/Initializer/random_uniform:08
?
conv2d_transpose_1/bias:0conv2d_transpose_1/bias/Assign-conv2d_transpose_1/bias/Read/ReadVariableOp:0(2+conv2d_transpose_1/bias/Initializer/zeros:08
?
batch_normalization_7/gamma:0"batch_normalization_7/gamma/Assign1batch_normalization_7/gamma/Read/ReadVariableOp:0(2.batch_normalization_7/gamma/Initializer/ones:08
?
batch_normalization_7/beta:0!batch_normalization_7/beta/Assign0batch_normalization_7/beta/Read/ReadVariableOp:0(2.batch_normalization_7/beta/Initializer/zeros:08
?
conv2d_transpose_2/kernel:0 conv2d_transpose_2/kernel/Assign/conv2d_transpose_2/kernel/Read/ReadVariableOp:0(26conv2d_transpose_2/kernel/Initializer/random_uniform:08
?
conv2d_transpose_2/bias:0conv2d_transpose_2/bias/Assign-conv2d_transpose_2/bias/Read/ReadVariableOp:0(2+conv2d_transpose_2/bias/Initializer/zeros:08
?
batch_normalization_8/gamma:0"batch_normalization_8/gamma/Assign1batch_normalization_8/gamma/Read/ReadVariableOp:0(2.batch_normalization_8/gamma/Initializer/ones:08
?
batch_normalization_8/beta:0!batch_normalization_8/beta/Assign0batch_normalization_8/beta/Read/ReadVariableOp:0(2.batch_normalization_8/beta/Initializer/zeros:08
?
conv2d_transpose_3/kernel:0 conv2d_transpose_3/kernel/Assign/conv2d_transpose_3/kernel/Read/ReadVariableOp:0(26conv2d_transpose_3/kernel/Initializer/random_uniform:08
?
conv2d_transpose_3/bias:0conv2d_transpose_3/bias/Assign-conv2d_transpose_3/bias/Read/ReadVariableOp:0(2+conv2d_transpose_3/bias/Initializer/zeros:08
?
batch_normalization_9/gamma:0"batch_normalization_9/gamma/Assign1batch_normalization_9/gamma/Read/ReadVariableOp:0(2.batch_normalization_9/gamma/Initializer/ones:08
?
batch_normalization_9/beta:0!batch_normalization_9/beta/Assign0batch_normalization_9/beta/Read/ReadVariableOp:0(2.batch_normalization_9/beta/Initializer/zeros:08
?
conv2d_transpose_4/kernel:0 conv2d_transpose_4/kernel/Assign/conv2d_transpose_4/kernel/Read/ReadVariableOp:0(26conv2d_transpose_4/kernel/Initializer/random_uniform:08
?
conv2d_transpose_4/bias:0conv2d_transpose_4/bias/Assign-conv2d_transpose_4/bias/Read/ReadVariableOp:0(2+conv2d_transpose_4/bias/Initializer/zeros:08
?
batch_normalization_10/gamma:0#batch_normalization_10/gamma/Assign2batch_normalization_10/gamma/Read/ReadVariableOp:0(2/batch_normalization_10/gamma/Initializer/ones:08
?
batch_normalization_10/beta:0"batch_normalization_10/beta/Assign1batch_normalization_10/beta/Read/ReadVariableOp:0(2/batch_normalization_10/beta/Initializer/zeros:08
?
conv2d_transpose_5/kernel:0 conv2d_transpose_5/kernel/Assign/conv2d_transpose_5/kernel/Read/ReadVariableOp:0(26conv2d_transpose_5/kernel/Initializer/random_uniform:08
?
conv2d_transpose_5/bias:0conv2d_transpose_5/bias/Assign-conv2d_transpose_5/bias/Read/ReadVariableOp:0(2+conv2d_transpose_5/bias/Initializer/zeros:08
?
batch_normalization_11/gamma:0#batch_normalization_11/gamma/Assign2batch_normalization_11/gamma/Read/ReadVariableOp:0(2/batch_normalization_11/gamma/Initializer/ones:08
?
batch_normalization_11/beta:0"batch_normalization_11/beta/Assign1batch_normalization_11/beta/Read/ReadVariableOp:0(2/batch_normalization_11/beta/Initializer/zeros:08
?
conv2d_6/kernel:0conv2d_6/kernel/Assign%conv2d_6/kernel/Read/ReadVariableOp:0(2,conv2d_6/kernel/Initializer/random_uniform:08
s
conv2d_6/bias:0conv2d_6/bias/Assign#conv2d_6/bias/Read/ReadVariableOp:0(2!conv2d_6/bias/Initializer/zeros:08
?
conv2d_7/kernel:0conv2d_7/kernel/Assign%conv2d_7/kernel/Read/ReadVariableOp:0(2,conv2d_7/kernel/Initializer/random_uniform:08
s
conv2d_7/bias:0conv2d_7/bias/Assign#conv2d_7/bias/Read/ReadVariableOp:0(2!conv2d_7/bias/Initializer/zeros:08
?
batch_normalization_12/gamma:0#batch_normalization_12/gamma/Assign2batch_normalization_12/gamma/Read/ReadVariableOp:0(2/batch_normalization_12/gamma/Initializer/ones:08
?
batch_normalization_12/beta:0"batch_normalization_12/beta/Assign1batch_normalization_12/beta/Read/ReadVariableOp:0(2/batch_normalization_12/beta/Initializer/zeros:08
?
conv2d_8/kernel:0conv2d_8/kernel/Assign%conv2d_8/kernel/Read/ReadVariableOp:0(2,conv2d_8/kernel/Initializer/random_uniform:08
s
conv2d_8/bias:0conv2d_8/bias/Assign#conv2d_8/bias/Read/ReadVariableOp:0(2!conv2d_8/bias/Initializer/zeros:08
?
batch_normalization_13/gamma:0#batch_normalization_13/gamma/Assign2batch_normalization_13/gamma/Read/ReadVariableOp:0(2/batch_normalization_13/gamma/Initializer/ones:08
?
batch_normalization_13/beta:0"batch_normalization_13/beta/Assign1batch_normalization_13/beta/Read/ReadVariableOp:0(2/batch_normalization_13/beta/Initializer/zeros:08
?
conv2d_9/kernel:0conv2d_9/kernel/Assign%conv2d_9/kernel/Read/ReadVariableOp:0(2,conv2d_9/kernel/Initializer/random_uniform:08
s
conv2d_9/bias:0conv2d_9/bias/Assign#conv2d_9/bias/Read/ReadVariableOp:0(2!conv2d_9/bias/Initializer/zeros:08
?
batch_normalization_14/gamma:0#batch_normalization_14/gamma/Assign2batch_normalization_14/gamma/Read/ReadVariableOp:0(2/batch_normalization_14/gamma/Initializer/ones:08
?
batch_normalization_14/beta:0"batch_normalization_14/beta/Assign1batch_normalization_14/beta/Read/ReadVariableOp:0(2/batch_normalization_14/beta/Initializer/zeros:08
?
conv2d_10/kernel:0conv2d_10/kernel/Assign&conv2d_10/kernel/Read/ReadVariableOp:0(2-conv2d_10/kernel/Initializer/random_uniform:08
w
conv2d_10/bias:0conv2d_10/bias/Assign$conv2d_10/bias/Read/ReadVariableOp:0(2"conv2d_10/bias/Initializer/zeros:08
?
batch_normalization_15/gamma:0#batch_normalization_15/gamma/Assign2batch_normalization_15/gamma/Read/ReadVariableOp:0(2/batch_normalization_15/gamma/Initializer/ones:08
?
batch_normalization_15/beta:0"batch_normalization_15/beta/Assign1batch_normalization_15/beta/Read/ReadVariableOp:0(2/batch_normalization_15/beta/Initializer/zeros:08
?
conv2d_11/kernel:0conv2d_11/kernel/Assign&conv2d_11/kernel/Read/ReadVariableOp:0(2-conv2d_11/kernel/Initializer/random_uniform:08
w
conv2d_11/bias:0conv2d_11/bias/Assign$conv2d_11/bias/Read/ReadVariableOp:0(2"conv2d_11/bias/Initializer/zeros:08
?
batch_normalization_16/gamma:0#batch_normalization_16/gamma/Assign2batch_normalization_16/gamma/Read/ReadVariableOp:0(2/batch_normalization_16/gamma/Initializer/ones:08
?
batch_normalization_16/beta:0"batch_normalization_16/beta/Assign1batch_normalization_16/beta/Read/ReadVariableOp:0(2/batch_normalization_16/beta/Initializer/zeros:08
?
conv2d_12/kernel:0conv2d_12/kernel/Assign&conv2d_12/kernel/Read/ReadVariableOp:0(2-conv2d_12/kernel/Initializer/random_uniform:08
w
conv2d_12/bias:0conv2d_12/bias/Assign$conv2d_12/bias/Read/ReadVariableOp:0(2"conv2d_12/bias/Initializer/zeros:08
?
batch_normalization_17/gamma:0#batch_normalization_17/gamma/Assign2batch_normalization_17/gamma/Read/ReadVariableOp:0(2/batch_normalization_17/gamma/Initializer/ones:08
?
batch_normalization_17/beta:0"batch_normalization_17/beta/Assign1batch_normalization_17/beta/Read/ReadVariableOp:0(2/batch_normalization_17/beta/Initializer/zeros:08
?
conv2d_transpose_6/kernel:0 conv2d_transpose_6/kernel/Assign/conv2d_transpose_6/kernel/Read/ReadVariableOp:0(26conv2d_transpose_6/kernel/Initializer/random_uniform:08
?
conv2d_transpose_6/bias:0conv2d_transpose_6/bias/Assign-conv2d_transpose_6/bias/Read/ReadVariableOp:0(2+conv2d_transpose_6/bias/Initializer/zeros:08
?
batch_normalization_18/gamma:0#batch_normalization_18/gamma/Assign2batch_normalization_18/gamma/Read/ReadVariableOp:0(2/batch_normalization_18/gamma/Initializer/ones:08
?
batch_normalization_18/beta:0"batch_normalization_18/beta/Assign1batch_normalization_18/beta/Read/ReadVariableOp:0(2/batch_normalization_18/beta/Initializer/zeros:08
?
conv2d_transpose_7/kernel:0 conv2d_transpose_7/kernel/Assign/conv2d_transpose_7/kernel/Read/ReadVariableOp:0(26conv2d_transpose_7/kernel/Initializer/random_uniform:08
?
conv2d_transpose_7/bias:0conv2d_transpose_7/bias/Assign-conv2d_transpose_7/bias/Read/ReadVariableOp:0(2+conv2d_transpose_7/bias/Initializer/zeros:08
?
batch_normalization_19/gamma:0#batch_normalization_19/gamma/Assign2batch_normalization_19/gamma/Read/ReadVariableOp:0(2/batch_normalization_19/gamma/Initializer/ones:08
?
batch_normalization_19/beta:0"batch_normalization_19/beta/Assign1batch_normalization_19/beta/Read/ReadVariableOp:0(2/batch_normalization_19/beta/Initializer/zeros:08
?
conv2d_transpose_8/kernel:0 conv2d_transpose_8/kernel/Assign/conv2d_transpose_8/kernel/Read/ReadVariableOp:0(26conv2d_transpose_8/kernel/Initializer/random_uniform:08
?
conv2d_transpose_8/bias:0conv2d_transpose_8/bias/Assign-conv2d_transpose_8/bias/Read/ReadVariableOp:0(2+conv2d_transpose_8/bias/Initializer/zeros:08
?
batch_normalization_20/gamma:0#batch_normalization_20/gamma/Assign2batch_normalization_20/gamma/Read/ReadVariableOp:0(2/batch_normalization_20/gamma/Initializer/ones:08
?
batch_normalization_20/beta:0"batch_normalization_20/beta/Assign1batch_normalization_20/beta/Read/ReadVariableOp:0(2/batch_normalization_20/beta/Initializer/zeros:08
?
conv2d_transpose_9/kernel:0 conv2d_transpose_9/kernel/Assign/conv2d_transpose_9/kernel/Read/ReadVariableOp:0(26conv2d_transpose_9/kernel/Initializer/random_uniform:08
?
conv2d_transpose_9/bias:0conv2d_transpose_9/bias/Assign-conv2d_transpose_9/bias/Read/ReadVariableOp:0(2+conv2d_transpose_9/bias/Initializer/zeros:08
?
batch_normalization_21/gamma:0#batch_normalization_21/gamma/Assign2batch_normalization_21/gamma/Read/ReadVariableOp:0(2/batch_normalization_21/gamma/Initializer/ones:08
?
batch_normalization_21/beta:0"batch_normalization_21/beta/Assign1batch_normalization_21/beta/Read/ReadVariableOp:0(2/batch_normalization_21/beta/Initializer/zeros:08
?
conv2d_transpose_10/kernel:0!conv2d_transpose_10/kernel/Assign0conv2d_transpose_10/kernel/Read/ReadVariableOp:0(27conv2d_transpose_10/kernel/Initializer/random_uniform:08
?
conv2d_transpose_10/bias:0conv2d_transpose_10/bias/Assign.conv2d_transpose_10/bias/Read/ReadVariableOp:0(2,conv2d_transpose_10/bias/Initializer/zeros:08
?
batch_normalization_22/gamma:0#batch_normalization_22/gamma/Assign2batch_normalization_22/gamma/Read/ReadVariableOp:0(2/batch_normalization_22/gamma/Initializer/ones:08
?
batch_normalization_22/beta:0"batch_normalization_22/beta/Assign1batch_normalization_22/beta/Read/ReadVariableOp:0(2/batch_normalization_22/beta/Initializer/zeros:08
?
conv2d_transpose_11/kernel:0!conv2d_transpose_11/kernel/Assign0conv2d_transpose_11/kernel/Read/ReadVariableOp:0(27conv2d_transpose_11/kernel/Initializer/random_uniform:08
?
conv2d_transpose_11/bias:0conv2d_transpose_11/bias/Assign.conv2d_transpose_11/bias/Read/ReadVariableOp:0(2,conv2d_transpose_11/bias/Initializer/zeros:08
?
batch_normalization_23/gamma:0#batch_normalization_23/gamma/Assign2batch_normalization_23/gamma/Read/ReadVariableOp:0(2/batch_normalization_23/gamma/Initializer/ones:08
?
batch_normalization_23/beta:0"batch_normalization_23/beta/Assign1batch_normalization_23/beta/Read/ReadVariableOp:0(2/batch_normalization_23/beta/Initializer/zeros:08
?
conv2d_13/kernel:0conv2d_13/kernel/Assign&conv2d_13/kernel/Read/ReadVariableOp:0(2-conv2d_13/kernel/Initializer/random_uniform:08
w
conv2d_13/bias:0conv2d_13/bias/Assign$conv2d_13/bias/Read/ReadVariableOp:0(2"conv2d_13/bias/Initializer/zeros:08*?
serving_default?
5
mix_stft)
transpose_1:0??????????
E
mix_spectrogram2
strided_slice_3:0???????????
#
audio_id
Placeholder_1:0
0
waveform$
Placeholder:0?????????#
audio_id
Placeholder_1:0:
accompaniment)
strided_slice_23:0?????????3
vocals)
strided_slice_13:0?????????tensorflow/serving/predict