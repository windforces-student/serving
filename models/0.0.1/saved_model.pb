??
?7?7
.
Abs
x"T
y"T"
Ttype:

2	
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	??
A
AddV2
x"T
y"T
z"T"
Ttype:
2	??
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
?
	ApplyAdam
var"T?	
m"T?	
v"T?
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T?" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint?
x
Assign
ref"T?

value"T

output_ref"T?"	
Ttype"
validate_shapebool("
use_lockingbool(?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
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

ControlTrigger
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

h
Equal
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(?
)
Exit	
data"T
output"T"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
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
Identity

input"T
output"T"	
Ttype
:
InvertPermutation
x"T
y"T"
Ttype0:
2	
:
Less
x"T
y"T
z
"
Ttype:
2	
$

LogicalAnd
x

y

z
?
!
LoopCond	
input


output

q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
?
Min

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
8
Minimum
x"T
y"T
z"T"
Ttype:

2	
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
2
NextIteration	
data"T
output"T"	
Ttype

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
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
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
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
=
SigmoidGrad
y"T
dy"T
z"T"
Ttype:

2
/
Sign
x"T
y"T"
Ttype:

2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
A

StackPopV2

handle
elem"	elem_type"
	elem_typetype?
X
StackPushV2

handle	
elem"T
output"T"	
Ttype"
swap_memorybool( ?
S
StackV2
max_size

handle"
	elem_typetype"

stack_namestring ?
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
-
Tanh
x"T
y"T"
Ttype:

2
:
TanhGrad
y"T
dy"T
z"T"
Ttype:

2
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:?
`
TensorArrayGradV3

handle
flow_in
grad_handle
flow_out"
sourcestring?
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetype?
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
Ttype?
9
TensorArraySizeV3

handle
flow_in
size?
?
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring ?
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
Ttype?
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
s

VariableV2
ref"dtype?"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ?
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.15.02v1.15.0-rc3-22-g590d6ee??

t
	myinput_xPlaceholder*
dtype0*+
_output_shapes
:?????????* 
shape:?????????
d
	myinput_tPlaceholder*
dtype0*#
_output_shapes
:?????????*
shape:?????????
t
	myinput_yPlaceholder* 
shape:?????????*
dtype0*+
_output_shapes
:?????????
T
predictor/rnn/RankConst*
value	B :*
dtype0*
_output_shapes
: 
[
predictor/rnn/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
[
predictor/rnn/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
predictor/rnn/rangeRangepredictor/rnn/range/startpredictor/rnn/Rankpredictor/rnn/range/delta*
_output_shapes
:*

Tidx0
n
predictor/rnn/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
[
predictor/rnn/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
predictor/rnn/concatConcatV2predictor/rnn/concat/values_0predictor/rnn/rangepredictor/rnn/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
?
predictor/rnn/transpose	Transpose	myinput_xpredictor/rnn/concat*
Tperm0*
T0*+
_output_shapes
:?????????
b
predictor/rnn/sequence_lengthIdentity	myinput_t*
T0*#
_output_shapes
:?????????
j
predictor/rnn/ShapeShapepredictor/rnn/transpose*
T0*
out_type0*
_output_shapes
:
k
!predictor/rnn/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#predictor/rnn/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#predictor/rnn/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
?
predictor/rnn/strided_sliceStridedSlicepredictor/rnn/Shape!predictor/rnn/strided_slice/stack#predictor/rnn/strided_slice/stack_1#predictor/rnn/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
o
-predictor/rnn/GRUCellZeroState/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
?
)predictor/rnn/GRUCellZeroState/ExpandDims
ExpandDimspredictor/rnn/strided_slice-predictor/rnn/GRUCellZeroState/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
n
$predictor/rnn/GRUCellZeroState/ConstConst*
valueB:*
dtype0*
_output_shapes
:
l
*predictor/rnn/GRUCellZeroState/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
%predictor/rnn/GRUCellZeroState/concatConcatV2)predictor/rnn/GRUCellZeroState/ExpandDims$predictor/rnn/GRUCellZeroState/Const*predictor/rnn/GRUCellZeroState/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
o
*predictor/rnn/GRUCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
$predictor/rnn/GRUCellZeroState/zerosFill%predictor/rnn/GRUCellZeroState/concat*predictor/rnn/GRUCellZeroState/zeros/Const*'
_output_shapes
:?????????*
T0*

index_type0
q
/predictor/rnn/GRUCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
+predictor/rnn/GRUCellZeroState/ExpandDims_1
ExpandDimspredictor/rnn/strided_slice/predictor/rnn/GRUCellZeroState/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes
:
p
&predictor/rnn/GRUCellZeroState/Const_1Const*
dtype0*
_output_shapes
:*
valueB:
r
predictor/rnn/Shape_1Shapepredictor/rnn/sequence_length*
T0*
out_type0*
_output_shapes
:
r
predictor/rnn/stackPackpredictor/rnn/strided_slice*
T0*

axis *
N*
_output_shapes
:
?
predictor/rnn/EqualEqualpredictor/rnn/Shape_1predictor/rnn/stack*
incompatible_shape_error(*
T0*
_output_shapes
:
]
predictor/rnn/ConstConst*
valueB: *
dtype0*
_output_shapes
:
w
predictor/rnn/AllAllpredictor/rnn/Equalpredictor/rnn/Const*
_output_shapes
: *
	keep_dims( *

Tidx0
?
predictor/rnn/Assert/ConstConst*N
valueEBC B=Expected shape for Tensor predictor/rnn/sequence_length:0 is *
dtype0*
_output_shapes
: 
m
predictor/rnn/Assert/Const_1Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
?
"predictor/rnn/Assert/Assert/data_0Const*N
valueEBC B=Expected shape for Tensor predictor/rnn/sequence_length:0 is *
dtype0*
_output_shapes
: 
s
"predictor/rnn/Assert/Assert/data_2Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
?
predictor/rnn/Assert/AssertAssertpredictor/rnn/All"predictor/rnn/Assert/Assert/data_0predictor/rnn/stack"predictor/rnn/Assert/Assert/data_2predictor/rnn/Shape_1*
T
2*
	summarize
?
predictor/rnn/CheckSeqLenIdentitypredictor/rnn/sequence_length^predictor/rnn/Assert/Assert*
T0*#
_output_shapes
:?????????
l
predictor/rnn/Shape_2Shapepredictor/rnn/transpose*
T0*
out_type0*
_output_shapes
:
m
#predictor/rnn/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
o
%predictor/rnn/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
o
%predictor/rnn/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
predictor/rnn/strided_slice_1StridedSlicepredictor/rnn/Shape_2#predictor/rnn/strided_slice_1/stack%predictor/rnn/strided_slice_1/stack_1%predictor/rnn/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
l
predictor/rnn/Shape_3Shapepredictor/rnn/transpose*
T0*
out_type0*
_output_shapes
:
m
#predictor/rnn/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%predictor/rnn/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
o
%predictor/rnn/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
predictor/rnn/strided_slice_2StridedSlicepredictor/rnn/Shape_3#predictor/rnn/strided_slice_2/stack%predictor/rnn/strided_slice_2/stack_1%predictor/rnn/strided_slice_2/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
^
predictor/rnn/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
?
predictor/rnn/ExpandDims
ExpandDimspredictor/rnn/strided_slice_2predictor/rnn/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
_
predictor/rnn/Const_1Const*
valueB:*
dtype0*
_output_shapes
:
]
predictor/rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
predictor/rnn/concat_1ConcatV2predictor/rnn/ExpandDimspredictor/rnn/Const_1predictor/rnn/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
^
predictor/rnn/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
predictor/rnn/zerosFillpredictor/rnn/concat_1predictor/rnn/zeros/Const*'
_output_shapes
:?????????*
T0*

index_type0
_
predictor/rnn/Const_2Const*
dtype0*
_output_shapes
:*
valueB: 
?
predictor/rnn/MinMinpredictor/rnn/CheckSeqLenpredictor/rnn/Const_2*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
_
predictor/rnn/Const_3Const*
valueB: *
dtype0*
_output_shapes
:
?
predictor/rnn/MaxMaxpredictor/rnn/CheckSeqLenpredictor/rnn/Const_3*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
T
predictor/rnn/timeConst*
value	B : *
dtype0*
_output_shapes
: 
?
predictor/rnn/TensorArrayTensorArrayV3predictor/rnn/strided_slice_1*9
tensor_array_name$"predictor/rnn/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: *$
element_shape:?????????*
dynamic_size( *
clear_after_read(*
identical_element_shapes(
?
predictor/rnn/TensorArray_1TensorArrayV3predictor/rnn/strided_slice_1*8
tensor_array_name#!predictor/rnn/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *$
element_shape:?????????*
clear_after_read(*
dynamic_size( *
identical_element_shapes(
}
&predictor/rnn/TensorArrayUnstack/ShapeShapepredictor/rnn/transpose*
T0*
out_type0*
_output_shapes
:
~
4predictor/rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
?
6predictor/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
?
6predictor/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
?
.predictor/rnn/TensorArrayUnstack/strided_sliceStridedSlice&predictor/rnn/TensorArrayUnstack/Shape4predictor/rnn/TensorArrayUnstack/strided_slice/stack6predictor/rnn/TensorArrayUnstack/strided_slice/stack_16predictor/rnn/TensorArrayUnstack/strided_slice/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
n
,predictor/rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
n
,predictor/rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
&predictor/rnn/TensorArrayUnstack/rangeRange,predictor/rnn/TensorArrayUnstack/range/start.predictor/rnn/TensorArrayUnstack/strided_slice,predictor/rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:?????????*

Tidx0
?
Hpredictor/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3predictor/rnn/TensorArray_1&predictor/rnn/TensorArrayUnstack/rangepredictor/rnn/transposepredictor/rnn/TensorArray_1:1*
T0**
_class 
loc:@predictor/rnn/transpose*
_output_shapes
: 
Y
predictor/rnn/Maximum/xConst*
value	B :*
dtype0*
_output_shapes
: 
m
predictor/rnn/MaximumMaximumpredictor/rnn/Maximum/xpredictor/rnn/Max*
T0*
_output_shapes
: 
w
predictor/rnn/MinimumMinimumpredictor/rnn/strided_slice_1predictor/rnn/Maximum*
T0*
_output_shapes
: 
g
%predictor/rnn/while/iteration_counterConst*
dtype0*
_output_shapes
: *
value	B : 
?
predictor/rnn/while/EnterEnter%predictor/rnn/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *1

frame_name#!predictor/rnn/while/while_context
?
predictor/rnn/while/Enter_1Enterpredictor/rnn/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *1

frame_name#!predictor/rnn/while/while_context
?
predictor/rnn/while/Enter_2Enterpredictor/rnn/TensorArray:1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *1

frame_name#!predictor/rnn/while/while_context
?
predictor/rnn/while/Enter_3Enter$predictor/rnn/GRUCellZeroState/zeros*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:?????????*1

frame_name#!predictor/rnn/while/while_context
?
predictor/rnn/while/MergeMergepredictor/rnn/while/Enter!predictor/rnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
?
predictor/rnn/while/Merge_1Mergepredictor/rnn/while/Enter_1#predictor/rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
?
predictor/rnn/while/Merge_2Mergepredictor/rnn/while/Enter_2#predictor/rnn/while/NextIteration_2*
N*
_output_shapes
: : *
T0
?
predictor/rnn/while/Merge_3Mergepredictor/rnn/while/Enter_3#predictor/rnn/while/NextIteration_3*
N*)
_output_shapes
:?????????: *
T0
|
predictor/rnn/while/LessLesspredictor/rnn/while/Mergepredictor/rnn/while/Less/Enter*
T0*
_output_shapes
: 
?
predictor/rnn/while/Less/EnterEnterpredictor/rnn/strided_slice_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *1

frame_name#!predictor/rnn/while/while_context
?
predictor/rnn/while/Less_1Lesspredictor/rnn/while/Merge_1 predictor/rnn/while/Less_1/Enter*
T0*
_output_shapes
: 
?
 predictor/rnn/while/Less_1/EnterEnterpredictor/rnn/Minimum*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *1

frame_name#!predictor/rnn/while/while_context
z
predictor/rnn/while/LogicalAnd
LogicalAndpredictor/rnn/while/Lesspredictor/rnn/while/Less_1*
_output_shapes
: 
`
predictor/rnn/while/LoopCondLoopCondpredictor/rnn/while/LogicalAnd*
_output_shapes
: 
?
predictor/rnn/while/SwitchSwitchpredictor/rnn/while/Mergepredictor/rnn/while/LoopCond*
T0*,
_class"
 loc:@predictor/rnn/while/Merge*
_output_shapes
: : 
?
predictor/rnn/while/Switch_1Switchpredictor/rnn/while/Merge_1predictor/rnn/while/LoopCond*
T0*.
_class$
" loc:@predictor/rnn/while/Merge_1*
_output_shapes
: : 
?
predictor/rnn/while/Switch_2Switchpredictor/rnn/while/Merge_2predictor/rnn/while/LoopCond*
T0*.
_class$
" loc:@predictor/rnn/while/Merge_2*
_output_shapes
: : 
?
predictor/rnn/while/Switch_3Switchpredictor/rnn/while/Merge_3predictor/rnn/while/LoopCond*
T0*.
_class$
" loc:@predictor/rnn/while/Merge_3*:
_output_shapes(
&:?????????:?????????
g
predictor/rnn/while/IdentityIdentitypredictor/rnn/while/Switch:1*
T0*
_output_shapes
: 
k
predictor/rnn/while/Identity_1Identitypredictor/rnn/while/Switch_1:1*
_output_shapes
: *
T0
k
predictor/rnn/while/Identity_2Identitypredictor/rnn/while/Switch_2:1*
T0*
_output_shapes
: 
|
predictor/rnn/while/Identity_3Identitypredictor/rnn/while/Switch_3:1*'
_output_shapes
:?????????*
T0
z
predictor/rnn/while/add/yConst^predictor/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
z
predictor/rnn/while/addAddV2predictor/rnn/while/Identitypredictor/rnn/while/add/y*
T0*
_output_shapes
: 
?
%predictor/rnn/while/TensorArrayReadV3TensorArrayReadV3+predictor/rnn/while/TensorArrayReadV3/Enterpredictor/rnn/while/Identity_1-predictor/rnn/while/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:?????????
?
+predictor/rnn/while/TensorArrayReadV3/EnterEnterpredictor/rnn/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*1

frame_name#!predictor/rnn/while/while_context
?
-predictor/rnn/while/TensorArrayReadV3/Enter_1EnterHpredictor/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
parallel_iterations *
_output_shapes
: *1

frame_name#!predictor/rnn/while/while_context*
T0*
is_constant(
?
 predictor/rnn/while/GreaterEqualGreaterEqualpredictor/rnn/while/Identity_1&predictor/rnn/while/GreaterEqual/Enter*
T0*#
_output_shapes
:?????????
?
&predictor/rnn/while/GreaterEqual/EnterEnterpredictor/rnn/CheckSeqLen*
T0*
is_constant(*
parallel_iterations *#
_output_shapes
:?????????*1

frame_name#!predictor/rnn/while/while_context
?
Bpredictor/rnn/p_cell/gates/kernel/Initializer/random_uniform/shapeConst*
valueB"&      *4
_class*
(&loc:@predictor/rnn/p_cell/gates/kernel*
dtype0*
_output_shapes
:
?
@predictor/rnn/p_cell/gates/kernel/Initializer/random_uniform/minConst*
valueB
 *qĜ?*4
_class*
(&loc:@predictor/rnn/p_cell/gates/kernel*
dtype0*
_output_shapes
: 
?
@predictor/rnn/p_cell/gates/kernel/Initializer/random_uniform/maxConst*
valueB
 *qĜ>*4
_class*
(&loc:@predictor/rnn/p_cell/gates/kernel*
dtype0*
_output_shapes
: 
?
Jpredictor/rnn/p_cell/gates/kernel/Initializer/random_uniform/RandomUniformRandomUniformBpredictor/rnn/p_cell/gates/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:&*

seed *
T0*4
_class*
(&loc:@predictor/rnn/p_cell/gates/kernel*
seed2 
?
@predictor/rnn/p_cell/gates/kernel/Initializer/random_uniform/subSub@predictor/rnn/p_cell/gates/kernel/Initializer/random_uniform/max@predictor/rnn/p_cell/gates/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*4
_class*
(&loc:@predictor/rnn/p_cell/gates/kernel
?
@predictor/rnn/p_cell/gates/kernel/Initializer/random_uniform/mulMulJpredictor/rnn/p_cell/gates/kernel/Initializer/random_uniform/RandomUniform@predictor/rnn/p_cell/gates/kernel/Initializer/random_uniform/sub*
T0*4
_class*
(&loc:@predictor/rnn/p_cell/gates/kernel*
_output_shapes

:&
?
<predictor/rnn/p_cell/gates/kernel/Initializer/random_uniformAdd@predictor/rnn/p_cell/gates/kernel/Initializer/random_uniform/mul@predictor/rnn/p_cell/gates/kernel/Initializer/random_uniform/min*
T0*4
_class*
(&loc:@predictor/rnn/p_cell/gates/kernel*
_output_shapes

:&
?
!predictor/rnn/p_cell/gates/kernel
VariableV2*4
_class*
(&loc:@predictor/rnn/p_cell/gates/kernel*
	container *
shape
:&*
dtype0*
_output_shapes

:&*
shared_name 
?
(predictor/rnn/p_cell/gates/kernel/AssignAssign!predictor/rnn/p_cell/gates/kernel<predictor/rnn/p_cell/gates/kernel/Initializer/random_uniform*
validate_shape(*
_output_shapes

:&*
use_locking(*
T0*4
_class*
(&loc:@predictor/rnn/p_cell/gates/kernel
~
&predictor/rnn/p_cell/gates/kernel/readIdentity!predictor/rnn/p_cell/gates/kernel*
T0*
_output_shapes

:&
?
1predictor/rnn/p_cell/gates/bias/Initializer/ConstConst*
valueB*  ??*2
_class(
&$loc:@predictor/rnn/p_cell/gates/bias*
dtype0*
_output_shapes
:
?
predictor/rnn/p_cell/gates/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name *2
_class(
&$loc:@predictor/rnn/p_cell/gates/bias*
	container *
shape:
?
&predictor/rnn/p_cell/gates/bias/AssignAssignpredictor/rnn/p_cell/gates/bias1predictor/rnn/p_cell/gates/bias/Initializer/Const*
T0*2
_class(
&$loc:@predictor/rnn/p_cell/gates/bias*
validate_shape(*
_output_shapes
:*
use_locking(
v
$predictor/rnn/p_cell/gates/bias/readIdentitypredictor/rnn/p_cell/gates/bias*
T0*
_output_shapes
:
?
Fpredictor/rnn/p_cell/candidate/kernel/Initializer/random_uniform/shapeConst*
valueB"&      *8
_class.
,*loc:@predictor/rnn/p_cell/candidate/kernel*
dtype0*
_output_shapes
:
?
Dpredictor/rnn/p_cell/candidate/kernel/Initializer/random_uniform/minConst*
valueB
 *S???*8
_class.
,*loc:@predictor/rnn/p_cell/candidate/kernel*
dtype0*
_output_shapes
: 
?
Dpredictor/rnn/p_cell/candidate/kernel/Initializer/random_uniform/maxConst*
valueB
 *S??>*8
_class.
,*loc:@predictor/rnn/p_cell/candidate/kernel*
dtype0*
_output_shapes
: 
?
Npredictor/rnn/p_cell/candidate/kernel/Initializer/random_uniform/RandomUniformRandomUniformFpredictor/rnn/p_cell/candidate/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:&*

seed *
T0*8
_class.
,*loc:@predictor/rnn/p_cell/candidate/kernel*
seed2 
?
Dpredictor/rnn/p_cell/candidate/kernel/Initializer/random_uniform/subSubDpredictor/rnn/p_cell/candidate/kernel/Initializer/random_uniform/maxDpredictor/rnn/p_cell/candidate/kernel/Initializer/random_uniform/min*
T0*8
_class.
,*loc:@predictor/rnn/p_cell/candidate/kernel*
_output_shapes
: 
?
Dpredictor/rnn/p_cell/candidate/kernel/Initializer/random_uniform/mulMulNpredictor/rnn/p_cell/candidate/kernel/Initializer/random_uniform/RandomUniformDpredictor/rnn/p_cell/candidate/kernel/Initializer/random_uniform/sub*
T0*8
_class.
,*loc:@predictor/rnn/p_cell/candidate/kernel*
_output_shapes

:&
?
@predictor/rnn/p_cell/candidate/kernel/Initializer/random_uniformAddDpredictor/rnn/p_cell/candidate/kernel/Initializer/random_uniform/mulDpredictor/rnn/p_cell/candidate/kernel/Initializer/random_uniform/min*
T0*8
_class.
,*loc:@predictor/rnn/p_cell/candidate/kernel*
_output_shapes

:&
?
%predictor/rnn/p_cell/candidate/kernel
VariableV2*
shape
:&*
dtype0*
_output_shapes

:&*
shared_name *8
_class.
,*loc:@predictor/rnn/p_cell/candidate/kernel*
	container 
?
,predictor/rnn/p_cell/candidate/kernel/AssignAssign%predictor/rnn/p_cell/candidate/kernel@predictor/rnn/p_cell/candidate/kernel/Initializer/random_uniform*
use_locking(*
T0*8
_class.
,*loc:@predictor/rnn/p_cell/candidate/kernel*
validate_shape(*
_output_shapes

:&
?
*predictor/rnn/p_cell/candidate/kernel/readIdentity%predictor/rnn/p_cell/candidate/kernel*
_output_shapes

:&*
T0
?
5predictor/rnn/p_cell/candidate/bias/Initializer/zerosConst*
valueB*    *6
_class,
*(loc:@predictor/rnn/p_cell/candidate/bias*
dtype0*
_output_shapes
:
?
#predictor/rnn/p_cell/candidate/bias
VariableV2*
shared_name *6
_class,
*(loc:@predictor/rnn/p_cell/candidate/bias*
	container *
shape:*
dtype0*
_output_shapes
:
?
*predictor/rnn/p_cell/candidate/bias/AssignAssign#predictor/rnn/p_cell/candidate/bias5predictor/rnn/p_cell/candidate/bias/Initializer/zeros*
T0*6
_class,
*(loc:@predictor/rnn/p_cell/candidate/bias*
validate_shape(*
_output_shapes
:*
use_locking(
~
(predictor/rnn/p_cell/candidate/bias/readIdentity#predictor/rnn/p_cell/candidate/bias*
T0*
_output_shapes
:
?
&predictor/rnn/while/p_cell/concat/axisConst^predictor/rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
?
!predictor/rnn/while/p_cell/concatConcatV2%predictor/rnn/while/TensorArrayReadV3predictor/rnn/while/Identity_3&predictor/rnn/while/p_cell/concat/axis*

Tidx0*
T0*
N*'
_output_shapes
:?????????&
?
!predictor/rnn/while/p_cell/MatMulMatMul!predictor/rnn/while/p_cell/concat'predictor/rnn/while/p_cell/MatMul/Enter*'
_output_shapes
:?????????*
transpose_a( *
transpose_b( *
T0
?
'predictor/rnn/while/p_cell/MatMul/EnterEnter&predictor/rnn/p_cell/gates/kernel/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes

:&*1

frame_name#!predictor/rnn/while/while_context
?
"predictor/rnn/while/p_cell/BiasAddBiasAdd!predictor/rnn/while/p_cell/MatMul(predictor/rnn/while/p_cell/BiasAdd/Enter*
data_formatNHWC*'
_output_shapes
:?????????*
T0
?
(predictor/rnn/while/p_cell/BiasAdd/EnterEnter$predictor/rnn/p_cell/gates/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*1

frame_name#!predictor/rnn/while/while_context
?
"predictor/rnn/while/p_cell/SigmoidSigmoid"predictor/rnn/while/p_cell/BiasAdd*
T0*'
_output_shapes
:?????????
?
 predictor/rnn/while/p_cell/ConstConst^predictor/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
?
*predictor/rnn/while/p_cell/split/split_dimConst^predictor/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
?
 predictor/rnn/while/p_cell/splitSplit*predictor/rnn/while/p_cell/split/split_dim"predictor/rnn/while/p_cell/Sigmoid*
T0*:
_output_shapes(
&:?????????:?????????*
	num_split
?
predictor/rnn/while/p_cell/mulMul predictor/rnn/while/p_cell/splitpredictor/rnn/while/Identity_3*
T0*'
_output_shapes
:?????????
?
(predictor/rnn/while/p_cell/concat_1/axisConst^predictor/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
?
#predictor/rnn/while/p_cell/concat_1ConcatV2%predictor/rnn/while/TensorArrayReadV3predictor/rnn/while/p_cell/mul(predictor/rnn/while/p_cell/concat_1/axis*

Tidx0*
T0*
N*'
_output_shapes
:?????????&
?
#predictor/rnn/while/p_cell/MatMul_1MatMul#predictor/rnn/while/p_cell/concat_1)predictor/rnn/while/p_cell/MatMul_1/Enter*
T0*'
_output_shapes
:?????????*
transpose_a( *
transpose_b( 
?
)predictor/rnn/while/p_cell/MatMul_1/EnterEnter*predictor/rnn/p_cell/candidate/kernel/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes

:&*1

frame_name#!predictor/rnn/while/while_context
?
$predictor/rnn/while/p_cell/BiasAdd_1BiasAdd#predictor/rnn/while/p_cell/MatMul_1*predictor/rnn/while/p_cell/BiasAdd_1/Enter*
data_formatNHWC*'
_output_shapes
:?????????*
T0
?
*predictor/rnn/while/p_cell/BiasAdd_1/EnterEnter(predictor/rnn/p_cell/candidate/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*1

frame_name#!predictor/rnn/while/while_context

predictor/rnn/while/p_cell/TanhTanh$predictor/rnn/while/p_cell/BiasAdd_1*
T0*'
_output_shapes
:?????????
?
 predictor/rnn/while/p_cell/mul_1Mul"predictor/rnn/while/p_cell/split:1predictor/rnn/while/Identity_3*
T0*'
_output_shapes
:?????????
?
 predictor/rnn/while/p_cell/sub/xConst^predictor/rnn/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
predictor/rnn/while/p_cell/subSub predictor/rnn/while/p_cell/sub/x"predictor/rnn/while/p_cell/split:1*
T0*'
_output_shapes
:?????????
?
 predictor/rnn/while/p_cell/mul_2Mulpredictor/rnn/while/p_cell/subpredictor/rnn/while/p_cell/Tanh*'
_output_shapes
:?????????*
T0
?
predictor/rnn/while/p_cell/addAddV2 predictor/rnn/while/p_cell/mul_1 predictor/rnn/while/p_cell/mul_2*
T0*'
_output_shapes
:?????????
?
predictor/rnn/while/SelectSelect predictor/rnn/while/GreaterEqual predictor/rnn/while/Select/Enterpredictor/rnn/while/p_cell/add*
T0*1
_class'
%#loc:@predictor/rnn/while/p_cell/add*'
_output_shapes
:?????????
?
 predictor/rnn/while/Select/EnterEnterpredictor/rnn/zeros*
is_constant(*1

frame_name#!predictor/rnn/while/while_context*'
_output_shapes
:?????????*
T0*1
_class'
%#loc:@predictor/rnn/while/p_cell/add*
parallel_iterations 
?
predictor/rnn/while/Select_1Select predictor/rnn/while/GreaterEqualpredictor/rnn/while/Identity_3predictor/rnn/while/p_cell/add*
T0*1
_class'
%#loc:@predictor/rnn/while/p_cell/add*'
_output_shapes
:?????????
?
7predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3=predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enterpredictor/rnn/while/Identity_1predictor/rnn/while/Selectpredictor/rnn/while/Identity_2*
T0*1
_class'
%#loc:@predictor/rnn/while/p_cell/add*
_output_shapes
: 
?
=predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterpredictor/rnn/TensorArray*
is_constant(*
_output_shapes
:*1

frame_name#!predictor/rnn/while/while_context*
T0*1
_class'
%#loc:@predictor/rnn/while/p_cell/add*
parallel_iterations 
|
predictor/rnn/while/add_1/yConst^predictor/rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
?
predictor/rnn/while/add_1AddV2predictor/rnn/while/Identity_1predictor/rnn/while/add_1/y*
T0*
_output_shapes
: 
l
!predictor/rnn/while/NextIterationNextIterationpredictor/rnn/while/add*
T0*
_output_shapes
: 
p
#predictor/rnn/while/NextIteration_1NextIterationpredictor/rnn/while/add_1*
T0*
_output_shapes
: 
?
#predictor/rnn/while/NextIteration_2NextIteration7predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
?
#predictor/rnn/while/NextIteration_3NextIterationpredictor/rnn/while/Select_1*
T0*'
_output_shapes
:?????????
]
predictor/rnn/while/ExitExitpredictor/rnn/while/Switch*
T0*
_output_shapes
: 
a
predictor/rnn/while/Exit_1Exitpredictor/rnn/while/Switch_1*
_output_shapes
: *
T0
a
predictor/rnn/while/Exit_2Exitpredictor/rnn/while/Switch_2*
T0*
_output_shapes
: 
r
predictor/rnn/while/Exit_3Exitpredictor/rnn/while/Switch_3*
T0*'
_output_shapes
:?????????
?
0predictor/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3predictor/rnn/TensorArraypredictor/rnn/while/Exit_2*,
_class"
 loc:@predictor/rnn/TensorArray*
_output_shapes
: 
?
*predictor/rnn/TensorArrayStack/range/startConst*
value	B : *,
_class"
 loc:@predictor/rnn/TensorArray*
dtype0*
_output_shapes
: 
?
*predictor/rnn/TensorArrayStack/range/deltaConst*
value	B :*,
_class"
 loc:@predictor/rnn/TensorArray*
dtype0*
_output_shapes
: 
?
$predictor/rnn/TensorArrayStack/rangeRange*predictor/rnn/TensorArrayStack/range/start0predictor/rnn/TensorArrayStack/TensorArraySizeV3*predictor/rnn/TensorArrayStack/range/delta*#
_output_shapes
:?????????*

Tidx0*,
_class"
 loc:@predictor/rnn/TensorArray
?
2predictor/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3predictor/rnn/TensorArray$predictor/rnn/TensorArrayStack/rangepredictor/rnn/while/Exit_2*$
element_shape:?????????*,
_class"
 loc:@predictor/rnn/TensorArray*
dtype0*+
_output_shapes
:?????????
_
predictor/rnn/Const_4Const*
dtype0*
_output_shapes
:*
valueB:
V
predictor/rnn/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
]
predictor/rnn/range_1/startConst*
value	B :*
dtype0*
_output_shapes
: 
]
predictor/rnn/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
predictor/rnn/range_1Rangepredictor/rnn/range_1/startpredictor/rnn/Rank_1predictor/rnn/range_1/delta*
_output_shapes
:*

Tidx0
p
predictor/rnn/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
]
predictor/rnn/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
predictor/rnn/concat_2ConcatV2predictor/rnn/concat_2/values_0predictor/rnn/range_1predictor/rnn/concat_2/axis*

Tidx0*
T0*
N*
_output_shapes
:
?
predictor/rnn/transpose_1	Transpose2predictor/rnn/TensorArrayStack/TensorArrayGatherV3predictor/rnn/concat_2*
Tperm0*
T0*+
_output_shapes
:?????????
?
Bpredictor/fully_connected/weights/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *4
_class*
(&loc:@predictor/fully_connected/weights
?
@predictor/fully_connected/weights/Initializer/random_uniform/minConst*
valueB
 *b?'?*4
_class*
(&loc:@predictor/fully_connected/weights*
dtype0*
_output_shapes
: 
?
@predictor/fully_connected/weights/Initializer/random_uniform/maxConst*
valueB
 *b?'?*4
_class*
(&loc:@predictor/fully_connected/weights*
dtype0*
_output_shapes
: 
?
Jpredictor/fully_connected/weights/Initializer/random_uniform/RandomUniformRandomUniformBpredictor/fully_connected/weights/Initializer/random_uniform/shape*
T0*4
_class*
(&loc:@predictor/fully_connected/weights*
seed2 *
dtype0*
_output_shapes

:*

seed 
?
@predictor/fully_connected/weights/Initializer/random_uniform/subSub@predictor/fully_connected/weights/Initializer/random_uniform/max@predictor/fully_connected/weights/Initializer/random_uniform/min*
T0*4
_class*
(&loc:@predictor/fully_connected/weights*
_output_shapes
: 
?
@predictor/fully_connected/weights/Initializer/random_uniform/mulMulJpredictor/fully_connected/weights/Initializer/random_uniform/RandomUniform@predictor/fully_connected/weights/Initializer/random_uniform/sub*
T0*4
_class*
(&loc:@predictor/fully_connected/weights*
_output_shapes

:
?
<predictor/fully_connected/weights/Initializer/random_uniformAdd@predictor/fully_connected/weights/Initializer/random_uniform/mul@predictor/fully_connected/weights/Initializer/random_uniform/min*
T0*4
_class*
(&loc:@predictor/fully_connected/weights*
_output_shapes

:
?
!predictor/fully_connected/weights
VariableV2*
shape
:*
dtype0*
_output_shapes

:*
shared_name *4
_class*
(&loc:@predictor/fully_connected/weights*
	container 
?
(predictor/fully_connected/weights/AssignAssign!predictor/fully_connected/weights<predictor/fully_connected/weights/Initializer/random_uniform*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*4
_class*
(&loc:@predictor/fully_connected/weights
?
&predictor/fully_connected/weights/readIdentity!predictor/fully_connected/weights*
T0*4
_class*
(&loc:@predictor/fully_connected/weights*
_output_shapes

:
?
2predictor/fully_connected/biases/Initializer/zerosConst*
valueB*    *3
_class)
'%loc:@predictor/fully_connected/biases*
dtype0*
_output_shapes
:
?
 predictor/fully_connected/biases
VariableV2*
shared_name *3
_class)
'%loc:@predictor/fully_connected/biases*
	container *
shape:*
dtype0*
_output_shapes
:
?
'predictor/fully_connected/biases/AssignAssign predictor/fully_connected/biases2predictor/fully_connected/biases/Initializer/zeros*
T0*3
_class)
'%loc:@predictor/fully_connected/biases*
validate_shape(*
_output_shapes
:*
use_locking(
?
%predictor/fully_connected/biases/readIdentity predictor/fully_connected/biases*
T0*3
_class)
'%loc:@predictor/fully_connected/biases*
_output_shapes
:
r
(predictor/fully_connected/Tensordot/axesConst*
valueB:*
dtype0*
_output_shapes
:
y
(predictor/fully_connected/Tensordot/freeConst*
valueB"       *
dtype0*
_output_shapes
:
?
)predictor/fully_connected/Tensordot/ShapeShapepredictor/rnn/transpose_1*
T0*
out_type0*
_output_shapes
:
s
1predictor/fully_connected/Tensordot/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
,predictor/fully_connected/Tensordot/GatherV2GatherV2)predictor/fully_connected/Tensordot/Shape(predictor/fully_connected/Tensordot/free1predictor/fully_connected/Tensordot/GatherV2/axis*
Tparams0*
_output_shapes
:*
Taxis0*

batch_dims *
Tindices0
u
3predictor/fully_connected/Tensordot/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
.predictor/fully_connected/Tensordot/GatherV2_1GatherV2)predictor/fully_connected/Tensordot/Shape(predictor/fully_connected/Tensordot/axes3predictor/fully_connected/Tensordot/GatherV2_1/axis*
_output_shapes
:*
Taxis0*

batch_dims *
Tindices0*
Tparams0
s
)predictor/fully_connected/Tensordot/ConstConst*
valueB: *
dtype0*
_output_shapes
:
?
(predictor/fully_connected/Tensordot/ProdProd,predictor/fully_connected/Tensordot/GatherV2)predictor/fully_connected/Tensordot/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
u
+predictor/fully_connected/Tensordot/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
?
*predictor/fully_connected/Tensordot/Prod_1Prod.predictor/fully_connected/Tensordot/GatherV2_1+predictor/fully_connected/Tensordot/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
q
/predictor/fully_connected/Tensordot/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
*predictor/fully_connected/Tensordot/concatConcatV2(predictor/fully_connected/Tensordot/free(predictor/fully_connected/Tensordot/axes/predictor/fully_connected/Tensordot/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
?
)predictor/fully_connected/Tensordot/stackPack(predictor/fully_connected/Tensordot/Prod*predictor/fully_connected/Tensordot/Prod_1*
T0*

axis *
N*
_output_shapes
:
?
-predictor/fully_connected/Tensordot/transpose	Transposepredictor/rnn/transpose_1*predictor/fully_connected/Tensordot/concat*
Tperm0*
T0*+
_output_shapes
:?????????
?
+predictor/fully_connected/Tensordot/ReshapeReshape-predictor/fully_connected/Tensordot/transpose)predictor/fully_connected/Tensordot/stack*
T0*
Tshape0*0
_output_shapes
:??????????????????
?
4predictor/fully_connected/Tensordot/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
?
/predictor/fully_connected/Tensordot/transpose_1	Transpose&predictor/fully_connected/weights/read4predictor/fully_connected/Tensordot/transpose_1/perm*
Tperm0*
T0*
_output_shapes

:
?
3predictor/fully_connected/Tensordot/Reshape_1/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
?
-predictor/fully_connected/Tensordot/Reshape_1Reshape/predictor/fully_connected/Tensordot/transpose_13predictor/fully_connected/Tensordot/Reshape_1/shape*
T0*
Tshape0*
_output_shapes

:
?
*predictor/fully_connected/Tensordot/MatMulMatMul+predictor/fully_connected/Tensordot/Reshape-predictor/fully_connected/Tensordot/Reshape_1*
T0*'
_output_shapes
:?????????*
transpose_a( *
transpose_b( 
u
+predictor/fully_connected/Tensordot/Const_2Const*
valueB:*
dtype0*
_output_shapes
:
s
1predictor/fully_connected/Tensordot/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
,predictor/fully_connected/Tensordot/concat_1ConcatV2,predictor/fully_connected/Tensordot/GatherV2+predictor/fully_connected/Tensordot/Const_21predictor/fully_connected/Tensordot/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
?
#predictor/fully_connected/TensordotReshape*predictor/fully_connected/Tensordot/MatMul,predictor/fully_connected/Tensordot/concat_1*
T0*
Tshape0*+
_output_shapes
:?????????
?
!predictor/fully_connected/BiasAddBiasAdd#predictor/fully_connected/Tensordot%predictor/fully_connected/biases/read*
T0*
data_formatNHWC*+
_output_shapes
:?????????
x
predictor/myoutput_ySigmoid!predictor/fully_connected/BiasAdd*
T0*+
_output_shapes
:?????????
u
absolute_difference/SubSubpredictor/myoutput_y	myinput_y*
T0*+
_output_shapes
:?????????
m
absolute_difference/AbsAbsabsolute_difference/Sub*
T0*+
_output_shapes
:?????????
u
0absolute_difference/assert_broadcastable/weightsConst*
dtype0*
_output_shapes
: *
valueB
 *  ??
y
6absolute_difference/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
w
5absolute_difference/assert_broadcastable/weights/rankConst*
dtype0*
_output_shapes
: *
value	B : 
?
5absolute_difference/assert_broadcastable/values/shapeShapeabsolute_difference/Abs*
T0*
out_type0*
_output_shapes
:
v
4absolute_difference/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
L
Dabsolute_difference/assert_broadcastable/static_scalar_check_successNoOp
?
absolute_difference/Cast/xConstE^absolute_difference/assert_broadcastable/static_scalar_check_success*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
absolute_difference/MulMulabsolute_difference/Absabsolute_difference/Cast/x*
T0*+
_output_shapes
:?????????
?
absolute_difference/ConstConstE^absolute_difference/assert_broadcastable/static_scalar_check_success*!
valueB"          *
dtype0*
_output_shapes
:
?
absolute_difference/SumSumabsolute_difference/Mulabsolute_difference/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
?
'absolute_difference/num_present/Equal/yConstE^absolute_difference/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
?
%absolute_difference/num_present/EqualEqualabsolute_difference/Cast/x'absolute_difference/num_present/Equal/y*
T0*
_output_shapes
: *
incompatible_shape_error(
?
*absolute_difference/num_present/zeros_likeConstE^absolute_difference/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
?
/absolute_difference/num_present/ones_like/ShapeConstE^absolute_difference/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB 
?
/absolute_difference/num_present/ones_like/ConstConstE^absolute_difference/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
)absolute_difference/num_present/ones_likeFill/absolute_difference/num_present/ones_like/Shape/absolute_difference/num_present/ones_like/Const*
T0*

index_type0*
_output_shapes
: 
?
&absolute_difference/num_present/SelectSelect%absolute_difference/num_present/Equal*absolute_difference/num_present/zeros_like)absolute_difference/num_present/ones_like*
T0*
_output_shapes
: 
?
Tabsolute_difference/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstE^absolute_difference/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
?
Sabsolute_difference/num_present/broadcast_weights/assert_broadcastable/weights/rankConstE^absolute_difference/assert_broadcastable/static_scalar_check_success*
value	B : *
dtype0*
_output_shapes
: 
?
Sabsolute_difference/num_present/broadcast_weights/assert_broadcastable/values/shapeShapeabsolute_difference/AbsE^absolute_difference/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
?
Rabsolute_difference/num_present/broadcast_weights/assert_broadcastable/values/rankConstE^absolute_difference/assert_broadcastable/static_scalar_check_success*
value	B :*
dtype0*
_output_shapes
: 
?
babsolute_difference/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpE^absolute_difference/assert_broadcastable/static_scalar_check_success
?
Aabsolute_difference/num_present/broadcast_weights/ones_like/ShapeShapeabsolute_difference/AbsE^absolute_difference/assert_broadcastable/static_scalar_check_successc^absolute_difference/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
?
Aabsolute_difference/num_present/broadcast_weights/ones_like/ConstConstE^absolute_difference/assert_broadcastable/static_scalar_check_successc^absolute_difference/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
;absolute_difference/num_present/broadcast_weights/ones_likeFillAabsolute_difference/num_present/broadcast_weights/ones_like/ShapeAabsolute_difference/num_present/broadcast_weights/ones_like/Const*
T0*

index_type0*+
_output_shapes
:?????????
?
1absolute_difference/num_present/broadcast_weightsMul&absolute_difference/num_present/Select;absolute_difference/num_present/broadcast_weights/ones_like*
T0*+
_output_shapes
:?????????
?
%absolute_difference/num_present/ConstConstE^absolute_difference/assert_broadcastable/static_scalar_check_success*!
valueB"          *
dtype0*
_output_shapes
:
?
absolute_difference/num_presentSum1absolute_difference/num_present/broadcast_weights%absolute_difference/num_present/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
?
absolute_difference/Const_1ConstE^absolute_difference/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
?
absolute_difference/Sum_1Sumabsolute_difference/Sumabsolute_difference/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
?
absolute_difference/valueDivNoNanabsolute_difference/Sum_1absolute_difference/num_present*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
X
gradients/grad_ys_0Const*
valueB
 *  ??*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0
S
gradients/f_countConst*
value	B : *
dtype0*
_output_shapes
: 
?
gradients/f_count_1Entergradients/f_count*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *1

frame_name#!predictor/rnn/while/while_context
r
gradients/MergeMergegradients/f_count_1gradients/NextIteration*
T0*
N*
_output_shapes
: : 
l
gradients/SwitchSwitchgradients/Mergepredictor/rnn/while/LoopCond*
_output_shapes
: : *
T0
p
gradients/Add/yConst^predictor/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Z
gradients/AddAddgradients/Switch:1gradients/Add/y*
T0*
_output_shapes
: 
?
gradients/NextIterationNextIterationgradients/Add?^gradients/predictor/rnn/while/Select_1_grad/Select/StackPushV2C^gradients/predictor/rnn/while/Select_1_grad/zeros_like/StackPushV2e^gradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2H^gradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMul_1/StackPushV2F^gradients/predictor/rnn/while/p_cell/MatMul_grad/MatMul_1/StackPushV2J^gradients/predictor/rnn/while/p_cell/Sigmoid_grad/SigmoidGrad/StackPushV2P^gradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/StackPushV2R^gradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/StackPushV2_1F^gradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/StackPushV2H^gradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/StackPushV2_1R^gradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2T^gradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1B^gradients/predictor/rnn/while/p_cell/mul_1_grad/Mul_1/StackPushV2R^gradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2T^gradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1@^gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul/StackPushV2B^gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul_1/StackPushV2P^gradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/StackPushV2R^gradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1@^gradients/predictor/rnn/while/p_cell/mul_grad/Mul_1/StackPushV2P^gradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/StackPushV2R^gradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/StackPushV2_1*
T0*
_output_shapes
: 
N
gradients/f_count_2Exitgradients/Switch*
_output_shapes
: *
T0
S
gradients/b_countConst*
value	B :*
dtype0*
_output_shapes
: 
?
gradients/b_count_1Entergradients/f_count_2*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *;

frame_name-+gradients/predictor/rnn/while/while_context
v
gradients/Merge_1Mergegradients/b_count_1gradients/NextIteration_1*
T0*
N*
_output_shapes
: : 
x
gradients/GreaterEqualGreaterEqualgradients/Merge_1gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
?
gradients/GreaterEqual/EnterEntergradients/b_count*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *;

frame_name-+gradients/predictor/rnn/while/while_context
O
gradients/b_count_2LoopCondgradients/GreaterEqual*
_output_shapes
: 
g
gradients/Switch_1Switchgradients/Merge_1gradients/b_count_2*
T0*
_output_shapes
: : 
i
gradients/SubSubgradients/Switch_1:1gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
?
gradients/NextIteration_1NextIterationgradients/Sub`^gradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync*
T0*
_output_shapes
: 
P
gradients/b_count_3Exitgradients/Switch_1*
T0*
_output_shapes
: 
q
.gradients/absolute_difference/value_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
s
0gradients/absolute_difference/value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
?
>gradients/absolute_difference/value_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/absolute_difference/value_grad/Shape0gradients/absolute_difference/value_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
3gradients/absolute_difference/value_grad/div_no_nanDivNoNangradients/Fillabsolute_difference/num_present*
T0*
_output_shapes
: 
?
,gradients/absolute_difference/value_grad/SumSum3gradients/absolute_difference/value_grad/div_no_nan>gradients/absolute_difference/value_grad/BroadcastGradientArgs*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
?
0gradients/absolute_difference/value_grad/ReshapeReshape,gradients/absolute_difference/value_grad/Sum.gradients/absolute_difference/value_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
o
,gradients/absolute_difference/value_grad/NegNegabsolute_difference/Sum_1*
T0*
_output_shapes
: 
?
5gradients/absolute_difference/value_grad/div_no_nan_1DivNoNan,gradients/absolute_difference/value_grad/Negabsolute_difference/num_present*
T0*
_output_shapes
: 
?
5gradients/absolute_difference/value_grad/div_no_nan_2DivNoNan5gradients/absolute_difference/value_grad/div_no_nan_1absolute_difference/num_present*
_output_shapes
: *
T0
?
,gradients/absolute_difference/value_grad/mulMulgradients/Fill5gradients/absolute_difference/value_grad/div_no_nan_2*
T0*
_output_shapes
: 
?
.gradients/absolute_difference/value_grad/Sum_1Sum,gradients/absolute_difference/value_grad/mul@gradients/absolute_difference/value_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
?
2gradients/absolute_difference/value_grad/Reshape_1Reshape.gradients/absolute_difference/value_grad/Sum_10gradients/absolute_difference/value_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
?
9gradients/absolute_difference/value_grad/tuple/group_depsNoOp1^gradients/absolute_difference/value_grad/Reshape3^gradients/absolute_difference/value_grad/Reshape_1
?
Agradients/absolute_difference/value_grad/tuple/control_dependencyIdentity0gradients/absolute_difference/value_grad/Reshape:^gradients/absolute_difference/value_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/absolute_difference/value_grad/Reshape*
_output_shapes
: 
?
Cgradients/absolute_difference/value_grad/tuple/control_dependency_1Identity2gradients/absolute_difference/value_grad/Reshape_1:^gradients/absolute_difference/value_grad/tuple/group_deps*
_output_shapes
: *
T0*E
_class;
97loc:@gradients/absolute_difference/value_grad/Reshape_1
y
6gradients/absolute_difference/Sum_1_grad/Reshape/shapeConst*
dtype0*
_output_shapes
: *
valueB 
?
0gradients/absolute_difference/Sum_1_grad/ReshapeReshapeAgradients/absolute_difference/value_grad/tuple/control_dependency6gradients/absolute_difference/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
q
.gradients/absolute_difference/Sum_1_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 
?
-gradients/absolute_difference/Sum_1_grad/TileTile0gradients/absolute_difference/Sum_1_grad/Reshape.gradients/absolute_difference/Sum_1_grad/Const*
T0*
_output_shapes
: *

Tmultiples0
?
4gradients/absolute_difference/Sum_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*!
valueB"         
?
.gradients/absolute_difference/Sum_grad/ReshapeReshape-gradients/absolute_difference/Sum_1_grad/Tile4gradients/absolute_difference/Sum_grad/Reshape/shape*
T0*
Tshape0*"
_output_shapes
:
?
,gradients/absolute_difference/Sum_grad/ShapeShapeabsolute_difference/Mul*
T0*
out_type0*
_output_shapes
:
?
+gradients/absolute_difference/Sum_grad/TileTile.gradients/absolute_difference/Sum_grad/Reshape,gradients/absolute_difference/Sum_grad/Shape*

Tmultiples0*
T0*+
_output_shapes
:?????????
?
,gradients/absolute_difference/Mul_grad/ShapeShapeabsolute_difference/Abs*
T0*
out_type0*
_output_shapes
:
?
.gradients/absolute_difference/Mul_grad/Shape_1Shapeabsolute_difference/Cast/x*
T0*
out_type0*
_output_shapes
: 
?
<gradients/absolute_difference/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/absolute_difference/Mul_grad/Shape.gradients/absolute_difference/Mul_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
*gradients/absolute_difference/Mul_grad/MulMul+gradients/absolute_difference/Sum_grad/Tileabsolute_difference/Cast/x*
T0*+
_output_shapes
:?????????
?
*gradients/absolute_difference/Mul_grad/SumSum*gradients/absolute_difference/Mul_grad/Mul<gradients/absolute_difference/Mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
.gradients/absolute_difference/Mul_grad/ReshapeReshape*gradients/absolute_difference/Mul_grad/Sum,gradients/absolute_difference/Mul_grad/Shape*
T0*
Tshape0*+
_output_shapes
:?????????
?
,gradients/absolute_difference/Mul_grad/Mul_1Mulabsolute_difference/Abs+gradients/absolute_difference/Sum_grad/Tile*+
_output_shapes
:?????????*
T0
?
,gradients/absolute_difference/Mul_grad/Sum_1Sum,gradients/absolute_difference/Mul_grad/Mul_1>gradients/absolute_difference/Mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
0gradients/absolute_difference/Mul_grad/Reshape_1Reshape,gradients/absolute_difference/Mul_grad/Sum_1.gradients/absolute_difference/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
?
7gradients/absolute_difference/Mul_grad/tuple/group_depsNoOp/^gradients/absolute_difference/Mul_grad/Reshape1^gradients/absolute_difference/Mul_grad/Reshape_1
?
?gradients/absolute_difference/Mul_grad/tuple/control_dependencyIdentity.gradients/absolute_difference/Mul_grad/Reshape8^gradients/absolute_difference/Mul_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/absolute_difference/Mul_grad/Reshape*+
_output_shapes
:?????????
?
Agradients/absolute_difference/Mul_grad/tuple/control_dependency_1Identity0gradients/absolute_difference/Mul_grad/Reshape_18^gradients/absolute_difference/Mul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/absolute_difference/Mul_grad/Reshape_1*
_output_shapes
: 
?
+gradients/absolute_difference/Abs_grad/SignSignabsolute_difference/Sub*+
_output_shapes
:?????????*
T0
?
*gradients/absolute_difference/Abs_grad/mulMul?gradients/absolute_difference/Mul_grad/tuple/control_dependency+gradients/absolute_difference/Abs_grad/Sign*
T0*+
_output_shapes
:?????????
?
,gradients/absolute_difference/Sub_grad/ShapeShapepredictor/myoutput_y*
T0*
out_type0*
_output_shapes
:
w
.gradients/absolute_difference/Sub_grad/Shape_1Shape	myinput_y*
T0*
out_type0*
_output_shapes
:
?
<gradients/absolute_difference/Sub_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/absolute_difference/Sub_grad/Shape.gradients/absolute_difference/Sub_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
*gradients/absolute_difference/Sub_grad/SumSum*gradients/absolute_difference/Abs_grad/mul<gradients/absolute_difference/Sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
.gradients/absolute_difference/Sub_grad/ReshapeReshape*gradients/absolute_difference/Sub_grad/Sum,gradients/absolute_difference/Sub_grad/Shape*
T0*
Tshape0*+
_output_shapes
:?????????
?
*gradients/absolute_difference/Sub_grad/NegNeg*gradients/absolute_difference/Abs_grad/mul*
T0*+
_output_shapes
:?????????
?
,gradients/absolute_difference/Sub_grad/Sum_1Sum*gradients/absolute_difference/Sub_grad/Neg>gradients/absolute_difference/Sub_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
0gradients/absolute_difference/Sub_grad/Reshape_1Reshape,gradients/absolute_difference/Sub_grad/Sum_1.gradients/absolute_difference/Sub_grad/Shape_1*+
_output_shapes
:?????????*
T0*
Tshape0
?
7gradients/absolute_difference/Sub_grad/tuple/group_depsNoOp/^gradients/absolute_difference/Sub_grad/Reshape1^gradients/absolute_difference/Sub_grad/Reshape_1
?
?gradients/absolute_difference/Sub_grad/tuple/control_dependencyIdentity.gradients/absolute_difference/Sub_grad/Reshape8^gradients/absolute_difference/Sub_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/absolute_difference/Sub_grad/Reshape*+
_output_shapes
:?????????
?
Agradients/absolute_difference/Sub_grad/tuple/control_dependency_1Identity0gradients/absolute_difference/Sub_grad/Reshape_18^gradients/absolute_difference/Sub_grad/tuple/group_deps*+
_output_shapes
:?????????*
T0*C
_class9
75loc:@gradients/absolute_difference/Sub_grad/Reshape_1
?
/gradients/predictor/myoutput_y_grad/SigmoidGradSigmoidGradpredictor/myoutput_y?gradients/absolute_difference/Sub_grad/tuple/control_dependency*
T0*+
_output_shapes
:?????????
?
<gradients/predictor/fully_connected/BiasAdd_grad/BiasAddGradBiasAddGrad/gradients/predictor/myoutput_y_grad/SigmoidGrad*
T0*
data_formatNHWC*
_output_shapes
:
?
Agradients/predictor/fully_connected/BiasAdd_grad/tuple/group_depsNoOp=^gradients/predictor/fully_connected/BiasAdd_grad/BiasAddGrad0^gradients/predictor/myoutput_y_grad/SigmoidGrad
?
Igradients/predictor/fully_connected/BiasAdd_grad/tuple/control_dependencyIdentity/gradients/predictor/myoutput_y_grad/SigmoidGradB^gradients/predictor/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/predictor/myoutput_y_grad/SigmoidGrad*+
_output_shapes
:?????????
?
Kgradients/predictor/fully_connected/BiasAdd_grad/tuple/control_dependency_1Identity<gradients/predictor/fully_connected/BiasAdd_grad/BiasAddGradB^gradients/predictor/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/predictor/fully_connected/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
?
8gradients/predictor/fully_connected/Tensordot_grad/ShapeShape*predictor/fully_connected/Tensordot/MatMul*
T0*
out_type0*
_output_shapes
:
?
:gradients/predictor/fully_connected/Tensordot_grad/ReshapeReshapeIgradients/predictor/fully_connected/BiasAdd_grad/tuple/control_dependency8gradients/predictor/fully_connected/Tensordot_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????
?
@gradients/predictor/fully_connected/Tensordot/MatMul_grad/MatMulMatMul:gradients/predictor/fully_connected/Tensordot_grad/Reshape-predictor/fully_connected/Tensordot/Reshape_1*
T0*'
_output_shapes
:?????????*
transpose_a( *
transpose_b(
?
Bgradients/predictor/fully_connected/Tensordot/MatMul_grad/MatMul_1MatMul+predictor/fully_connected/Tensordot/Reshape:gradients/predictor/fully_connected/Tensordot_grad/Reshape*
transpose_b( *
T0*'
_output_shapes
:?????????*
transpose_a(
?
Jgradients/predictor/fully_connected/Tensordot/MatMul_grad/tuple/group_depsNoOpA^gradients/predictor/fully_connected/Tensordot/MatMul_grad/MatMulC^gradients/predictor/fully_connected/Tensordot/MatMul_grad/MatMul_1
?
Rgradients/predictor/fully_connected/Tensordot/MatMul_grad/tuple/control_dependencyIdentity@gradients/predictor/fully_connected/Tensordot/MatMul_grad/MatMulK^gradients/predictor/fully_connected/Tensordot/MatMul_grad/tuple/group_deps*'
_output_shapes
:?????????*
T0*S
_classI
GEloc:@gradients/predictor/fully_connected/Tensordot/MatMul_grad/MatMul
?
Tgradients/predictor/fully_connected/Tensordot/MatMul_grad/tuple/control_dependency_1IdentityBgradients/predictor/fully_connected/Tensordot/MatMul_grad/MatMul_1K^gradients/predictor/fully_connected/Tensordot/MatMul_grad/tuple/group_deps*
T0*U
_classK
IGloc:@gradients/predictor/fully_connected/Tensordot/MatMul_grad/MatMul_1*
_output_shapes

:
?
@gradients/predictor/fully_connected/Tensordot/Reshape_grad/ShapeShape-predictor/fully_connected/Tensordot/transpose*
T0*
out_type0*
_output_shapes
:
?
Bgradients/predictor/fully_connected/Tensordot/Reshape_grad/ReshapeReshapeRgradients/predictor/fully_connected/Tensordot/MatMul_grad/tuple/control_dependency@gradients/predictor/fully_connected/Tensordot/Reshape_grad/Shape*
T0*
Tshape0*+
_output_shapes
:?????????
?
Bgradients/predictor/fully_connected/Tensordot/Reshape_1_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
?
Dgradients/predictor/fully_connected/Tensordot/Reshape_1_grad/ReshapeReshapeTgradients/predictor/fully_connected/Tensordot/MatMul_grad/tuple/control_dependency_1Bgradients/predictor/fully_connected/Tensordot/Reshape_1_grad/Shape*
_output_shapes

:*
T0*
Tshape0
?
Ngradients/predictor/fully_connected/Tensordot/transpose_grad/InvertPermutationInvertPermutation*predictor/fully_connected/Tensordot/concat*
_output_shapes
:*
T0
?
Fgradients/predictor/fully_connected/Tensordot/transpose_grad/transpose	TransposeBgradients/predictor/fully_connected/Tensordot/Reshape_grad/ReshapeNgradients/predictor/fully_connected/Tensordot/transpose_grad/InvertPermutation*
T0*+
_output_shapes
:?????????*
Tperm0
?
Pgradients/predictor/fully_connected/Tensordot/transpose_1_grad/InvertPermutationInvertPermutation4predictor/fully_connected/Tensordot/transpose_1/perm*
T0*
_output_shapes
:
?
Hgradients/predictor/fully_connected/Tensordot/transpose_1_grad/transpose	TransposeDgradients/predictor/fully_connected/Tensordot/Reshape_1_grad/ReshapePgradients/predictor/fully_connected/Tensordot/transpose_1_grad/InvertPermutation*
T0*
_output_shapes

:*
Tperm0
?
:gradients/predictor/rnn/transpose_1_grad/InvertPermutationInvertPermutationpredictor/rnn/concat_2*
T0*
_output_shapes
:
?
2gradients/predictor/rnn/transpose_1_grad/transpose	TransposeFgradients/predictor/fully_connected/Tensordot/transpose_grad/transpose:gradients/predictor/rnn/transpose_1_grad/InvertPermutation*+
_output_shapes
:?????????*
Tperm0*
T0
?
cgradients/predictor/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3predictor/rnn/TensorArraypredictor/rnn/while/Exit_2*
source	gradients*,
_class"
 loc:@predictor/rnn/TensorArray*
_output_shapes

:: 
?
_gradients/predictor/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentitypredictor/rnn/while/Exit_2d^gradients/predictor/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*
_output_shapes
: *
T0*,
_class"
 loc:@predictor/rnn/TensorArray
?
igradients/predictor/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3cgradients/predictor/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3$predictor/rnn/TensorArrayStack/range2gradients/predictor/rnn/transpose_1_grad/transpose_gradients/predictor/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow*
_output_shapes
: *
T0
o
gradients/zeros_like	ZerosLikepredictor/rnn/while/Exit_3*
T0*'
_output_shapes
:?????????
?
0gradients/predictor/rnn/while/Exit_2_grad/b_exitEnterigradients/predictor/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3*
parallel_iterations *
_output_shapes
: *;

frame_name-+gradients/predictor/rnn/while/while_context*
T0*
is_constant( 
?
0gradients/predictor/rnn/while/Exit_3_grad/b_exitEntergradients/zeros_like*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:?????????*;

frame_name-+gradients/predictor/rnn/while/while_context
?
4gradients/predictor/rnn/while/Switch_2_grad/b_switchMerge0gradients/predictor/rnn/while/Exit_2_grad/b_exit;gradients/predictor/rnn/while/Switch_2_grad_1/NextIteration*
T0*
N*
_output_shapes
: : 
?
4gradients/predictor/rnn/while/Switch_3_grad/b_switchMerge0gradients/predictor/rnn/while/Exit_3_grad/b_exit;gradients/predictor/rnn/while/Switch_3_grad_1/NextIteration*
T0*
N*)
_output_shapes
:?????????: 
?
1gradients/predictor/rnn/while/Merge_2_grad/SwitchSwitch4gradients/predictor/rnn/while/Switch_2_grad/b_switchgradients/b_count_2*
T0*G
_class=
;9loc:@gradients/predictor/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: : 
w
;gradients/predictor/rnn/while/Merge_2_grad/tuple/group_depsNoOp2^gradients/predictor/rnn/while/Merge_2_grad/Switch
?
Cgradients/predictor/rnn/while/Merge_2_grad/tuple/control_dependencyIdentity1gradients/predictor/rnn/while/Merge_2_grad/Switch<^gradients/predictor/rnn/while/Merge_2_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/predictor/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: 
?
Egradients/predictor/rnn/while/Merge_2_grad/tuple/control_dependency_1Identity3gradients/predictor/rnn/while/Merge_2_grad/Switch:1<^gradients/predictor/rnn/while/Merge_2_grad/tuple/group_deps*
_output_shapes
: *
T0*G
_class=
;9loc:@gradients/predictor/rnn/while/Switch_2_grad/b_switch
?
1gradients/predictor/rnn/while/Merge_3_grad/SwitchSwitch4gradients/predictor/rnn/while/Switch_3_grad/b_switchgradients/b_count_2*:
_output_shapes(
&:?????????:?????????*
T0*G
_class=
;9loc:@gradients/predictor/rnn/while/Switch_3_grad/b_switch
w
;gradients/predictor/rnn/while/Merge_3_grad/tuple/group_depsNoOp2^gradients/predictor/rnn/while/Merge_3_grad/Switch
?
Cgradients/predictor/rnn/while/Merge_3_grad/tuple/control_dependencyIdentity1gradients/predictor/rnn/while/Merge_3_grad/Switch<^gradients/predictor/rnn/while/Merge_3_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/predictor/rnn/while/Switch_3_grad/b_switch*'
_output_shapes
:?????????
?
Egradients/predictor/rnn/while/Merge_3_grad/tuple/control_dependency_1Identity3gradients/predictor/rnn/while/Merge_3_grad/Switch:1<^gradients/predictor/rnn/while/Merge_3_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/predictor/rnn/while/Switch_3_grad/b_switch*'
_output_shapes
:?????????
?
/gradients/predictor/rnn/while/Enter_2_grad/ExitExitCgradients/predictor/rnn/while/Merge_2_grad/tuple/control_dependency*
T0*
_output_shapes
: 
?
/gradients/predictor/rnn/while/Enter_3_grad/ExitExitCgradients/predictor/rnn/while/Merge_3_grad/tuple/control_dependency*
T0*'
_output_shapes
:?????????
?
hgradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3ngradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEgradients/predictor/rnn/while/Merge_2_grad/tuple/control_dependency_1*
source	gradients*1
_class'
%#loc:@predictor/rnn/while/p_cell/add*
_output_shapes

:: 
?
ngradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnterpredictor/rnn/TensorArray*
_output_shapes
:*;

frame_name-+gradients/predictor/rnn/while/while_context*
T0*1
_class'
%#loc:@predictor/rnn/while/p_cell/add*
parallel_iterations *
is_constant(
?
dgradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentityEgradients/predictor/rnn/while/Merge_2_grad/tuple/control_dependency_1i^gradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*
_output_shapes
: *
T0*1
_class'
%#loc:@predictor/rnn/while/p_cell/add
?
Xgradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3hgradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3cgradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2dgradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*
dtype0*'
_output_shapes
:?????????
?
^gradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/ConstConst*
valueB :
?????????*1
_class'
%#loc:@predictor/rnn/while/Identity_1*
dtype0*
_output_shapes
: 
?
^gradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2^gradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Const*
	elem_type0*1
_class'
%#loc:@predictor/rnn/while/Identity_1*

stack_name *
_output_shapes
:
?
^gradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEnter^gradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*1

frame_name#!predictor/rnn/while/while_context
?
dgradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2^gradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enterpredictor/rnn/while/Identity_1^gradients/Add*
_output_shapes
: *
swap_memory( *
T0
?
cgradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2igradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^gradients/Sub*
_output_shapes
: *
	elem_type0
?
igradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEnter^gradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+gradients/predictor/rnn/while/while_context
?
_gradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTrigger>^gradients/predictor/rnn/while/Select_1_grad/Select/StackPopV2B^gradients/predictor/rnn/while/Select_1_grad/zeros_like/StackPopV2d^gradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2G^gradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMul_1/StackPopV2E^gradients/predictor/rnn/while/p_cell/MatMul_grad/MatMul_1/StackPopV2I^gradients/predictor/rnn/while/p_cell/Sigmoid_grad/SigmoidGrad/StackPopV2O^gradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/StackPopV2Q^gradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/StackPopV2_1E^gradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/StackPopV2G^gradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/StackPopV2_1Q^gradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2S^gradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1A^gradients/predictor/rnn/while/p_cell/mul_1_grad/Mul_1/StackPopV2Q^gradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2S^gradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1?^gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul/StackPopV2A^gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul_1/StackPopV2O^gradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/StackPopV2Q^gradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1?^gradients/predictor/rnn/while/p_cell/mul_grad/Mul_1/StackPopV2O^gradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/StackPopV2Q^gradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/StackPopV2_1
?
Wgradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_depsNoOpF^gradients/predictor/rnn/while/Merge_2_grad/tuple/control_dependency_1Y^gradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3
?
_gradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyIdentityXgradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3X^gradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*k
_classa
_]loc:@gradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3*'
_output_shapes
:?????????
?
agradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1IdentityEgradients/predictor/rnn/while/Merge_2_grad/tuple/control_dependency_1X^gradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
_output_shapes
: *
T0*G
_class=
;9loc:@gradients/predictor/rnn/while/Switch_2_grad/b_switch
?
6gradients/predictor/rnn/while/Select_1_grad/zeros_like	ZerosLikeAgradients/predictor/rnn/while/Select_1_grad/zeros_like/StackPopV2*
T0*'
_output_shapes
:?????????
?
<gradients/predictor/rnn/while/Select_1_grad/zeros_like/ConstConst*
valueB :
?????????*1
_class'
%#loc:@predictor/rnn/while/Identity_3*
dtype0*
_output_shapes
: 
?
<gradients/predictor/rnn/while/Select_1_grad/zeros_like/f_accStackV2<gradients/predictor/rnn/while/Select_1_grad/zeros_like/Const*
	elem_type0*1
_class'
%#loc:@predictor/rnn/while/Identity_3*

stack_name *
_output_shapes
:
?
<gradients/predictor/rnn/while/Select_1_grad/zeros_like/EnterEnter<gradients/predictor/rnn/while/Select_1_grad/zeros_like/f_acc*
parallel_iterations *
_output_shapes
:*1

frame_name#!predictor/rnn/while/while_context*
T0*
is_constant(
?
Bgradients/predictor/rnn/while/Select_1_grad/zeros_like/StackPushV2StackPushV2<gradients/predictor/rnn/while/Select_1_grad/zeros_like/Enterpredictor/rnn/while/Identity_3^gradients/Add*
T0*'
_output_shapes
:?????????*
swap_memory( 
?
Agradients/predictor/rnn/while/Select_1_grad/zeros_like/StackPopV2
StackPopV2Ggradients/predictor/rnn/while/Select_1_grad/zeros_like/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:?????????*
	elem_type0
?
Ggradients/predictor/rnn/while/Select_1_grad/zeros_like/StackPopV2/EnterEnter<gradients/predictor/rnn/while/Select_1_grad/zeros_like/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+gradients/predictor/rnn/while/while_context
?
2gradients/predictor/rnn/while/Select_1_grad/SelectSelect=gradients/predictor/rnn/while/Select_1_grad/Select/StackPopV2Egradients/predictor/rnn/while/Merge_3_grad/tuple/control_dependency_16gradients/predictor/rnn/while/Select_1_grad/zeros_like*
T0*'
_output_shapes
:?????????
?
8gradients/predictor/rnn/while/Select_1_grad/Select/ConstConst*
valueB :
?????????*3
_class)
'%loc:@predictor/rnn/while/GreaterEqual*
dtype0*
_output_shapes
: 
?
8gradients/predictor/rnn/while/Select_1_grad/Select/f_accStackV28gradients/predictor/rnn/while/Select_1_grad/Select/Const*3
_class)
'%loc:@predictor/rnn/while/GreaterEqual*

stack_name *
_output_shapes
:*
	elem_type0

?
8gradients/predictor/rnn/while/Select_1_grad/Select/EnterEnter8gradients/predictor/rnn/while/Select_1_grad/Select/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*1

frame_name#!predictor/rnn/while/while_context
?
>gradients/predictor/rnn/while/Select_1_grad/Select/StackPushV2StackPushV28gradients/predictor/rnn/while/Select_1_grad/Select/Enter predictor/rnn/while/GreaterEqual^gradients/Add*
T0
*#
_output_shapes
:?????????*
swap_memory( 
?
=gradients/predictor/rnn/while/Select_1_grad/Select/StackPopV2
StackPopV2Cgradients/predictor/rnn/while/Select_1_grad/Select/StackPopV2/Enter^gradients/Sub*
	elem_type0
*#
_output_shapes
:?????????
?
Cgradients/predictor/rnn/while/Select_1_grad/Select/StackPopV2/EnterEnter8gradients/predictor/rnn/while/Select_1_grad/Select/f_acc*
parallel_iterations *
_output_shapes
:*;

frame_name-+gradients/predictor/rnn/while/while_context*
T0*
is_constant(
?
4gradients/predictor/rnn/while/Select_1_grad/Select_1Select=gradients/predictor/rnn/while/Select_1_grad/Select/StackPopV26gradients/predictor/rnn/while/Select_1_grad/zeros_likeEgradients/predictor/rnn/while/Merge_3_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:?????????
?
<gradients/predictor/rnn/while/Select_1_grad/tuple/group_depsNoOp3^gradients/predictor/rnn/while/Select_1_grad/Select5^gradients/predictor/rnn/while/Select_1_grad/Select_1
?
Dgradients/predictor/rnn/while/Select_1_grad/tuple/control_dependencyIdentity2gradients/predictor/rnn/while/Select_1_grad/Select=^gradients/predictor/rnn/while/Select_1_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/predictor/rnn/while/Select_1_grad/Select*'
_output_shapes
:?????????
?
Fgradients/predictor/rnn/while/Select_1_grad/tuple/control_dependency_1Identity4gradients/predictor/rnn/while/Select_1_grad/Select_1=^gradients/predictor/rnn/while/Select_1_grad/tuple/group_deps*'
_output_shapes
:?????????*
T0*G
_class=
;9loc:@gradients/predictor/rnn/while/Select_1_grad/Select_1
?
4gradients/predictor/rnn/while/Select_grad/zeros_like	ZerosLike:gradients/predictor/rnn/while/Select_grad/zeros_like/Enter^gradients/Sub*
T0*'
_output_shapes
:?????????
?
:gradients/predictor/rnn/while/Select_grad/zeros_like/EnterEnterpredictor/rnn/zeros*
parallel_iterations *'
_output_shapes
:?????????*;

frame_name-+gradients/predictor/rnn/while/while_context*
T0*
is_constant(
?
0gradients/predictor/rnn/while/Select_grad/SelectSelect=gradients/predictor/rnn/while/Select_1_grad/Select/StackPopV2_gradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency4gradients/predictor/rnn/while/Select_grad/zeros_like*
T0*'
_output_shapes
:?????????
?
2gradients/predictor/rnn/while/Select_grad/Select_1Select=gradients/predictor/rnn/while/Select_1_grad/Select/StackPopV24gradients/predictor/rnn/while/Select_grad/zeros_like_gradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency*'
_output_shapes
:?????????*
T0
?
:gradients/predictor/rnn/while/Select_grad/tuple/group_depsNoOp1^gradients/predictor/rnn/while/Select_grad/Select3^gradients/predictor/rnn/while/Select_grad/Select_1
?
Bgradients/predictor/rnn/while/Select_grad/tuple/control_dependencyIdentity0gradients/predictor/rnn/while/Select_grad/Select;^gradients/predictor/rnn/while/Select_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/predictor/rnn/while/Select_grad/Select*'
_output_shapes
:?????????
?
Dgradients/predictor/rnn/while/Select_grad/tuple/control_dependency_1Identity2gradients/predictor/rnn/while/Select_grad/Select_1;^gradients/predictor/rnn/while/Select_grad/tuple/group_deps*'
_output_shapes
:?????????*
T0*E
_class;
97loc:@gradients/predictor/rnn/while/Select_grad/Select_1
?
gradients/AddNAddNFgradients/predictor/rnn/while/Select_1_grad/tuple/control_dependency_1Dgradients/predictor/rnn/while/Select_grad/tuple/control_dependency_1*
N*'
_output_shapes
:?????????*
T0*G
_class=
;9loc:@gradients/predictor/rnn/while/Select_1_grad/Select_1
?
3gradients/predictor/rnn/while/p_cell/add_grad/ShapeShape predictor/rnn/while/p_cell/mul_1*
_output_shapes
:*
T0*
out_type0
?
5gradients/predictor/rnn/while/p_cell/add_grad/Shape_1Shape predictor/rnn/while/p_cell/mul_2*
T0*
out_type0*
_output_shapes
:
?
Cgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgsBroadcastGradientArgsNgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/StackPopV2Pgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:?????????:?????????
?
Igradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/ConstConst*
valueB :
?????????*F
_class<
:8loc:@gradients/predictor/rnn/while/p_cell/add_grad/Shape*
dtype0*
_output_shapes
: 
?
Igradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/f_accStackV2Igradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/Const*F
_class<
:8loc:@gradients/predictor/rnn/while/p_cell/add_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
?
Igradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/EnterEnterIgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*1

frame_name#!predictor/rnn/while/while_context
?
Ogradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/StackPushV2StackPushV2Igradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/Enter3gradients/predictor/rnn/while/p_cell/add_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
?
Ngradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Tgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
?
Tgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/StackPopV2/EnterEnterIgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+gradients/predictor/rnn/while/while_context
?
Kgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/Const_1Const*
valueB :
?????????*H
_class>
<:loc:@gradients/predictor/rnn/while/p_cell/add_grad/Shape_1*
dtype0*
_output_shapes
: 
?
Kgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/f_acc_1StackV2Kgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/Const_1*H
_class>
<:loc:@gradients/predictor/rnn/while/p_cell/add_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
?
Kgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/Enter_1EnterKgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*1

frame_name#!predictor/rnn/while/while_context
?
Qgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Kgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/Enter_15gradients/predictor/rnn/while/p_cell/add_grad/Shape_1^gradients/Add*
_output_shapes
:*
swap_memory( *
T0
?
Pgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Vgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
Vgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterKgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+gradients/predictor/rnn/while/while_context
?
1gradients/predictor/rnn/while/p_cell/add_grad/SumSumgradients/AddNCgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
?
5gradients/predictor/rnn/while/p_cell/add_grad/ReshapeReshape1gradients/predictor/rnn/while/p_cell/add_grad/SumNgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*'
_output_shapes
:?????????
?
3gradients/predictor/rnn/while/p_cell/add_grad/Sum_1Sumgradients/AddNEgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
?
7gradients/predictor/rnn/while/p_cell/add_grad/Reshape_1Reshape3gradients/predictor/rnn/while/p_cell/add_grad/Sum_1Pgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*'
_output_shapes
:?????????
?
>gradients/predictor/rnn/while/p_cell/add_grad/tuple/group_depsNoOp6^gradients/predictor/rnn/while/p_cell/add_grad/Reshape8^gradients/predictor/rnn/while/p_cell/add_grad/Reshape_1
?
Fgradients/predictor/rnn/while/p_cell/add_grad/tuple/control_dependencyIdentity5gradients/predictor/rnn/while/p_cell/add_grad/Reshape?^gradients/predictor/rnn/while/p_cell/add_grad/tuple/group_deps*'
_output_shapes
:?????????*
T0*H
_class>
<:loc:@gradients/predictor/rnn/while/p_cell/add_grad/Reshape
?
Hgradients/predictor/rnn/while/p_cell/add_grad/tuple/control_dependency_1Identity7gradients/predictor/rnn/while/p_cell/add_grad/Reshape_1?^gradients/predictor/rnn/while/p_cell/add_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/predictor/rnn/while/p_cell/add_grad/Reshape_1*'
_output_shapes
:?????????
?
;gradients/predictor/rnn/while/Switch_2_grad_1/NextIterationNextIterationagradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
?
5gradients/predictor/rnn/while/p_cell/mul_1_grad/ShapeShape"predictor/rnn/while/p_cell/split:1*
_output_shapes
:*
T0*
out_type0
?
7gradients/predictor/rnn/while/p_cell/mul_1_grad/Shape_1Shapepredictor/rnn/while/Identity_3*
T0*
out_type0*
_output_shapes
:
?
Egradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsPgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2Rgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:?????????:?????????
?
Kgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/ConstConst*
dtype0*
_output_shapes
: *
valueB :
?????????*H
_class>
<:loc:@gradients/predictor/rnn/while/p_cell/mul_1_grad/Shape
?
Kgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/f_accStackV2Kgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/Const*

stack_name *
_output_shapes
:*
	elem_type0*H
_class>
<:loc:@gradients/predictor/rnn/while/p_cell/mul_1_grad/Shape
?
Kgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/EnterEnterKgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*1

frame_name#!predictor/rnn/while/while_context
?
Qgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2Kgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/Enter5gradients/predictor/rnn/while/p_cell/mul_1_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
?
Pgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Vgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
Vgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnterKgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+gradients/predictor/rnn/while/while_context
?
Mgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/Const_1Const*
valueB :
?????????*J
_class@
><loc:@gradients/predictor/rnn/while/p_cell/mul_1_grad/Shape_1*
dtype0*
_output_shapes
: 
?
Mgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2Mgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/Const_1*
	elem_type0*J
_class@
><loc:@gradients/predictor/rnn/while/p_cell/mul_1_grad/Shape_1*

stack_name *
_output_shapes
:
?
Mgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/Enter_1EnterMgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*1

frame_name#!predictor/rnn/while/while_context
?
Sgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Mgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/Enter_17gradients/predictor/rnn/while/p_cell/mul_1_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
?
Rgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Xgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
Xgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterMgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+gradients/predictor/rnn/while/while_context
?
3gradients/predictor/rnn/while/p_cell/mul_1_grad/MulMulFgradients/predictor/rnn/while/p_cell/add_grad/tuple/control_dependencyAgradients/predictor/rnn/while/Select_1_grad/zeros_like/StackPopV2*
T0*'
_output_shapes
:?????????
?
3gradients/predictor/rnn/while/p_cell/mul_1_grad/SumSum3gradients/predictor/rnn/while/p_cell/mul_1_grad/MulEgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
?
7gradients/predictor/rnn/while/p_cell/mul_1_grad/ReshapeReshape3gradients/predictor/rnn/while/p_cell/mul_1_grad/SumPgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*'
_output_shapes
:?????????
?
5gradients/predictor/rnn/while/p_cell/mul_1_grad/Mul_1Mul@gradients/predictor/rnn/while/p_cell/mul_1_grad/Mul_1/StackPopV2Fgradients/predictor/rnn/while/p_cell/add_grad/tuple/control_dependency*
T0*'
_output_shapes
:?????????
?
;gradients/predictor/rnn/while/p_cell/mul_1_grad/Mul_1/ConstConst*
valueB :
?????????*3
_class)
'%loc:@predictor/rnn/while/p_cell/split*
dtype0*
_output_shapes
: 
?
;gradients/predictor/rnn/while/p_cell/mul_1_grad/Mul_1/f_accStackV2;gradients/predictor/rnn/while/p_cell/mul_1_grad/Mul_1/Const*3
_class)
'%loc:@predictor/rnn/while/p_cell/split*

stack_name *
_output_shapes
:*
	elem_type0
?
;gradients/predictor/rnn/while/p_cell/mul_1_grad/Mul_1/EnterEnter;gradients/predictor/rnn/while/p_cell/mul_1_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*1

frame_name#!predictor/rnn/while/while_context
?
Agradients/predictor/rnn/while/p_cell/mul_1_grad/Mul_1/StackPushV2StackPushV2;gradients/predictor/rnn/while/p_cell/mul_1_grad/Mul_1/Enter"predictor/rnn/while/p_cell/split:1^gradients/Add*
T0*'
_output_shapes
:?????????*
swap_memory( 
?
@gradients/predictor/rnn/while/p_cell/mul_1_grad/Mul_1/StackPopV2
StackPopV2Fgradients/predictor/rnn/while/p_cell/mul_1_grad/Mul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:?????????*
	elem_type0
?
Fgradients/predictor/rnn/while/p_cell/mul_1_grad/Mul_1/StackPopV2/EnterEnter;gradients/predictor/rnn/while/p_cell/mul_1_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+gradients/predictor/rnn/while/while_context
?
5gradients/predictor/rnn/while/p_cell/mul_1_grad/Sum_1Sum5gradients/predictor/rnn/while/p_cell/mul_1_grad/Mul_1Ggradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
9gradients/predictor/rnn/while/p_cell/mul_1_grad/Reshape_1Reshape5gradients/predictor/rnn/while/p_cell/mul_1_grad/Sum_1Rgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*'
_output_shapes
:?????????
?
@gradients/predictor/rnn/while/p_cell/mul_1_grad/tuple/group_depsNoOp8^gradients/predictor/rnn/while/p_cell/mul_1_grad/Reshape:^gradients/predictor/rnn/while/p_cell/mul_1_grad/Reshape_1
?
Hgradients/predictor/rnn/while/p_cell/mul_1_grad/tuple/control_dependencyIdentity7gradients/predictor/rnn/while/p_cell/mul_1_grad/ReshapeA^gradients/predictor/rnn/while/p_cell/mul_1_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/predictor/rnn/while/p_cell/mul_1_grad/Reshape*'
_output_shapes
:?????????
?
Jgradients/predictor/rnn/while/p_cell/mul_1_grad/tuple/control_dependency_1Identity9gradients/predictor/rnn/while/p_cell/mul_1_grad/Reshape_1A^gradients/predictor/rnn/while/p_cell/mul_1_grad/tuple/group_deps*'
_output_shapes
:?????????*
T0*L
_classB
@>loc:@gradients/predictor/rnn/while/p_cell/mul_1_grad/Reshape_1
?
5gradients/predictor/rnn/while/p_cell/mul_2_grad/ShapeShapepredictor/rnn/while/p_cell/sub*
T0*
out_type0*
_output_shapes
:
?
7gradients/predictor/rnn/while/p_cell/mul_2_grad/Shape_1Shapepredictor/rnn/while/p_cell/Tanh*
T0*
out_type0*
_output_shapes
:
?
Egradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsPgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2Rgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:?????????:?????????
?
Kgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/ConstConst*
dtype0*
_output_shapes
: *
valueB :
?????????*H
_class>
<:loc:@gradients/predictor/rnn/while/p_cell/mul_2_grad/Shape
?
Kgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/f_accStackV2Kgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/Const*

stack_name *
_output_shapes
:*
	elem_type0*H
_class>
<:loc:@gradients/predictor/rnn/while/p_cell/mul_2_grad/Shape
?
Kgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/EnterEnterKgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*1

frame_name#!predictor/rnn/while/while_context
?
Qgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2Kgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/Enter5gradients/predictor/rnn/while/p_cell/mul_2_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
?
Pgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Vgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
Vgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/EnterEnterKgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+gradients/predictor/rnn/while/while_context
?
Mgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/Const_1Const*
valueB :
?????????*J
_class@
><loc:@gradients/predictor/rnn/while/p_cell/mul_2_grad/Shape_1*
dtype0*
_output_shapes
: 
?
Mgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1StackV2Mgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/Const_1*J
_class@
><loc:@gradients/predictor/rnn/while/p_cell/mul_2_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
?
Mgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/Enter_1EnterMgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*1

frame_name#!predictor/rnn/while/while_context*
T0*
is_constant(
?
Sgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Mgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/Enter_17gradients/predictor/rnn/while/p_cell/mul_2_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
?
Rgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Xgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
Xgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterMgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+gradients/predictor/rnn/while/while_context
?
3gradients/predictor/rnn/while/p_cell/mul_2_grad/MulMulHgradients/predictor/rnn/while/p_cell/add_grad/tuple/control_dependency_1>gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul/StackPopV2*
T0*'
_output_shapes
:?????????
?
9gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul/ConstConst*
valueB :
?????????*2
_class(
&$loc:@predictor/rnn/while/p_cell/Tanh*
dtype0*
_output_shapes
: 
?
9gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul/f_accStackV29gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul/Const*

stack_name *
_output_shapes
:*
	elem_type0*2
_class(
&$loc:@predictor/rnn/while/p_cell/Tanh
?
9gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul/EnterEnter9gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*1

frame_name#!predictor/rnn/while/while_context
?
?gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul/StackPushV2StackPushV29gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul/Enterpredictor/rnn/while/p_cell/Tanh^gradients/Add*
T0*'
_output_shapes
:?????????*
swap_memory( 
?
>gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul/StackPopV2
StackPopV2Dgradients/predictor/rnn/while/p_cell/mul_2_grad/Mul/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:?????????*
	elem_type0
?
Dgradients/predictor/rnn/while/p_cell/mul_2_grad/Mul/StackPopV2/EnterEnter9gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+gradients/predictor/rnn/while/while_context
?
3gradients/predictor/rnn/while/p_cell/mul_2_grad/SumSum3gradients/predictor/rnn/while/p_cell/mul_2_grad/MulEgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
?
7gradients/predictor/rnn/while/p_cell/mul_2_grad/ReshapeReshape3gradients/predictor/rnn/while/p_cell/mul_2_grad/SumPgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2*'
_output_shapes
:?????????*
T0*
Tshape0
?
5gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul_1Mul@gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul_1/StackPopV2Hgradients/predictor/rnn/while/p_cell/add_grad/tuple/control_dependency_1*'
_output_shapes
:?????????*
T0
?
;gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul_1/ConstConst*
valueB :
?????????*1
_class'
%#loc:@predictor/rnn/while/p_cell/sub*
dtype0*
_output_shapes
: 
?
;gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul_1/f_accStackV2;gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul_1/Const*1
_class'
%#loc:@predictor/rnn/while/p_cell/sub*

stack_name *
_output_shapes
:*
	elem_type0
?
;gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul_1/EnterEnter;gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*1

frame_name#!predictor/rnn/while/while_context
?
Agradients/predictor/rnn/while/p_cell/mul_2_grad/Mul_1/StackPushV2StackPushV2;gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul_1/Enterpredictor/rnn/while/p_cell/sub^gradients/Add*
T0*'
_output_shapes
:?????????*
swap_memory( 
?
@gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul_1/StackPopV2
StackPopV2Fgradients/predictor/rnn/while/p_cell/mul_2_grad/Mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0*'
_output_shapes
:?????????
?
Fgradients/predictor/rnn/while/p_cell/mul_2_grad/Mul_1/StackPopV2/EnterEnter;gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+gradients/predictor/rnn/while/while_context
?
5gradients/predictor/rnn/while/p_cell/mul_2_grad/Sum_1Sum5gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul_1Ggradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
9gradients/predictor/rnn/while/p_cell/mul_2_grad/Reshape_1Reshape5gradients/predictor/rnn/while/p_cell/mul_2_grad/Sum_1Rgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*'
_output_shapes
:?????????
?
@gradients/predictor/rnn/while/p_cell/mul_2_grad/tuple/group_depsNoOp8^gradients/predictor/rnn/while/p_cell/mul_2_grad/Reshape:^gradients/predictor/rnn/while/p_cell/mul_2_grad/Reshape_1
?
Hgradients/predictor/rnn/while/p_cell/mul_2_grad/tuple/control_dependencyIdentity7gradients/predictor/rnn/while/p_cell/mul_2_grad/ReshapeA^gradients/predictor/rnn/while/p_cell/mul_2_grad/tuple/group_deps*'
_output_shapes
:?????????*
T0*J
_class@
><loc:@gradients/predictor/rnn/while/p_cell/mul_2_grad/Reshape
?
Jgradients/predictor/rnn/while/p_cell/mul_2_grad/tuple/control_dependency_1Identity9gradients/predictor/rnn/while/p_cell/mul_2_grad/Reshape_1A^gradients/predictor/rnn/while/p_cell/mul_2_grad/tuple/group_deps*
T0*L
_classB
@>loc:@gradients/predictor/rnn/while/p_cell/mul_2_grad/Reshape_1*'
_output_shapes
:?????????
?
3gradients/predictor/rnn/while/p_cell/sub_grad/ShapeShape predictor/rnn/while/p_cell/sub/x*
T0*
out_type0*
_output_shapes
: 
?
5gradients/predictor/rnn/while/p_cell/sub_grad/Shape_1Shape"predictor/rnn/while/p_cell/split:1*
_output_shapes
:*
T0*
out_type0
?
Cgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgsBroadcastGradientArgsNgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/StackPopV2Pgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:?????????:?????????
?
Igradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/ConstConst*
valueB :
?????????*F
_class<
:8loc:@gradients/predictor/rnn/while/p_cell/sub_grad/Shape*
dtype0*
_output_shapes
: 
?
Igradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/f_accStackV2Igradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/Const*
	elem_type0*F
_class<
:8loc:@gradients/predictor/rnn/while/p_cell/sub_grad/Shape*

stack_name *
_output_shapes
:
?
Igradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/EnterEnterIgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*1

frame_name#!predictor/rnn/while/while_context
?
Ogradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/StackPushV2StackPushV2Igradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/Enter3gradients/predictor/rnn/while/p_cell/sub_grad/Shape^gradients/Add*
T0*
_output_shapes
: *
swap_memory( 
?
Ngradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Tgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
: *
	elem_type0
?
Tgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/StackPopV2/EnterEnterIgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+gradients/predictor/rnn/while/while_context
?
Kgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/Const_1Const*
valueB :
?????????*H
_class>
<:loc:@gradients/predictor/rnn/while/p_cell/sub_grad/Shape_1*
dtype0*
_output_shapes
: 
?
Kgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/f_acc_1StackV2Kgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/Const_1*H
_class>
<:loc:@gradients/predictor/rnn/while/p_cell/sub_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
?
Kgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/Enter_1EnterKgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*1

frame_name#!predictor/rnn/while/while_context
?
Qgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Kgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/Enter_15gradients/predictor/rnn/while/p_cell/sub_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
?
Pgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Vgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
?
Vgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterKgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*;

frame_name-+gradients/predictor/rnn/while/while_context*
T0*
is_constant(
?
1gradients/predictor/rnn/while/p_cell/sub_grad/SumSumHgradients/predictor/rnn/while/p_cell/mul_2_grad/tuple/control_dependencyCgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
5gradients/predictor/rnn/while/p_cell/sub_grad/ReshapeReshape1gradients/predictor/rnn/while/p_cell/sub_grad/SumNgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/StackPopV2*
_output_shapes
: *
T0*
Tshape0
?
1gradients/predictor/rnn/while/p_cell/sub_grad/NegNegHgradients/predictor/rnn/while/p_cell/mul_2_grad/tuple/control_dependency*
T0*'
_output_shapes
:?????????
?
3gradients/predictor/rnn/while/p_cell/sub_grad/Sum_1Sum1gradients/predictor/rnn/while/p_cell/sub_grad/NegEgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
7gradients/predictor/rnn/while/p_cell/sub_grad/Reshape_1Reshape3gradients/predictor/rnn/while/p_cell/sub_grad/Sum_1Pgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*'
_output_shapes
:?????????
?
>gradients/predictor/rnn/while/p_cell/sub_grad/tuple/group_depsNoOp6^gradients/predictor/rnn/while/p_cell/sub_grad/Reshape8^gradients/predictor/rnn/while/p_cell/sub_grad/Reshape_1
?
Fgradients/predictor/rnn/while/p_cell/sub_grad/tuple/control_dependencyIdentity5gradients/predictor/rnn/while/p_cell/sub_grad/Reshape?^gradients/predictor/rnn/while/p_cell/sub_grad/tuple/group_deps*
_output_shapes
: *
T0*H
_class>
<:loc:@gradients/predictor/rnn/while/p_cell/sub_grad/Reshape
?
Hgradients/predictor/rnn/while/p_cell/sub_grad/tuple/control_dependency_1Identity7gradients/predictor/rnn/while/p_cell/sub_grad/Reshape_1?^gradients/predictor/rnn/while/p_cell/sub_grad/tuple/group_deps*'
_output_shapes
:?????????*
T0*J
_class@
><loc:@gradients/predictor/rnn/while/p_cell/sub_grad/Reshape_1
?
7gradients/predictor/rnn/while/p_cell/Tanh_grad/TanhGradTanhGrad>gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul/StackPopV2Jgradients/predictor/rnn/while/p_cell/mul_2_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:?????????
?
?gradients/predictor/rnn/while/p_cell/BiasAdd_1_grad/BiasAddGradBiasAddGrad7gradients/predictor/rnn/while/p_cell/Tanh_grad/TanhGrad*
T0*
data_formatNHWC*
_output_shapes
:
?
Dgradients/predictor/rnn/while/p_cell/BiasAdd_1_grad/tuple/group_depsNoOp@^gradients/predictor/rnn/while/p_cell/BiasAdd_1_grad/BiasAddGrad8^gradients/predictor/rnn/while/p_cell/Tanh_grad/TanhGrad
?
Lgradients/predictor/rnn/while/p_cell/BiasAdd_1_grad/tuple/control_dependencyIdentity7gradients/predictor/rnn/while/p_cell/Tanh_grad/TanhGradE^gradients/predictor/rnn/while/p_cell/BiasAdd_1_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/predictor/rnn/while/p_cell/Tanh_grad/TanhGrad*'
_output_shapes
:?????????
?
Ngradients/predictor/rnn/while/p_cell/BiasAdd_1_grad/tuple/control_dependency_1Identity?gradients/predictor/rnn/while/p_cell/BiasAdd_1_grad/BiasAddGradE^gradients/predictor/rnn/while/p_cell/BiasAdd_1_grad/tuple/group_deps*
T0*R
_classH
FDloc:@gradients/predictor/rnn/while/p_cell/BiasAdd_1_grad/BiasAddGrad*
_output_shapes
:
?
9gradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMulMatMulLgradients/predictor/rnn/while/p_cell/BiasAdd_1_grad/tuple/control_dependency?gradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMul/Enter*'
_output_shapes
:?????????&*
transpose_a( *
transpose_b(*
T0
?
?gradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMul/EnterEnter*predictor/rnn/p_cell/candidate/kernel/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes

:&*;

frame_name-+gradients/predictor/rnn/while/while_context
?
;gradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMul_1MatMulFgradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMul_1/StackPopV2Lgradients/predictor/rnn/while/p_cell/BiasAdd_1_grad/tuple/control_dependency*
_output_shapes

:&*
transpose_a(*
transpose_b( *
T0
?
Agradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMul_1/ConstConst*
valueB :
?????????*6
_class,
*(loc:@predictor/rnn/while/p_cell/concat_1*
dtype0*
_output_shapes
: 
?
Agradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMul_1/f_accStackV2Agradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMul_1/Const*
	elem_type0*6
_class,
*(loc:@predictor/rnn/while/p_cell/concat_1*

stack_name *
_output_shapes
:
?
Agradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMul_1/EnterEnterAgradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*1

frame_name#!predictor/rnn/while/while_context
?
Ggradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMul_1/StackPushV2StackPushV2Agradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMul_1/Enter#predictor/rnn/while/p_cell/concat_1^gradients/Add*
T0*'
_output_shapes
:?????????&*
swap_memory( 
?
Fgradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMul_1/StackPopV2
StackPopV2Lgradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:?????????&*
	elem_type0
?
Lgradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMul_1/StackPopV2/EnterEnterAgradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+gradients/predictor/rnn/while/while_context
?
Cgradients/predictor/rnn/while/p_cell/MatMul_1_grad/tuple/group_depsNoOp:^gradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMul<^gradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMul_1
?
Kgradients/predictor/rnn/while/p_cell/MatMul_1_grad/tuple/control_dependencyIdentity9gradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMulD^gradients/predictor/rnn/while/p_cell/MatMul_1_grad/tuple/group_deps*
T0*L
_classB
@>loc:@gradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMul*'
_output_shapes
:?????????&
?
Mgradients/predictor/rnn/while/p_cell/MatMul_1_grad/tuple/control_dependency_1Identity;gradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMul_1D^gradients/predictor/rnn/while/p_cell/MatMul_1_grad/tuple/group_deps*
T0*N
_classD
B@loc:@gradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMul_1*
_output_shapes

:&
?
?gradients/predictor/rnn/while/p_cell/BiasAdd_1/Enter_grad/b_accConst*
valueB*    *
dtype0*
_output_shapes
:
?
Agradients/predictor/rnn/while/p_cell/BiasAdd_1/Enter_grad/b_acc_1Enter?gradients/predictor/rnn/while/p_cell/BiasAdd_1/Enter_grad/b_acc*
parallel_iterations *
_output_shapes
:*;

frame_name-+gradients/predictor/rnn/while/while_context*
T0*
is_constant( 
?
Agradients/predictor/rnn/while/p_cell/BiasAdd_1/Enter_grad/b_acc_2MergeAgradients/predictor/rnn/while/p_cell/BiasAdd_1/Enter_grad/b_acc_1Ggradients/predictor/rnn/while/p_cell/BiasAdd_1/Enter_grad/NextIteration*
N*
_output_shapes

:: *
T0
?
@gradients/predictor/rnn/while/p_cell/BiasAdd_1/Enter_grad/SwitchSwitchAgradients/predictor/rnn/while/p_cell/BiasAdd_1/Enter_grad/b_acc_2gradients/b_count_2*
T0* 
_output_shapes
::
?
=gradients/predictor/rnn/while/p_cell/BiasAdd_1/Enter_grad/AddAddBgradients/predictor/rnn/while/p_cell/BiasAdd_1/Enter_grad/Switch:1Ngradients/predictor/rnn/while/p_cell/BiasAdd_1_grad/tuple/control_dependency_1*
T0*
_output_shapes
:
?
Ggradients/predictor/rnn/while/p_cell/BiasAdd_1/Enter_grad/NextIterationNextIteration=gradients/predictor/rnn/while/p_cell/BiasAdd_1/Enter_grad/Add*
T0*
_output_shapes
:
?
Agradients/predictor/rnn/while/p_cell/BiasAdd_1/Enter_grad/b_acc_3Exit@gradients/predictor/rnn/while/p_cell/BiasAdd_1/Enter_grad/Switch*
T0*
_output_shapes
:
?
8gradients/predictor/rnn/while/p_cell/concat_1_grad/ConstConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
?
7gradients/predictor/rnn/while/p_cell/concat_1_grad/RankConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
?
6gradients/predictor/rnn/while/p_cell/concat_1_grad/modFloorMod8gradients/predictor/rnn/while/p_cell/concat_1_grad/Const7gradients/predictor/rnn/while/p_cell/concat_1_grad/Rank*
T0*
_output_shapes
: 
?
8gradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeShape%predictor/rnn/while/TensorArrayReadV3*
T0*
out_type0*
_output_shapes
:
?
9gradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeNShapeNDgradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/StackPopV2Fgradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/StackPopV2_1*
N* 
_output_shapes
::*
T0*
out_type0
?
?gradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/ConstConst*
valueB :
?????????*8
_class.
,*loc:@predictor/rnn/while/TensorArrayReadV3*
dtype0*
_output_shapes
: 
?
?gradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/f_accStackV2?gradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/Const*

stack_name *
_output_shapes
:*
	elem_type0*8
_class.
,*loc:@predictor/rnn/while/TensorArrayReadV3
?
?gradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/EnterEnter?gradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*1

frame_name#!predictor/rnn/while/while_context
?
Egradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/StackPushV2StackPushV2?gradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/Enter%predictor/rnn/while/TensorArrayReadV3^gradients/Add*
T0*'
_output_shapes
:?????????*
swap_memory( 
?
Dgradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/StackPopV2
StackPopV2Jgradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:?????????*
	elem_type0
?
Jgradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/StackPopV2/EnterEnter?gradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+gradients/predictor/rnn/while/while_context
?
Agradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/Const_1Const*
valueB :
?????????*1
_class'
%#loc:@predictor/rnn/while/p_cell/mul*
dtype0*
_output_shapes
: 
?
Agradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/f_acc_1StackV2Agradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/Const_1*1
_class'
%#loc:@predictor/rnn/while/p_cell/mul*

stack_name *
_output_shapes
:*
	elem_type0
?
Agradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/Enter_1EnterAgradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/f_acc_1*
parallel_iterations *
_output_shapes
:*1

frame_name#!predictor/rnn/while/while_context*
T0*
is_constant(
?
Ggradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/StackPushV2_1StackPushV2Agradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/Enter_1predictor/rnn/while/p_cell/mul^gradients/Add*'
_output_shapes
:?????????*
swap_memory( *
T0
?
Fgradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/StackPopV2_1
StackPopV2Lgradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/StackPopV2_1/Enter^gradients/Sub*'
_output_shapes
:?????????*
	elem_type0
?
Lgradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/StackPopV2_1/EnterEnterAgradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+gradients/predictor/rnn/while/while_context
?
?gradients/predictor/rnn/while/p_cell/concat_1_grad/ConcatOffsetConcatOffset6gradients/predictor/rnn/while/p_cell/concat_1_grad/mod9gradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN;gradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN:1*
N* 
_output_shapes
::
?
8gradients/predictor/rnn/while/p_cell/concat_1_grad/SliceSliceKgradients/predictor/rnn/while/p_cell/MatMul_1_grad/tuple/control_dependency?gradients/predictor/rnn/while/p_cell/concat_1_grad/ConcatOffset9gradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN*
Index0*
T0*'
_output_shapes
:?????????
?
:gradients/predictor/rnn/while/p_cell/concat_1_grad/Slice_1SliceKgradients/predictor/rnn/while/p_cell/MatMul_1_grad/tuple/control_dependencyAgradients/predictor/rnn/while/p_cell/concat_1_grad/ConcatOffset:1;gradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN:1*
Index0*
T0*'
_output_shapes
:?????????
?
Cgradients/predictor/rnn/while/p_cell/concat_1_grad/tuple/group_depsNoOp9^gradients/predictor/rnn/while/p_cell/concat_1_grad/Slice;^gradients/predictor/rnn/while/p_cell/concat_1_grad/Slice_1
?
Kgradients/predictor/rnn/while/p_cell/concat_1_grad/tuple/control_dependencyIdentity8gradients/predictor/rnn/while/p_cell/concat_1_grad/SliceD^gradients/predictor/rnn/while/p_cell/concat_1_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/predictor/rnn/while/p_cell/concat_1_grad/Slice*'
_output_shapes
:?????????
?
Mgradients/predictor/rnn/while/p_cell/concat_1_grad/tuple/control_dependency_1Identity:gradients/predictor/rnn/while/p_cell/concat_1_grad/Slice_1D^gradients/predictor/rnn/while/p_cell/concat_1_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/predictor/rnn/while/p_cell/concat_1_grad/Slice_1*'
_output_shapes
:?????????
?
>gradients/predictor/rnn/while/p_cell/MatMul_1/Enter_grad/b_accConst*
valueB&*    *
dtype0*
_output_shapes

:&
?
@gradients/predictor/rnn/while/p_cell/MatMul_1/Enter_grad/b_acc_1Enter>gradients/predictor/rnn/while/p_cell/MatMul_1/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations *
_output_shapes

:&*;

frame_name-+gradients/predictor/rnn/while/while_context
?
@gradients/predictor/rnn/while/p_cell/MatMul_1/Enter_grad/b_acc_2Merge@gradients/predictor/rnn/while/p_cell/MatMul_1/Enter_grad/b_acc_1Fgradients/predictor/rnn/while/p_cell/MatMul_1/Enter_grad/NextIteration*
T0*
N* 
_output_shapes
:&: 
?
?gradients/predictor/rnn/while/p_cell/MatMul_1/Enter_grad/SwitchSwitch@gradients/predictor/rnn/while/p_cell/MatMul_1/Enter_grad/b_acc_2gradients/b_count_2*
T0*(
_output_shapes
:&:&
?
<gradients/predictor/rnn/while/p_cell/MatMul_1/Enter_grad/AddAddAgradients/predictor/rnn/while/p_cell/MatMul_1/Enter_grad/Switch:1Mgradients/predictor/rnn/while/p_cell/MatMul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:&
?
Fgradients/predictor/rnn/while/p_cell/MatMul_1/Enter_grad/NextIterationNextIteration<gradients/predictor/rnn/while/p_cell/MatMul_1/Enter_grad/Add*
T0*
_output_shapes

:&
?
@gradients/predictor/rnn/while/p_cell/MatMul_1/Enter_grad/b_acc_3Exit?gradients/predictor/rnn/while/p_cell/MatMul_1/Enter_grad/Switch*
T0*
_output_shapes

:&
?
3gradients/predictor/rnn/while/p_cell/mul_grad/ShapeShape predictor/rnn/while/p_cell/split*
T0*
out_type0*
_output_shapes
:
?
5gradients/predictor/rnn/while/p_cell/mul_grad/Shape_1Shapepredictor/rnn/while/Identity_3*
T0*
out_type0*
_output_shapes
:
?
Cgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgsBroadcastGradientArgsNgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/StackPopV2Pgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:?????????:?????????
?
Igradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/ConstConst*
dtype0*
_output_shapes
: *
valueB :
?????????*F
_class<
:8loc:@gradients/predictor/rnn/while/p_cell/mul_grad/Shape
?
Igradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/f_accStackV2Igradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/Const*F
_class<
:8loc:@gradients/predictor/rnn/while/p_cell/mul_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
?
Igradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/EnterEnterIgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*1

frame_name#!predictor/rnn/while/while_context
?
Ogradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2Igradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/Enter3gradients/predictor/rnn/while/p_cell/mul_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
?
Ngradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Tgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
Tgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnterIgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*;

frame_name-+gradients/predictor/rnn/while/while_context*
T0*
is_constant(
?
Kgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/Const_1Const*
dtype0*
_output_shapes
: *
valueB :
?????????*H
_class>
<:loc:@gradients/predictor/rnn/while/p_cell/mul_grad/Shape_1
?
Kgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/f_acc_1StackV2Kgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/Const_1*H
_class>
<:loc:@gradients/predictor/rnn/while/p_cell/mul_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
?
Kgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/Enter_1EnterKgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*1

frame_name#!predictor/rnn/while/while_context*
T0*
is_constant(
?
Qgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Kgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/Enter_15gradients/predictor/rnn/while/p_cell/mul_grad/Shape_1^gradients/Add*
_output_shapes
:*
swap_memory( *
T0
?
Pgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Vgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
Vgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterKgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+gradients/predictor/rnn/while/while_context
?
1gradients/predictor/rnn/while/p_cell/mul_grad/MulMulMgradients/predictor/rnn/while/p_cell/concat_1_grad/tuple/control_dependency_1Agradients/predictor/rnn/while/Select_1_grad/zeros_like/StackPopV2*
T0*'
_output_shapes
:?????????
?
1gradients/predictor/rnn/while/p_cell/mul_grad/SumSum1gradients/predictor/rnn/while/p_cell/mul_grad/MulCgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
5gradients/predictor/rnn/while/p_cell/mul_grad/ReshapeReshape1gradients/predictor/rnn/while/p_cell/mul_grad/SumNgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*'
_output_shapes
:?????????
?
3gradients/predictor/rnn/while/p_cell/mul_grad/Mul_1Mul>gradients/predictor/rnn/while/p_cell/mul_grad/Mul_1/StackPopV2Mgradients/predictor/rnn/while/p_cell/concat_1_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:?????????
?
9gradients/predictor/rnn/while/p_cell/mul_grad/Mul_1/ConstConst*
dtype0*
_output_shapes
: *
valueB :
?????????*3
_class)
'%loc:@predictor/rnn/while/p_cell/split
?
9gradients/predictor/rnn/while/p_cell/mul_grad/Mul_1/f_accStackV29gradients/predictor/rnn/while/p_cell/mul_grad/Mul_1/Const*
	elem_type0*3
_class)
'%loc:@predictor/rnn/while/p_cell/split*

stack_name *
_output_shapes
:
?
9gradients/predictor/rnn/while/p_cell/mul_grad/Mul_1/EnterEnter9gradients/predictor/rnn/while/p_cell/mul_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*1

frame_name#!predictor/rnn/while/while_context
?
?gradients/predictor/rnn/while/p_cell/mul_grad/Mul_1/StackPushV2StackPushV29gradients/predictor/rnn/while/p_cell/mul_grad/Mul_1/Enter predictor/rnn/while/p_cell/split^gradients/Add*
T0*'
_output_shapes
:?????????*
swap_memory( 
?
>gradients/predictor/rnn/while/p_cell/mul_grad/Mul_1/StackPopV2
StackPopV2Dgradients/predictor/rnn/while/p_cell/mul_grad/Mul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:?????????*
	elem_type0
?
Dgradients/predictor/rnn/while/p_cell/mul_grad/Mul_1/StackPopV2/EnterEnter9gradients/predictor/rnn/while/p_cell/mul_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+gradients/predictor/rnn/while/while_context
?
3gradients/predictor/rnn/while/p_cell/mul_grad/Sum_1Sum3gradients/predictor/rnn/while/p_cell/mul_grad/Mul_1Egradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
?
7gradients/predictor/rnn/while/p_cell/mul_grad/Reshape_1Reshape3gradients/predictor/rnn/while/p_cell/mul_grad/Sum_1Pgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*'
_output_shapes
:?????????*
T0*
Tshape0
?
>gradients/predictor/rnn/while/p_cell/mul_grad/tuple/group_depsNoOp6^gradients/predictor/rnn/while/p_cell/mul_grad/Reshape8^gradients/predictor/rnn/while/p_cell/mul_grad/Reshape_1
?
Fgradients/predictor/rnn/while/p_cell/mul_grad/tuple/control_dependencyIdentity5gradients/predictor/rnn/while/p_cell/mul_grad/Reshape?^gradients/predictor/rnn/while/p_cell/mul_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/predictor/rnn/while/p_cell/mul_grad/Reshape*'
_output_shapes
:?????????
?
Hgradients/predictor/rnn/while/p_cell/mul_grad/tuple/control_dependency_1Identity7gradients/predictor/rnn/while/p_cell/mul_grad/Reshape_1?^gradients/predictor/rnn/while/p_cell/mul_grad/tuple/group_deps*'
_output_shapes
:?????????*
T0*J
_class@
><loc:@gradients/predictor/rnn/while/p_cell/mul_grad/Reshape_1
?
gradients/AddN_1AddNHgradients/predictor/rnn/while/p_cell/mul_1_grad/tuple/control_dependencyHgradients/predictor/rnn/while/p_cell/sub_grad/tuple/control_dependency_1*
N*'
_output_shapes
:?????????*
T0*J
_class@
><loc:@gradients/predictor/rnn/while/p_cell/mul_1_grad/Reshape
?
6gradients/predictor/rnn/while/p_cell/split_grad/concatConcatV2Fgradients/predictor/rnn/while/p_cell/mul_grad/tuple/control_dependencygradients/AddN_1<gradients/predictor/rnn/while/p_cell/split_grad/concat/Const*

Tidx0*
T0*
N*'
_output_shapes
:?????????
?
<gradients/predictor/rnn/while/p_cell/split_grad/concat/ConstConst^gradients/Sub*
dtype0*
_output_shapes
: *
value	B :
?
=gradients/predictor/rnn/while/p_cell/Sigmoid_grad/SigmoidGradSigmoidGradHgradients/predictor/rnn/while/p_cell/Sigmoid_grad/SigmoidGrad/StackPopV26gradients/predictor/rnn/while/p_cell/split_grad/concat*
T0*'
_output_shapes
:?????????
?
Cgradients/predictor/rnn/while/p_cell/Sigmoid_grad/SigmoidGrad/ConstConst*
valueB :
?????????*5
_class+
)'loc:@predictor/rnn/while/p_cell/Sigmoid*
dtype0*
_output_shapes
: 
?
Cgradients/predictor/rnn/while/p_cell/Sigmoid_grad/SigmoidGrad/f_accStackV2Cgradients/predictor/rnn/while/p_cell/Sigmoid_grad/SigmoidGrad/Const*5
_class+
)'loc:@predictor/rnn/while/p_cell/Sigmoid*

stack_name *
_output_shapes
:*
	elem_type0
?
Cgradients/predictor/rnn/while/p_cell/Sigmoid_grad/SigmoidGrad/EnterEnterCgradients/predictor/rnn/while/p_cell/Sigmoid_grad/SigmoidGrad/f_acc*
parallel_iterations *
_output_shapes
:*1

frame_name#!predictor/rnn/while/while_context*
T0*
is_constant(
?
Igradients/predictor/rnn/while/p_cell/Sigmoid_grad/SigmoidGrad/StackPushV2StackPushV2Cgradients/predictor/rnn/while/p_cell/Sigmoid_grad/SigmoidGrad/Enter"predictor/rnn/while/p_cell/Sigmoid^gradients/Add*
T0*'
_output_shapes
:?????????*
swap_memory( 
?
Hgradients/predictor/rnn/while/p_cell/Sigmoid_grad/SigmoidGrad/StackPopV2
StackPopV2Ngradients/predictor/rnn/while/p_cell/Sigmoid_grad/SigmoidGrad/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:?????????*
	elem_type0
?
Ngradients/predictor/rnn/while/p_cell/Sigmoid_grad/SigmoidGrad/StackPopV2/EnterEnterCgradients/predictor/rnn/while/p_cell/Sigmoid_grad/SigmoidGrad/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+gradients/predictor/rnn/while/while_context
?
=gradients/predictor/rnn/while/p_cell/BiasAdd_grad/BiasAddGradBiasAddGrad=gradients/predictor/rnn/while/p_cell/Sigmoid_grad/SigmoidGrad*
T0*
data_formatNHWC*
_output_shapes
:
?
Bgradients/predictor/rnn/while/p_cell/BiasAdd_grad/tuple/group_depsNoOp>^gradients/predictor/rnn/while/p_cell/BiasAdd_grad/BiasAddGrad>^gradients/predictor/rnn/while/p_cell/Sigmoid_grad/SigmoidGrad
?
Jgradients/predictor/rnn/while/p_cell/BiasAdd_grad/tuple/control_dependencyIdentity=gradients/predictor/rnn/while/p_cell/Sigmoid_grad/SigmoidGradC^gradients/predictor/rnn/while/p_cell/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:?????????*
T0*P
_classF
DBloc:@gradients/predictor/rnn/while/p_cell/Sigmoid_grad/SigmoidGrad
?
Lgradients/predictor/rnn/while/p_cell/BiasAdd_grad/tuple/control_dependency_1Identity=gradients/predictor/rnn/while/p_cell/BiasAdd_grad/BiasAddGradC^gradients/predictor/rnn/while/p_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*P
_classF
DBloc:@gradients/predictor/rnn/while/p_cell/BiasAdd_grad/BiasAddGrad
?
7gradients/predictor/rnn/while/p_cell/MatMul_grad/MatMulMatMulJgradients/predictor/rnn/while/p_cell/BiasAdd_grad/tuple/control_dependency=gradients/predictor/rnn/while/p_cell/MatMul_grad/MatMul/Enter*
T0*'
_output_shapes
:?????????&*
transpose_a( *
transpose_b(
?
=gradients/predictor/rnn/while/p_cell/MatMul_grad/MatMul/EnterEnter&predictor/rnn/p_cell/gates/kernel/read*
parallel_iterations *
_output_shapes

:&*;

frame_name-+gradients/predictor/rnn/while/while_context*
T0*
is_constant(
?
9gradients/predictor/rnn/while/p_cell/MatMul_grad/MatMul_1MatMulDgradients/predictor/rnn/while/p_cell/MatMul_grad/MatMul_1/StackPopV2Jgradients/predictor/rnn/while/p_cell/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:&*
transpose_a(
?
?gradients/predictor/rnn/while/p_cell/MatMul_grad/MatMul_1/ConstConst*
valueB :
?????????*4
_class*
(&loc:@predictor/rnn/while/p_cell/concat*
dtype0*
_output_shapes
: 
?
?gradients/predictor/rnn/while/p_cell/MatMul_grad/MatMul_1/f_accStackV2?gradients/predictor/rnn/while/p_cell/MatMul_grad/MatMul_1/Const*

stack_name *
_output_shapes
:*
	elem_type0*4
_class*
(&loc:@predictor/rnn/while/p_cell/concat
?
?gradients/predictor/rnn/while/p_cell/MatMul_grad/MatMul_1/EnterEnter?gradients/predictor/rnn/while/p_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*1

frame_name#!predictor/rnn/while/while_context
?
Egradients/predictor/rnn/while/p_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2?gradients/predictor/rnn/while/p_cell/MatMul_grad/MatMul_1/Enter!predictor/rnn/while/p_cell/concat^gradients/Add*
T0*'
_output_shapes
:?????????&*
swap_memory( 
?
Dgradients/predictor/rnn/while/p_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2Jgradients/predictor/rnn/while/p_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:?????????&*
	elem_type0
?
Jgradients/predictor/rnn/while/p_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnter?gradients/predictor/rnn/while/p_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+gradients/predictor/rnn/while/while_context
?
Agradients/predictor/rnn/while/p_cell/MatMul_grad/tuple/group_depsNoOp8^gradients/predictor/rnn/while/p_cell/MatMul_grad/MatMul:^gradients/predictor/rnn/while/p_cell/MatMul_grad/MatMul_1
?
Igradients/predictor/rnn/while/p_cell/MatMul_grad/tuple/control_dependencyIdentity7gradients/predictor/rnn/while/p_cell/MatMul_grad/MatMulB^gradients/predictor/rnn/while/p_cell/MatMul_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/predictor/rnn/while/p_cell/MatMul_grad/MatMul*'
_output_shapes
:?????????&
?
Kgradients/predictor/rnn/while/p_cell/MatMul_grad/tuple/control_dependency_1Identity9gradients/predictor/rnn/while/p_cell/MatMul_grad/MatMul_1B^gradients/predictor/rnn/while/p_cell/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@gradients/predictor/rnn/while/p_cell/MatMul_grad/MatMul_1*
_output_shapes

:&
?
=gradients/predictor/rnn/while/p_cell/BiasAdd/Enter_grad/b_accConst*
valueB*    *
dtype0*
_output_shapes
:
?
?gradients/predictor/rnn/while/p_cell/BiasAdd/Enter_grad/b_acc_1Enter=gradients/predictor/rnn/while/p_cell/BiasAdd/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:*;

frame_name-+gradients/predictor/rnn/while/while_context
?
?gradients/predictor/rnn/while/p_cell/BiasAdd/Enter_grad/b_acc_2Merge?gradients/predictor/rnn/while/p_cell/BiasAdd/Enter_grad/b_acc_1Egradients/predictor/rnn/while/p_cell/BiasAdd/Enter_grad/NextIteration*
N*
_output_shapes

:: *
T0
?
>gradients/predictor/rnn/while/p_cell/BiasAdd/Enter_grad/SwitchSwitch?gradients/predictor/rnn/while/p_cell/BiasAdd/Enter_grad/b_acc_2gradients/b_count_2*
T0* 
_output_shapes
::
?
;gradients/predictor/rnn/while/p_cell/BiasAdd/Enter_grad/AddAdd@gradients/predictor/rnn/while/p_cell/BiasAdd/Enter_grad/Switch:1Lgradients/predictor/rnn/while/p_cell/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes
:
?
Egradients/predictor/rnn/while/p_cell/BiasAdd/Enter_grad/NextIterationNextIteration;gradients/predictor/rnn/while/p_cell/BiasAdd/Enter_grad/Add*
_output_shapes
:*
T0
?
?gradients/predictor/rnn/while/p_cell/BiasAdd/Enter_grad/b_acc_3Exit>gradients/predictor/rnn/while/p_cell/BiasAdd/Enter_grad/Switch*
T0*
_output_shapes
:
?
6gradients/predictor/rnn/while/p_cell/concat_grad/ConstConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
?
5gradients/predictor/rnn/while/p_cell/concat_grad/RankConst^gradients/Sub*
dtype0*
_output_shapes
: *
value	B :
?
4gradients/predictor/rnn/while/p_cell/concat_grad/modFloorMod6gradients/predictor/rnn/while/p_cell/concat_grad/Const5gradients/predictor/rnn/while/p_cell/concat_grad/Rank*
T0*
_output_shapes
: 
?
6gradients/predictor/rnn/while/p_cell/concat_grad/ShapeShape%predictor/rnn/while/TensorArrayReadV3*
T0*
out_type0*
_output_shapes
:
?
7gradients/predictor/rnn/while/p_cell/concat_grad/ShapeNShapeNDgradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/StackPopV2Agradients/predictor/rnn/while/Select_1_grad/zeros_like/StackPopV2*
T0*
out_type0*
N* 
_output_shapes
::
?
=gradients/predictor/rnn/while/p_cell/concat_grad/ConcatOffsetConcatOffset4gradients/predictor/rnn/while/p_cell/concat_grad/mod7gradients/predictor/rnn/while/p_cell/concat_grad/ShapeN9gradients/predictor/rnn/while/p_cell/concat_grad/ShapeN:1*
N* 
_output_shapes
::
?
6gradients/predictor/rnn/while/p_cell/concat_grad/SliceSliceIgradients/predictor/rnn/while/p_cell/MatMul_grad/tuple/control_dependency=gradients/predictor/rnn/while/p_cell/concat_grad/ConcatOffset7gradients/predictor/rnn/while/p_cell/concat_grad/ShapeN*
Index0*
T0*'
_output_shapes
:?????????
?
8gradients/predictor/rnn/while/p_cell/concat_grad/Slice_1SliceIgradients/predictor/rnn/while/p_cell/MatMul_grad/tuple/control_dependency?gradients/predictor/rnn/while/p_cell/concat_grad/ConcatOffset:19gradients/predictor/rnn/while/p_cell/concat_grad/ShapeN:1*
Index0*
T0*'
_output_shapes
:?????????
?
Agradients/predictor/rnn/while/p_cell/concat_grad/tuple/group_depsNoOp7^gradients/predictor/rnn/while/p_cell/concat_grad/Slice9^gradients/predictor/rnn/while/p_cell/concat_grad/Slice_1
?
Igradients/predictor/rnn/while/p_cell/concat_grad/tuple/control_dependencyIdentity6gradients/predictor/rnn/while/p_cell/concat_grad/SliceB^gradients/predictor/rnn/while/p_cell/concat_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/predictor/rnn/while/p_cell/concat_grad/Slice*'
_output_shapes
:?????????
?
Kgradients/predictor/rnn/while/p_cell/concat_grad/tuple/control_dependency_1Identity8gradients/predictor/rnn/while/p_cell/concat_grad/Slice_1B^gradients/predictor/rnn/while/p_cell/concat_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/predictor/rnn/while/p_cell/concat_grad/Slice_1*'
_output_shapes
:?????????
?
<gradients/predictor/rnn/while/p_cell/MatMul/Enter_grad/b_accConst*
dtype0*
_output_shapes

:&*
valueB&*    
?
>gradients/predictor/rnn/while/p_cell/MatMul/Enter_grad/b_acc_1Enter<gradients/predictor/rnn/while/p_cell/MatMul/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations *
_output_shapes

:&*;

frame_name-+gradients/predictor/rnn/while/while_context
?
>gradients/predictor/rnn/while/p_cell/MatMul/Enter_grad/b_acc_2Merge>gradients/predictor/rnn/while/p_cell/MatMul/Enter_grad/b_acc_1Dgradients/predictor/rnn/while/p_cell/MatMul/Enter_grad/NextIteration*
N* 
_output_shapes
:&: *
T0
?
=gradients/predictor/rnn/while/p_cell/MatMul/Enter_grad/SwitchSwitch>gradients/predictor/rnn/while/p_cell/MatMul/Enter_grad/b_acc_2gradients/b_count_2*
T0*(
_output_shapes
:&:&
?
:gradients/predictor/rnn/while/p_cell/MatMul/Enter_grad/AddAdd?gradients/predictor/rnn/while/p_cell/MatMul/Enter_grad/Switch:1Kgradients/predictor/rnn/while/p_cell/MatMul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:&
?
Dgradients/predictor/rnn/while/p_cell/MatMul/Enter_grad/NextIterationNextIteration:gradients/predictor/rnn/while/p_cell/MatMul/Enter_grad/Add*
_output_shapes

:&*
T0
?
>gradients/predictor/rnn/while/p_cell/MatMul/Enter_grad/b_acc_3Exit=gradients/predictor/rnn/while/p_cell/MatMul/Enter_grad/Switch*
T0*
_output_shapes

:&
?
gradients/AddN_2AddNDgradients/predictor/rnn/while/Select_1_grad/tuple/control_dependencyJgradients/predictor/rnn/while/p_cell/mul_1_grad/tuple/control_dependency_1Hgradients/predictor/rnn/while/p_cell/mul_grad/tuple/control_dependency_1Kgradients/predictor/rnn/while/p_cell/concat_grad/tuple/control_dependency_1*
N*'
_output_shapes
:?????????*
T0*E
_class;
97loc:@gradients/predictor/rnn/while/Select_1_grad/Select
?
;gradients/predictor/rnn/while/Switch_3_grad_1/NextIterationNextIterationgradients/AddN_2*'
_output_shapes
:?????????*
T0
?
beta1_power/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *fff?*3
_class)
'%loc:@predictor/fully_connected/biases
?
beta1_power
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *3
_class)
'%loc:@predictor/fully_connected/biases
?
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*3
_class)
'%loc:@predictor/fully_connected/biases

beta1_power/readIdentitybeta1_power*
T0*3
_class)
'%loc:@predictor/fully_connected/biases*
_output_shapes
: 
?
beta2_power/initial_valueConst*
valueB
 *w??*3
_class)
'%loc:@predictor/fully_connected/biases*
dtype0*
_output_shapes
: 
?
beta2_power
VariableV2*
shared_name *3
_class)
'%loc:@predictor/fully_connected/biases*
	container *
shape: *
dtype0*
_output_shapes
: 
?
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*3
_class)
'%loc:@predictor/fully_connected/biases*
validate_shape(*
_output_shapes
: 

beta2_power/readIdentitybeta2_power*
_output_shapes
: *
T0*3
_class)
'%loc:@predictor/fully_connected/biases
?
8predictor/rnn/p_cell/gates/kernel/Adam/Initializer/zerosConst*
dtype0*
_output_shapes

:&*4
_class*
(&loc:@predictor/rnn/p_cell/gates/kernel*
valueB&*    
?
&predictor/rnn/p_cell/gates/kernel/Adam
VariableV2*
dtype0*
_output_shapes

:&*
shared_name *4
_class*
(&loc:@predictor/rnn/p_cell/gates/kernel*
	container *
shape
:&
?
-predictor/rnn/p_cell/gates/kernel/Adam/AssignAssign&predictor/rnn/p_cell/gates/kernel/Adam8predictor/rnn/p_cell/gates/kernel/Adam/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@predictor/rnn/p_cell/gates/kernel*
validate_shape(*
_output_shapes

:&
?
+predictor/rnn/p_cell/gates/kernel/Adam/readIdentity&predictor/rnn/p_cell/gates/kernel/Adam*
T0*4
_class*
(&loc:@predictor/rnn/p_cell/gates/kernel*
_output_shapes

:&
?
:predictor/rnn/p_cell/gates/kernel/Adam_1/Initializer/zerosConst*4
_class*
(&loc:@predictor/rnn/p_cell/gates/kernel*
valueB&*    *
dtype0*
_output_shapes

:&
?
(predictor/rnn/p_cell/gates/kernel/Adam_1
VariableV2*
	container *
shape
:&*
dtype0*
_output_shapes

:&*
shared_name *4
_class*
(&loc:@predictor/rnn/p_cell/gates/kernel
?
/predictor/rnn/p_cell/gates/kernel/Adam_1/AssignAssign(predictor/rnn/p_cell/gates/kernel/Adam_1:predictor/rnn/p_cell/gates/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@predictor/rnn/p_cell/gates/kernel*
validate_shape(*
_output_shapes

:&
?
-predictor/rnn/p_cell/gates/kernel/Adam_1/readIdentity(predictor/rnn/p_cell/gates/kernel/Adam_1*
T0*4
_class*
(&loc:@predictor/rnn/p_cell/gates/kernel*
_output_shapes

:&
?
6predictor/rnn/p_cell/gates/bias/Adam/Initializer/zerosConst*2
_class(
&$loc:@predictor/rnn/p_cell/gates/bias*
valueB*    *
dtype0*
_output_shapes
:
?
$predictor/rnn/p_cell/gates/bias/Adam
VariableV2*
shared_name *2
_class(
&$loc:@predictor/rnn/p_cell/gates/bias*
	container *
shape:*
dtype0*
_output_shapes
:
?
+predictor/rnn/p_cell/gates/bias/Adam/AssignAssign$predictor/rnn/p_cell/gates/bias/Adam6predictor/rnn/p_cell/gates/bias/Adam/Initializer/zeros*
use_locking(*
T0*2
_class(
&$loc:@predictor/rnn/p_cell/gates/bias*
validate_shape(*
_output_shapes
:
?
)predictor/rnn/p_cell/gates/bias/Adam/readIdentity$predictor/rnn/p_cell/gates/bias/Adam*
T0*2
_class(
&$loc:@predictor/rnn/p_cell/gates/bias*
_output_shapes
:
?
8predictor/rnn/p_cell/gates/bias/Adam_1/Initializer/zerosConst*2
_class(
&$loc:@predictor/rnn/p_cell/gates/bias*
valueB*    *
dtype0*
_output_shapes
:
?
&predictor/rnn/p_cell/gates/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *2
_class(
&$loc:@predictor/rnn/p_cell/gates/bias*
	container *
shape:
?
-predictor/rnn/p_cell/gates/bias/Adam_1/AssignAssign&predictor/rnn/p_cell/gates/bias/Adam_18predictor/rnn/p_cell/gates/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*2
_class(
&$loc:@predictor/rnn/p_cell/gates/bias
?
+predictor/rnn/p_cell/gates/bias/Adam_1/readIdentity&predictor/rnn/p_cell/gates/bias/Adam_1*
T0*2
_class(
&$loc:@predictor/rnn/p_cell/gates/bias*
_output_shapes
:
?
<predictor/rnn/p_cell/candidate/kernel/Adam/Initializer/zerosConst*8
_class.
,*loc:@predictor/rnn/p_cell/candidate/kernel*
valueB&*    *
dtype0*
_output_shapes

:&
?
*predictor/rnn/p_cell/candidate/kernel/Adam
VariableV2*
	container *
shape
:&*
dtype0*
_output_shapes

:&*
shared_name *8
_class.
,*loc:@predictor/rnn/p_cell/candidate/kernel
?
1predictor/rnn/p_cell/candidate/kernel/Adam/AssignAssign*predictor/rnn/p_cell/candidate/kernel/Adam<predictor/rnn/p_cell/candidate/kernel/Adam/Initializer/zeros*
validate_shape(*
_output_shapes

:&*
use_locking(*
T0*8
_class.
,*loc:@predictor/rnn/p_cell/candidate/kernel
?
/predictor/rnn/p_cell/candidate/kernel/Adam/readIdentity*predictor/rnn/p_cell/candidate/kernel/Adam*
T0*8
_class.
,*loc:@predictor/rnn/p_cell/candidate/kernel*
_output_shapes

:&
?
>predictor/rnn/p_cell/candidate/kernel/Adam_1/Initializer/zerosConst*8
_class.
,*loc:@predictor/rnn/p_cell/candidate/kernel*
valueB&*    *
dtype0*
_output_shapes

:&
?
,predictor/rnn/p_cell/candidate/kernel/Adam_1
VariableV2*
	container *
shape
:&*
dtype0*
_output_shapes

:&*
shared_name *8
_class.
,*loc:@predictor/rnn/p_cell/candidate/kernel
?
3predictor/rnn/p_cell/candidate/kernel/Adam_1/AssignAssign,predictor/rnn/p_cell/candidate/kernel/Adam_1>predictor/rnn/p_cell/candidate/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@predictor/rnn/p_cell/candidate/kernel*
validate_shape(*
_output_shapes

:&
?
1predictor/rnn/p_cell/candidate/kernel/Adam_1/readIdentity,predictor/rnn/p_cell/candidate/kernel/Adam_1*
T0*8
_class.
,*loc:@predictor/rnn/p_cell/candidate/kernel*
_output_shapes

:&
?
:predictor/rnn/p_cell/candidate/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:*6
_class,
*(loc:@predictor/rnn/p_cell/candidate/bias*
valueB*    
?
(predictor/rnn/p_cell/candidate/bias/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name *6
_class,
*(loc:@predictor/rnn/p_cell/candidate/bias*
	container *
shape:
?
/predictor/rnn/p_cell/candidate/bias/Adam/AssignAssign(predictor/rnn/p_cell/candidate/bias/Adam:predictor/rnn/p_cell/candidate/bias/Adam/Initializer/zeros*
T0*6
_class,
*(loc:@predictor/rnn/p_cell/candidate/bias*
validate_shape(*
_output_shapes
:*
use_locking(
?
-predictor/rnn/p_cell/candidate/bias/Adam/readIdentity(predictor/rnn/p_cell/candidate/bias/Adam*
T0*6
_class,
*(loc:@predictor/rnn/p_cell/candidate/bias*
_output_shapes
:
?
<predictor/rnn/p_cell/candidate/bias/Adam_1/Initializer/zerosConst*6
_class,
*(loc:@predictor/rnn/p_cell/candidate/bias*
valueB*    *
dtype0*
_output_shapes
:
?
*predictor/rnn/p_cell/candidate/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *6
_class,
*(loc:@predictor/rnn/p_cell/candidate/bias*
	container *
shape:
?
1predictor/rnn/p_cell/candidate/bias/Adam_1/AssignAssign*predictor/rnn/p_cell/candidate/bias/Adam_1<predictor/rnn/p_cell/candidate/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@predictor/rnn/p_cell/candidate/bias*
validate_shape(*
_output_shapes
:
?
/predictor/rnn/p_cell/candidate/bias/Adam_1/readIdentity*predictor/rnn/p_cell/candidate/bias/Adam_1*
T0*6
_class,
*(loc:@predictor/rnn/p_cell/candidate/bias*
_output_shapes
:
?
8predictor/fully_connected/weights/Adam/Initializer/zerosConst*4
_class*
(&loc:@predictor/fully_connected/weights*
valueB*    *
dtype0*
_output_shapes

:
?
&predictor/fully_connected/weights/Adam
VariableV2*
dtype0*
_output_shapes

:*
shared_name *4
_class*
(&loc:@predictor/fully_connected/weights*
	container *
shape
:
?
-predictor/fully_connected/weights/Adam/AssignAssign&predictor/fully_connected/weights/Adam8predictor/fully_connected/weights/Adam/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@predictor/fully_connected/weights*
validate_shape(*
_output_shapes

:
?
+predictor/fully_connected/weights/Adam/readIdentity&predictor/fully_connected/weights/Adam*
_output_shapes

:*
T0*4
_class*
(&loc:@predictor/fully_connected/weights
?
:predictor/fully_connected/weights/Adam_1/Initializer/zerosConst*4
_class*
(&loc:@predictor/fully_connected/weights*
valueB*    *
dtype0*
_output_shapes

:
?
(predictor/fully_connected/weights/Adam_1
VariableV2*
shape
:*
dtype0*
_output_shapes

:*
shared_name *4
_class*
(&loc:@predictor/fully_connected/weights*
	container 
?
/predictor/fully_connected/weights/Adam_1/AssignAssign(predictor/fully_connected/weights/Adam_1:predictor/fully_connected/weights/Adam_1/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@predictor/fully_connected/weights*
validate_shape(*
_output_shapes

:
?
-predictor/fully_connected/weights/Adam_1/readIdentity(predictor/fully_connected/weights/Adam_1*
T0*4
_class*
(&loc:@predictor/fully_connected/weights*
_output_shapes

:
?
7predictor/fully_connected/biases/Adam/Initializer/zerosConst*3
_class)
'%loc:@predictor/fully_connected/biases*
valueB*    *
dtype0*
_output_shapes
:
?
%predictor/fully_connected/biases/Adam
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *3
_class)
'%loc:@predictor/fully_connected/biases
?
,predictor/fully_connected/biases/Adam/AssignAssign%predictor/fully_connected/biases/Adam7predictor/fully_connected/biases/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*3
_class)
'%loc:@predictor/fully_connected/biases
?
*predictor/fully_connected/biases/Adam/readIdentity%predictor/fully_connected/biases/Adam*
T0*3
_class)
'%loc:@predictor/fully_connected/biases*
_output_shapes
:
?
9predictor/fully_connected/biases/Adam_1/Initializer/zerosConst*3
_class)
'%loc:@predictor/fully_connected/biases*
valueB*    *
dtype0*
_output_shapes
:
?
'predictor/fully_connected/biases/Adam_1
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *3
_class)
'%loc:@predictor/fully_connected/biases
?
.predictor/fully_connected/biases/Adam_1/AssignAssign'predictor/fully_connected/biases/Adam_19predictor/fully_connected/biases/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*3
_class)
'%loc:@predictor/fully_connected/biases
?
,predictor/fully_connected/biases/Adam_1/readIdentity'predictor/fully_connected/biases/Adam_1*
T0*3
_class)
'%loc:@predictor/fully_connected/biases*
_output_shapes
:
W
Adam/learning_rateConst*
valueB
 *o?:*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
dtype0*
_output_shapes
: *
valueB
 *fff?
O

Adam/beta2Const*
valueB
 *w??*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *w?+2*
dtype0*
_output_shapes
: 
?
7Adam/update_predictor/rnn/p_cell/gates/kernel/ApplyAdam	ApplyAdam!predictor/rnn/p_cell/gates/kernel&predictor/rnn/p_cell/gates/kernel/Adam(predictor/rnn/p_cell/gates/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon>gradients/predictor/rnn/while/p_cell/MatMul/Enter_grad/b_acc_3*
use_locking( *
T0*4
_class*
(&loc:@predictor/rnn/p_cell/gates/kernel*
use_nesterov( *
_output_shapes

:&
?
5Adam/update_predictor/rnn/p_cell/gates/bias/ApplyAdam	ApplyAdampredictor/rnn/p_cell/gates/bias$predictor/rnn/p_cell/gates/bias/Adam&predictor/rnn/p_cell/gates/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon?gradients/predictor/rnn/while/p_cell/BiasAdd/Enter_grad/b_acc_3*
use_locking( *
T0*2
_class(
&$loc:@predictor/rnn/p_cell/gates/bias*
use_nesterov( *
_output_shapes
:
?
;Adam/update_predictor/rnn/p_cell/candidate/kernel/ApplyAdam	ApplyAdam%predictor/rnn/p_cell/candidate/kernel*predictor/rnn/p_cell/candidate/kernel/Adam,predictor/rnn/p_cell/candidate/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon@gradients/predictor/rnn/while/p_cell/MatMul_1/Enter_grad/b_acc_3*
T0*8
_class.
,*loc:@predictor/rnn/p_cell/candidate/kernel*
use_nesterov( *
_output_shapes

:&*
use_locking( 
?
9Adam/update_predictor/rnn/p_cell/candidate/bias/ApplyAdam	ApplyAdam#predictor/rnn/p_cell/candidate/bias(predictor/rnn/p_cell/candidate/bias/Adam*predictor/rnn/p_cell/candidate/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonAgradients/predictor/rnn/while/p_cell/BiasAdd_1/Enter_grad/b_acc_3*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0*6
_class,
*(loc:@predictor/rnn/p_cell/candidate/bias
?
7Adam/update_predictor/fully_connected/weights/ApplyAdam	ApplyAdam!predictor/fully_connected/weights&predictor/fully_connected/weights/Adam(predictor/fully_connected/weights/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonHgradients/predictor/fully_connected/Tensordot/transpose_1_grad/transpose*
use_locking( *
T0*4
_class*
(&loc:@predictor/fully_connected/weights*
use_nesterov( *
_output_shapes

:
?
6Adam/update_predictor/fully_connected/biases/ApplyAdam	ApplyAdam predictor/fully_connected/biases%predictor/fully_connected/biases/Adam'predictor/fully_connected/biases/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonKgradients/predictor/fully_connected/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0*3
_class)
'%loc:@predictor/fully_connected/biases
?
Adam/mulMulbeta1_power/read
Adam/beta17^Adam/update_predictor/fully_connected/biases/ApplyAdam8^Adam/update_predictor/fully_connected/weights/ApplyAdam:^Adam/update_predictor/rnn/p_cell/candidate/bias/ApplyAdam<^Adam/update_predictor/rnn/p_cell/candidate/kernel/ApplyAdam6^Adam/update_predictor/rnn/p_cell/gates/bias/ApplyAdam8^Adam/update_predictor/rnn/p_cell/gates/kernel/ApplyAdam*
T0*3
_class)
'%loc:@predictor/fully_connected/biases*
_output_shapes
: 
?
Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*3
_class)
'%loc:@predictor/fully_connected/biases*
validate_shape(*
_output_shapes
: 
?

Adam/mul_1Mulbeta2_power/read
Adam/beta27^Adam/update_predictor/fully_connected/biases/ApplyAdam8^Adam/update_predictor/fully_connected/weights/ApplyAdam:^Adam/update_predictor/rnn/p_cell/candidate/bias/ApplyAdam<^Adam/update_predictor/rnn/p_cell/candidate/kernel/ApplyAdam6^Adam/update_predictor/rnn/p_cell/gates/bias/ApplyAdam8^Adam/update_predictor/rnn/p_cell/gates/kernel/ApplyAdam*
T0*3
_class)
'%loc:@predictor/fully_connected/biases*
_output_shapes
: 
?
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
T0*3
_class)
'%loc:@predictor/fully_connected/biases*
validate_shape(*
_output_shapes
: 
?
AdamNoOp^Adam/Assign^Adam/Assign_17^Adam/update_predictor/fully_connected/biases/ApplyAdam8^Adam/update_predictor/fully_connected/weights/ApplyAdam:^Adam/update_predictor/rnn/p_cell/candidate/bias/ApplyAdam<^Adam/update_predictor/rnn/p_cell/candidate/kernel/ApplyAdam6^Adam/update_predictor/rnn/p_cell/gates/bias/ApplyAdam8^Adam/update_predictor/rnn/p_cell/gates/kernel/ApplyAdam
?
initNoOp^beta1_power/Assign^beta2_power/Assign-^predictor/fully_connected/biases/Adam/Assign/^predictor/fully_connected/biases/Adam_1/Assign(^predictor/fully_connected/biases/Assign.^predictor/fully_connected/weights/Adam/Assign0^predictor/fully_connected/weights/Adam_1/Assign)^predictor/fully_connected/weights/Assign0^predictor/rnn/p_cell/candidate/bias/Adam/Assign2^predictor/rnn/p_cell/candidate/bias/Adam_1/Assign+^predictor/rnn/p_cell/candidate/bias/Assign2^predictor/rnn/p_cell/candidate/kernel/Adam/Assign4^predictor/rnn/p_cell/candidate/kernel/Adam_1/Assign-^predictor/rnn/p_cell/candidate/kernel/Assign,^predictor/rnn/p_cell/gates/bias/Adam/Assign.^predictor/rnn/p_cell/gates/bias/Adam_1/Assign'^predictor/rnn/p_cell/gates/bias/Assign.^predictor/rnn/p_cell/gates/kernel/Adam/Assign0^predictor/rnn/p_cell/gates/kernel/Adam_1/Assign)^predictor/rnn/p_cell/gates/kernel/Assign
Y
save/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
?
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_9f87f9ed0a9a46f6bbe6a07dd84717e6/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
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
?
save/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*?
value?B?Bbeta1_powerBbeta2_powerB predictor/fully_connected/biasesB%predictor/fully_connected/biases/AdamB'predictor/fully_connected/biases/Adam_1B!predictor/fully_connected/weightsB&predictor/fully_connected/weights/AdamB(predictor/fully_connected/weights/Adam_1B#predictor/rnn/p_cell/candidate/biasB(predictor/rnn/p_cell/candidate/bias/AdamB*predictor/rnn/p_cell/candidate/bias/Adam_1B%predictor/rnn/p_cell/candidate/kernelB*predictor/rnn/p_cell/candidate/kernel/AdamB,predictor/rnn/p_cell/candidate/kernel/Adam_1Bpredictor/rnn/p_cell/gates/biasB$predictor/rnn/p_cell/gates/bias/AdamB&predictor/rnn/p_cell/gates/bias/Adam_1B!predictor/rnn/p_cell/gates/kernelB&predictor/rnn/p_cell/gates/kernel/AdamB(predictor/rnn/p_cell/gates/kernel/Adam_1
?
save/SaveV2/shape_and_slicesConst"/device:CPU:0*;
value2B0B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_power predictor/fully_connected/biases%predictor/fully_connected/biases/Adam'predictor/fully_connected/biases/Adam_1!predictor/fully_connected/weights&predictor/fully_connected/weights/Adam(predictor/fully_connected/weights/Adam_1#predictor/rnn/p_cell/candidate/bias(predictor/rnn/p_cell/candidate/bias/Adam*predictor/rnn/p_cell/candidate/bias/Adam_1%predictor/rnn/p_cell/candidate/kernel*predictor/rnn/p_cell/candidate/kernel/Adam,predictor/rnn/p_cell/candidate/kernel/Adam_1predictor/rnn/p_cell/gates/bias$predictor/rnn/p_cell/gates/bias/Adam&predictor/rnn/p_cell/gates/bias/Adam_1!predictor/rnn/p_cell/gates/kernel&predictor/rnn/p_cell/gates/kernel/Adam(predictor/rnn/p_cell/gates/kernel/Adam_1"/device:CPU:0*"
dtypes
2
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 
?
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
?
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*?
value?B?Bbeta1_powerBbeta2_powerB predictor/fully_connected/biasesB%predictor/fully_connected/biases/AdamB'predictor/fully_connected/biases/Adam_1B!predictor/fully_connected/weightsB&predictor/fully_connected/weights/AdamB(predictor/fully_connected/weights/Adam_1B#predictor/rnn/p_cell/candidate/biasB(predictor/rnn/p_cell/candidate/bias/AdamB*predictor/rnn/p_cell/candidate/bias/Adam_1B%predictor/rnn/p_cell/candidate/kernelB*predictor/rnn/p_cell/candidate/kernel/AdamB,predictor/rnn/p_cell/candidate/kernel/Adam_1Bpredictor/rnn/p_cell/gates/biasB$predictor/rnn/p_cell/gates/bias/AdamB&predictor/rnn/p_cell/gates/bias/Adam_1B!predictor/rnn/p_cell/gates/kernelB&predictor/rnn/p_cell/gates/kernel/AdamB(predictor/rnn/p_cell/gates/kernel/Adam_1*
dtype0*
_output_shapes
:
?
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*;
value2B0B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*d
_output_shapesR
P::::::::::::::::::::*"
dtypes
2
?
save/AssignAssignbeta1_powersave/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*3
_class)
'%loc:@predictor/fully_connected/biases
?
save/Assign_1Assignbeta2_powersave/RestoreV2:1*
use_locking(*
T0*3
_class)
'%loc:@predictor/fully_connected/biases*
validate_shape(*
_output_shapes
: 
?
save/Assign_2Assign predictor/fully_connected/biasessave/RestoreV2:2*
use_locking(*
T0*3
_class)
'%loc:@predictor/fully_connected/biases*
validate_shape(*
_output_shapes
:
?
save/Assign_3Assign%predictor/fully_connected/biases/Adamsave/RestoreV2:3*
T0*3
_class)
'%loc:@predictor/fully_connected/biases*
validate_shape(*
_output_shapes
:*
use_locking(
?
save/Assign_4Assign'predictor/fully_connected/biases/Adam_1save/RestoreV2:4*
T0*3
_class)
'%loc:@predictor/fully_connected/biases*
validate_shape(*
_output_shapes
:*
use_locking(
?
save/Assign_5Assign!predictor/fully_connected/weightssave/RestoreV2:5*
use_locking(*
T0*4
_class*
(&loc:@predictor/fully_connected/weights*
validate_shape(*
_output_shapes

:
?
save/Assign_6Assign&predictor/fully_connected/weights/Adamsave/RestoreV2:6*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*4
_class*
(&loc:@predictor/fully_connected/weights
?
save/Assign_7Assign(predictor/fully_connected/weights/Adam_1save/RestoreV2:7*
use_locking(*
T0*4
_class*
(&loc:@predictor/fully_connected/weights*
validate_shape(*
_output_shapes

:
?
save/Assign_8Assign#predictor/rnn/p_cell/candidate/biassave/RestoreV2:8*
T0*6
_class,
*(loc:@predictor/rnn/p_cell/candidate/bias*
validate_shape(*
_output_shapes
:*
use_locking(
?
save/Assign_9Assign(predictor/rnn/p_cell/candidate/bias/Adamsave/RestoreV2:9*
T0*6
_class,
*(loc:@predictor/rnn/p_cell/candidate/bias*
validate_shape(*
_output_shapes
:*
use_locking(
?
save/Assign_10Assign*predictor/rnn/p_cell/candidate/bias/Adam_1save/RestoreV2:10*
use_locking(*
T0*6
_class,
*(loc:@predictor/rnn/p_cell/candidate/bias*
validate_shape(*
_output_shapes
:
?
save/Assign_11Assign%predictor/rnn/p_cell/candidate/kernelsave/RestoreV2:11*
use_locking(*
T0*8
_class.
,*loc:@predictor/rnn/p_cell/candidate/kernel*
validate_shape(*
_output_shapes

:&
?
save/Assign_12Assign*predictor/rnn/p_cell/candidate/kernel/Adamsave/RestoreV2:12*
use_locking(*
T0*8
_class.
,*loc:@predictor/rnn/p_cell/candidate/kernel*
validate_shape(*
_output_shapes

:&
?
save/Assign_13Assign,predictor/rnn/p_cell/candidate/kernel/Adam_1save/RestoreV2:13*
T0*8
_class.
,*loc:@predictor/rnn/p_cell/candidate/kernel*
validate_shape(*
_output_shapes

:&*
use_locking(
?
save/Assign_14Assignpredictor/rnn/p_cell/gates/biassave/RestoreV2:14*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*2
_class(
&$loc:@predictor/rnn/p_cell/gates/bias
?
save/Assign_15Assign$predictor/rnn/p_cell/gates/bias/Adamsave/RestoreV2:15*
use_locking(*
T0*2
_class(
&$loc:@predictor/rnn/p_cell/gates/bias*
validate_shape(*
_output_shapes
:
?
save/Assign_16Assign&predictor/rnn/p_cell/gates/bias/Adam_1save/RestoreV2:16*
use_locking(*
T0*2
_class(
&$loc:@predictor/rnn/p_cell/gates/bias*
validate_shape(*
_output_shapes
:
?
save/Assign_17Assign!predictor/rnn/p_cell/gates/kernelsave/RestoreV2:17*
use_locking(*
T0*4
_class*
(&loc:@predictor/rnn/p_cell/gates/kernel*
validate_shape(*
_output_shapes

:&
?
save/Assign_18Assign&predictor/rnn/p_cell/gates/kernel/Adamsave/RestoreV2:18*
use_locking(*
T0*4
_class*
(&loc:@predictor/rnn/p_cell/gates/kernel*
validate_shape(*
_output_shapes

:&
?
save/Assign_19Assign(predictor/rnn/p_cell/gates/kernel/Adam_1save/RestoreV2:19*
T0*4
_class*
(&loc:@predictor/rnn/p_cell/gates/kernel*
validate_shape(*
_output_shapes

:&*
use_locking(
?
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard"?<
save/Const:0save/Identity:0save/restore_all (5 @F8"?
model_variables??
?
#predictor/fully_connected/weights:0(predictor/fully_connected/weights/Assign(predictor/fully_connected/weights/read:02>predictor/fully_connected/weights/Initializer/random_uniform:08
?
"predictor/fully_connected/biases:0'predictor/fully_connected/biases/Assign'predictor/fully_connected/biases/read:024predictor/fully_connected/biases/Initializer/zeros:08"?	
trainable_variables??
?
#predictor/rnn/p_cell/gates/kernel:0(predictor/rnn/p_cell/gates/kernel/Assign(predictor/rnn/p_cell/gates/kernel/read:02>predictor/rnn/p_cell/gates/kernel/Initializer/random_uniform:08
?
!predictor/rnn/p_cell/gates/bias:0&predictor/rnn/p_cell/gates/bias/Assign&predictor/rnn/p_cell/gates/bias/read:023predictor/rnn/p_cell/gates/bias/Initializer/Const:08
?
'predictor/rnn/p_cell/candidate/kernel:0,predictor/rnn/p_cell/candidate/kernel/Assign,predictor/rnn/p_cell/candidate/kernel/read:02Bpredictor/rnn/p_cell/candidate/kernel/Initializer/random_uniform:08
?
%predictor/rnn/p_cell/candidate/bias:0*predictor/rnn/p_cell/candidate/bias/Assign*predictor/rnn/p_cell/candidate/bias/read:027predictor/rnn/p_cell/candidate/bias/Initializer/zeros:08
?
#predictor/fully_connected/weights:0(predictor/fully_connected/weights/Assign(predictor/fully_connected/weights/read:02>predictor/fully_connected/weights/Initializer/random_uniform:08
?
"predictor/fully_connected/biases:0'predictor/fully_connected/biases/Assign'predictor/fully_connected/biases/read:024predictor/fully_connected/biases/Initializer/zeros:08"?j
while_context?j?j
?j
!predictor/rnn/while/while_context *predictor/rnn/while/LoopCond:02predictor/rnn/while/Merge:0:predictor/rnn/while/Identity:0Bpredictor/rnn/while/Exit:0Bpredictor/rnn/while/Exit_1:0Bpredictor/rnn/while/Exit_2:0Bpredictor/rnn/while/Exit_3:0Bgradients/f_count_2:0J?f
gradients/Add/y:0
gradients/Add:0
gradients/Merge:0
gradients/Merge:1
gradients/NextIteration:0
gradients/Switch:0
gradients/Switch:1
gradients/f_count:0
gradients/f_count_1:0
gradients/f_count_2:0
:gradients/predictor/rnn/while/Select_1_grad/Select/Enter:0
@gradients/predictor/rnn/while/Select_1_grad/Select/StackPushV2:0
:gradients/predictor/rnn/while/Select_1_grad/Select/f_acc:0
>gradients/predictor/rnn/while/Select_1_grad/zeros_like/Enter:0
Dgradients/predictor/rnn/while/Select_1_grad/zeros_like/StackPushV2:0
>gradients/predictor/rnn/while/Select_1_grad/zeros_like/f_acc:0
`gradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter:0
fgradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2:0
`gradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc:0
Cgradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMul_1/Enter:0
Igradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMul_1/StackPushV2:0
Cgradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMul_1/f_acc:0
Agradients/predictor/rnn/while/p_cell/MatMul_grad/MatMul_1/Enter:0
Ggradients/predictor/rnn/while/p_cell/MatMul_grad/MatMul_1/StackPushV2:0
Agradients/predictor/rnn/while/p_cell/MatMul_grad/MatMul_1/f_acc:0
Egradients/predictor/rnn/while/p_cell/Sigmoid_grad/SigmoidGrad/Enter:0
Kgradients/predictor/rnn/while/p_cell/Sigmoid_grad/SigmoidGrad/StackPushV2:0
Egradients/predictor/rnn/while/p_cell/Sigmoid_grad/SigmoidGrad/f_acc:0
Kgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/Enter:0
Mgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/Enter_1:0
Qgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/StackPushV2:0
Sgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/StackPushV2_1:0
Kgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/f_acc:0
Mgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/f_acc_1:0
5gradients/predictor/rnn/while/p_cell/add_grad/Shape:0
7gradients/predictor/rnn/while/p_cell/add_grad/Shape_1:0
:gradients/predictor/rnn/while/p_cell/concat_1_grad/Shape:0
Agradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/Enter:0
Cgradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/Enter_1:0
Ggradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/StackPushV2:0
Igradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/StackPushV2_1:0
Agradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/f_acc:0
Cgradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/f_acc_1:0
8gradients/predictor/rnn/while/p_cell/concat_grad/Shape:0
Mgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/Enter:0
Ogradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/Enter_1:0
Sgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2:0
Ugradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1:0
Mgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/f_acc:0
Ogradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1:0
=gradients/predictor/rnn/while/p_cell/mul_1_grad/Mul_1/Enter:0
Cgradients/predictor/rnn/while/p_cell/mul_1_grad/Mul_1/StackPushV2:0
=gradients/predictor/rnn/while/p_cell/mul_1_grad/Mul_1/f_acc:0
7gradients/predictor/rnn/while/p_cell/mul_1_grad/Shape:0
9gradients/predictor/rnn/while/p_cell/mul_1_grad/Shape_1:0
Mgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/Enter:0
Ogradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/Enter_1:0
Sgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2:0
Ugradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1:0
Mgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/f_acc:0
Ogradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1:0
;gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul/Enter:0
Agradients/predictor/rnn/while/p_cell/mul_2_grad/Mul/StackPushV2:0
;gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul/f_acc:0
=gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul_1/Enter:0
Cgradients/predictor/rnn/while/p_cell/mul_2_grad/Mul_1/StackPushV2:0
=gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul_1/f_acc:0
7gradients/predictor/rnn/while/p_cell/mul_2_grad/Shape:0
9gradients/predictor/rnn/while/p_cell/mul_2_grad/Shape_1:0
Kgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/Enter:0
Mgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/Enter_1:0
Qgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/StackPushV2:0
Sgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1:0
Kgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/f_acc:0
Mgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/f_acc_1:0
;gradients/predictor/rnn/while/p_cell/mul_grad/Mul_1/Enter:0
Agradients/predictor/rnn/while/p_cell/mul_grad/Mul_1/StackPushV2:0
;gradients/predictor/rnn/while/p_cell/mul_grad/Mul_1/f_acc:0
5gradients/predictor/rnn/while/p_cell/mul_grad/Shape:0
7gradients/predictor/rnn/while/p_cell/mul_grad/Shape_1:0
Kgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/Enter:0
Mgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/Enter_1:0
Qgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/StackPushV2:0
Sgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/StackPushV2_1:0
Kgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/f_acc:0
Mgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/f_acc_1:0
5gradients/predictor/rnn/while/p_cell/sub_grad/Shape:0
7gradients/predictor/rnn/while/p_cell/sub_grad/Shape_1:0
predictor/rnn/CheckSeqLen:0
predictor/rnn/Minimum:0
predictor/rnn/TensorArray:0
Jpredictor/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
predictor/rnn/TensorArray_1:0
*predictor/rnn/p_cell/candidate/bias/read:0
,predictor/rnn/p_cell/candidate/kernel/read:0
&predictor/rnn/p_cell/gates/bias/read:0
(predictor/rnn/p_cell/gates/kernel/read:0
predictor/rnn/strided_slice_1:0
predictor/rnn/while/Enter:0
predictor/rnn/while/Enter_1:0
predictor/rnn/while/Enter_2:0
predictor/rnn/while/Enter_3:0
predictor/rnn/while/Exit:0
predictor/rnn/while/Exit_1:0
predictor/rnn/while/Exit_2:0
predictor/rnn/while/Exit_3:0
(predictor/rnn/while/GreaterEqual/Enter:0
"predictor/rnn/while/GreaterEqual:0
predictor/rnn/while/Identity:0
 predictor/rnn/while/Identity_1:0
 predictor/rnn/while/Identity_2:0
 predictor/rnn/while/Identity_3:0
 predictor/rnn/while/Less/Enter:0
predictor/rnn/while/Less:0
"predictor/rnn/while/Less_1/Enter:0
predictor/rnn/while/Less_1:0
 predictor/rnn/while/LogicalAnd:0
predictor/rnn/while/LoopCond:0
predictor/rnn/while/Merge:0
predictor/rnn/while/Merge:1
predictor/rnn/while/Merge_1:0
predictor/rnn/while/Merge_1:1
predictor/rnn/while/Merge_2:0
predictor/rnn/while/Merge_2:1
predictor/rnn/while/Merge_3:0
predictor/rnn/while/Merge_3:1
#predictor/rnn/while/NextIteration:0
%predictor/rnn/while/NextIteration_1:0
%predictor/rnn/while/NextIteration_2:0
%predictor/rnn/while/NextIteration_3:0
"predictor/rnn/while/Select/Enter:0
predictor/rnn/while/Select:0
predictor/rnn/while/Select_1:0
predictor/rnn/while/Switch:0
predictor/rnn/while/Switch:1
predictor/rnn/while/Switch_1:0
predictor/rnn/while/Switch_1:1
predictor/rnn/while/Switch_2:0
predictor/rnn/while/Switch_2:1
predictor/rnn/while/Switch_3:0
predictor/rnn/while/Switch_3:1
-predictor/rnn/while/TensorArrayReadV3/Enter:0
/predictor/rnn/while/TensorArrayReadV3/Enter_1:0
'predictor/rnn/while/TensorArrayReadV3:0
?predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
9predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3:0
predictor/rnn/while/add/y:0
predictor/rnn/while/add:0
predictor/rnn/while/add_1/y:0
predictor/rnn/while/add_1:0
*predictor/rnn/while/p_cell/BiasAdd/Enter:0
$predictor/rnn/while/p_cell/BiasAdd:0
,predictor/rnn/while/p_cell/BiasAdd_1/Enter:0
&predictor/rnn/while/p_cell/BiasAdd_1:0
"predictor/rnn/while/p_cell/Const:0
)predictor/rnn/while/p_cell/MatMul/Enter:0
#predictor/rnn/while/p_cell/MatMul:0
+predictor/rnn/while/p_cell/MatMul_1/Enter:0
%predictor/rnn/while/p_cell/MatMul_1:0
$predictor/rnn/while/p_cell/Sigmoid:0
!predictor/rnn/while/p_cell/Tanh:0
 predictor/rnn/while/p_cell/add:0
(predictor/rnn/while/p_cell/concat/axis:0
#predictor/rnn/while/p_cell/concat:0
*predictor/rnn/while/p_cell/concat_1/axis:0
%predictor/rnn/while/p_cell/concat_1:0
 predictor/rnn/while/p_cell/mul:0
"predictor/rnn/while/p_cell/mul_1:0
"predictor/rnn/while/p_cell/mul_2:0
,predictor/rnn/while/p_cell/split/split_dim:0
"predictor/rnn/while/p_cell/split:0
"predictor/rnn/while/p_cell/split:1
"predictor/rnn/while/p_cell/sub/x:0
 predictor/rnn/while/p_cell/sub:0
predictor/rnn/zeros:0z
;gradients/predictor/rnn/while/p_cell/mul_grad/Mul_1/f_acc:0;gradients/predictor/rnn/while/p_cell/mul_grad/Mul_1/Enter:0;
predictor/rnn/zeros:0"predictor/rnn/while/Select/Enter:0?
Cgradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/f_acc_1:0Cgradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/Enter_1:0G
predictor/rnn/CheckSeqLen:0(predictor/rnn/while/GreaterEqual/Enter:0z
;gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul/f_acc:0;gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul/Enter:0?
`gradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc:0`gradients/predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter:0?
Mgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/f_acc:0Mgradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/Enter:0?
Mgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/f_acc:0Mgradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/Enter:0}
Jpredictor/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0/predictor/rnn/while/TensorArrayReadV3/Enter_1:0?
Mgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/f_acc_1:0Mgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/Enter_1:0?
Kgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/f_acc:0Kgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/Enter:0T
&predictor/rnn/p_cell/gates/bias/read:0*predictor/rnn/while/p_cell/BiasAdd/Enter:0?
Mgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/f_acc_1:0Mgradients/predictor/rnn/while/p_cell/mul_grad/BroadcastGradientArgs/Enter_1:0?
Agradients/predictor/rnn/while/p_cell/MatMul_grad/MatMul_1/f_acc:0Agradients/predictor/rnn/while/p_cell/MatMul_grad/MatMul_1/Enter:0?
Agradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/f_acc:0Agradients/predictor/rnn/while/p_cell/concat_1_grad/ShapeN/Enter:0C
predictor/rnn/strided_slice_1:0 predictor/rnn/while/Less/Enter:0?
>gradients/predictor/rnn/while/Select_1_grad/zeros_like/f_acc:0>gradients/predictor/rnn/while/Select_1_grad/zeros_like/Enter:0?
Egradients/predictor/rnn/while/p_cell/Sigmoid_grad/SigmoidGrad/f_acc:0Egradients/predictor/rnn/while/p_cell/Sigmoid_grad/SigmoidGrad/Enter:0Z
*predictor/rnn/p_cell/candidate/bias/read:0,predictor/rnn/while/p_cell/BiasAdd_1/Enter:0?
Ogradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1:0Ogradients/predictor/rnn/while/p_cell/mul_2_grad/BroadcastGradientArgs/Enter_1:0U
(predictor/rnn/p_cell/gates/kernel/read:0)predictor/rnn/while/p_cell/MatMul/Enter:0N
predictor/rnn/TensorArray_1:0-predictor/rnn/while/TensorArrayReadV3/Enter:0?
Kgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/f_acc:0Kgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/Enter:0?
Kgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/f_acc:0Kgradients/predictor/rnn/while/p_cell/sub_grad/BroadcastGradientArgs/Enter:0^
predictor/rnn/TensorArray:0?predictor/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0[
,predictor/rnn/p_cell/candidate/kernel/read:0+predictor/rnn/while/p_cell/MatMul_1/Enter:0x
:gradients/predictor/rnn/while/Select_1_grad/Select/f_acc:0:gradients/predictor/rnn/while/Select_1_grad/Select/Enter:0=
predictor/rnn/Minimum:0"predictor/rnn/while/Less_1/Enter:0?
Ogradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1:0Ogradients/predictor/rnn/while/p_cell/mul_1_grad/BroadcastGradientArgs/Enter_1:0?
Cgradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMul_1/f_acc:0Cgradients/predictor/rnn/while/p_cell/MatMul_1_grad/MatMul_1/Enter:0?
Mgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/f_acc_1:0Mgradients/predictor/rnn/while/p_cell/add_grad/BroadcastGradientArgs/Enter_1:0~
=gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul_1/f_acc:0=gradients/predictor/rnn/while/p_cell/mul_2_grad/Mul_1/Enter:0~
=gradients/predictor/rnn/while/p_cell/mul_1_grad/Mul_1/f_acc:0=gradients/predictor/rnn/while/p_cell/mul_1_grad/Mul_1/Enter:0Rpredictor/rnn/while/Enter:0Rpredictor/rnn/while/Enter_1:0Rpredictor/rnn/while/Enter_2:0Rpredictor/rnn/while/Enter_3:0Rgradients/f_count_1:0Zpredictor/rnn/strided_slice_1:0"?
	variables??
?
#predictor/rnn/p_cell/gates/kernel:0(predictor/rnn/p_cell/gates/kernel/Assign(predictor/rnn/p_cell/gates/kernel/read:02>predictor/rnn/p_cell/gates/kernel/Initializer/random_uniform:08
?
!predictor/rnn/p_cell/gates/bias:0&predictor/rnn/p_cell/gates/bias/Assign&predictor/rnn/p_cell/gates/bias/read:023predictor/rnn/p_cell/gates/bias/Initializer/Const:08
?
'predictor/rnn/p_cell/candidate/kernel:0,predictor/rnn/p_cell/candidate/kernel/Assign,predictor/rnn/p_cell/candidate/kernel/read:02Bpredictor/rnn/p_cell/candidate/kernel/Initializer/random_uniform:08
?
%predictor/rnn/p_cell/candidate/bias:0*predictor/rnn/p_cell/candidate/bias/Assign*predictor/rnn/p_cell/candidate/bias/read:027predictor/rnn/p_cell/candidate/bias/Initializer/zeros:08
?
#predictor/fully_connected/weights:0(predictor/fully_connected/weights/Assign(predictor/fully_connected/weights/read:02>predictor/fully_connected/weights/Initializer/random_uniform:08
?
"predictor/fully_connected/biases:0'predictor/fully_connected/biases/Assign'predictor/fully_connected/biases/read:024predictor/fully_connected/biases/Initializer/zeros:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
?
(predictor/rnn/p_cell/gates/kernel/Adam:0-predictor/rnn/p_cell/gates/kernel/Adam/Assign-predictor/rnn/p_cell/gates/kernel/Adam/read:02:predictor/rnn/p_cell/gates/kernel/Adam/Initializer/zeros:0
?
*predictor/rnn/p_cell/gates/kernel/Adam_1:0/predictor/rnn/p_cell/gates/kernel/Adam_1/Assign/predictor/rnn/p_cell/gates/kernel/Adam_1/read:02<predictor/rnn/p_cell/gates/kernel/Adam_1/Initializer/zeros:0
?
&predictor/rnn/p_cell/gates/bias/Adam:0+predictor/rnn/p_cell/gates/bias/Adam/Assign+predictor/rnn/p_cell/gates/bias/Adam/read:028predictor/rnn/p_cell/gates/bias/Adam/Initializer/zeros:0
?
(predictor/rnn/p_cell/gates/bias/Adam_1:0-predictor/rnn/p_cell/gates/bias/Adam_1/Assign-predictor/rnn/p_cell/gates/bias/Adam_1/read:02:predictor/rnn/p_cell/gates/bias/Adam_1/Initializer/zeros:0
?
,predictor/rnn/p_cell/candidate/kernel/Adam:01predictor/rnn/p_cell/candidate/kernel/Adam/Assign1predictor/rnn/p_cell/candidate/kernel/Adam/read:02>predictor/rnn/p_cell/candidate/kernel/Adam/Initializer/zeros:0
?
.predictor/rnn/p_cell/candidate/kernel/Adam_1:03predictor/rnn/p_cell/candidate/kernel/Adam_1/Assign3predictor/rnn/p_cell/candidate/kernel/Adam_1/read:02@predictor/rnn/p_cell/candidate/kernel/Adam_1/Initializer/zeros:0
?
*predictor/rnn/p_cell/candidate/bias/Adam:0/predictor/rnn/p_cell/candidate/bias/Adam/Assign/predictor/rnn/p_cell/candidate/bias/Adam/read:02<predictor/rnn/p_cell/candidate/bias/Adam/Initializer/zeros:0
?
,predictor/rnn/p_cell/candidate/bias/Adam_1:01predictor/rnn/p_cell/candidate/bias/Adam_1/Assign1predictor/rnn/p_cell/candidate/bias/Adam_1/read:02>predictor/rnn/p_cell/candidate/bias/Adam_1/Initializer/zeros:0
?
(predictor/fully_connected/weights/Adam:0-predictor/fully_connected/weights/Adam/Assign-predictor/fully_connected/weights/Adam/read:02:predictor/fully_connected/weights/Adam/Initializer/zeros:0
?
*predictor/fully_connected/weights/Adam_1:0/predictor/fully_connected/weights/Adam_1/Assign/predictor/fully_connected/weights/Adam_1/read:02<predictor/fully_connected/weights/Adam_1/Initializer/zeros:0
?
'predictor/fully_connected/biases/Adam:0,predictor/fully_connected/biases/Adam/Assign,predictor/fully_connected/biases/Adam/read:029predictor/fully_connected/biases/Adam/Initializer/zeros:0
?
)predictor/fully_connected/biases/Adam_1:0.predictor/fully_connected/biases/Adam_1/Assign.predictor/fully_connected/biases/Adam_1/read:02;predictor/fully_connected/biases/Adam_1/Initializer/zeros:0")
losses

absolute_difference/value:0"
train_op

Adam*?
serving_default?
5
myinput_x:0&
myinput_x:0?????????
-
myinput_t:0
myinput_t:0?????????A
myoutput_y:01
predictor/myoutput_y:0?????????tensorflow/serving/predict