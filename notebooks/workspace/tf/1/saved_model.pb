ĚŹ 
Ć++
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
2	

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
E
AssignAddVariableOp
resource
value"dtype"
dtypetype
E
AssignSubVariableOp
resource
value"dtype"
dtypetype
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
B
Equal
x"T
y"T
z
"
Ttype:
2	

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
,
Floor
x"T
y"T"
Ttype:
2
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
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2

Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
delete_old_dirsbool(
;
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	

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
6
Pow
x"T
y"T
z"T"
Ttype:

2	
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 

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
2	
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
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
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
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
;
	RsqrtGrad
y"T
dy"T
z"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2

#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
2
StopGradient

input"T
output"T"	
Ttype
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

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
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized

&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.10.02b'v1.10.0-rc1-19-g656e7a2b34'Ä
p
hidden1_inputPlaceholder*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
Ł
/hidden1/kernel/Initializer/random_uniform/shapeConst*
valueB"   d   *
_output_shapes
:*
dtype0*!
_class
loc:@hidden1/kernel

-hidden1/kernel/Initializer/random_uniform/minConst*
valueB
 *Ţ%wž*
_output_shapes
: *
dtype0*!
_class
loc:@hidden1/kernel

-hidden1/kernel/Initializer/random_uniform/maxConst*
valueB
 *Ţ%w>*
_output_shapes
: *
dtype0*!
_class
loc:@hidden1/kernel
ë
7hidden1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/hidden1/kernel/Initializer/random_uniform/shape*
seed2 *!
_class
loc:@hidden1/kernel*
T0*
_output_shapes

:d*
dtype0*

seed 
Ö
-hidden1/kernel/Initializer/random_uniform/subSub-hidden1/kernel/Initializer/random_uniform/max-hidden1/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *!
_class
loc:@hidden1/kernel
č
-hidden1/kernel/Initializer/random_uniform/mulMul7hidden1/kernel/Initializer/random_uniform/RandomUniform-hidden1/kernel/Initializer/random_uniform/sub*
T0*
_output_shapes

:d*!
_class
loc:@hidden1/kernel
Ú
)hidden1/kernel/Initializer/random_uniformAdd-hidden1/kernel/Initializer/random_uniform/mul-hidden1/kernel/Initializer/random_uniform/min*
T0*
_output_shapes

:d*!
_class
loc:@hidden1/kernel
Ź
hidden1/kernelVarHandleOp*
shared_namehidden1/kernel*!
_class
loc:@hidden1/kernel*
_output_shapes
: *
dtype0*
shape
:d*
	container 
m
/hidden1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOphidden1/kernel*
_output_shapes
: 

hidden1/kernel/AssignAssignVariableOphidden1/kernel)hidden1/kernel/Initializer/random_uniform*
dtype0*!
_class
loc:@hidden1/kernel

"hidden1/kernel/Read/ReadVariableOpReadVariableOphidden1/kernel*
_output_shapes

:d*
dtype0*!
_class
loc:@hidden1/kernel

hidden1/bias/Initializer/zerosConst*
valueBd*    *
_output_shapes
:d*
dtype0*
_class
loc:@hidden1/bias
˘
hidden1/biasVarHandleOp*
shared_namehidden1/bias*
_class
loc:@hidden1/bias*
_output_shapes
: *
dtype0*
shape:d*
	container 
i
-hidden1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOphidden1/bias*
_output_shapes
: 

hidden1/bias/AssignAssignVariableOphidden1/biashidden1/bias/Initializer/zeros*
dtype0*
_class
loc:@hidden1/bias

 hidden1/bias/Read/ReadVariableOpReadVariableOphidden1/bias*
_output_shapes
:d*
dtype0*
_class
loc:@hidden1/bias
l
hidden1/MatMul/ReadVariableOpReadVariableOphidden1/kernel*
_output_shapes

:d*
dtype0

hidden1/MatMulMatMulhidden1_inputhidden1/MatMul/ReadVariableOp*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
g
hidden1/BiasAdd/ReadVariableOpReadVariableOphidden1/bias*
_output_shapes
:d*
dtype0

hidden1/BiasAddBiasAddhidden1/MatMulhidden1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
Ľ
*batch_normalization/gamma/Initializer/onesConst*
valueBd*  ?*
_output_shapes
:d*
dtype0*,
_class"
 loc:@batch_normalization/gamma
É
batch_normalization/gammaVarHandleOp**
shared_namebatch_normalization/gamma*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
: *
dtype0*
shape:d*
	container 

:batch_normalization/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization/gamma*
_output_shapes
: 
ś
 batch_normalization/gamma/AssignAssignVariableOpbatch_normalization/gamma*batch_normalization/gamma/Initializer/ones*
dtype0*,
_class"
 loc:@batch_normalization/gamma
ą
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
:d*
dtype0*,
_class"
 loc:@batch_normalization/gamma
¤
*batch_normalization/beta/Initializer/zerosConst*
valueBd*    *
_output_shapes
:d*
dtype0*+
_class!
loc:@batch_normalization/beta
Ć
batch_normalization/betaVarHandleOp*)
shared_namebatch_normalization/beta*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: *
dtype0*
shape:d*
	container 

9batch_normalization/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization/beta*
_output_shapes
: 
ł
batch_normalization/beta/AssignAssignVariableOpbatch_normalization/beta*batch_normalization/beta/Initializer/zeros*
dtype0*+
_class!
loc:@batch_normalization/beta
Ž
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
:d*
dtype0*+
_class!
loc:@batch_normalization/beta
˛
1batch_normalization/moving_mean/Initializer/zerosConst*
valueBd*    *
_output_shapes
:d*
dtype0*2
_class(
&$loc:@batch_normalization/moving_mean
Ű
batch_normalization/moving_meanVarHandleOp*0
shared_name!batch_normalization/moving_mean*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
: *
dtype0*
shape:d*
	container 

@batch_normalization/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization/moving_mean*
_output_shapes
: 
Ď
&batch_normalization/moving_mean/AssignAssignVariableOpbatch_normalization/moving_mean1batch_normalization/moving_mean/Initializer/zeros*
dtype0*2
_class(
&$loc:@batch_normalization/moving_mean
Ă
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
:d*
dtype0*2
_class(
&$loc:@batch_normalization/moving_mean
š
4batch_normalization/moving_variance/Initializer/onesConst*
valueBd*  ?*
_output_shapes
:d*
dtype0*6
_class,
*(loc:@batch_normalization/moving_variance
ç
#batch_normalization/moving_varianceVarHandleOp*4
shared_name%#batch_normalization/moving_variance*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
: *
dtype0*
shape:d*
	container 

Dbatch_normalization/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#batch_normalization/moving_variance*
_output_shapes
: 
Ţ
*batch_normalization/moving_variance/AssignAssignVariableOp#batch_normalization/moving_variance4batch_normalization/moving_variance/Initializer/ones*
dtype0*6
_class,
*(loc:@batch_normalization/moving_variance
Ď
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
:d*
dtype0*6
_class,
*(loc:@batch_normalization/moving_variance
p
.batch_normalization/keras_learning_phase/inputConst*
value	B
 Z *
_output_shapes
: *
dtype0

¤
(batch_normalization/keras_learning_phasePlaceholderWithDefault.batch_normalization/keras_learning_phase/input*
_output_shapes
: *
dtype0
*
shape: 
|
2batch_normalization/moments/mean/reduction_indicesConst*
valueB: *
_output_shapes
:*
dtype0
ł
 batch_normalization/moments/meanMeanhidden1/BiasAdd2batch_normalization/moments/mean/reduction_indices*
	keep_dims(*
T0*
_output_shapes

:d*

Tidx0

(batch_normalization/moments/StopGradientStopGradient batch_normalization/moments/mean*
T0*
_output_shapes

:d
Ż
-batch_normalization/moments/SquaredDifferenceSquaredDifferencehidden1/BiasAdd(batch_normalization/moments/StopGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d

6batch_normalization/moments/variance/reduction_indicesConst*
valueB: *
_output_shapes
:*
dtype0
Ů
$batch_normalization/moments/varianceMean-batch_normalization/moments/SquaredDifference6batch_normalization/moments/variance/reduction_indices*
	keep_dims(*
T0*
_output_shapes

:d*

Tidx0

#batch_normalization/moments/SqueezeSqueeze batch_normalization/moments/mean*
squeeze_dims
 *
T0*
_output_shapes
:d

%batch_normalization/moments/Squeeze_1Squeeze$batch_normalization/moments/variance*
squeeze_dims
 *
T0*
_output_shapes
:d
 
batch_normalization/cond/SwitchSwitch(batch_normalization/keras_learning_phase(batch_normalization/keras_learning_phase*
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
w
 batch_normalization/cond/pred_idIdentity(batch_normalization/keras_learning_phase*
T0
*
_output_shapes
: 
Ő
!batch_normalization/cond/Switch_1Switch#batch_normalization/moments/Squeeze batch_normalization/cond/pred_id*
T0* 
_output_shapes
:d:d*6
_class,
*(loc:@batch_normalization/moments/Squeeze

'batch_normalization/cond/ReadVariableOpReadVariableOp.batch_normalization/cond/ReadVariableOp/Switch*
_output_shapes
:d*
dtype0
Ň
.batch_normalization/cond/ReadVariableOp/SwitchSwitchbatch_normalization/moving_mean batch_normalization/cond/pred_id*
T0*
_output_shapes
: : *2
_class(
&$loc:@batch_normalization/moving_mean
Ľ
batch_normalization/cond/MergeMerge'batch_normalization/cond/ReadVariableOp#batch_normalization/cond/Switch_1:1*
T0*
N*
_output_shapes

:d: 
˘
!batch_normalization/cond_1/SwitchSwitch(batch_normalization/keras_learning_phase(batch_normalization/keras_learning_phase*
T0
*
_output_shapes
: : 
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
y
"batch_normalization/cond_1/pred_idIdentity(batch_normalization/keras_learning_phase*
T0
*
_output_shapes
: 
Ý
#batch_normalization/cond_1/Switch_1Switch%batch_normalization/moments/Squeeze_1"batch_normalization/cond_1/pred_id*
T0* 
_output_shapes
:d:d*8
_class.
,*loc:@batch_normalization/moments/Squeeze_1

)batch_normalization/cond_1/ReadVariableOpReadVariableOp0batch_normalization/cond_1/ReadVariableOp/Switch*
_output_shapes
:d*
dtype0
Ţ
0batch_normalization/cond_1/ReadVariableOp/SwitchSwitch#batch_normalization/moving_variance"batch_normalization/cond_1/pred_id*
T0*
_output_shapes
: : *6
_class,
*(loc:@batch_normalization/moving_variance
Ť
 batch_normalization/cond_1/MergeMerge)batch_normalization/cond_1/ReadVariableOp%batch_normalization/cond_1/Switch_1:1*
T0*
N*
_output_shapes

:d: 
˘
!batch_normalization/cond_2/SwitchSwitch(batch_normalization/keras_learning_phase(batch_normalization/keras_learning_phase*
T0
*
_output_shapes
: : 
u
#batch_normalization/cond_2/switch_tIdentity#batch_normalization/cond_2/Switch:1*
T0
*
_output_shapes
: 
s
#batch_normalization/cond_2/switch_fIdentity!batch_normalization/cond_2/Switch*
T0
*
_output_shapes
: 
y
"batch_normalization/cond_2/pred_idIdentity(batch_normalization/keras_learning_phase*
T0
*
_output_shapes
: 
Â
>batch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOpReadVariableOpGbatch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp/Switch:1*
_output_shapes
:d*
dtype0
ë
Ebatch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp/SwitchSwitchbatch_normalization/moving_mean"batch_normalization/cond_2/pred_id*
T0*
_output_shapes
: : *2
_class(
&$loc:@batch_normalization/moving_mean
¤
3batch_normalization/cond_2/AssignMovingAvg/IdentityIdentity>batch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp*
T0*
_output_shapes
:d
î
0batch_normalization/cond_2/AssignMovingAvg/decayConst$^batch_normalization/cond_2/switch_t*
valueB
 *
×#<*
_output_shapes
: *
dtype0*Q
_classG
ECloc:@batch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp
˝
9batch_normalization/cond_2/AssignMovingAvg/ReadVariableOpReadVariableOpGbatch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp/Switch:1*
_output_shapes
:d*
dtype0
Ą
.batch_normalization/cond_2/AssignMovingAvg/subSub9batch_normalization/cond_2/AssignMovingAvg/ReadVariableOp7batch_normalization/cond_2/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes
:d*Q
_classG
ECloc:@batch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp
á
5batch_normalization/cond_2/AssignMovingAvg/sub/SwitchSwitchbatch_normalization/cond/Merge"batch_normalization/cond_2/pred_id*
T0* 
_output_shapes
:d:d*1
_class'
%#loc:@batch_normalization/cond/Merge

.batch_normalization/cond_2/AssignMovingAvg/mulMul.batch_normalization/cond_2/AssignMovingAvg/sub0batch_normalization/cond_2/AssignMovingAvg/decay*
T0*
_output_shapes
:d*Q
_classG
ECloc:@batch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp
Ž
>batch_normalization/cond_2/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpGbatch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp/Switch:1.batch_normalization/cond_2/AssignMovingAvg/mul*
dtype0*Q
_classG
ECloc:@batch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp
Ó
;batch_normalization/cond_2/AssignMovingAvg/ReadVariableOp_1ReadVariableOpGbatch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp/Switch:1?^batch_normalization/cond_2/AssignMovingAvg/AssignSubVariableOp*
_output_shapes
:d*
dtype0*Q
_classG
ECloc:@batch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp
î
)batch_normalization/cond_2/ReadVariableOpReadVariableOpGbatch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp/Switch:1?^batch_normalization/cond_2/AssignMovingAvg/AssignSubVariableOp*
_output_shapes
:d*
dtype0

+batch_normalization/cond_2/ReadVariableOp_1ReadVariableOp2batch_normalization/cond_2/ReadVariableOp_1/Switch*
_output_shapes
:d*
dtype0
Ř
2batch_normalization/cond_2/ReadVariableOp_1/SwitchSwitchbatch_normalization/moving_mean"batch_normalization/cond_2/pred_id*
T0*
_output_shapes
: : *2
_class(
&$loc:@batch_normalization/moving_mean
ą
 batch_normalization/cond_2/MergeMerge+batch_normalization/cond_2/ReadVariableOp_1)batch_normalization/cond_2/ReadVariableOp*
T0*
N*
_output_shapes

:d: 
˘
!batch_normalization/cond_3/SwitchSwitch(batch_normalization/keras_learning_phase(batch_normalization/keras_learning_phase*
T0
*
_output_shapes
: : 
u
#batch_normalization/cond_3/switch_tIdentity#batch_normalization/cond_3/Switch:1*
T0
*
_output_shapes
: 
s
#batch_normalization/cond_3/switch_fIdentity!batch_normalization/cond_3/Switch*
T0
*
_output_shapes
: 
y
"batch_normalization/cond_3/pred_idIdentity(batch_normalization/keras_learning_phase*
T0
*
_output_shapes
: 
Â
>batch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOpReadVariableOpGbatch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp/Switch:1*
_output_shapes
:d*
dtype0
ó
Ebatch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp/SwitchSwitch#batch_normalization/moving_variance"batch_normalization/cond_3/pred_id*
T0*
_output_shapes
: : *6
_class,
*(loc:@batch_normalization/moving_variance
¤
3batch_normalization/cond_3/AssignMovingAvg/IdentityIdentity>batch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp*
T0*
_output_shapes
:d
î
0batch_normalization/cond_3/AssignMovingAvg/decayConst$^batch_normalization/cond_3/switch_t*
valueB
 *
×#<*
_output_shapes
: *
dtype0*Q
_classG
ECloc:@batch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp
˝
9batch_normalization/cond_3/AssignMovingAvg/ReadVariableOpReadVariableOpGbatch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp/Switch:1*
_output_shapes
:d*
dtype0
Ą
.batch_normalization/cond_3/AssignMovingAvg/subSub9batch_normalization/cond_3/AssignMovingAvg/ReadVariableOp7batch_normalization/cond_3/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes
:d*Q
_classG
ECloc:@batch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp
ĺ
5batch_normalization/cond_3/AssignMovingAvg/sub/SwitchSwitch batch_normalization/cond_1/Merge"batch_normalization/cond_3/pred_id*
T0* 
_output_shapes
:d:d*3
_class)
'%loc:@batch_normalization/cond_1/Merge

.batch_normalization/cond_3/AssignMovingAvg/mulMul.batch_normalization/cond_3/AssignMovingAvg/sub0batch_normalization/cond_3/AssignMovingAvg/decay*
T0*
_output_shapes
:d*Q
_classG
ECloc:@batch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp
Ž
>batch_normalization/cond_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpGbatch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp/Switch:1.batch_normalization/cond_3/AssignMovingAvg/mul*
dtype0*Q
_classG
ECloc:@batch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp
Ó
;batch_normalization/cond_3/AssignMovingAvg/ReadVariableOp_1ReadVariableOpGbatch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp/Switch:1?^batch_normalization/cond_3/AssignMovingAvg/AssignSubVariableOp*
_output_shapes
:d*
dtype0*Q
_classG
ECloc:@batch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp
î
)batch_normalization/cond_3/ReadVariableOpReadVariableOpGbatch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp/Switch:1?^batch_normalization/cond_3/AssignMovingAvg/AssignSubVariableOp*
_output_shapes
:d*
dtype0

+batch_normalization/cond_3/ReadVariableOp_1ReadVariableOp2batch_normalization/cond_3/ReadVariableOp_1/Switch*
_output_shapes
:d*
dtype0
ŕ
2batch_normalization/cond_3/ReadVariableOp_1/SwitchSwitch#batch_normalization/moving_variance"batch_normalization/cond_3/pred_id*
T0*
_output_shapes
: : *6
_class,
*(loc:@batch_normalization/moving_variance
ą
 batch_normalization/cond_3/MergeMerge+batch_normalization/cond_3/ReadVariableOp_1)batch_normalization/cond_3/ReadVariableOp*
T0*
N*
_output_shapes

:d: 
h
#batch_normalization/batchnorm/add/yConst*
valueB
 *o:*
_output_shapes
: *
dtype0

!batch_normalization/batchnorm/addAdd batch_normalization/cond_1/Merge#batch_normalization/batchnorm/add/y*
T0*
_output_shapes
:d
t
#batch_normalization/batchnorm/RsqrtRsqrt!batch_normalization/batchnorm/add*
T0*
_output_shapes
:d

0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
:d*
dtype0
¤
!batch_normalization/batchnorm/mulMul#batch_normalization/batchnorm/Rsqrt0batch_normalization/batchnorm/mul/ReadVariableOp*
T0*
_output_shapes
:d

#batch_normalization/batchnorm/mul_1Mulhidden1/BiasAdd!batch_normalization/batchnorm/mul*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d

#batch_normalization/batchnorm/mul_2Mulbatch_normalization/cond/Merge!batch_normalization/batchnorm/mul*
T0*
_output_shapes
:d

,batch_normalization/batchnorm/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
:d*
dtype0
 
!batch_normalization/batchnorm/subSub,batch_normalization/batchnorm/ReadVariableOp#batch_normalization/batchnorm/mul_2*
T0*
_output_shapes
:d
¤
#batch_normalization/batchnorm/add_1Add#batch_normalization/batchnorm/mul_1!batch_normalization/batchnorm/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
n
activation/ReluRelu#batch_normalization/batchnorm/add_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d

dropout/cond/SwitchSwitch(batch_normalization/keras_learning_phase(batch_normalization/keras_learning_phase*
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
k
dropout/cond/pred_idIdentity(batch_normalization/keras_learning_phase*
T0
*
_output_shapes
: 
{
dropout/cond/dropout/keep_probConst^dropout/cond/switch_t*
valueB
 *ÍĚĚ>*
_output_shapes
: *
dtype0
}
dropout/cond/dropout/ShapeShape#dropout/cond/dropout/Shape/Switch:1*
out_type0*
T0*
_output_shapes
:
ť
!dropout/cond/dropout/Shape/SwitchSwitchactivation/Reludropout/cond/pred_id*
T0*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*"
_class
loc:@activation/Relu

'dropout/cond/dropout/random_uniform/minConst^dropout/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

'dropout/cond/dropout/random_uniform/maxConst^dropout/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
ś
1dropout/cond/dropout/random_uniform/RandomUniformRandomUniformdropout/cond/dropout/Shape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
dtype0*
seed2 *

seed 
Ą
'dropout/cond/dropout/random_uniform/subSub'dropout/cond/dropout/random_uniform/max'dropout/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
ź
'dropout/cond/dropout/random_uniform/mulMul1dropout/cond/dropout/random_uniform/RandomUniform'dropout/cond/dropout/random_uniform/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
Ž
#dropout/cond/dropout/random_uniformAdd'dropout/cond/dropout/random_uniform/mul'dropout/cond/dropout/random_uniform/min*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d

dropout/cond/dropout/addAdddropout/cond/dropout/keep_prob#dropout/cond/dropout/random_uniform*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
o
dropout/cond/dropout/FloorFloordropout/cond/dropout/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d

dropout/cond/dropout/divRealDiv#dropout/cond/dropout/Shape/Switch:1dropout/cond/dropout/keep_prob*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d

dropout/cond/dropout/mulMuldropout/cond/dropout/divdropout/cond/dropout/Floor*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
q
dropout/cond/IdentityIdentitydropout/cond/Identity/Switch*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
ś
dropout/cond/Identity/SwitchSwitchactivation/Reludropout/cond/pred_id*
T0*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*"
_class
loc:@activation/Relu

dropout/cond/MergeMergedropout/cond/Identitydropout/cond/dropout/mul*
T0*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙d: 
Ł
/hidden2/kernel/Initializer/random_uniform/shapeConst*
valueB"d   d   *
_output_shapes
:*
dtype0*!
_class
loc:@hidden2/kernel

-hidden2/kernel/Initializer/random_uniform/minConst*
valueB
 *Ź\1ž*
_output_shapes
: *
dtype0*!
_class
loc:@hidden2/kernel

-hidden2/kernel/Initializer/random_uniform/maxConst*
valueB
 *Ź\1>*
_output_shapes
: *
dtype0*!
_class
loc:@hidden2/kernel
ë
7hidden2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/hidden2/kernel/Initializer/random_uniform/shape*
seed2 *!
_class
loc:@hidden2/kernel*
T0*
_output_shapes

:dd*
dtype0*

seed 
Ö
-hidden2/kernel/Initializer/random_uniform/subSub-hidden2/kernel/Initializer/random_uniform/max-hidden2/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *!
_class
loc:@hidden2/kernel
č
-hidden2/kernel/Initializer/random_uniform/mulMul7hidden2/kernel/Initializer/random_uniform/RandomUniform-hidden2/kernel/Initializer/random_uniform/sub*
T0*
_output_shapes

:dd*!
_class
loc:@hidden2/kernel
Ú
)hidden2/kernel/Initializer/random_uniformAdd-hidden2/kernel/Initializer/random_uniform/mul-hidden2/kernel/Initializer/random_uniform/min*
T0*
_output_shapes

:dd*!
_class
loc:@hidden2/kernel
Ź
hidden2/kernelVarHandleOp*
shared_namehidden2/kernel*!
_class
loc:@hidden2/kernel*
_output_shapes
: *
dtype0*
shape
:dd*
	container 
m
/hidden2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOphidden2/kernel*
_output_shapes
: 

hidden2/kernel/AssignAssignVariableOphidden2/kernel)hidden2/kernel/Initializer/random_uniform*
dtype0*!
_class
loc:@hidden2/kernel

"hidden2/kernel/Read/ReadVariableOpReadVariableOphidden2/kernel*
_output_shapes

:dd*
dtype0*!
_class
loc:@hidden2/kernel

hidden2/bias/Initializer/zerosConst*
valueBd*    *
_output_shapes
:d*
dtype0*
_class
loc:@hidden2/bias
˘
hidden2/biasVarHandleOp*
shared_namehidden2/bias*
_class
loc:@hidden2/bias*
_output_shapes
: *
dtype0*
shape:d*
	container 
i
-hidden2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOphidden2/bias*
_output_shapes
: 

hidden2/bias/AssignAssignVariableOphidden2/biashidden2/bias/Initializer/zeros*
dtype0*
_class
loc:@hidden2/bias

 hidden2/bias/Read/ReadVariableOpReadVariableOphidden2/bias*
_output_shapes
:d*
dtype0*
_class
loc:@hidden2/bias
l
hidden2/MatMul/ReadVariableOpReadVariableOphidden2/kernel*
_output_shapes

:dd*
dtype0
Ł
hidden2/MatMulMatMuldropout/cond/Mergehidden2/MatMul/ReadVariableOp*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
g
hidden2/BiasAdd/ReadVariableOpReadVariableOphidden2/bias*
_output_shapes
:d*
dtype0

hidden2/BiasAddBiasAddhidden2/MatMulhidden2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
Š
,batch_normalization_1/gamma/Initializer/onesConst*
valueBd*  ?*
_output_shapes
:d*
dtype0*.
_class$
" loc:@batch_normalization_1/gamma
Ď
batch_normalization_1/gammaVarHandleOp*,
shared_namebatch_normalization_1/gamma*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
: *
dtype0*
shape:d*
	container 

<batch_normalization_1/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_1/gamma*
_output_shapes
: 
ž
"batch_normalization_1/gamma/AssignAssignVariableOpbatch_normalization_1/gamma,batch_normalization_1/gamma/Initializer/ones*
dtype0*.
_class$
" loc:@batch_normalization_1/gamma
ˇ
/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
:d*
dtype0*.
_class$
" loc:@batch_normalization_1/gamma
¨
,batch_normalization_1/beta/Initializer/zerosConst*
valueBd*    *
_output_shapes
:d*
dtype0*-
_class#
!loc:@batch_normalization_1/beta
Ě
batch_normalization_1/betaVarHandleOp*+
shared_namebatch_normalization_1/beta*-
_class#
!loc:@batch_normalization_1/beta*
_output_shapes
: *
dtype0*
shape:d*
	container 

;batch_normalization_1/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_1/beta*
_output_shapes
: 
ť
!batch_normalization_1/beta/AssignAssignVariableOpbatch_normalization_1/beta,batch_normalization_1/beta/Initializer/zeros*
dtype0*-
_class#
!loc:@batch_normalization_1/beta
´
.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
:d*
dtype0*-
_class#
!loc:@batch_normalization_1/beta
ś
3batch_normalization_1/moving_mean/Initializer/zerosConst*
valueBd*    *
_output_shapes
:d*
dtype0*4
_class*
(&loc:@batch_normalization_1/moving_mean
á
!batch_normalization_1/moving_meanVarHandleOp*2
shared_name#!batch_normalization_1/moving_mean*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
: *
dtype0*
shape:d*
	container 

Bbatch_normalization_1/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp!batch_normalization_1/moving_mean*
_output_shapes
: 
×
(batch_normalization_1/moving_mean/AssignAssignVariableOp!batch_normalization_1/moving_mean3batch_normalization_1/moving_mean/Initializer/zeros*
dtype0*4
_class*
(&loc:@batch_normalization_1/moving_mean
É
5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
:d*
dtype0*4
_class*
(&loc:@batch_normalization_1/moving_mean
˝
6batch_normalization_1/moving_variance/Initializer/onesConst*
valueBd*  ?*
_output_shapes
:d*
dtype0*8
_class.
,*loc:@batch_normalization_1/moving_variance
í
%batch_normalization_1/moving_varianceVarHandleOp*6
shared_name'%batch_normalization_1/moving_variance*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
: *
dtype0*
shape:d*
	container 

Fbatch_normalization_1/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp%batch_normalization_1/moving_variance*
_output_shapes
: 
ć
,batch_normalization_1/moving_variance/AssignAssignVariableOp%batch_normalization_1/moving_variance6batch_normalization_1/moving_variance/Initializer/ones*
dtype0*8
_class.
,*loc:@batch_normalization_1/moving_variance
Ő
9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
:d*
dtype0*8
_class.
,*loc:@batch_normalization_1/moving_variance
~
4batch_normalization_1/moments/mean/reduction_indicesConst*
valueB: *
_output_shapes
:*
dtype0
ˇ
"batch_normalization_1/moments/meanMeanhidden2/BiasAdd4batch_normalization_1/moments/mean/reduction_indices*
	keep_dims(*
T0*
_output_shapes

:d*

Tidx0

*batch_normalization_1/moments/StopGradientStopGradient"batch_normalization_1/moments/mean*
T0*
_output_shapes

:d
ł
/batch_normalization_1/moments/SquaredDifferenceSquaredDifferencehidden2/BiasAdd*batch_normalization_1/moments/StopGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d

8batch_normalization_1/moments/variance/reduction_indicesConst*
valueB: *
_output_shapes
:*
dtype0
ß
&batch_normalization_1/moments/varianceMean/batch_normalization_1/moments/SquaredDifference8batch_normalization_1/moments/variance/reduction_indices*
	keep_dims(*
T0*
_output_shapes

:d*

Tidx0

%batch_normalization_1/moments/SqueezeSqueeze"batch_normalization_1/moments/mean*
squeeze_dims
 *
T0*
_output_shapes
:d

'batch_normalization_1/moments/Squeeze_1Squeeze&batch_normalization_1/moments/variance*
squeeze_dims
 *
T0*
_output_shapes
:d
˘
!batch_normalization_1/cond/SwitchSwitch(batch_normalization/keras_learning_phase(batch_normalization/keras_learning_phase*
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
#batch_normalization_1/cond/switch_fIdentity!batch_normalization_1/cond/Switch*
T0
*
_output_shapes
: 
y
"batch_normalization_1/cond/pred_idIdentity(batch_normalization/keras_learning_phase*
T0
*
_output_shapes
: 
Ý
#batch_normalization_1/cond/Switch_1Switch%batch_normalization_1/moments/Squeeze"batch_normalization_1/cond/pred_id*
T0* 
_output_shapes
:d:d*8
_class.
,*loc:@batch_normalization_1/moments/Squeeze

)batch_normalization_1/cond/ReadVariableOpReadVariableOp0batch_normalization_1/cond/ReadVariableOp/Switch*
_output_shapes
:d*
dtype0
Ú
0batch_normalization_1/cond/ReadVariableOp/SwitchSwitch!batch_normalization_1/moving_mean"batch_normalization_1/cond/pred_id*
T0*
_output_shapes
: : *4
_class*
(&loc:@batch_normalization_1/moving_mean
Ť
 batch_normalization_1/cond/MergeMerge)batch_normalization_1/cond/ReadVariableOp%batch_normalization_1/cond/Switch_1:1*
T0*
N*
_output_shapes

:d: 
¤
#batch_normalization_1/cond_1/SwitchSwitch(batch_normalization/keras_learning_phase(batch_normalization/keras_learning_phase*
T0
*
_output_shapes
: : 
y
%batch_normalization_1/cond_1/switch_tIdentity%batch_normalization_1/cond_1/Switch:1*
T0
*
_output_shapes
: 
w
%batch_normalization_1/cond_1/switch_fIdentity#batch_normalization_1/cond_1/Switch*
T0
*
_output_shapes
: 
{
$batch_normalization_1/cond_1/pred_idIdentity(batch_normalization/keras_learning_phase*
T0
*
_output_shapes
: 
ĺ
%batch_normalization_1/cond_1/Switch_1Switch'batch_normalization_1/moments/Squeeze_1$batch_normalization_1/cond_1/pred_id*
T0* 
_output_shapes
:d:d*:
_class0
.,loc:@batch_normalization_1/moments/Squeeze_1

+batch_normalization_1/cond_1/ReadVariableOpReadVariableOp2batch_normalization_1/cond_1/ReadVariableOp/Switch*
_output_shapes
:d*
dtype0
ć
2batch_normalization_1/cond_1/ReadVariableOp/SwitchSwitch%batch_normalization_1/moving_variance$batch_normalization_1/cond_1/pred_id*
T0*
_output_shapes
: : *8
_class.
,*loc:@batch_normalization_1/moving_variance
ą
"batch_normalization_1/cond_1/MergeMerge+batch_normalization_1/cond_1/ReadVariableOp'batch_normalization_1/cond_1/Switch_1:1*
T0*
N*
_output_shapes

:d: 
¤
#batch_normalization_1/cond_2/SwitchSwitch(batch_normalization/keras_learning_phase(batch_normalization/keras_learning_phase*
T0
*
_output_shapes
: : 
y
%batch_normalization_1/cond_2/switch_tIdentity%batch_normalization_1/cond_2/Switch:1*
T0
*
_output_shapes
: 
w
%batch_normalization_1/cond_2/switch_fIdentity#batch_normalization_1/cond_2/Switch*
T0
*
_output_shapes
: 
{
$batch_normalization_1/cond_2/pred_idIdentity(batch_normalization/keras_learning_phase*
T0
*
_output_shapes
: 
Ć
@batch_normalization_1/cond_2/AssignMovingAvg/Read/ReadVariableOpReadVariableOpIbatch_normalization_1/cond_2/AssignMovingAvg/Read/ReadVariableOp/Switch:1*
_output_shapes
:d*
dtype0
ó
Gbatch_normalization_1/cond_2/AssignMovingAvg/Read/ReadVariableOp/SwitchSwitch!batch_normalization_1/moving_mean$batch_normalization_1/cond_2/pred_id*
T0*
_output_shapes
: : *4
_class*
(&loc:@batch_normalization_1/moving_mean
¨
5batch_normalization_1/cond_2/AssignMovingAvg/IdentityIdentity@batch_normalization_1/cond_2/AssignMovingAvg/Read/ReadVariableOp*
T0*
_output_shapes
:d
ô
2batch_normalization_1/cond_2/AssignMovingAvg/decayConst&^batch_normalization_1/cond_2/switch_t*
valueB
 *
×#<*
_output_shapes
: *
dtype0*S
_classI
GEloc:@batch_normalization_1/cond_2/AssignMovingAvg/Read/ReadVariableOp
Á
;batch_normalization_1/cond_2/AssignMovingAvg/ReadVariableOpReadVariableOpIbatch_normalization_1/cond_2/AssignMovingAvg/Read/ReadVariableOp/Switch:1*
_output_shapes
:d*
dtype0
Š
0batch_normalization_1/cond_2/AssignMovingAvg/subSub;batch_normalization_1/cond_2/AssignMovingAvg/ReadVariableOp9batch_normalization_1/cond_2/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes
:d*S
_classI
GEloc:@batch_normalization_1/cond_2/AssignMovingAvg/Read/ReadVariableOp
é
7batch_normalization_1/cond_2/AssignMovingAvg/sub/SwitchSwitch batch_normalization_1/cond/Merge$batch_normalization_1/cond_2/pred_id*
T0* 
_output_shapes
:d:d*3
_class)
'%loc:@batch_normalization_1/cond/Merge

0batch_normalization_1/cond_2/AssignMovingAvg/mulMul0batch_normalization_1/cond_2/AssignMovingAvg/sub2batch_normalization_1/cond_2/AssignMovingAvg/decay*
T0*
_output_shapes
:d*S
_classI
GEloc:@batch_normalization_1/cond_2/AssignMovingAvg/Read/ReadVariableOp
ś
@batch_normalization_1/cond_2/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpIbatch_normalization_1/cond_2/AssignMovingAvg/Read/ReadVariableOp/Switch:10batch_normalization_1/cond_2/AssignMovingAvg/mul*
dtype0*S
_classI
GEloc:@batch_normalization_1/cond_2/AssignMovingAvg/Read/ReadVariableOp
Ű
=batch_normalization_1/cond_2/AssignMovingAvg/ReadVariableOp_1ReadVariableOpIbatch_normalization_1/cond_2/AssignMovingAvg/Read/ReadVariableOp/Switch:1A^batch_normalization_1/cond_2/AssignMovingAvg/AssignSubVariableOp*
_output_shapes
:d*
dtype0*S
_classI
GEloc:@batch_normalization_1/cond_2/AssignMovingAvg/Read/ReadVariableOp
ô
+batch_normalization_1/cond_2/ReadVariableOpReadVariableOpIbatch_normalization_1/cond_2/AssignMovingAvg/Read/ReadVariableOp/Switch:1A^batch_normalization_1/cond_2/AssignMovingAvg/AssignSubVariableOp*
_output_shapes
:d*
dtype0

-batch_normalization_1/cond_2/ReadVariableOp_1ReadVariableOp4batch_normalization_1/cond_2/ReadVariableOp_1/Switch*
_output_shapes
:d*
dtype0
ŕ
4batch_normalization_1/cond_2/ReadVariableOp_1/SwitchSwitch!batch_normalization_1/moving_mean$batch_normalization_1/cond_2/pred_id*
T0*
_output_shapes
: : *4
_class*
(&loc:@batch_normalization_1/moving_mean
ˇ
"batch_normalization_1/cond_2/MergeMerge-batch_normalization_1/cond_2/ReadVariableOp_1+batch_normalization_1/cond_2/ReadVariableOp*
T0*
N*
_output_shapes

:d: 
¤
#batch_normalization_1/cond_3/SwitchSwitch(batch_normalization/keras_learning_phase(batch_normalization/keras_learning_phase*
T0
*
_output_shapes
: : 
y
%batch_normalization_1/cond_3/switch_tIdentity%batch_normalization_1/cond_3/Switch:1*
T0
*
_output_shapes
: 
w
%batch_normalization_1/cond_3/switch_fIdentity#batch_normalization_1/cond_3/Switch*
T0
*
_output_shapes
: 
{
$batch_normalization_1/cond_3/pred_idIdentity(batch_normalization/keras_learning_phase*
T0
*
_output_shapes
: 
Ć
@batch_normalization_1/cond_3/AssignMovingAvg/Read/ReadVariableOpReadVariableOpIbatch_normalization_1/cond_3/AssignMovingAvg/Read/ReadVariableOp/Switch:1*
_output_shapes
:d*
dtype0
ű
Gbatch_normalization_1/cond_3/AssignMovingAvg/Read/ReadVariableOp/SwitchSwitch%batch_normalization_1/moving_variance$batch_normalization_1/cond_3/pred_id*
T0*
_output_shapes
: : *8
_class.
,*loc:@batch_normalization_1/moving_variance
¨
5batch_normalization_1/cond_3/AssignMovingAvg/IdentityIdentity@batch_normalization_1/cond_3/AssignMovingAvg/Read/ReadVariableOp*
T0*
_output_shapes
:d
ô
2batch_normalization_1/cond_3/AssignMovingAvg/decayConst&^batch_normalization_1/cond_3/switch_t*
valueB
 *
×#<*
_output_shapes
: *
dtype0*S
_classI
GEloc:@batch_normalization_1/cond_3/AssignMovingAvg/Read/ReadVariableOp
Á
;batch_normalization_1/cond_3/AssignMovingAvg/ReadVariableOpReadVariableOpIbatch_normalization_1/cond_3/AssignMovingAvg/Read/ReadVariableOp/Switch:1*
_output_shapes
:d*
dtype0
Š
0batch_normalization_1/cond_3/AssignMovingAvg/subSub;batch_normalization_1/cond_3/AssignMovingAvg/ReadVariableOp9batch_normalization_1/cond_3/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes
:d*S
_classI
GEloc:@batch_normalization_1/cond_3/AssignMovingAvg/Read/ReadVariableOp
í
7batch_normalization_1/cond_3/AssignMovingAvg/sub/SwitchSwitch"batch_normalization_1/cond_1/Merge$batch_normalization_1/cond_3/pred_id*
T0* 
_output_shapes
:d:d*5
_class+
)'loc:@batch_normalization_1/cond_1/Merge

0batch_normalization_1/cond_3/AssignMovingAvg/mulMul0batch_normalization_1/cond_3/AssignMovingAvg/sub2batch_normalization_1/cond_3/AssignMovingAvg/decay*
T0*
_output_shapes
:d*S
_classI
GEloc:@batch_normalization_1/cond_3/AssignMovingAvg/Read/ReadVariableOp
ś
@batch_normalization_1/cond_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpIbatch_normalization_1/cond_3/AssignMovingAvg/Read/ReadVariableOp/Switch:10batch_normalization_1/cond_3/AssignMovingAvg/mul*
dtype0*S
_classI
GEloc:@batch_normalization_1/cond_3/AssignMovingAvg/Read/ReadVariableOp
Ű
=batch_normalization_1/cond_3/AssignMovingAvg/ReadVariableOp_1ReadVariableOpIbatch_normalization_1/cond_3/AssignMovingAvg/Read/ReadVariableOp/Switch:1A^batch_normalization_1/cond_3/AssignMovingAvg/AssignSubVariableOp*
_output_shapes
:d*
dtype0*S
_classI
GEloc:@batch_normalization_1/cond_3/AssignMovingAvg/Read/ReadVariableOp
ô
+batch_normalization_1/cond_3/ReadVariableOpReadVariableOpIbatch_normalization_1/cond_3/AssignMovingAvg/Read/ReadVariableOp/Switch:1A^batch_normalization_1/cond_3/AssignMovingAvg/AssignSubVariableOp*
_output_shapes
:d*
dtype0

-batch_normalization_1/cond_3/ReadVariableOp_1ReadVariableOp4batch_normalization_1/cond_3/ReadVariableOp_1/Switch*
_output_shapes
:d*
dtype0
č
4batch_normalization_1/cond_3/ReadVariableOp_1/SwitchSwitch%batch_normalization_1/moving_variance$batch_normalization_1/cond_3/pred_id*
T0*
_output_shapes
: : *8
_class.
,*loc:@batch_normalization_1/moving_variance
ˇ
"batch_normalization_1/cond_3/MergeMerge-batch_normalization_1/cond_3/ReadVariableOp_1+batch_normalization_1/cond_3/ReadVariableOp*
T0*
N*
_output_shapes

:d: 
j
%batch_normalization_1/batchnorm/add/yConst*
valueB
 *o:*
_output_shapes
: *
dtype0

#batch_normalization_1/batchnorm/addAdd"batch_normalization_1/cond_1/Merge%batch_normalization_1/batchnorm/add/y*
T0*
_output_shapes
:d
x
%batch_normalization_1/batchnorm/RsqrtRsqrt#batch_normalization_1/batchnorm/add*
T0*
_output_shapes
:d

2batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
:d*
dtype0
Ş
#batch_normalization_1/batchnorm/mulMul%batch_normalization_1/batchnorm/Rsqrt2batch_normalization_1/batchnorm/mul/ReadVariableOp*
T0*
_output_shapes
:d

%batch_normalization_1/batchnorm/mul_1Mulhidden2/BiasAdd#batch_normalization_1/batchnorm/mul*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d

%batch_normalization_1/batchnorm/mul_2Mul batch_normalization_1/cond/Merge#batch_normalization_1/batchnorm/mul*
T0*
_output_shapes
:d

.batch_normalization_1/batchnorm/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
:d*
dtype0
Ś
#batch_normalization_1/batchnorm/subSub.batch_normalization_1/batchnorm/ReadVariableOp%batch_normalization_1/batchnorm/mul_2*
T0*
_output_shapes
:d
Ş
%batch_normalization_1/batchnorm/add_1Add%batch_normalization_1/batchnorm/mul_1#batch_normalization_1/batchnorm/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
r
activation_1/ReluRelu%batch_normalization_1/batchnorm/add_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d

dropout_1/cond/SwitchSwitch(batch_normalization/keras_learning_phase(batch_normalization/keras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_1/cond/switch_tIdentitydropout_1/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_1/cond/switch_fIdentitydropout_1/cond/Switch*
T0
*
_output_shapes
: 
m
dropout_1/cond/pred_idIdentity(batch_normalization/keras_learning_phase*
T0
*
_output_shapes
: 

 dropout_1/cond/dropout/keep_probConst^dropout_1/cond/switch_t*
valueB
 *ÍĚĚ>*
_output_shapes
: *
dtype0

dropout_1/cond/dropout/ShapeShape%dropout_1/cond/dropout/Shape/Switch:1*
out_type0*
T0*
_output_shapes
:
Ă
#dropout_1/cond/dropout/Shape/SwitchSwitchactivation_1/Reludropout_1/cond/pred_id*
T0*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*$
_class
loc:@activation_1/Relu

)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
ş
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
dtype0*
seed2 *

seed 
§
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Â
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
´
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d

dropout_1/cond/dropout/addAdd dropout_1/cond/dropout/keep_prob%dropout_1/cond/dropout/random_uniform*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
s
dropout_1/cond/dropout/FloorFloordropout_1/cond/dropout/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
dropout_1/cond/dropout/divRealDiv%dropout_1/cond/dropout/Shape/Switch:1 dropout_1/cond/dropout/keep_prob*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d

dropout_1/cond/dropout/mulMuldropout_1/cond/dropout/divdropout_1/cond/dropout/Floor*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
u
dropout_1/cond/IdentityIdentitydropout_1/cond/Identity/Switch*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
ž
dropout_1/cond/Identity/SwitchSwitchactivation_1/Reludropout_1/cond/pred_id*
T0*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*$
_class
loc:@activation_1/Relu

dropout_1/cond/MergeMergedropout_1/cond/Identitydropout_1/cond/dropout/mul*
T0*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙d: 
Ł
/softmax/kernel/Initializer/random_uniform/shapeConst*
valueB"d      *
_output_shapes
:*
dtype0*!
_class
loc:@softmax/kernel

-softmax/kernel/Initializer/random_uniform/minConst*
valueB
 *Ţ%wž*
_output_shapes
: *
dtype0*!
_class
loc:@softmax/kernel

-softmax/kernel/Initializer/random_uniform/maxConst*
valueB
 *Ţ%w>*
_output_shapes
: *
dtype0*!
_class
loc:@softmax/kernel
ë
7softmax/kernel/Initializer/random_uniform/RandomUniformRandomUniform/softmax/kernel/Initializer/random_uniform/shape*
seed2 *!
_class
loc:@softmax/kernel*
T0*
_output_shapes

:d*
dtype0*

seed 
Ö
-softmax/kernel/Initializer/random_uniform/subSub-softmax/kernel/Initializer/random_uniform/max-softmax/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *!
_class
loc:@softmax/kernel
č
-softmax/kernel/Initializer/random_uniform/mulMul7softmax/kernel/Initializer/random_uniform/RandomUniform-softmax/kernel/Initializer/random_uniform/sub*
T0*
_output_shapes

:d*!
_class
loc:@softmax/kernel
Ú
)softmax/kernel/Initializer/random_uniformAdd-softmax/kernel/Initializer/random_uniform/mul-softmax/kernel/Initializer/random_uniform/min*
T0*
_output_shapes

:d*!
_class
loc:@softmax/kernel
Ź
softmax/kernelVarHandleOp*
shared_namesoftmax/kernel*!
_class
loc:@softmax/kernel*
_output_shapes
: *
dtype0*
shape
:d*
	container 
m
/softmax/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpsoftmax/kernel*
_output_shapes
: 

softmax/kernel/AssignAssignVariableOpsoftmax/kernel)softmax/kernel/Initializer/random_uniform*
dtype0*!
_class
loc:@softmax/kernel

"softmax/kernel/Read/ReadVariableOpReadVariableOpsoftmax/kernel*
_output_shapes

:d*
dtype0*!
_class
loc:@softmax/kernel

softmax/bias/Initializer/zerosConst*
valueB*    *
_output_shapes
:*
dtype0*
_class
loc:@softmax/bias
˘
softmax/biasVarHandleOp*
shared_namesoftmax/bias*
_class
loc:@softmax/bias*
_output_shapes
: *
dtype0*
shape:*
	container 
i
-softmax/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpsoftmax/bias*
_output_shapes
: 

softmax/bias/AssignAssignVariableOpsoftmax/biassoftmax/bias/Initializer/zeros*
dtype0*
_class
loc:@softmax/bias

 softmax/bias/Read/ReadVariableOpReadVariableOpsoftmax/bias*
_output_shapes
:*
dtype0*
_class
loc:@softmax/bias
l
softmax/MatMul/ReadVariableOpReadVariableOpsoftmax/kernel*
_output_shapes

:d*
dtype0
Ľ
softmax/MatMulMatMuldropout_1/cond/Mergesoftmax/MatMul/ReadVariableOp*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
g
softmax/BiasAdd/ReadVariableOpReadVariableOpsoftmax/bias*
_output_shapes
:*
dtype0

softmax/BiasAddBiasAddsoftmax/MatMulsoftmax/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
softmax/SoftmaxSoftmaxsoftmax/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
\
PlaceholderPlaceholder*
_output_shapes

:d*
dtype0*
shape
:d
N
AssignVariableOpAssignVariableOphidden1/kernelPlaceholder*
dtype0
p
ReadVariableOpReadVariableOphidden1/kernel^AssignVariableOp*
_output_shapes

:d*
dtype0
V
Placeholder_1Placeholder*
_output_shapes
:d*
dtype0*
shape:d
P
AssignVariableOp_1AssignVariableOphidden1/biasPlaceholder_1*
dtype0
n
ReadVariableOp_1ReadVariableOphidden1/bias^AssignVariableOp_1*
_output_shapes
:d*
dtype0
V
Placeholder_2Placeholder*
_output_shapes
:d*
dtype0*
shape:d
]
AssignVariableOp_2AssignVariableOpbatch_normalization/gammaPlaceholder_2*
dtype0
{
ReadVariableOp_2ReadVariableOpbatch_normalization/gamma^AssignVariableOp_2*
_output_shapes
:d*
dtype0
V
Placeholder_3Placeholder*
_output_shapes
:d*
dtype0*
shape:d
\
AssignVariableOp_3AssignVariableOpbatch_normalization/betaPlaceholder_3*
dtype0
z
ReadVariableOp_3ReadVariableOpbatch_normalization/beta^AssignVariableOp_3*
_output_shapes
:d*
dtype0
V
Placeholder_4Placeholder*
_output_shapes
:d*
dtype0*
shape:d
c
AssignVariableOp_4AssignVariableOpbatch_normalization/moving_meanPlaceholder_4*
dtype0

ReadVariableOp_4ReadVariableOpbatch_normalization/moving_mean^AssignVariableOp_4*
_output_shapes
:d*
dtype0
V
Placeholder_5Placeholder*
_output_shapes
:d*
dtype0*
shape:d
g
AssignVariableOp_5AssignVariableOp#batch_normalization/moving_variancePlaceholder_5*
dtype0

ReadVariableOp_5ReadVariableOp#batch_normalization/moving_variance^AssignVariableOp_5*
_output_shapes
:d*
dtype0
^
Placeholder_6Placeholder*
_output_shapes

:dd*
dtype0*
shape
:dd
R
AssignVariableOp_6AssignVariableOphidden2/kernelPlaceholder_6*
dtype0
t
ReadVariableOp_6ReadVariableOphidden2/kernel^AssignVariableOp_6*
_output_shapes

:dd*
dtype0
V
Placeholder_7Placeholder*
_output_shapes
:d*
dtype0*
shape:d
P
AssignVariableOp_7AssignVariableOphidden2/biasPlaceholder_7*
dtype0
n
ReadVariableOp_7ReadVariableOphidden2/bias^AssignVariableOp_7*
_output_shapes
:d*
dtype0
V
Placeholder_8Placeholder*
_output_shapes
:d*
dtype0*
shape:d
_
AssignVariableOp_8AssignVariableOpbatch_normalization_1/gammaPlaceholder_8*
dtype0
}
ReadVariableOp_8ReadVariableOpbatch_normalization_1/gamma^AssignVariableOp_8*
_output_shapes
:d*
dtype0
V
Placeholder_9Placeholder*
_output_shapes
:d*
dtype0*
shape:d
^
AssignVariableOp_9AssignVariableOpbatch_normalization_1/betaPlaceholder_9*
dtype0
|
ReadVariableOp_9ReadVariableOpbatch_normalization_1/beta^AssignVariableOp_9*
_output_shapes
:d*
dtype0
W
Placeholder_10Placeholder*
_output_shapes
:d*
dtype0*
shape:d
g
AssignVariableOp_10AssignVariableOp!batch_normalization_1/moving_meanPlaceholder_10*
dtype0

ReadVariableOp_10ReadVariableOp!batch_normalization_1/moving_mean^AssignVariableOp_10*
_output_shapes
:d*
dtype0
W
Placeholder_11Placeholder*
_output_shapes
:d*
dtype0*
shape:d
k
AssignVariableOp_11AssignVariableOp%batch_normalization_1/moving_variancePlaceholder_11*
dtype0

ReadVariableOp_11ReadVariableOp%batch_normalization_1/moving_variance^AssignVariableOp_11*
_output_shapes
:d*
dtype0
_
Placeholder_12Placeholder*
_output_shapes

:d*
dtype0*
shape
:d
T
AssignVariableOp_12AssignVariableOpsoftmax/kernelPlaceholder_12*
dtype0
v
ReadVariableOp_12ReadVariableOpsoftmax/kernel^AssignVariableOp_12*
_output_shapes

:d*
dtype0
W
Placeholder_13Placeholder*
_output_shapes
:*
dtype0*
shape:
R
AssignVariableOp_13AssignVariableOpsoftmax/biasPlaceholder_13*
dtype0
p
ReadVariableOp_13ReadVariableOpsoftmax/bias^AssignVariableOp_13*
_output_shapes
:*
dtype0
P
VarIsInitializedOpVarIsInitializedOphidden1/kernel*
_output_shapes
: 
P
VarIsInitializedOp_1VarIsInitializedOphidden1/bias*
_output_shapes
: 
]
VarIsInitializedOp_2VarIsInitializedOpbatch_normalization/gamma*
_output_shapes
: 
\
VarIsInitializedOp_3VarIsInitializedOpbatch_normalization/beta*
_output_shapes
: 
c
VarIsInitializedOp_4VarIsInitializedOpbatch_normalization/moving_mean*
_output_shapes
: 
g
VarIsInitializedOp_5VarIsInitializedOp#batch_normalization/moving_variance*
_output_shapes
: 
R
VarIsInitializedOp_6VarIsInitializedOphidden2/kernel*
_output_shapes
: 
P
VarIsInitializedOp_7VarIsInitializedOphidden2/bias*
_output_shapes
: 
_
VarIsInitializedOp_8VarIsInitializedOpbatch_normalization_1/gamma*
_output_shapes
: 
^
VarIsInitializedOp_9VarIsInitializedOpbatch_normalization_1/beta*
_output_shapes
: 
f
VarIsInitializedOp_10VarIsInitializedOp!batch_normalization_1/moving_mean*
_output_shapes
: 
j
VarIsInitializedOp_11VarIsInitializedOp%batch_normalization_1/moving_variance*
_output_shapes
: 
S
VarIsInitializedOp_12VarIsInitializedOpsoftmax/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_13VarIsInitializedOpsoftmax/bias*
_output_shapes
: 
Ô
initNoOp ^batch_normalization/beta/Assign!^batch_normalization/gamma/Assign'^batch_normalization/moving_mean/Assign+^batch_normalization/moving_variance/Assign"^batch_normalization_1/beta/Assign#^batch_normalization_1/gamma/Assign)^batch_normalization_1/moving_mean/Assign-^batch_normalization_1/moving_variance/Assign^hidden1/bias/Assign^hidden1/kernel/Assign^hidden2/bias/Assign^hidden2/kernel/Assign^softmax/bias/Assign^softmax/kernel/Assign
k
)Adam/iterations/Initializer/initial_valueConst*
value	B	 R *
_output_shapes
: *
dtype0	

Adam/iterationsVarHandleOp*
_output_shapes
: *
dtype0	* 
shared_nameAdam/iterations*
	container *
shape: 
o
0Adam/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/iterations*
_output_shapes
: 

Adam/iterations/AssignAssignVariableOpAdam/iterations)Adam/iterations/Initializer/initial_value*
dtype0	*"
_class
loc:@Adam/iterations

#Adam/iterations/Read/ReadVariableOpReadVariableOpAdam/iterations*
_output_shapes
: *
dtype0	*"
_class
loc:@Adam/iterations
f
!Adam/lr/Initializer/initial_valueConst*
valueB
 *o:*
_output_shapes
: *
dtype0
s
Adam/lrVarHandleOp*
_output_shapes
: *
dtype0*
shared_name	Adam/lr*
	container *
shape: 
_
(Adam/lr/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/lr*
_output_shapes
: 
w
Adam/lr/AssignAssignVariableOpAdam/lr!Adam/lr/Initializer/initial_value*
dtype0*
_class
loc:@Adam/lr
w
Adam/lr/Read/ReadVariableOpReadVariableOpAdam/lr*
_output_shapes
: *
dtype0*
_class
loc:@Adam/lr
j
%Adam/beta_1/Initializer/initial_valueConst*
valueB
 *fff?*
_output_shapes
: *
dtype0
{
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shared_nameAdam/beta_1*
	container *
shape: 
g
,Adam/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_1*
_output_shapes
: 

Adam/beta_1/AssignAssignVariableOpAdam/beta_1%Adam/beta_1/Initializer/initial_value*
dtype0*
_class
loc:@Adam/beta_1

Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0*
_class
loc:@Adam/beta_1
j
%Adam/beta_2/Initializer/initial_valueConst*
valueB
 *wž?*
_output_shapes
: *
dtype0
{
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shared_nameAdam/beta_2*
	container *
shape: 
g
,Adam/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_2*
_output_shapes
: 

Adam/beta_2/AssignAssignVariableOpAdam/beta_2%Adam/beta_2/Initializer/initial_value*
dtype0*
_class
loc:@Adam/beta_2

Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0*
_class
loc:@Adam/beta_2
i
$Adam/decay/Initializer/initial_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
y

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shared_name
Adam/decay*
	container *
shape: 
e
+Adam/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Adam/decay*
_output_shapes
: 

Adam/decay/AssignAssignVariableOp
Adam/decay$Adam/decay/Initializer/initial_value*
dtype0*
_class
loc:@Adam/decay

Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0*
_class
loc:@Adam/decay

softmax_targetPlaceholder*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
dtype0*%
shape:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
R
ConstConst*
valueB*  ?*
_output_shapes
:*
dtype0

softmax_sample_weightsPlaceholderWithDefaultConst*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
\
loss/softmax_loss/ConstConst*
valueB
 *żÖ3*
_output_shapes
: *
dtype0
\
loss/softmax_loss/sub/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
o
loss/softmax_loss/subSubloss/softmax_loss/sub/xloss/softmax_loss/Const*
T0*
_output_shapes
: 

'loss/softmax_loss/clip_by_value/MinimumMinimumsoftmax/Softmaxloss/softmax_loss/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

loss/softmax_loss/clip_by_valueMaximum'loss/softmax_loss/clip_by_value/Minimumloss/softmax_loss/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
loss/softmax_loss/LogLogloss/softmax_loss/clip_by_value*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
loss/softmax_loss/Reshape/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:*
dtype0

loss/softmax_loss/ReshapeReshapesoftmax_targetloss/softmax_loss/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
v
loss/softmax_loss/CastCastloss/softmax_loss/Reshape*

DstT0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

SrcT0
r
!loss/softmax_loss/Reshape_1/shapeConst*
valueB"˙˙˙˙   *
_output_shapes
:*
dtype0
 
loss/softmax_loss/Reshape_1Reshapeloss/softmax_loss/Log!loss/softmax_loss/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

;loss/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShapeloss/softmax_loss/Cast*
out_type0*
T0	*
_output_shapes
:

Yloss/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsloss/softmax_loss/Reshape_1loss/softmax_loss/Cast*
T0*6
_output_shapes$
":˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
Tlabels0	
k
(loss/softmax_loss/Mean/reduction_indicesConst*
valueB *
_output_shapes
: *
dtype0
î
loss/softmax_loss/MeanMeanYloss/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits(loss/softmax_loss/Mean/reduction_indices*
	keep_dims( *
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
z
loss/softmax_loss/mulMulloss/softmax_loss/Meansoftmax_sample_weights*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
a
loss/softmax_loss/NotEqual/yConst*
valueB
 *    *
_output_shapes
: *
dtype0

loss/softmax_loss/NotEqualNotEqualsoftmax_sample_weightsloss/softmax_loss/NotEqual/y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
loss/softmax_loss/Cast_1Castloss/softmax_loss/NotEqual*

DstT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

SrcT0

c
loss/softmax_loss/Const_1Const*
valueB: *
_output_shapes
:*
dtype0

loss/softmax_loss/Mean_1Meanloss/softmax_loss/Cast_1loss/softmax_loss/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0

loss/softmax_loss/truedivRealDivloss/softmax_loss/mulloss/softmax_loss/Mean_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
loss/softmax_loss/Const_2Const*
valueB: *
_output_shapes
:*
dtype0

loss/softmax_loss/Mean_2Meanloss/softmax_loss/truedivloss/softmax_loss/Const_2*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
O

loss/mul/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
V
loss/mulMul
loss/mul/xloss/softmax_loss/Mean_2*
T0*
_output_shapes
: 
l
!metrics/acc/Max/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: *
dtype0

metrics/acc/MaxMaxsoftmax_target!metrics/acc/Max/reduction_indices*
	keep_dims( *
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
g
metrics/acc/ArgMax/dimensionConst*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: *
dtype0

metrics/acc/ArgMaxArgMaxsoftmax/Softmaxmetrics/acc/ArgMax/dimension*
output_type0	*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
i
metrics/acc/CastCastmetrics/acc/ArgMax*

DstT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

SrcT0	
k
metrics/acc/EqualEqualmetrics/acc/Maxmetrics/acc/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
metrics/acc/Cast_1Castmetrics/acc/Equal*

DstT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

SrcT0

[
metrics/acc/ConstConst*
valueB: *
_output_shapes
:*
dtype0
}
metrics/acc/MeanMeanmetrics/acc/Cast_1metrics/acc/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
}
training/Adam/gradients/ShapeConst*
valueB *
_output_shapes
: *
dtype0*
_class
loc:@loss/mul

!training/Adam/gradients/grad_ys_0Const*
valueB
 *  ?*
_output_shapes
: *
dtype0*
_class
loc:@loss/mul
ś
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
T0*
_output_shapes
: *

index_type0*
_class
loc:@loss/mul
Ś
)training/Adam/gradients/loss/mul_grad/MulMultraining/Adam/gradients/Fillloss/softmax_loss/Mean_2*
T0*
_output_shapes
: *
_class
loc:@loss/mul

+training/Adam/gradients/loss/mul_grad/Mul_1Multraining/Adam/gradients/Fill
loss/mul/x*
T0*
_output_shapes
: *
_class
loc:@loss/mul
ş
Ctraining/Adam/gradients/loss/softmax_loss/Mean_2_grad/Reshape/shapeConst*
valueB:*
_output_shapes
:*
dtype0*+
_class!
loc:@loss/softmax_loss/Mean_2

=training/Adam/gradients/loss/softmax_loss/Mean_2_grad/ReshapeReshape+training/Adam/gradients/loss/mul_grad/Mul_1Ctraining/Adam/gradients/loss/softmax_loss/Mean_2_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:*+
_class!
loc:@loss/softmax_loss/Mean_2
Á
;training/Adam/gradients/loss/softmax_loss/Mean_2_grad/ShapeShapeloss/softmax_loss/truediv*
out_type0*
T0*
_output_shapes
:*+
_class!
loc:@loss/softmax_loss/Mean_2
Ť
:training/Adam/gradients/loss/softmax_loss/Mean_2_grad/TileTile=training/Adam/gradients/loss/softmax_loss/Mean_2_grad/Reshape;training/Adam/gradients/loss/softmax_loss/Mean_2_grad/Shape*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0*+
_class!
loc:@loss/softmax_loss/Mean_2
Ă
=training/Adam/gradients/loss/softmax_loss/Mean_2_grad/Shape_1Shapeloss/softmax_loss/truediv*
out_type0*
T0*
_output_shapes
:*+
_class!
loc:@loss/softmax_loss/Mean_2
­
=training/Adam/gradients/loss/softmax_loss/Mean_2_grad/Shape_2Const*
valueB *
_output_shapes
: *
dtype0*+
_class!
loc:@loss/softmax_loss/Mean_2
˛
;training/Adam/gradients/loss/softmax_loss/Mean_2_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0*+
_class!
loc:@loss/softmax_loss/Mean_2
Š
:training/Adam/gradients/loss/softmax_loss/Mean_2_grad/ProdProd=training/Adam/gradients/loss/softmax_loss/Mean_2_grad/Shape_1;training/Adam/gradients/loss/softmax_loss/Mean_2_grad/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*+
_class!
loc:@loss/softmax_loss/Mean_2
´
=training/Adam/gradients/loss/softmax_loss/Mean_2_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0*+
_class!
loc:@loss/softmax_loss/Mean_2
­
<training/Adam/gradients/loss/softmax_loss/Mean_2_grad/Prod_1Prod=training/Adam/gradients/loss/softmax_loss/Mean_2_grad/Shape_2=training/Adam/gradients/loss/softmax_loss/Mean_2_grad/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*+
_class!
loc:@loss/softmax_loss/Mean_2
Ž
?training/Adam/gradients/loss/softmax_loss/Mean_2_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0*+
_class!
loc:@loss/softmax_loss/Mean_2

=training/Adam/gradients/loss/softmax_loss/Mean_2_grad/MaximumMaximum<training/Adam/gradients/loss/softmax_loss/Mean_2_grad/Prod_1?training/Adam/gradients/loss/softmax_loss/Mean_2_grad/Maximum/y*
T0*
_output_shapes
: *+
_class!
loc:@loss/softmax_loss/Mean_2

>training/Adam/gradients/loss/softmax_loss/Mean_2_grad/floordivFloorDiv:training/Adam/gradients/loss/softmax_loss/Mean_2_grad/Prod=training/Adam/gradients/loss/softmax_loss/Mean_2_grad/Maximum*
T0*
_output_shapes
: *+
_class!
loc:@loss/softmax_loss/Mean_2
ß
:training/Adam/gradients/loss/softmax_loss/Mean_2_grad/CastCast>training/Adam/gradients/loss/softmax_loss/Mean_2_grad/floordiv*

DstT0*
_output_shapes
: *+
_class!
loc:@loss/softmax_loss/Mean_2*

SrcT0

=training/Adam/gradients/loss/softmax_loss/Mean_2_grad/truedivRealDiv:training/Adam/gradients/loss/softmax_loss/Mean_2_grad/Tile:training/Adam/gradients/loss/softmax_loss/Mean_2_grad/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*+
_class!
loc:@loss/softmax_loss/Mean_2
ż
<training/Adam/gradients/loss/softmax_loss/truediv_grad/ShapeShapeloss/softmax_loss/mul*
out_type0*
T0*
_output_shapes
:*,
_class"
 loc:@loss/softmax_loss/truediv
Ż
>training/Adam/gradients/loss/softmax_loss/truediv_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0*,
_class"
 loc:@loss/softmax_loss/truediv
Î
Ltraining/Adam/gradients/loss/softmax_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs<training/Adam/gradients/loss/softmax_loss/truediv_grad/Shape>training/Adam/gradients/loss/softmax_loss/truediv_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*,
_class"
 loc:@loss/softmax_loss/truediv
ţ
>training/Adam/gradients/loss/softmax_loss/truediv_grad/RealDivRealDiv=training/Adam/gradients/loss/softmax_loss/Mean_2_grad/truedivloss/softmax_loss/Mean_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*,
_class"
 loc:@loss/softmax_loss/truediv
˝
:training/Adam/gradients/loss/softmax_loss/truediv_grad/SumSum>training/Adam/gradients/loss/softmax_loss/truediv_grad/RealDivLtraining/Adam/gradients/loss/softmax_loss/truediv_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*,
_class"
 loc:@loss/softmax_loss/truediv
­
>training/Adam/gradients/loss/softmax_loss/truediv_grad/ReshapeReshape:training/Adam/gradients/loss/softmax_loss/truediv_grad/Sum<training/Adam/gradients/loss/softmax_loss/truediv_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*,
_class"
 loc:@loss/softmax_loss/truediv
´
:training/Adam/gradients/loss/softmax_loss/truediv_grad/NegNegloss/softmax_loss/mul*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*,
_class"
 loc:@loss/softmax_loss/truediv
ý
@training/Adam/gradients/loss/softmax_loss/truediv_grad/RealDiv_1RealDiv:training/Adam/gradients/loss/softmax_loss/truediv_grad/Negloss/softmax_loss/Mean_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*,
_class"
 loc:@loss/softmax_loss/truediv

@training/Adam/gradients/loss/softmax_loss/truediv_grad/RealDiv_2RealDiv@training/Adam/gradients/loss/softmax_loss/truediv_grad/RealDiv_1loss/softmax_loss/Mean_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*,
_class"
 loc:@loss/softmax_loss/truediv

:training/Adam/gradients/loss/softmax_loss/truediv_grad/mulMul=training/Adam/gradients/loss/softmax_loss/Mean_2_grad/truediv@training/Adam/gradients/loss/softmax_loss/truediv_grad/RealDiv_2*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*,
_class"
 loc:@loss/softmax_loss/truediv
˝
<training/Adam/gradients/loss/softmax_loss/truediv_grad/Sum_1Sum:training/Adam/gradients/loss/softmax_loss/truediv_grad/mulNtraining/Adam/gradients/loss/softmax_loss/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*,
_class"
 loc:@loss/softmax_loss/truediv
Ś
@training/Adam/gradients/loss/softmax_loss/truediv_grad/Reshape_1Reshape<training/Adam/gradients/loss/softmax_loss/truediv_grad/Sum_1>training/Adam/gradients/loss/softmax_loss/truediv_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: *,
_class"
 loc:@loss/softmax_loss/truediv
¸
8training/Adam/gradients/loss/softmax_loss/mul_grad/ShapeShapeloss/softmax_loss/Mean*
out_type0*
T0*
_output_shapes
:*(
_class
loc:@loss/softmax_loss/mul
ş
:training/Adam/gradients/loss/softmax_loss/mul_grad/Shape_1Shapesoftmax_sample_weights*
out_type0*
T0*
_output_shapes
:*(
_class
loc:@loss/softmax_loss/mul
ž
Htraining/Adam/gradients/loss/softmax_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8training/Adam/gradients/loss/softmax_loss/mul_grad/Shape:training/Adam/gradients/loss/softmax_loss/mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*(
_class
loc:@loss/softmax_loss/mul
í
6training/Adam/gradients/loss/softmax_loss/mul_grad/MulMul>training/Adam/gradients/loss/softmax_loss/truediv_grad/Reshapesoftmax_sample_weights*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*(
_class
loc:@loss/softmax_loss/mul
Š
6training/Adam/gradients/loss/softmax_loss/mul_grad/SumSum6training/Adam/gradients/loss/softmax_loss/mul_grad/MulHtraining/Adam/gradients/loss/softmax_loss/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*(
_class
loc:@loss/softmax_loss/mul

:training/Adam/gradients/loss/softmax_loss/mul_grad/ReshapeReshape6training/Adam/gradients/loss/softmax_loss/mul_grad/Sum8training/Adam/gradients/loss/softmax_loss/mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*(
_class
loc:@loss/softmax_loss/mul
ď
8training/Adam/gradients/loss/softmax_loss/mul_grad/Mul_1Mulloss/softmax_loss/Mean>training/Adam/gradients/loss/softmax_loss/truediv_grad/Reshape*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*(
_class
loc:@loss/softmax_loss/mul
Ż
8training/Adam/gradients/loss/softmax_loss/mul_grad/Sum_1Sum8training/Adam/gradients/loss/softmax_loss/mul_grad/Mul_1Jtraining/Adam/gradients/loss/softmax_loss/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*(
_class
loc:@loss/softmax_loss/mul
Ł
<training/Adam/gradients/loss/softmax_loss/mul_grad/Reshape_1Reshape8training/Adam/gradients/loss/softmax_loss/mul_grad/Sum_1:training/Adam/gradients/loss/softmax_loss/mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*(
_class
loc:@loss/softmax_loss/mul
ý
9training/Adam/gradients/loss/softmax_loss/Mean_grad/ShapeShapeYloss/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
out_type0*
T0*
_output_shapes
:*)
_class
loc:@loss/softmax_loss/Mean
Ľ
8training/Adam/gradients/loss/softmax_loss/Mean_grad/SizeConst*
value	B :*
_output_shapes
: *
dtype0*)
_class
loc:@loss/softmax_loss/Mean
đ
7training/Adam/gradients/loss/softmax_loss/Mean_grad/addAdd(loss/softmax_loss/Mean/reduction_indices8training/Adam/gradients/loss/softmax_loss/Mean_grad/Size*
T0*
_output_shapes
: *)
_class
loc:@loss/softmax_loss/Mean

7training/Adam/gradients/loss/softmax_loss/Mean_grad/modFloorMod7training/Adam/gradients/loss/softmax_loss/Mean_grad/add8training/Adam/gradients/loss/softmax_loss/Mean_grad/Size*
T0*
_output_shapes
: *)
_class
loc:@loss/softmax_loss/Mean
°
;training/Adam/gradients/loss/softmax_loss/Mean_grad/Shape_1Const*
valueB: *
_output_shapes
:*
dtype0*)
_class
loc:@loss/softmax_loss/Mean
Ź
?training/Adam/gradients/loss/softmax_loss/Mean_grad/range/startConst*
value	B : *
_output_shapes
: *
dtype0*)
_class
loc:@loss/softmax_loss/Mean
Ź
?training/Adam/gradients/loss/softmax_loss/Mean_grad/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0*)
_class
loc:@loss/softmax_loss/Mean
Ń
9training/Adam/gradients/loss/softmax_loss/Mean_grad/rangeRange?training/Adam/gradients/loss/softmax_loss/Mean_grad/range/start8training/Adam/gradients/loss/softmax_loss/Mean_grad/Size?training/Adam/gradients/loss/softmax_loss/Mean_grad/range/delta*
_output_shapes
:*

Tidx0*)
_class
loc:@loss/softmax_loss/Mean
Ť
>training/Adam/gradients/loss/softmax_loss/Mean_grad/Fill/valueConst*
value	B :*
_output_shapes
: *
dtype0*)
_class
loc:@loss/softmax_loss/Mean

8training/Adam/gradients/loss/softmax_loss/Mean_grad/FillFill;training/Adam/gradients/loss/softmax_loss/Mean_grad/Shape_1>training/Adam/gradients/loss/softmax_loss/Mean_grad/Fill/value*
T0*
_output_shapes
: *

index_type0*)
_class
loc:@loss/softmax_loss/Mean

Atraining/Adam/gradients/loss/softmax_loss/Mean_grad/DynamicStitchDynamicStitch9training/Adam/gradients/loss/softmax_loss/Mean_grad/range7training/Adam/gradients/loss/softmax_loss/Mean_grad/mod9training/Adam/gradients/loss/softmax_loss/Mean_grad/Shape8training/Adam/gradients/loss/softmax_loss/Mean_grad/Fill*
T0*
N*
_output_shapes
:*)
_class
loc:@loss/softmax_loss/Mean
Ş
=training/Adam/gradients/loss/softmax_loss/Mean_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0*)
_class
loc:@loss/softmax_loss/Mean

;training/Adam/gradients/loss/softmax_loss/Mean_grad/MaximumMaximumAtraining/Adam/gradients/loss/softmax_loss/Mean_grad/DynamicStitch=training/Adam/gradients/loss/softmax_loss/Mean_grad/Maximum/y*
T0*
_output_shapes
:*)
_class
loc:@loss/softmax_loss/Mean

<training/Adam/gradients/loss/softmax_loss/Mean_grad/floordivFloorDiv9training/Adam/gradients/loss/softmax_loss/Mean_grad/Shape;training/Adam/gradients/loss/softmax_loss/Mean_grad/Maximum*
T0*
_output_shapes
:*)
_class
loc:@loss/softmax_loss/Mean
Ź
;training/Adam/gradients/loss/softmax_loss/Mean_grad/ReshapeReshape:training/Adam/gradients/loss/softmax_loss/mul_grad/ReshapeAtraining/Adam/gradients/loss/softmax_loss/Mean_grad/DynamicStitch*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*)
_class
loc:@loss/softmax_loss/Mean
Ś
8training/Adam/gradients/loss/softmax_loss/Mean_grad/TileTile;training/Adam/gradients/loss/softmax_loss/Mean_grad/Reshape<training/Adam/gradients/loss/softmax_loss/Mean_grad/floordiv*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0*)
_class
loc:@loss/softmax_loss/Mean
˙
;training/Adam/gradients/loss/softmax_loss/Mean_grad/Shape_2ShapeYloss/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
out_type0*
T0*
_output_shapes
:*)
_class
loc:@loss/softmax_loss/Mean
ź
;training/Adam/gradients/loss/softmax_loss/Mean_grad/Shape_3Shapeloss/softmax_loss/Mean*
out_type0*
T0*
_output_shapes
:*)
_class
loc:@loss/softmax_loss/Mean
Ž
9training/Adam/gradients/loss/softmax_loss/Mean_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0*)
_class
loc:@loss/softmax_loss/Mean
Ą
8training/Adam/gradients/loss/softmax_loss/Mean_grad/ProdProd;training/Adam/gradients/loss/softmax_loss/Mean_grad/Shape_29training/Adam/gradients/loss/softmax_loss/Mean_grad/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*)
_class
loc:@loss/softmax_loss/Mean
°
;training/Adam/gradients/loss/softmax_loss/Mean_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0*)
_class
loc:@loss/softmax_loss/Mean
Ľ
:training/Adam/gradients/loss/softmax_loss/Mean_grad/Prod_1Prod;training/Adam/gradients/loss/softmax_loss/Mean_grad/Shape_3;training/Adam/gradients/loss/softmax_loss/Mean_grad/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*)
_class
loc:@loss/softmax_loss/Mean
Ź
?training/Adam/gradients/loss/softmax_loss/Mean_grad/Maximum_1/yConst*
value	B :*
_output_shapes
: *
dtype0*)
_class
loc:@loss/softmax_loss/Mean

=training/Adam/gradients/loss/softmax_loss/Mean_grad/Maximum_1Maximum:training/Adam/gradients/loss/softmax_loss/Mean_grad/Prod_1?training/Adam/gradients/loss/softmax_loss/Mean_grad/Maximum_1/y*
T0*
_output_shapes
: *)
_class
loc:@loss/softmax_loss/Mean

>training/Adam/gradients/loss/softmax_loss/Mean_grad/floordiv_1FloorDiv8training/Adam/gradients/loss/softmax_loss/Mean_grad/Prod=training/Adam/gradients/loss/softmax_loss/Mean_grad/Maximum_1*
T0*
_output_shapes
: *)
_class
loc:@loss/softmax_loss/Mean
Ű
8training/Adam/gradients/loss/softmax_loss/Mean_grad/CastCast>training/Adam/gradients/loss/softmax_loss/Mean_grad/floordiv_1*

DstT0*
_output_shapes
: *)
_class
loc:@loss/softmax_loss/Mean*

SrcT0

;training/Adam/gradients/loss/softmax_loss/Mean_grad/truedivRealDiv8training/Adam/gradients/loss/softmax_loss/Mean_grad/Tile8training/Adam/gradients/loss/softmax_loss/Mean_grad/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*)
_class
loc:@loss/softmax_loss/Mean
Ź
"training/Adam/gradients/zeros_like	ZerosLike[loss/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*l
_classb
`^loc:@loss/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
Î
training/Adam/gradients/loss/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradient[loss/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*´
message¨ĽCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*l
_classb
`^loc:@loss/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
ż
training/Adam/gradients/loss/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: *
dtype0*l
_classb
`^loc:@loss/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits

training/Adam/gradients/loss/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;training/Adam/gradients/loss/softmax_loss/Mean_grad/truedivtraining/Adam/gradients/loss/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*l
_classb
`^loc:@loss/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
Ž
ztraining/Adam/gradients/loss/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMultraining/Adam/gradients/loss/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimstraining/Adam/gradients/loss/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*l
_classb
`^loc:@loss/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
Ă
>training/Adam/gradients/loss/softmax_loss/Reshape_1_grad/ShapeShapeloss/softmax_loss/Log*
out_type0*
T0*
_output_shapes
:*.
_class$
" loc:@loss/softmax_loss/Reshape_1
÷
@training/Adam/gradients/loss/softmax_loss/Reshape_1_grad/ReshapeReshapeztraining/Adam/gradients/loss/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul>training/Adam/gradients/loss/softmax_loss/Reshape_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*.
_class$
" loc:@loss/softmax_loss/Reshape_1

=training/Adam/gradients/loss/softmax_loss/Log_grad/Reciprocal
Reciprocalloss/softmax_loss/clip_by_valueA^training/Adam/gradients/loss/softmax_loss/Reshape_1_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*(
_class
loc:@loss/softmax_loss/Log

6training/Adam/gradients/loss/softmax_loss/Log_grad/mulMul@training/Adam/gradients/loss/softmax_loss/Reshape_1_grad/Reshape=training/Adam/gradients/loss/softmax_loss/Log_grad/Reciprocal*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*(
_class
loc:@loss/softmax_loss/Log
Ý
Btraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/ShapeShape'loss/softmax_loss/clip_by_value/Minimum*
out_type0*
T0*
_output_shapes
:*2
_class(
&$loc:@loss/softmax_loss/clip_by_value
ť
Dtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0*2
_class(
&$loc:@loss/softmax_loss/clip_by_value
î
Dtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/Shape_2Shape6training/Adam/gradients/loss/softmax_loss/Log_grad/mul*
out_type0*
T0*
_output_shapes
:*2
_class(
&$loc:@loss/softmax_loss/clip_by_value
Á
Htraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*2
_class(
&$loc:@loss/softmax_loss/clip_by_value
Ň
Btraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/zerosFillDtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/Shape_2Htraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/zeros/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

index_type0*2
_class(
&$loc:@loss/softmax_loss/clip_by_value

Itraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/GreaterEqualGreaterEqual'loss/softmax_loss/clip_by_value/Minimumloss/softmax_loss/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*2
_class(
&$loc:@loss/softmax_loss/clip_by_value
ć
Rtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/ShapeDtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*2
_class(
&$loc:@loss/softmax_loss/clip_by_value
ú
Ctraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/SelectSelectItraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/GreaterEqual6training/Adam/gradients/loss/softmax_loss/Log_grad/mulBtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/zeros*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*2
_class(
&$loc:@loss/softmax_loss/clip_by_value
ü
Etraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/Select_1SelectItraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/GreaterEqualBtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/zeros6training/Adam/gradients/loss/softmax_loss/Log_grad/mul*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*2
_class(
&$loc:@loss/softmax_loss/clip_by_value
Ô
@training/Adam/gradients/loss/softmax_loss/clip_by_value_grad/SumSumCtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/SelectRtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*2
_class(
&$loc:@loss/softmax_loss/clip_by_value
É
Dtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/ReshapeReshape@training/Adam/gradients/loss/softmax_loss/clip_by_value_grad/SumBtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*2
_class(
&$loc:@loss/softmax_loss/clip_by_value
Ú
Btraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/Sum_1SumEtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/Select_1Ttraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*2
_class(
&$loc:@loss/softmax_loss/clip_by_value
ž
Ftraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/Reshape_1ReshapeBtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/Sum_1Dtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: *2
_class(
&$loc:@loss/softmax_loss/clip_by_value
Ő
Jtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/ShapeShapesoftmax/Softmax*
out_type0*
T0*
_output_shapes
:*:
_class0
.,loc:@loss/softmax_loss/clip_by_value/Minimum
Ë
Ltraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0*:
_class0
.,loc:@loss/softmax_loss/clip_by_value/Minimum

Ltraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/Shape_2ShapeDtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/Reshape*
out_type0*
T0*
_output_shapes
:*:
_class0
.,loc:@loss/softmax_loss/clip_by_value/Minimum
Ń
Ptraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*:
_class0
.,loc:@loss/softmax_loss/clip_by_value/Minimum
ň
Jtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/zerosFillLtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/Shape_2Ptraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/zeros/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

index_type0*:
_class0
.,loc:@loss/softmax_loss/clip_by_value/Minimum
ń
Ntraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualsoftmax/Softmaxloss/softmax_loss/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*:
_class0
.,loc:@loss/softmax_loss/clip_by_value/Minimum

Ztraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsJtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/ShapeLtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*:
_class0
.,loc:@loss/softmax_loss/clip_by_value/Minimum
Ľ
Ktraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/SelectSelectNtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/LessEqualDtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/ReshapeJtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/zeros*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*:
_class0
.,loc:@loss/softmax_loss/clip_by_value/Minimum
§
Mtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/Select_1SelectNtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/LessEqualJtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/zerosDtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*:
_class0
.,loc:@loss/softmax_loss/clip_by_value/Minimum
ô
Htraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/SumSumKtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/SelectZtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*:
_class0
.,loc:@loss/softmax_loss/clip_by_value/Minimum
é
Ltraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/ReshapeReshapeHtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/SumJtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*:
_class0
.,loc:@loss/softmax_loss/clip_by_value/Minimum
ú
Jtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/Sum_1SumMtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/Select_1\training/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*:
_class0
.,loc:@loss/softmax_loss/clip_by_value/Minimum
Ţ
Ntraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeJtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/Sum_1Ltraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: *:
_class0
.,loc:@loss/softmax_loss/clip_by_value/Minimum
ě
0training/Adam/gradients/softmax/Softmax_grad/mulMulLtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/Reshapesoftmax/Softmax*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*"
_class
loc:@softmax/Softmax
°
Btraining/Adam/gradients/softmax/Softmax_grad/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0*"
_class
loc:@softmax/Softmax

0training/Adam/gradients/softmax/Softmax_grad/SumSum0training/Adam/gradients/softmax/Softmax_grad/mulBtraining/Adam/gradients/softmax/Softmax_grad/Sum/reduction_indices*
	keep_dims( *
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*"
_class
loc:@softmax/Softmax
Ż
:training/Adam/gradients/softmax/Softmax_grad/Reshape/shapeConst*
valueB"˙˙˙˙   *
_output_shapes
:*
dtype0*"
_class
loc:@softmax/Softmax

4training/Adam/gradients/softmax/Softmax_grad/ReshapeReshape0training/Adam/gradients/softmax/Softmax_grad/Sum:training/Adam/gradients/softmax/Softmax_grad/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*"
_class
loc:@softmax/Softmax

0training/Adam/gradients/softmax/Softmax_grad/subSubLtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/Reshape4training/Adam/gradients/softmax/Softmax_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*"
_class
loc:@softmax/Softmax
Ň
2training/Adam/gradients/softmax/Softmax_grad/mul_1Mul0training/Adam/gradients/softmax/Softmax_grad/subsoftmax/Softmax*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*"
_class
loc:@softmax/Softmax
Ű
8training/Adam/gradients/softmax/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/softmax/Softmax_grad/mul_1*
T0*
data_formatNHWC*
_output_shapes
:*"
_class
loc:@softmax/BiasAdd

2training/Adam/gradients/softmax/MatMul_grad/MatMulMatMul2training/Adam/gradients/softmax/Softmax_grad/mul_1softmax/MatMul/ReadVariableOp*
transpose_b(*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*!
_class
loc:@softmax/MatMul
ú
4training/Adam/gradients/softmax/MatMul_grad/MatMul_1MatMuldropout_1/cond/Merge2training/Adam/gradients/softmax/Softmax_grad/mul_1*
transpose_b( *
T0*
transpose_a(*
_output_shapes

:d*!
_class
loc:@softmax/MatMul
ů
;training/Adam/gradients/dropout_1/cond/Merge_grad/cond_gradSwitch2training/Adam/gradients/softmax/MatMul_grad/MatMuldropout_1/cond/pred_id*
T0*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*!
_class
loc:@softmax/MatMul
Ć
=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/ShapeShapedropout_1/cond/dropout/div*
out_type0*
T0*
_output_shapes
:*-
_class#
!loc:@dropout_1/cond/dropout/mul
Ę
?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape_1Shapedropout_1/cond/dropout/Floor*
out_type0*
T0*
_output_shapes
:*-
_class#
!loc:@dropout_1/cond/dropout/mul
Ň
Mtraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*-
_class#
!loc:@dropout_1/cond/dropout/mul

;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/MulMul=training/Adam/gradients/dropout_1/cond/Merge_grad/cond_grad:1dropout_1/cond/dropout/Floor*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*-
_class#
!loc:@dropout_1/cond/dropout/mul
˝
;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/SumSum;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/MulMtraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*-
_class#
!loc:@dropout_1/cond/dropout/mul
ľ
?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/ReshapeReshape;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*-
_class#
!loc:@dropout_1/cond/dropout/mul

=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Muldropout_1/cond/dropout/div=training/Adam/gradients/dropout_1/cond/Merge_grad/cond_grad:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*-
_class#
!loc:@dropout_1/cond/dropout/mul
Ă
=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum_1Sum=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Otraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*-
_class#
!loc:@dropout_1/cond/dropout/mul
ť
Atraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/Reshape_1Reshape=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum_1?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*-
_class#
!loc:@dropout_1/cond/dropout/mul
ž
training/Adam/gradients/SwitchSwitchactivation_1/Reludropout_1/cond/pred_id*
T0*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*$
_class
loc:@activation_1/Relu
Ľ
training/Adam/gradients/Shape_1Shape training/Adam/gradients/Switch:1*
out_type0*
T0*
_output_shapes
:*$
_class
loc:@activation_1/Relu
Ż
#training/Adam/gradients/zeros/ConstConst^training/Adam/gradients/Switch*
valueB
 *    *
_output_shapes
: *
dtype0*$
_class
loc:@activation_1/Relu
Ő
training/Adam/gradients/zerosFilltraining/Adam/gradients/Shape_1#training/Adam/gradients/zeros/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*

index_type0*$
_class
loc:@activation_1/Relu

Etraining/Adam/gradients/dropout_1/cond/Identity/Switch_grad/cond_gradMerge;training/Adam/gradients/dropout_1/cond/Merge_grad/cond_gradtraining/Adam/gradients/zeros*
T0*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙d: *$
_class
loc:@activation_1/Relu
Ń
=training/Adam/gradients/dropout_1/cond/dropout/div_grad/ShapeShape%dropout_1/cond/dropout/Shape/Switch:1*
out_type0*
T0*
_output_shapes
:*-
_class#
!loc:@dropout_1/cond/dropout/div
ą
?training/Adam/gradients/dropout_1/cond/dropout/div_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0*-
_class#
!loc:@dropout_1/cond/dropout/div
Ň
Mtraining/Adam/gradients/dropout_1/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs=training/Adam/gradients/dropout_1/cond/dropout/div_grad/Shape?training/Adam/gradients/dropout_1/cond/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*-
_class#
!loc:@dropout_1/cond/dropout/div

?training/Adam/gradients/dropout_1/cond/dropout/div_grad/RealDivRealDiv?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Reshape dropout_1/cond/dropout/keep_prob*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*-
_class#
!loc:@dropout_1/cond/dropout/div
Á
;training/Adam/gradients/dropout_1/cond/dropout/div_grad/SumSum?training/Adam/gradients/dropout_1/cond/dropout/div_grad/RealDivMtraining/Adam/gradients/dropout_1/cond/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*-
_class#
!loc:@dropout_1/cond/dropout/div
ľ
?training/Adam/gradients/dropout_1/cond/dropout/div_grad/ReshapeReshape;training/Adam/gradients/dropout_1/cond/dropout/div_grad/Sum=training/Adam/gradients/dropout_1/cond/dropout/div_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*-
_class#
!loc:@dropout_1/cond/dropout/div
Ę
;training/Adam/gradients/dropout_1/cond/dropout/div_grad/NegNeg%dropout_1/cond/dropout/Shape/Switch:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*-
_class#
!loc:@dropout_1/cond/dropout/div

Atraining/Adam/gradients/dropout_1/cond/dropout/div_grad/RealDiv_1RealDiv;training/Adam/gradients/dropout_1/cond/dropout/div_grad/Neg dropout_1/cond/dropout/keep_prob*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*-
_class#
!loc:@dropout_1/cond/dropout/div

Atraining/Adam/gradients/dropout_1/cond/dropout/div_grad/RealDiv_2RealDivAtraining/Adam/gradients/dropout_1/cond/dropout/div_grad/RealDiv_1 dropout_1/cond/dropout/keep_prob*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*-
_class#
!loc:@dropout_1/cond/dropout/div
§
;training/Adam/gradients/dropout_1/cond/dropout/div_grad/mulMul?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/ReshapeAtraining/Adam/gradients/dropout_1/cond/dropout/div_grad/RealDiv_2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*-
_class#
!loc:@dropout_1/cond/dropout/div
Á
=training/Adam/gradients/dropout_1/cond/dropout/div_grad/Sum_1Sum;training/Adam/gradients/dropout_1/cond/dropout/div_grad/mulOtraining/Adam/gradients/dropout_1/cond/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*-
_class#
!loc:@dropout_1/cond/dropout/div
Ş
Atraining/Adam/gradients/dropout_1/cond/dropout/div_grad/Reshape_1Reshape=training/Adam/gradients/dropout_1/cond/dropout/div_grad/Sum_1?training/Adam/gradients/dropout_1/cond/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: *-
_class#
!loc:@dropout_1/cond/dropout/div
Ŕ
 training/Adam/gradients/Switch_1Switchactivation_1/Reludropout_1/cond/pred_id*
T0*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*$
_class
loc:@activation_1/Relu
Ľ
training/Adam/gradients/Shape_2Shape training/Adam/gradients/Switch_1*
out_type0*
T0*
_output_shapes
:*$
_class
loc:@activation_1/Relu
ł
%training/Adam/gradients/zeros_1/ConstConst!^training/Adam/gradients/Switch_1*
valueB
 *    *
_output_shapes
: *
dtype0*$
_class
loc:@activation_1/Relu
Ů
training/Adam/gradients/zeros_1Filltraining/Adam/gradients/Shape_2%training/Adam/gradients/zeros_1/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*

index_type0*$
_class
loc:@activation_1/Relu

Jtraining/Adam/gradients/dropout_1/cond/dropout/Shape/Switch_grad/cond_gradMergetraining/Adam/gradients/zeros_1?training/Adam/gradients/dropout_1/cond/dropout/div_grad/Reshape*
T0*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙d: *$
_class
loc:@activation_1/Relu

training/Adam/gradients/AddNAddNEtraining/Adam/gradients/dropout_1/cond/Identity/Switch_grad/cond_gradJtraining/Adam/gradients/dropout_1/cond/dropout/Shape/Switch_grad/cond_grad*
T0*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*$
_class
loc:@activation_1/Relu
Ě
7training/Adam/gradients/activation_1/Relu_grad/ReluGradReluGradtraining/Adam/gradients/AddNactivation_1/Relu*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*$
_class
loc:@activation_1/Relu
ç
Htraining/Adam/gradients/batch_normalization_1/batchnorm/add_1_grad/ShapeShape%batch_normalization_1/batchnorm/mul_1*
out_type0*
T0*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1
Î
Jtraining/Adam/gradients/batch_normalization_1/batchnorm/add_1_grad/Shape_1Const*
valueB:d*
_output_shapes
:*
dtype0*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1
ţ
Xtraining/Adam/gradients/batch_normalization_1/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsHtraining/Adam/gradients/batch_normalization_1/batchnorm/add_1_grad/ShapeJtraining/Adam/gradients/batch_normalization_1/batchnorm/add_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1
Ú
Ftraining/Adam/gradients/batch_normalization_1/batchnorm/add_1_grad/SumSum7training/Adam/gradients/activation_1/Relu_grad/ReluGradXtraining/Adam/gradients/batch_normalization_1/batchnorm/add_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1
á
Jtraining/Adam/gradients/batch_normalization_1/batchnorm/add_1_grad/ReshapeReshapeFtraining/Adam/gradients/batch_normalization_1/batchnorm/add_1_grad/SumHtraining/Adam/gradients/batch_normalization_1/batchnorm/add_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1
Ţ
Htraining/Adam/gradients/batch_normalization_1/batchnorm/add_1_grad/Sum_1Sum7training/Adam/gradients/activation_1/Relu_grad/ReluGradZtraining/Adam/gradients/batch_normalization_1/batchnorm/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1
Ú
Ltraining/Adam/gradients/batch_normalization_1/batchnorm/add_1_grad/Reshape_1ReshapeHtraining/Adam/gradients/batch_normalization_1/batchnorm/add_1_grad/Sum_1Jtraining/Adam/gradients/batch_normalization_1/batchnorm/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:d*8
_class.
,*loc:@batch_normalization_1/batchnorm/add_1
Ń
Htraining/Adam/gradients/batch_normalization_1/batchnorm/mul_1_grad/ShapeShapehidden2/BiasAdd*
out_type0*
T0*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1
Î
Jtraining/Adam/gradients/batch_normalization_1/batchnorm/mul_1_grad/Shape_1Const*
valueB:d*
_output_shapes
:*
dtype0*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1
ţ
Xtraining/Adam/gradients/batch_normalization_1/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsHtraining/Adam/gradients/batch_normalization_1/batchnorm/mul_1_grad/ShapeJtraining/Adam/gradients/batch_normalization_1/batchnorm/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1
Ş
Ftraining/Adam/gradients/batch_normalization_1/batchnorm/mul_1_grad/MulMulJtraining/Adam/gradients/batch_normalization_1/batchnorm/add_1_grad/Reshape#batch_normalization_1/batchnorm/mul*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1
é
Ftraining/Adam/gradients/batch_normalization_1/batchnorm/mul_1_grad/SumSumFtraining/Adam/gradients/batch_normalization_1/batchnorm/mul_1_grad/MulXtraining/Adam/gradients/batch_normalization_1/batchnorm/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1
á
Jtraining/Adam/gradients/batch_normalization_1/batchnorm/mul_1_grad/ReshapeReshapeFtraining/Adam/gradients/batch_normalization_1/batchnorm/mul_1_grad/SumHtraining/Adam/gradients/batch_normalization_1/batchnorm/mul_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1

Htraining/Adam/gradients/batch_normalization_1/batchnorm/mul_1_grad/Mul_1Mulhidden2/BiasAddJtraining/Adam/gradients/batch_normalization_1/batchnorm/add_1_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1
ď
Htraining/Adam/gradients/batch_normalization_1/batchnorm/mul_1_grad/Sum_1SumHtraining/Adam/gradients/batch_normalization_1/batchnorm/mul_1_grad/Mul_1Ztraining/Adam/gradients/batch_normalization_1/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1
Ú
Ltraining/Adam/gradients/batch_normalization_1/batchnorm/mul_1_grad/Reshape_1ReshapeHtraining/Adam/gradients/batch_normalization_1/batchnorm/mul_1_grad/Sum_1Jtraining/Adam/gradients/batch_normalization_1/batchnorm/mul_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:d*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1
ö
Dtraining/Adam/gradients/batch_normalization_1/batchnorm/sub_grad/NegNegLtraining/Adam/gradients/batch_normalization_1/batchnorm/add_1_grad/Reshape_1*
T0*
_output_shapes
:d*6
_class,
*(loc:@batch_normalization_1/batchnorm/sub

Ftraining/Adam/gradients/batch_normalization_1/batchnorm/mul_2_grad/MulMulDtraining/Adam/gradients/batch_normalization_1/batchnorm/sub_grad/Neg#batch_normalization_1/batchnorm/mul*
T0*
_output_shapes
:d*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_2

Htraining/Adam/gradients/batch_normalization_1/batchnorm/mul_2_grad/Mul_1MulDtraining/Adam/gradients/batch_normalization_1/batchnorm/sub_grad/Neg batch_normalization_1/cond/Merge*
T0*
_output_shapes
:d*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_2
˘
Gtraining/Adam/gradients/batch_normalization_1/cond/Merge_grad/cond_gradSwitchFtraining/Adam/gradients/batch_normalization_1/batchnorm/mul_2_grad/Mul"batch_normalization_1/cond/pred_id*
T0* 
_output_shapes
:d:d*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_2
Ś
training/Adam/gradients/AddN_1AddNLtraining/Adam/gradients/batch_normalization_1/batchnorm/mul_1_grad/Reshape_1Htraining/Adam/gradients/batch_normalization_1/batchnorm/mul_2_grad/Mul_1*
T0*
N*
_output_shapes
:d*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1
ü
Dtraining/Adam/gradients/batch_normalization_1/batchnorm/mul_grad/MulMultraining/Adam/gradients/AddN_12batch_normalization_1/batchnorm/mul/ReadVariableOp*
T0*
_output_shapes
:d*6
_class,
*(loc:@batch_normalization_1/batchnorm/mul
ń
Ftraining/Adam/gradients/batch_normalization_1/batchnorm/mul_grad/Mul_1Multraining/Adam/gradients/AddN_1%batch_normalization_1/batchnorm/Rsqrt*
T0*
_output_shapes
:d*6
_class,
*(loc:@batch_normalization_1/batchnorm/mul
Ú
 training/Adam/gradients/Switch_2Switch%batch_normalization_1/moments/Squeeze"batch_normalization_1/cond/pred_id*
T0* 
_output_shapes
:d:d*8
_class.
,*loc:@batch_normalization_1/moments/Squeeze
š
training/Adam/gradients/Shape_3Shape training/Adam/gradients/Switch_2*
out_type0*
T0*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_1/moments/Squeeze
Ç
%training/Adam/gradients/zeros_2/ConstConst!^training/Adam/gradients/Switch_2*
valueB
 *    *
_output_shapes
: *
dtype0*8
_class.
,*loc:@batch_normalization_1/moments/Squeeze
ŕ
training/Adam/gradients/zeros_2Filltraining/Adam/gradients/Shape_3%training/Adam/gradients/zeros_2/Const*
T0*
_output_shapes
:d*

index_type0*8
_class.
,*loc:@batch_normalization_1/moments/Squeeze
Š
Jtraining/Adam/gradients/batch_normalization_1/cond/Switch_1_grad/cond_gradMergetraining/Adam/gradients/zeros_2Itraining/Adam/gradients/batch_normalization_1/cond/Merge_grad/cond_grad:1*
T0*
N*
_output_shapes

:d: *8
_class.
,*loc:@batch_normalization_1/moments/Squeeze
Ľ
Ltraining/Adam/gradients/batch_normalization_1/batchnorm/Rsqrt_grad/RsqrtGrad	RsqrtGrad%batch_normalization_1/batchnorm/RsqrtDtraining/Adam/gradients/batch_normalization_1/batchnorm/mul_grad/Mul*
T0*
_output_shapes
:d*8
_class.
,*loc:@batch_normalization_1/batchnorm/Rsqrt
Ó
Htraining/Adam/gradients/batch_normalization_1/moments/Squeeze_grad/ShapeConst*
valueB"   d   *
_output_shapes
:*
dtype0*8
_class.
,*loc:@batch_normalization_1/moments/Squeeze
Ü
Jtraining/Adam/gradients/batch_normalization_1/moments/Squeeze_grad/ReshapeReshapeJtraining/Adam/gradients/batch_normalization_1/cond/Switch_1_grad/cond_gradHtraining/Adam/gradients/batch_normalization_1/moments/Squeeze_grad/Shape*
T0*
Tshape0*
_output_shapes

:d*8
_class.
,*loc:@batch_normalization_1/moments/Squeeze
Č
Ftraining/Adam/gradients/batch_normalization_1/batchnorm/add_grad/ShapeConst*
valueB:d*
_output_shapes
:*
dtype0*6
_class,
*(loc:@batch_normalization_1/batchnorm/add
Ă
Htraining/Adam/gradients/batch_normalization_1/batchnorm/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0*6
_class,
*(loc:@batch_normalization_1/batchnorm/add
ö
Vtraining/Adam/gradients/batch_normalization_1/batchnorm/add_grad/BroadcastGradientArgsBroadcastGradientArgsFtraining/Adam/gradients/batch_normalization_1/batchnorm/add_grad/ShapeHtraining/Adam/gradients/batch_normalization_1/batchnorm/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*6
_class,
*(loc:@batch_normalization_1/batchnorm/add
ë
Dtraining/Adam/gradients/batch_normalization_1/batchnorm/add_grad/SumSumLtraining/Adam/gradients/batch_normalization_1/batchnorm/Rsqrt_grad/RsqrtGradVtraining/Adam/gradients/batch_normalization_1/batchnorm/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:d*

Tidx0*6
_class,
*(loc:@batch_normalization_1/batchnorm/add
Ě
Htraining/Adam/gradients/batch_normalization_1/batchnorm/add_grad/ReshapeReshapeDtraining/Adam/gradients/batch_normalization_1/batchnorm/add_grad/SumFtraining/Adam/gradients/batch_normalization_1/batchnorm/add_grad/Shape*
T0*
Tshape0*
_output_shapes
:d*6
_class,
*(loc:@batch_normalization_1/batchnorm/add
ë
Ftraining/Adam/gradients/batch_normalization_1/batchnorm/add_grad/Sum_1SumLtraining/Adam/gradients/batch_normalization_1/batchnorm/Rsqrt_grad/RsqrtGradXtraining/Adam/gradients/batch_normalization_1/batchnorm/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*6
_class,
*(loc:@batch_normalization_1/batchnorm/add
Î
Jtraining/Adam/gradients/batch_normalization_1/batchnorm/add_grad/Reshape_1ReshapeFtraining/Adam/gradients/batch_normalization_1/batchnorm/add_grad/Sum_1Htraining/Adam/gradients/batch_normalization_1/batchnorm/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: *6
_class,
*(loc:@batch_normalization_1/batchnorm/add
Ś
Itraining/Adam/gradients/batch_normalization_1/cond_1/Merge_grad/cond_gradSwitchHtraining/Adam/gradients/batch_normalization_1/batchnorm/add_grad/Reshape$batch_normalization_1/cond_1/pred_id*
T0* 
_output_shapes
:d:d*6
_class,
*(loc:@batch_normalization_1/batchnorm/add
ŕ
 training/Adam/gradients/Switch_3Switch'batch_normalization_1/moments/Squeeze_1$batch_normalization_1/cond_1/pred_id*
T0* 
_output_shapes
:d:d*:
_class0
.,loc:@batch_normalization_1/moments/Squeeze_1
ť
training/Adam/gradients/Shape_4Shape training/Adam/gradients/Switch_3*
out_type0*
T0*
_output_shapes
:*:
_class0
.,loc:@batch_normalization_1/moments/Squeeze_1
É
%training/Adam/gradients/zeros_3/ConstConst!^training/Adam/gradients/Switch_3*
valueB
 *    *
_output_shapes
: *
dtype0*:
_class0
.,loc:@batch_normalization_1/moments/Squeeze_1
â
training/Adam/gradients/zeros_3Filltraining/Adam/gradients/Shape_4%training/Adam/gradients/zeros_3/Const*
T0*
_output_shapes
:d*

index_type0*:
_class0
.,loc:@batch_normalization_1/moments/Squeeze_1
Ż
Ltraining/Adam/gradients/batch_normalization_1/cond_1/Switch_1_grad/cond_gradMergetraining/Adam/gradients/zeros_3Ktraining/Adam/gradients/batch_normalization_1/cond_1/Merge_grad/cond_grad:1*
T0*
N*
_output_shapes

:d: *:
_class0
.,loc:@batch_normalization_1/moments/Squeeze_1
×
Jtraining/Adam/gradients/batch_normalization_1/moments/Squeeze_1_grad/ShapeConst*
valueB"   d   *
_output_shapes
:*
dtype0*:
_class0
.,loc:@batch_normalization_1/moments/Squeeze_1
ä
Ltraining/Adam/gradients/batch_normalization_1/moments/Squeeze_1_grad/ReshapeReshapeLtraining/Adam/gradients/batch_normalization_1/cond_1/Switch_1_grad/cond_gradJtraining/Adam/gradients/batch_normalization_1/moments/Squeeze_1_grad/Shape*
T0*
Tshape0*
_output_shapes

:d*:
_class0
.,loc:@batch_normalization_1/moments/Squeeze_1
ó
Itraining/Adam/gradients/batch_normalization_1/moments/variance_grad/ShapeShape/batch_normalization_1/moments/SquaredDifference*
out_type0*
T0*
_output_shapes
:*9
_class/
-+loc:@batch_normalization_1/moments/variance
Ĺ
Htraining/Adam/gradients/batch_normalization_1/moments/variance_grad/SizeConst*
value	B :*
_output_shapes
: *
dtype0*9
_class/
-+loc:@batch_normalization_1/moments/variance
˛
Gtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/addAdd8batch_normalization_1/moments/variance/reduction_indicesHtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/Size*
T0*
_output_shapes
:*9
_class/
-+loc:@batch_normalization_1/moments/variance
Ć
Gtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/modFloorModGtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/addHtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/Size*
T0*
_output_shapes
:*9
_class/
-+loc:@batch_normalization_1/moments/variance
Đ
Ktraining/Adam/gradients/batch_normalization_1/moments/variance_grad/Shape_1Const*
valueB:*
_output_shapes
:*
dtype0*9
_class/
-+loc:@batch_normalization_1/moments/variance
Ě
Otraining/Adam/gradients/batch_normalization_1/moments/variance_grad/range/startConst*
value	B : *
_output_shapes
: *
dtype0*9
_class/
-+loc:@batch_normalization_1/moments/variance
Ě
Otraining/Adam/gradients/batch_normalization_1/moments/variance_grad/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0*9
_class/
-+loc:@batch_normalization_1/moments/variance
Ą
Itraining/Adam/gradients/batch_normalization_1/moments/variance_grad/rangeRangeOtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/range/startHtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/SizeOtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/range/delta*
_output_shapes
:*

Tidx0*9
_class/
-+loc:@batch_normalization_1/moments/variance
Ë
Ntraining/Adam/gradients/batch_normalization_1/moments/variance_grad/Fill/valueConst*
value	B :*
_output_shapes
: *
dtype0*9
_class/
-+loc:@batch_normalization_1/moments/variance
ß
Htraining/Adam/gradients/batch_normalization_1/moments/variance_grad/FillFillKtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/Shape_1Ntraining/Adam/gradients/batch_normalization_1/moments/variance_grad/Fill/value*
T0*
_output_shapes
:*

index_type0*9
_class/
-+loc:@batch_normalization_1/moments/variance
ô
Qtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/DynamicStitchDynamicStitchItraining/Adam/gradients/batch_normalization_1/moments/variance_grad/rangeGtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/modItraining/Adam/gradients/batch_normalization_1/moments/variance_grad/ShapeHtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/Fill*
T0*
N*
_output_shapes
:*9
_class/
-+loc:@batch_normalization_1/moments/variance
Ę
Mtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0*9
_class/
-+loc:@batch_normalization_1/moments/variance
Ř
Ktraining/Adam/gradients/batch_normalization_1/moments/variance_grad/MaximumMaximumQtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/DynamicStitchMtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/Maximum/y*
T0*
_output_shapes
:*9
_class/
-+loc:@batch_normalization_1/moments/variance
Đ
Ltraining/Adam/gradients/batch_normalization_1/moments/variance_grad/floordivFloorDivItraining/Adam/gradients/batch_normalization_1/moments/variance_grad/ShapeKtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/Maximum*
T0*
_output_shapes
:*9
_class/
-+loc:@batch_normalization_1/moments/variance
ű
Ktraining/Adam/gradients/batch_normalization_1/moments/variance_grad/ReshapeReshapeLtraining/Adam/gradients/batch_normalization_1/moments/Squeeze_1_grad/ReshapeQtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*9
_class/
-+loc:@batch_normalization_1/moments/variance
ó
Htraining/Adam/gradients/batch_normalization_1/moments/variance_grad/TileTileKtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/ReshapeLtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/floordiv*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

Tmultiples0*9
_class/
-+loc:@batch_normalization_1/moments/variance
ő
Ktraining/Adam/gradients/batch_normalization_1/moments/variance_grad/Shape_2Shape/batch_normalization_1/moments/SquaredDifference*
out_type0*
T0*
_output_shapes
:*9
_class/
-+loc:@batch_normalization_1/moments/variance
×
Ktraining/Adam/gradients/batch_normalization_1/moments/variance_grad/Shape_3Const*
valueB"   d   *
_output_shapes
:*
dtype0*9
_class/
-+loc:@batch_normalization_1/moments/variance
Î
Itraining/Adam/gradients/batch_normalization_1/moments/variance_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0*9
_class/
-+loc:@batch_normalization_1/moments/variance
á
Htraining/Adam/gradients/batch_normalization_1/moments/variance_grad/ProdProdKtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/Shape_2Itraining/Adam/gradients/batch_normalization_1/moments/variance_grad/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*9
_class/
-+loc:@batch_normalization_1/moments/variance
Đ
Ktraining/Adam/gradients/batch_normalization_1/moments/variance_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0*9
_class/
-+loc:@batch_normalization_1/moments/variance
ĺ
Jtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/Prod_1ProdKtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/Shape_3Ktraining/Adam/gradients/batch_normalization_1/moments/variance_grad/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*9
_class/
-+loc:@batch_normalization_1/moments/variance
Ě
Otraining/Adam/gradients/batch_normalization_1/moments/variance_grad/Maximum_1/yConst*
value	B :*
_output_shapes
: *
dtype0*9
_class/
-+loc:@batch_normalization_1/moments/variance
Ń
Mtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/Maximum_1MaximumJtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/Prod_1Otraining/Adam/gradients/batch_normalization_1/moments/variance_grad/Maximum_1/y*
T0*
_output_shapes
: *9
_class/
-+loc:@batch_normalization_1/moments/variance
Ď
Ntraining/Adam/gradients/batch_normalization_1/moments/variance_grad/floordiv_1FloorDivHtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/ProdMtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/Maximum_1*
T0*
_output_shapes
: *9
_class/
-+loc:@batch_normalization_1/moments/variance

Htraining/Adam/gradients/batch_normalization_1/moments/variance_grad/CastCastNtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/floordiv_1*

DstT0*
_output_shapes
: *9
_class/
-+loc:@batch_normalization_1/moments/variance*

SrcT0
×
Ktraining/Adam/gradients/batch_normalization_1/moments/variance_grad/truedivRealDivHtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/TileHtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/Cast*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*9
_class/
-+loc:@batch_normalization_1/moments/variance
ĺ
Rtraining/Adam/gradients/batch_normalization_1/moments/SquaredDifference_grad/ShapeShapehidden2/BiasAdd*
out_type0*
T0*
_output_shapes
:*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference
é
Ttraining/Adam/gradients/batch_normalization_1/moments/SquaredDifference_grad/Shape_1Const*
valueB"   d   *
_output_shapes
:*
dtype0*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference
Ś
btraining/Adam/gradients/batch_normalization_1/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgsRtraining/Adam/gradients/batch_normalization_1/moments/SquaredDifference_grad/ShapeTtraining/Adam/gradients/batch_normalization_1/moments/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference
Ş
Straining/Adam/gradients/batch_normalization_1/moments/SquaredDifference_grad/scalarConstL^training/Adam/gradients/batch_normalization_1/moments/variance_grad/truediv*
valueB
 *   @*
_output_shapes
: *
dtype0*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference
ď
Ptraining/Adam/gradients/batch_normalization_1/moments/SquaredDifference_grad/mulMulStraining/Adam/gradients/batch_normalization_1/moments/SquaredDifference_grad/scalarKtraining/Adam/gradients/batch_normalization_1/moments/variance_grad/truediv*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference
Ř
Ptraining/Adam/gradients/batch_normalization_1/moments/SquaredDifference_grad/subSubhidden2/BiasAdd*batch_normalization_1/moments/StopGradientL^training/Adam/gradients/batch_normalization_1/moments/variance_grad/truediv*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference
ó
Rtraining/Adam/gradients/batch_normalization_1/moments/SquaredDifference_grad/mul_1MulPtraining/Adam/gradients/batch_normalization_1/moments/SquaredDifference_grad/mulPtraining/Adam/gradients/batch_normalization_1/moments/SquaredDifference_grad/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference

Ptraining/Adam/gradients/batch_normalization_1/moments/SquaredDifference_grad/SumSumRtraining/Adam/gradients/batch_normalization_1/moments/SquaredDifference_grad/mul_1btraining/Adam/gradients/batch_normalization_1/moments/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference

Ttraining/Adam/gradients/batch_normalization_1/moments/SquaredDifference_grad/ReshapeReshapePtraining/Adam/gradients/batch_normalization_1/moments/SquaredDifference_grad/SumRtraining/Adam/gradients/batch_normalization_1/moments/SquaredDifference_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference

Rtraining/Adam/gradients/batch_normalization_1/moments/SquaredDifference_grad/Sum_1SumRtraining/Adam/gradients/batch_normalization_1/moments/SquaredDifference_grad/mul_1dtraining/Adam/gradients/batch_normalization_1/moments/SquaredDifference_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference

Vtraining/Adam/gradients/batch_normalization_1/moments/SquaredDifference_grad/Reshape_1ReshapeRtraining/Adam/gradients/batch_normalization_1/moments/SquaredDifference_grad/Sum_1Ttraining/Adam/gradients/batch_normalization_1/moments/SquaredDifference_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:d*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference

Ptraining/Adam/gradients/batch_normalization_1/moments/SquaredDifference_grad/NegNegVtraining/Adam/gradients/batch_normalization_1/moments/SquaredDifference_grad/Reshape_1*
T0*
_output_shapes

:d*B
_class8
64loc:@batch_normalization_1/moments/SquaredDifference
Ë
Etraining/Adam/gradients/batch_normalization_1/moments/mean_grad/ShapeShapehidden2/BiasAdd*
out_type0*
T0*
_output_shapes
:*5
_class+
)'loc:@batch_normalization_1/moments/mean
˝
Dtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/SizeConst*
value	B :*
_output_shapes
: *
dtype0*5
_class+
)'loc:@batch_normalization_1/moments/mean
˘
Ctraining/Adam/gradients/batch_normalization_1/moments/mean_grad/addAdd4batch_normalization_1/moments/mean/reduction_indicesDtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/Size*
T0*
_output_shapes
:*5
_class+
)'loc:@batch_normalization_1/moments/mean
ś
Ctraining/Adam/gradients/batch_normalization_1/moments/mean_grad/modFloorModCtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/addDtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/Size*
T0*
_output_shapes
:*5
_class+
)'loc:@batch_normalization_1/moments/mean
Č
Gtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/Shape_1Const*
valueB:*
_output_shapes
:*
dtype0*5
_class+
)'loc:@batch_normalization_1/moments/mean
Ä
Ktraining/Adam/gradients/batch_normalization_1/moments/mean_grad/range/startConst*
value	B : *
_output_shapes
: *
dtype0*5
_class+
)'loc:@batch_normalization_1/moments/mean
Ä
Ktraining/Adam/gradients/batch_normalization_1/moments/mean_grad/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0*5
_class+
)'loc:@batch_normalization_1/moments/mean

Etraining/Adam/gradients/batch_normalization_1/moments/mean_grad/rangeRangeKtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/range/startDtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/SizeKtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/range/delta*
_output_shapes
:*

Tidx0*5
_class+
)'loc:@batch_normalization_1/moments/mean
Ă
Jtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/Fill/valueConst*
value	B :*
_output_shapes
: *
dtype0*5
_class+
)'loc:@batch_normalization_1/moments/mean
Ď
Dtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/FillFillGtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/Shape_1Jtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/Fill/value*
T0*
_output_shapes
:*

index_type0*5
_class+
)'loc:@batch_normalization_1/moments/mean
Ü
Mtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/DynamicStitchDynamicStitchEtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/rangeCtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/modEtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/ShapeDtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/Fill*
T0*
N*
_output_shapes
:*5
_class+
)'loc:@batch_normalization_1/moments/mean
Â
Itraining/Adam/gradients/batch_normalization_1/moments/mean_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0*5
_class+
)'loc:@batch_normalization_1/moments/mean
Č
Gtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/MaximumMaximumMtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/DynamicStitchItraining/Adam/gradients/batch_normalization_1/moments/mean_grad/Maximum/y*
T0*
_output_shapes
:*5
_class+
)'loc:@batch_normalization_1/moments/mean
Ŕ
Htraining/Adam/gradients/batch_normalization_1/moments/mean_grad/floordivFloorDivEtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/ShapeGtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/Maximum*
T0*
_output_shapes
:*5
_class+
)'loc:@batch_normalization_1/moments/mean
í
Gtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/ReshapeReshapeJtraining/Adam/gradients/batch_normalization_1/moments/Squeeze_grad/ReshapeMtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*5
_class+
)'loc:@batch_normalization_1/moments/mean
ă
Dtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/TileTileGtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/ReshapeHtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/floordiv*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

Tmultiples0*5
_class+
)'loc:@batch_normalization_1/moments/mean
Í
Gtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/Shape_2Shapehidden2/BiasAdd*
out_type0*
T0*
_output_shapes
:*5
_class+
)'loc:@batch_normalization_1/moments/mean
Ď
Gtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/Shape_3Const*
valueB"   d   *
_output_shapes
:*
dtype0*5
_class+
)'loc:@batch_normalization_1/moments/mean
Ć
Etraining/Adam/gradients/batch_normalization_1/moments/mean_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0*5
_class+
)'loc:@batch_normalization_1/moments/mean
Ń
Dtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/ProdProdGtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/Shape_2Etraining/Adam/gradients/batch_normalization_1/moments/mean_grad/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*5
_class+
)'loc:@batch_normalization_1/moments/mean
Č
Gtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0*5
_class+
)'loc:@batch_normalization_1/moments/mean
Ő
Ftraining/Adam/gradients/batch_normalization_1/moments/mean_grad/Prod_1ProdGtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/Shape_3Gtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*5
_class+
)'loc:@batch_normalization_1/moments/mean
Ä
Ktraining/Adam/gradients/batch_normalization_1/moments/mean_grad/Maximum_1/yConst*
value	B :*
_output_shapes
: *
dtype0*5
_class+
)'loc:@batch_normalization_1/moments/mean
Á
Itraining/Adam/gradients/batch_normalization_1/moments/mean_grad/Maximum_1MaximumFtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/Prod_1Ktraining/Adam/gradients/batch_normalization_1/moments/mean_grad/Maximum_1/y*
T0*
_output_shapes
: *5
_class+
)'loc:@batch_normalization_1/moments/mean
ż
Jtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/floordiv_1FloorDivDtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/ProdItraining/Adam/gradients/batch_normalization_1/moments/mean_grad/Maximum_1*
T0*
_output_shapes
: *5
_class+
)'loc:@batch_normalization_1/moments/mean
˙
Dtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/CastCastJtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/floordiv_1*

DstT0*
_output_shapes
: *5
_class+
)'loc:@batch_normalization_1/moments/mean*

SrcT0
Ç
Gtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/truedivRealDivDtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/TileDtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/Cast*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*5
_class+
)'loc:@batch_normalization_1/moments/mean

training/Adam/gradients/AddN_2AddNJtraining/Adam/gradients/batch_normalization_1/batchnorm/mul_1_grad/ReshapeTtraining/Adam/gradients/batch_normalization_1/moments/SquaredDifference_grad/ReshapeGtraining/Adam/gradients/batch_normalization_1/moments/mean_grad/truediv*
T0*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*8
_class.
,*loc:@batch_normalization_1/batchnorm/mul_1
Ç
8training/Adam/gradients/hidden2/BiasAdd_grad/BiasAddGradBiasAddGradtraining/Adam/gradients/AddN_2*
T0*
data_formatNHWC*
_output_shapes
:d*"
_class
loc:@hidden2/BiasAdd
ö
2training/Adam/gradients/hidden2/MatMul_grad/MatMulMatMultraining/Adam/gradients/AddN_2hidden2/MatMul/ReadVariableOp*
transpose_b(*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*!
_class
loc:@hidden2/MatMul
ä
4training/Adam/gradients/hidden2/MatMul_grad/MatMul_1MatMuldropout/cond/Mergetraining/Adam/gradients/AddN_2*
transpose_b( *
T0*
transpose_a(*
_output_shapes

:dd*!
_class
loc:@hidden2/MatMul
ő
9training/Adam/gradients/dropout/cond/Merge_grad/cond_gradSwitch2training/Adam/gradients/hidden2/MatMul_grad/MatMuldropout/cond/pred_id*
T0*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*!
_class
loc:@hidden2/MatMul
Ŕ
;training/Adam/gradients/dropout/cond/dropout/mul_grad/ShapeShapedropout/cond/dropout/div*
out_type0*
T0*
_output_shapes
:*+
_class!
loc:@dropout/cond/dropout/mul
Ä
=training/Adam/gradients/dropout/cond/dropout/mul_grad/Shape_1Shapedropout/cond/dropout/Floor*
out_type0*
T0*
_output_shapes
:*+
_class!
loc:@dropout/cond/dropout/mul
Ę
Ktraining/Adam/gradients/dropout/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs;training/Adam/gradients/dropout/cond/dropout/mul_grad/Shape=training/Adam/gradients/dropout/cond/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*+
_class!
loc:@dropout/cond/dropout/mul
ř
9training/Adam/gradients/dropout/cond/dropout/mul_grad/MulMul;training/Adam/gradients/dropout/cond/Merge_grad/cond_grad:1dropout/cond/dropout/Floor*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*+
_class!
loc:@dropout/cond/dropout/mul
ľ
9training/Adam/gradients/dropout/cond/dropout/mul_grad/SumSum9training/Adam/gradients/dropout/cond/dropout/mul_grad/MulKtraining/Adam/gradients/dropout/cond/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*+
_class!
loc:@dropout/cond/dropout/mul
­
=training/Adam/gradients/dropout/cond/dropout/mul_grad/ReshapeReshape9training/Adam/gradients/dropout/cond/dropout/mul_grad/Sum;training/Adam/gradients/dropout/cond/dropout/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*+
_class!
loc:@dropout/cond/dropout/mul
ř
;training/Adam/gradients/dropout/cond/dropout/mul_grad/Mul_1Muldropout/cond/dropout/div;training/Adam/gradients/dropout/cond/Merge_grad/cond_grad:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*+
_class!
loc:@dropout/cond/dropout/mul
ť
;training/Adam/gradients/dropout/cond/dropout/mul_grad/Sum_1Sum;training/Adam/gradients/dropout/cond/dropout/mul_grad/Mul_1Mtraining/Adam/gradients/dropout/cond/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*+
_class!
loc:@dropout/cond/dropout/mul
ł
?training/Adam/gradients/dropout/cond/dropout/mul_grad/Reshape_1Reshape;training/Adam/gradients/dropout/cond/dropout/mul_grad/Sum_1=training/Adam/gradients/dropout/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*+
_class!
loc:@dropout/cond/dropout/mul
ş
 training/Adam/gradients/Switch_4Switchactivation/Reludropout/cond/pred_id*
T0*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*"
_class
loc:@activation/Relu
Ľ
training/Adam/gradients/Shape_5Shape"training/Adam/gradients/Switch_4:1*
out_type0*
T0*
_output_shapes
:*"
_class
loc:@activation/Relu
ą
%training/Adam/gradients/zeros_4/ConstConst!^training/Adam/gradients/Switch_4*
valueB
 *    *
_output_shapes
: *
dtype0*"
_class
loc:@activation/Relu
×
training/Adam/gradients/zeros_4Filltraining/Adam/gradients/Shape_5%training/Adam/gradients/zeros_4/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*

index_type0*"
_class
loc:@activation/Relu

Ctraining/Adam/gradients/dropout/cond/Identity/Switch_grad/cond_gradMerge9training/Adam/gradients/dropout/cond/Merge_grad/cond_gradtraining/Adam/gradients/zeros_4*
T0*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙d: *"
_class
loc:@activation/Relu
Ë
;training/Adam/gradients/dropout/cond/dropout/div_grad/ShapeShape#dropout/cond/dropout/Shape/Switch:1*
out_type0*
T0*
_output_shapes
:*+
_class!
loc:@dropout/cond/dropout/div
­
=training/Adam/gradients/dropout/cond/dropout/div_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0*+
_class!
loc:@dropout/cond/dropout/div
Ę
Ktraining/Adam/gradients/dropout/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs;training/Adam/gradients/dropout/cond/dropout/div_grad/Shape=training/Adam/gradients/dropout/cond/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*+
_class!
loc:@dropout/cond/dropout/div

=training/Adam/gradients/dropout/cond/dropout/div_grad/RealDivRealDiv=training/Adam/gradients/dropout/cond/dropout/mul_grad/Reshapedropout/cond/dropout/keep_prob*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*+
_class!
loc:@dropout/cond/dropout/div
š
9training/Adam/gradients/dropout/cond/dropout/div_grad/SumSum=training/Adam/gradients/dropout/cond/dropout/div_grad/RealDivKtraining/Adam/gradients/dropout/cond/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*+
_class!
loc:@dropout/cond/dropout/div
­
=training/Adam/gradients/dropout/cond/dropout/div_grad/ReshapeReshape9training/Adam/gradients/dropout/cond/dropout/div_grad/Sum;training/Adam/gradients/dropout/cond/dropout/div_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*+
_class!
loc:@dropout/cond/dropout/div
Ä
9training/Adam/gradients/dropout/cond/dropout/div_grad/NegNeg#dropout/cond/dropout/Shape/Switch:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*+
_class!
loc:@dropout/cond/dropout/div

?training/Adam/gradients/dropout/cond/dropout/div_grad/RealDiv_1RealDiv9training/Adam/gradients/dropout/cond/dropout/div_grad/Negdropout/cond/dropout/keep_prob*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*+
_class!
loc:@dropout/cond/dropout/div

?training/Adam/gradients/dropout/cond/dropout/div_grad/RealDiv_2RealDiv?training/Adam/gradients/dropout/cond/dropout/div_grad/RealDiv_1dropout/cond/dropout/keep_prob*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*+
_class!
loc:@dropout/cond/dropout/div

9training/Adam/gradients/dropout/cond/dropout/div_grad/mulMul=training/Adam/gradients/dropout/cond/dropout/mul_grad/Reshape?training/Adam/gradients/dropout/cond/dropout/div_grad/RealDiv_2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*+
_class!
loc:@dropout/cond/dropout/div
š
;training/Adam/gradients/dropout/cond/dropout/div_grad/Sum_1Sum9training/Adam/gradients/dropout/cond/dropout/div_grad/mulMtraining/Adam/gradients/dropout/cond/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*+
_class!
loc:@dropout/cond/dropout/div
˘
?training/Adam/gradients/dropout/cond/dropout/div_grad/Reshape_1Reshape;training/Adam/gradients/dropout/cond/dropout/div_grad/Sum_1=training/Adam/gradients/dropout/cond/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: *+
_class!
loc:@dropout/cond/dropout/div
ş
 training/Adam/gradients/Switch_5Switchactivation/Reludropout/cond/pred_id*
T0*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*"
_class
loc:@activation/Relu
Ł
training/Adam/gradients/Shape_6Shape training/Adam/gradients/Switch_5*
out_type0*
T0*
_output_shapes
:*"
_class
loc:@activation/Relu
ą
%training/Adam/gradients/zeros_5/ConstConst!^training/Adam/gradients/Switch_5*
valueB
 *    *
_output_shapes
: *
dtype0*"
_class
loc:@activation/Relu
×
training/Adam/gradients/zeros_5Filltraining/Adam/gradients/Shape_6%training/Adam/gradients/zeros_5/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*

index_type0*"
_class
loc:@activation/Relu

Htraining/Adam/gradients/dropout/cond/dropout/Shape/Switch_grad/cond_gradMergetraining/Adam/gradients/zeros_5=training/Adam/gradients/dropout/cond/dropout/div_grad/Reshape*
T0*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙d: *"
_class
loc:@activation/Relu

training/Adam/gradients/AddN_3AddNCtraining/Adam/gradients/dropout/cond/Identity/Switch_grad/cond_gradHtraining/Adam/gradients/dropout/cond/dropout/Shape/Switch_grad/cond_grad*
T0*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*"
_class
loc:@activation/Relu
Č
5training/Adam/gradients/activation/Relu_grad/ReluGradReluGradtraining/Adam/gradients/AddN_3activation/Relu*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*"
_class
loc:@activation/Relu
á
Ftraining/Adam/gradients/batch_normalization/batchnorm/add_1_grad/ShapeShape#batch_normalization/batchnorm/mul_1*
out_type0*
T0*
_output_shapes
:*6
_class,
*(loc:@batch_normalization/batchnorm/add_1
Ę
Htraining/Adam/gradients/batch_normalization/batchnorm/add_1_grad/Shape_1Const*
valueB:d*
_output_shapes
:*
dtype0*6
_class,
*(loc:@batch_normalization/batchnorm/add_1
ö
Vtraining/Adam/gradients/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsFtraining/Adam/gradients/batch_normalization/batchnorm/add_1_grad/ShapeHtraining/Adam/gradients/batch_normalization/batchnorm/add_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*6
_class,
*(loc:@batch_normalization/batchnorm/add_1
Ň
Dtraining/Adam/gradients/batch_normalization/batchnorm/add_1_grad/SumSum5training/Adam/gradients/activation/Relu_grad/ReluGradVtraining/Adam/gradients/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*6
_class,
*(loc:@batch_normalization/batchnorm/add_1
Ů
Htraining/Adam/gradients/batch_normalization/batchnorm/add_1_grad/ReshapeReshapeDtraining/Adam/gradients/batch_normalization/batchnorm/add_1_grad/SumFtraining/Adam/gradients/batch_normalization/batchnorm/add_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*6
_class,
*(loc:@batch_normalization/batchnorm/add_1
Ö
Ftraining/Adam/gradients/batch_normalization/batchnorm/add_1_grad/Sum_1Sum5training/Adam/gradients/activation/Relu_grad/ReluGradXtraining/Adam/gradients/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*6
_class,
*(loc:@batch_normalization/batchnorm/add_1
Ň
Jtraining/Adam/gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1ReshapeFtraining/Adam/gradients/batch_normalization/batchnorm/add_1_grad/Sum_1Htraining/Adam/gradients/batch_normalization/batchnorm/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:d*6
_class,
*(loc:@batch_normalization/batchnorm/add_1
Í
Ftraining/Adam/gradients/batch_normalization/batchnorm/mul_1_grad/ShapeShapehidden1/BiasAdd*
out_type0*
T0*
_output_shapes
:*6
_class,
*(loc:@batch_normalization/batchnorm/mul_1
Ę
Htraining/Adam/gradients/batch_normalization/batchnorm/mul_1_grad/Shape_1Const*
valueB:d*
_output_shapes
:*
dtype0*6
_class,
*(loc:@batch_normalization/batchnorm/mul_1
ö
Vtraining/Adam/gradients/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsFtraining/Adam/gradients/batch_normalization/batchnorm/mul_1_grad/ShapeHtraining/Adam/gradients/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*6
_class,
*(loc:@batch_normalization/batchnorm/mul_1
˘
Dtraining/Adam/gradients/batch_normalization/batchnorm/mul_1_grad/MulMulHtraining/Adam/gradients/batch_normalization/batchnorm/add_1_grad/Reshape!batch_normalization/batchnorm/mul*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*6
_class,
*(loc:@batch_normalization/batchnorm/mul_1
á
Dtraining/Adam/gradients/batch_normalization/batchnorm/mul_1_grad/SumSumDtraining/Adam/gradients/batch_normalization/batchnorm/mul_1_grad/MulVtraining/Adam/gradients/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*6
_class,
*(loc:@batch_normalization/batchnorm/mul_1
Ů
Htraining/Adam/gradients/batch_normalization/batchnorm/mul_1_grad/ReshapeReshapeDtraining/Adam/gradients/batch_normalization/batchnorm/mul_1_grad/SumFtraining/Adam/gradients/batch_normalization/batchnorm/mul_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*6
_class,
*(loc:@batch_normalization/batchnorm/mul_1

Ftraining/Adam/gradients/batch_normalization/batchnorm/mul_1_grad/Mul_1Mulhidden1/BiasAddHtraining/Adam/gradients/batch_normalization/batchnorm/add_1_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*6
_class,
*(loc:@batch_normalization/batchnorm/mul_1
ç
Ftraining/Adam/gradients/batch_normalization/batchnorm/mul_1_grad/Sum_1SumFtraining/Adam/gradients/batch_normalization/batchnorm/mul_1_grad/Mul_1Xtraining/Adam/gradients/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*6
_class,
*(loc:@batch_normalization/batchnorm/mul_1
Ň
Jtraining/Adam/gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1ReshapeFtraining/Adam/gradients/batch_normalization/batchnorm/mul_1_grad/Sum_1Htraining/Adam/gradients/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:d*6
_class,
*(loc:@batch_normalization/batchnorm/mul_1
đ
Btraining/Adam/gradients/batch_normalization/batchnorm/sub_grad/NegNegJtraining/Adam/gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1*
T0*
_output_shapes
:d*4
_class*
(&loc:@batch_normalization/batchnorm/sub

Dtraining/Adam/gradients/batch_normalization/batchnorm/mul_2_grad/MulMulBtraining/Adam/gradients/batch_normalization/batchnorm/sub_grad/Neg!batch_normalization/batchnorm/mul*
T0*
_output_shapes
:d*6
_class,
*(loc:@batch_normalization/batchnorm/mul_2

Ftraining/Adam/gradients/batch_normalization/batchnorm/mul_2_grad/Mul_1MulBtraining/Adam/gradients/batch_normalization/batchnorm/sub_grad/Negbatch_normalization/cond/Merge*
T0*
_output_shapes
:d*6
_class,
*(loc:@batch_normalization/batchnorm/mul_2

Etraining/Adam/gradients/batch_normalization/cond/Merge_grad/cond_gradSwitchDtraining/Adam/gradients/batch_normalization/batchnorm/mul_2_grad/Mul batch_normalization/cond/pred_id*
T0* 
_output_shapes
:d:d*6
_class,
*(loc:@batch_normalization/batchnorm/mul_2
 
training/Adam/gradients/AddN_4AddNJtraining/Adam/gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1Ftraining/Adam/gradients/batch_normalization/batchnorm/mul_2_grad/Mul_1*
T0*
N*
_output_shapes
:d*6
_class,
*(loc:@batch_normalization/batchnorm/mul_1
ö
Btraining/Adam/gradients/batch_normalization/batchnorm/mul_grad/MulMultraining/Adam/gradients/AddN_40batch_normalization/batchnorm/mul/ReadVariableOp*
T0*
_output_shapes
:d*4
_class*
(&loc:@batch_normalization/batchnorm/mul
ë
Dtraining/Adam/gradients/batch_normalization/batchnorm/mul_grad/Mul_1Multraining/Adam/gradients/AddN_4#batch_normalization/batchnorm/Rsqrt*
T0*
_output_shapes
:d*4
_class*
(&loc:@batch_normalization/batchnorm/mul
Ô
 training/Adam/gradients/Switch_6Switch#batch_normalization/moments/Squeeze batch_normalization/cond/pred_id*
T0* 
_output_shapes
:d:d*6
_class,
*(loc:@batch_normalization/moments/Squeeze
ˇ
training/Adam/gradients/Shape_7Shape training/Adam/gradients/Switch_6*
out_type0*
T0*
_output_shapes
:*6
_class,
*(loc:@batch_normalization/moments/Squeeze
Ĺ
%training/Adam/gradients/zeros_6/ConstConst!^training/Adam/gradients/Switch_6*
valueB
 *    *
_output_shapes
: *
dtype0*6
_class,
*(loc:@batch_normalization/moments/Squeeze
Ţ
training/Adam/gradients/zeros_6Filltraining/Adam/gradients/Shape_7%training/Adam/gradients/zeros_6/Const*
T0*
_output_shapes
:d*

index_type0*6
_class,
*(loc:@batch_normalization/moments/Squeeze
Ł
Htraining/Adam/gradients/batch_normalization/cond/Switch_1_grad/cond_gradMergetraining/Adam/gradients/zeros_6Gtraining/Adam/gradients/batch_normalization/cond/Merge_grad/cond_grad:1*
T0*
N*
_output_shapes

:d: *6
_class,
*(loc:@batch_normalization/moments/Squeeze

Jtraining/Adam/gradients/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGrad	RsqrtGrad#batch_normalization/batchnorm/RsqrtBtraining/Adam/gradients/batch_normalization/batchnorm/mul_grad/Mul*
T0*
_output_shapes
:d*6
_class,
*(loc:@batch_normalization/batchnorm/Rsqrt
Ď
Ftraining/Adam/gradients/batch_normalization/moments/Squeeze_grad/ShapeConst*
valueB"   d   *
_output_shapes
:*
dtype0*6
_class,
*(loc:@batch_normalization/moments/Squeeze
Ô
Htraining/Adam/gradients/batch_normalization/moments/Squeeze_grad/ReshapeReshapeHtraining/Adam/gradients/batch_normalization/cond/Switch_1_grad/cond_gradFtraining/Adam/gradients/batch_normalization/moments/Squeeze_grad/Shape*
T0*
Tshape0*
_output_shapes

:d*6
_class,
*(loc:@batch_normalization/moments/Squeeze
Ä
Dtraining/Adam/gradients/batch_normalization/batchnorm/add_grad/ShapeConst*
valueB:d*
_output_shapes
:*
dtype0*4
_class*
(&loc:@batch_normalization/batchnorm/add
ż
Ftraining/Adam/gradients/batch_normalization/batchnorm/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0*4
_class*
(&loc:@batch_normalization/batchnorm/add
î
Ttraining/Adam/gradients/batch_normalization/batchnorm/add_grad/BroadcastGradientArgsBroadcastGradientArgsDtraining/Adam/gradients/batch_normalization/batchnorm/add_grad/ShapeFtraining/Adam/gradients/batch_normalization/batchnorm/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*4
_class*
(&loc:@batch_normalization/batchnorm/add
ă
Btraining/Adam/gradients/batch_normalization/batchnorm/add_grad/SumSumJtraining/Adam/gradients/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGradTtraining/Adam/gradients/batch_normalization/batchnorm/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:d*

Tidx0*4
_class*
(&loc:@batch_normalization/batchnorm/add
Ä
Ftraining/Adam/gradients/batch_normalization/batchnorm/add_grad/ReshapeReshapeBtraining/Adam/gradients/batch_normalization/batchnorm/add_grad/SumDtraining/Adam/gradients/batch_normalization/batchnorm/add_grad/Shape*
T0*
Tshape0*
_output_shapes
:d*4
_class*
(&loc:@batch_normalization/batchnorm/add
ă
Dtraining/Adam/gradients/batch_normalization/batchnorm/add_grad/Sum_1SumJtraining/Adam/gradients/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGradVtraining/Adam/gradients/batch_normalization/batchnorm/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*4
_class*
(&loc:@batch_normalization/batchnorm/add
Ć
Htraining/Adam/gradients/batch_normalization/batchnorm/add_grad/Reshape_1ReshapeDtraining/Adam/gradients/batch_normalization/batchnorm/add_grad/Sum_1Ftraining/Adam/gradients/batch_normalization/batchnorm/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: *4
_class*
(&loc:@batch_normalization/batchnorm/add

Gtraining/Adam/gradients/batch_normalization/cond_1/Merge_grad/cond_gradSwitchFtraining/Adam/gradients/batch_normalization/batchnorm/add_grad/Reshape"batch_normalization/cond_1/pred_id*
T0* 
_output_shapes
:d:d*4
_class*
(&loc:@batch_normalization/batchnorm/add
Ú
 training/Adam/gradients/Switch_7Switch%batch_normalization/moments/Squeeze_1"batch_normalization/cond_1/pred_id*
T0* 
_output_shapes
:d:d*8
_class.
,*loc:@batch_normalization/moments/Squeeze_1
š
training/Adam/gradients/Shape_8Shape training/Adam/gradients/Switch_7*
out_type0*
T0*
_output_shapes
:*8
_class.
,*loc:@batch_normalization/moments/Squeeze_1
Ç
%training/Adam/gradients/zeros_7/ConstConst!^training/Adam/gradients/Switch_7*
valueB
 *    *
_output_shapes
: *
dtype0*8
_class.
,*loc:@batch_normalization/moments/Squeeze_1
ŕ
training/Adam/gradients/zeros_7Filltraining/Adam/gradients/Shape_8%training/Adam/gradients/zeros_7/Const*
T0*
_output_shapes
:d*

index_type0*8
_class.
,*loc:@batch_normalization/moments/Squeeze_1
Š
Jtraining/Adam/gradients/batch_normalization/cond_1/Switch_1_grad/cond_gradMergetraining/Adam/gradients/zeros_7Itraining/Adam/gradients/batch_normalization/cond_1/Merge_grad/cond_grad:1*
T0*
N*
_output_shapes

:d: *8
_class.
,*loc:@batch_normalization/moments/Squeeze_1
Ó
Htraining/Adam/gradients/batch_normalization/moments/Squeeze_1_grad/ShapeConst*
valueB"   d   *
_output_shapes
:*
dtype0*8
_class.
,*loc:@batch_normalization/moments/Squeeze_1
Ü
Jtraining/Adam/gradients/batch_normalization/moments/Squeeze_1_grad/ReshapeReshapeJtraining/Adam/gradients/batch_normalization/cond_1/Switch_1_grad/cond_gradHtraining/Adam/gradients/batch_normalization/moments/Squeeze_1_grad/Shape*
T0*
Tshape0*
_output_shapes

:d*8
_class.
,*loc:@batch_normalization/moments/Squeeze_1
í
Gtraining/Adam/gradients/batch_normalization/moments/variance_grad/ShapeShape-batch_normalization/moments/SquaredDifference*
out_type0*
T0*
_output_shapes
:*7
_class-
+)loc:@batch_normalization/moments/variance
Á
Ftraining/Adam/gradients/batch_normalization/moments/variance_grad/SizeConst*
value	B :*
_output_shapes
: *
dtype0*7
_class-
+)loc:@batch_normalization/moments/variance
Ş
Etraining/Adam/gradients/batch_normalization/moments/variance_grad/addAdd6batch_normalization/moments/variance/reduction_indicesFtraining/Adam/gradients/batch_normalization/moments/variance_grad/Size*
T0*
_output_shapes
:*7
_class-
+)loc:@batch_normalization/moments/variance
ž
Etraining/Adam/gradients/batch_normalization/moments/variance_grad/modFloorModEtraining/Adam/gradients/batch_normalization/moments/variance_grad/addFtraining/Adam/gradients/batch_normalization/moments/variance_grad/Size*
T0*
_output_shapes
:*7
_class-
+)loc:@batch_normalization/moments/variance
Ě
Itraining/Adam/gradients/batch_normalization/moments/variance_grad/Shape_1Const*
valueB:*
_output_shapes
:*
dtype0*7
_class-
+)loc:@batch_normalization/moments/variance
Č
Mtraining/Adam/gradients/batch_normalization/moments/variance_grad/range/startConst*
value	B : *
_output_shapes
: *
dtype0*7
_class-
+)loc:@batch_normalization/moments/variance
Č
Mtraining/Adam/gradients/batch_normalization/moments/variance_grad/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0*7
_class-
+)loc:@batch_normalization/moments/variance

Gtraining/Adam/gradients/batch_normalization/moments/variance_grad/rangeRangeMtraining/Adam/gradients/batch_normalization/moments/variance_grad/range/startFtraining/Adam/gradients/batch_normalization/moments/variance_grad/SizeMtraining/Adam/gradients/batch_normalization/moments/variance_grad/range/delta*
_output_shapes
:*

Tidx0*7
_class-
+)loc:@batch_normalization/moments/variance
Ç
Ltraining/Adam/gradients/batch_normalization/moments/variance_grad/Fill/valueConst*
value	B :*
_output_shapes
: *
dtype0*7
_class-
+)loc:@batch_normalization/moments/variance
×
Ftraining/Adam/gradients/batch_normalization/moments/variance_grad/FillFillItraining/Adam/gradients/batch_normalization/moments/variance_grad/Shape_1Ltraining/Adam/gradients/batch_normalization/moments/variance_grad/Fill/value*
T0*
_output_shapes
:*

index_type0*7
_class-
+)loc:@batch_normalization/moments/variance
č
Otraining/Adam/gradients/batch_normalization/moments/variance_grad/DynamicStitchDynamicStitchGtraining/Adam/gradients/batch_normalization/moments/variance_grad/rangeEtraining/Adam/gradients/batch_normalization/moments/variance_grad/modGtraining/Adam/gradients/batch_normalization/moments/variance_grad/ShapeFtraining/Adam/gradients/batch_normalization/moments/variance_grad/Fill*
T0*
N*
_output_shapes
:*7
_class-
+)loc:@batch_normalization/moments/variance
Ć
Ktraining/Adam/gradients/batch_normalization/moments/variance_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0*7
_class-
+)loc:@batch_normalization/moments/variance
Đ
Itraining/Adam/gradients/batch_normalization/moments/variance_grad/MaximumMaximumOtraining/Adam/gradients/batch_normalization/moments/variance_grad/DynamicStitchKtraining/Adam/gradients/batch_normalization/moments/variance_grad/Maximum/y*
T0*
_output_shapes
:*7
_class-
+)loc:@batch_normalization/moments/variance
Č
Jtraining/Adam/gradients/batch_normalization/moments/variance_grad/floordivFloorDivGtraining/Adam/gradients/batch_normalization/moments/variance_grad/ShapeItraining/Adam/gradients/batch_normalization/moments/variance_grad/Maximum*
T0*
_output_shapes
:*7
_class-
+)loc:@batch_normalization/moments/variance
ó
Itraining/Adam/gradients/batch_normalization/moments/variance_grad/ReshapeReshapeJtraining/Adam/gradients/batch_normalization/moments/Squeeze_1_grad/ReshapeOtraining/Adam/gradients/batch_normalization/moments/variance_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*7
_class-
+)loc:@batch_normalization/moments/variance
ë
Ftraining/Adam/gradients/batch_normalization/moments/variance_grad/TileTileItraining/Adam/gradients/batch_normalization/moments/variance_grad/ReshapeJtraining/Adam/gradients/batch_normalization/moments/variance_grad/floordiv*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

Tmultiples0*7
_class-
+)loc:@batch_normalization/moments/variance
ď
Itraining/Adam/gradients/batch_normalization/moments/variance_grad/Shape_2Shape-batch_normalization/moments/SquaredDifference*
out_type0*
T0*
_output_shapes
:*7
_class-
+)loc:@batch_normalization/moments/variance
Ó
Itraining/Adam/gradients/batch_normalization/moments/variance_grad/Shape_3Const*
valueB"   d   *
_output_shapes
:*
dtype0*7
_class-
+)loc:@batch_normalization/moments/variance
Ę
Gtraining/Adam/gradients/batch_normalization/moments/variance_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0*7
_class-
+)loc:@batch_normalization/moments/variance
Ů
Ftraining/Adam/gradients/batch_normalization/moments/variance_grad/ProdProdItraining/Adam/gradients/batch_normalization/moments/variance_grad/Shape_2Gtraining/Adam/gradients/batch_normalization/moments/variance_grad/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*7
_class-
+)loc:@batch_normalization/moments/variance
Ě
Itraining/Adam/gradients/batch_normalization/moments/variance_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0*7
_class-
+)loc:@batch_normalization/moments/variance
Ý
Htraining/Adam/gradients/batch_normalization/moments/variance_grad/Prod_1ProdItraining/Adam/gradients/batch_normalization/moments/variance_grad/Shape_3Itraining/Adam/gradients/batch_normalization/moments/variance_grad/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*7
_class-
+)loc:@batch_normalization/moments/variance
Č
Mtraining/Adam/gradients/batch_normalization/moments/variance_grad/Maximum_1/yConst*
value	B :*
_output_shapes
: *
dtype0*7
_class-
+)loc:@batch_normalization/moments/variance
É
Ktraining/Adam/gradients/batch_normalization/moments/variance_grad/Maximum_1MaximumHtraining/Adam/gradients/batch_normalization/moments/variance_grad/Prod_1Mtraining/Adam/gradients/batch_normalization/moments/variance_grad/Maximum_1/y*
T0*
_output_shapes
: *7
_class-
+)loc:@batch_normalization/moments/variance
Ç
Ltraining/Adam/gradients/batch_normalization/moments/variance_grad/floordiv_1FloorDivFtraining/Adam/gradients/batch_normalization/moments/variance_grad/ProdKtraining/Adam/gradients/batch_normalization/moments/variance_grad/Maximum_1*
T0*
_output_shapes
: *7
_class-
+)loc:@batch_normalization/moments/variance

Ftraining/Adam/gradients/batch_normalization/moments/variance_grad/CastCastLtraining/Adam/gradients/batch_normalization/moments/variance_grad/floordiv_1*

DstT0*
_output_shapes
: *7
_class-
+)loc:@batch_normalization/moments/variance*

SrcT0
Ď
Itraining/Adam/gradients/batch_normalization/moments/variance_grad/truedivRealDivFtraining/Adam/gradients/batch_normalization/moments/variance_grad/TileFtraining/Adam/gradients/batch_normalization/moments/variance_grad/Cast*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*7
_class-
+)loc:@batch_normalization/moments/variance
á
Ptraining/Adam/gradients/batch_normalization/moments/SquaredDifference_grad/ShapeShapehidden1/BiasAdd*
out_type0*
T0*
_output_shapes
:*@
_class6
42loc:@batch_normalization/moments/SquaredDifference
ĺ
Rtraining/Adam/gradients/batch_normalization/moments/SquaredDifference_grad/Shape_1Const*
valueB"   d   *
_output_shapes
:*
dtype0*@
_class6
42loc:@batch_normalization/moments/SquaredDifference

`training/Adam/gradients/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgsPtraining/Adam/gradients/batch_normalization/moments/SquaredDifference_grad/ShapeRtraining/Adam/gradients/batch_normalization/moments/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*@
_class6
42loc:@batch_normalization/moments/SquaredDifference
¤
Qtraining/Adam/gradients/batch_normalization/moments/SquaredDifference_grad/scalarConstJ^training/Adam/gradients/batch_normalization/moments/variance_grad/truediv*
valueB
 *   @*
_output_shapes
: *
dtype0*@
_class6
42loc:@batch_normalization/moments/SquaredDifference
ç
Ntraining/Adam/gradients/batch_normalization/moments/SquaredDifference_grad/mulMulQtraining/Adam/gradients/batch_normalization/moments/SquaredDifference_grad/scalarItraining/Adam/gradients/batch_normalization/moments/variance_grad/truediv*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*@
_class6
42loc:@batch_normalization/moments/SquaredDifference
Đ
Ntraining/Adam/gradients/batch_normalization/moments/SquaredDifference_grad/subSubhidden1/BiasAdd(batch_normalization/moments/StopGradientJ^training/Adam/gradients/batch_normalization/moments/variance_grad/truediv*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*@
_class6
42loc:@batch_normalization/moments/SquaredDifference
ë
Ptraining/Adam/gradients/batch_normalization/moments/SquaredDifference_grad/mul_1MulNtraining/Adam/gradients/batch_normalization/moments/SquaredDifference_grad/mulNtraining/Adam/gradients/batch_normalization/moments/SquaredDifference_grad/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*@
_class6
42loc:@batch_normalization/moments/SquaredDifference

Ntraining/Adam/gradients/batch_normalization/moments/SquaredDifference_grad/SumSumPtraining/Adam/gradients/batch_normalization/moments/SquaredDifference_grad/mul_1`training/Adam/gradients/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*@
_class6
42loc:@batch_normalization/moments/SquaredDifference

Rtraining/Adam/gradients/batch_normalization/moments/SquaredDifference_grad/ReshapeReshapeNtraining/Adam/gradients/batch_normalization/moments/SquaredDifference_grad/SumPtraining/Adam/gradients/batch_normalization/moments/SquaredDifference_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*@
_class6
42loc:@batch_normalization/moments/SquaredDifference

Ptraining/Adam/gradients/batch_normalization/moments/SquaredDifference_grad/Sum_1SumPtraining/Adam/gradients/batch_normalization/moments/SquaredDifference_grad/mul_1btraining/Adam/gradients/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*@
_class6
42loc:@batch_normalization/moments/SquaredDifference
ţ
Ttraining/Adam/gradients/batch_normalization/moments/SquaredDifference_grad/Reshape_1ReshapePtraining/Adam/gradients/batch_normalization/moments/SquaredDifference_grad/Sum_1Rtraining/Adam/gradients/batch_normalization/moments/SquaredDifference_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:d*@
_class6
42loc:@batch_normalization/moments/SquaredDifference

Ntraining/Adam/gradients/batch_normalization/moments/SquaredDifference_grad/NegNegTtraining/Adam/gradients/batch_normalization/moments/SquaredDifference_grad/Reshape_1*
T0*
_output_shapes

:d*@
_class6
42loc:@batch_normalization/moments/SquaredDifference
Ç
Ctraining/Adam/gradients/batch_normalization/moments/mean_grad/ShapeShapehidden1/BiasAdd*
out_type0*
T0*
_output_shapes
:*3
_class)
'%loc:@batch_normalization/moments/mean
š
Btraining/Adam/gradients/batch_normalization/moments/mean_grad/SizeConst*
value	B :*
_output_shapes
: *
dtype0*3
_class)
'%loc:@batch_normalization/moments/mean

Atraining/Adam/gradients/batch_normalization/moments/mean_grad/addAdd2batch_normalization/moments/mean/reduction_indicesBtraining/Adam/gradients/batch_normalization/moments/mean_grad/Size*
T0*
_output_shapes
:*3
_class)
'%loc:@batch_normalization/moments/mean
Ž
Atraining/Adam/gradients/batch_normalization/moments/mean_grad/modFloorModAtraining/Adam/gradients/batch_normalization/moments/mean_grad/addBtraining/Adam/gradients/batch_normalization/moments/mean_grad/Size*
T0*
_output_shapes
:*3
_class)
'%loc:@batch_normalization/moments/mean
Ä
Etraining/Adam/gradients/batch_normalization/moments/mean_grad/Shape_1Const*
valueB:*
_output_shapes
:*
dtype0*3
_class)
'%loc:@batch_normalization/moments/mean
Ŕ
Itraining/Adam/gradients/batch_normalization/moments/mean_grad/range/startConst*
value	B : *
_output_shapes
: *
dtype0*3
_class)
'%loc:@batch_normalization/moments/mean
Ŕ
Itraining/Adam/gradients/batch_normalization/moments/mean_grad/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0*3
_class)
'%loc:@batch_normalization/moments/mean

Ctraining/Adam/gradients/batch_normalization/moments/mean_grad/rangeRangeItraining/Adam/gradients/batch_normalization/moments/mean_grad/range/startBtraining/Adam/gradients/batch_normalization/moments/mean_grad/SizeItraining/Adam/gradients/batch_normalization/moments/mean_grad/range/delta*
_output_shapes
:*

Tidx0*3
_class)
'%loc:@batch_normalization/moments/mean
ż
Htraining/Adam/gradients/batch_normalization/moments/mean_grad/Fill/valueConst*
value	B :*
_output_shapes
: *
dtype0*3
_class)
'%loc:@batch_normalization/moments/mean
Ç
Btraining/Adam/gradients/batch_normalization/moments/mean_grad/FillFillEtraining/Adam/gradients/batch_normalization/moments/mean_grad/Shape_1Htraining/Adam/gradients/batch_normalization/moments/mean_grad/Fill/value*
T0*
_output_shapes
:*

index_type0*3
_class)
'%loc:@batch_normalization/moments/mean
Đ
Ktraining/Adam/gradients/batch_normalization/moments/mean_grad/DynamicStitchDynamicStitchCtraining/Adam/gradients/batch_normalization/moments/mean_grad/rangeAtraining/Adam/gradients/batch_normalization/moments/mean_grad/modCtraining/Adam/gradients/batch_normalization/moments/mean_grad/ShapeBtraining/Adam/gradients/batch_normalization/moments/mean_grad/Fill*
T0*
N*
_output_shapes
:*3
_class)
'%loc:@batch_normalization/moments/mean
ž
Gtraining/Adam/gradients/batch_normalization/moments/mean_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0*3
_class)
'%loc:@batch_normalization/moments/mean
Ŕ
Etraining/Adam/gradients/batch_normalization/moments/mean_grad/MaximumMaximumKtraining/Adam/gradients/batch_normalization/moments/mean_grad/DynamicStitchGtraining/Adam/gradients/batch_normalization/moments/mean_grad/Maximum/y*
T0*
_output_shapes
:*3
_class)
'%loc:@batch_normalization/moments/mean
¸
Ftraining/Adam/gradients/batch_normalization/moments/mean_grad/floordivFloorDivCtraining/Adam/gradients/batch_normalization/moments/mean_grad/ShapeEtraining/Adam/gradients/batch_normalization/moments/mean_grad/Maximum*
T0*
_output_shapes
:*3
_class)
'%loc:@batch_normalization/moments/mean
ĺ
Etraining/Adam/gradients/batch_normalization/moments/mean_grad/ReshapeReshapeHtraining/Adam/gradients/batch_normalization/moments/Squeeze_grad/ReshapeKtraining/Adam/gradients/batch_normalization/moments/mean_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*3
_class)
'%loc:@batch_normalization/moments/mean
Ű
Btraining/Adam/gradients/batch_normalization/moments/mean_grad/TileTileEtraining/Adam/gradients/batch_normalization/moments/mean_grad/ReshapeFtraining/Adam/gradients/batch_normalization/moments/mean_grad/floordiv*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

Tmultiples0*3
_class)
'%loc:@batch_normalization/moments/mean
É
Etraining/Adam/gradients/batch_normalization/moments/mean_grad/Shape_2Shapehidden1/BiasAdd*
out_type0*
T0*
_output_shapes
:*3
_class)
'%loc:@batch_normalization/moments/mean
Ë
Etraining/Adam/gradients/batch_normalization/moments/mean_grad/Shape_3Const*
valueB"   d   *
_output_shapes
:*
dtype0*3
_class)
'%loc:@batch_normalization/moments/mean
Â
Ctraining/Adam/gradients/batch_normalization/moments/mean_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0*3
_class)
'%loc:@batch_normalization/moments/mean
É
Btraining/Adam/gradients/batch_normalization/moments/mean_grad/ProdProdEtraining/Adam/gradients/batch_normalization/moments/mean_grad/Shape_2Ctraining/Adam/gradients/batch_normalization/moments/mean_grad/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*3
_class)
'%loc:@batch_normalization/moments/mean
Ä
Etraining/Adam/gradients/batch_normalization/moments/mean_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0*3
_class)
'%loc:@batch_normalization/moments/mean
Í
Dtraining/Adam/gradients/batch_normalization/moments/mean_grad/Prod_1ProdEtraining/Adam/gradients/batch_normalization/moments/mean_grad/Shape_3Etraining/Adam/gradients/batch_normalization/moments/mean_grad/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*3
_class)
'%loc:@batch_normalization/moments/mean
Ŕ
Itraining/Adam/gradients/batch_normalization/moments/mean_grad/Maximum_1/yConst*
value	B :*
_output_shapes
: *
dtype0*3
_class)
'%loc:@batch_normalization/moments/mean
š
Gtraining/Adam/gradients/batch_normalization/moments/mean_grad/Maximum_1MaximumDtraining/Adam/gradients/batch_normalization/moments/mean_grad/Prod_1Itraining/Adam/gradients/batch_normalization/moments/mean_grad/Maximum_1/y*
T0*
_output_shapes
: *3
_class)
'%loc:@batch_normalization/moments/mean
ˇ
Htraining/Adam/gradients/batch_normalization/moments/mean_grad/floordiv_1FloorDivBtraining/Adam/gradients/batch_normalization/moments/mean_grad/ProdGtraining/Adam/gradients/batch_normalization/moments/mean_grad/Maximum_1*
T0*
_output_shapes
: *3
_class)
'%loc:@batch_normalization/moments/mean
ů
Btraining/Adam/gradients/batch_normalization/moments/mean_grad/CastCastHtraining/Adam/gradients/batch_normalization/moments/mean_grad/floordiv_1*

DstT0*
_output_shapes
: *3
_class)
'%loc:@batch_normalization/moments/mean*

SrcT0
ż
Etraining/Adam/gradients/batch_normalization/moments/mean_grad/truedivRealDivBtraining/Adam/gradients/batch_normalization/moments/mean_grad/TileBtraining/Adam/gradients/batch_normalization/moments/mean_grad/Cast*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*3
_class)
'%loc:@batch_normalization/moments/mean
ţ
training/Adam/gradients/AddN_5AddNHtraining/Adam/gradients/batch_normalization/batchnorm/mul_1_grad/ReshapeRtraining/Adam/gradients/batch_normalization/moments/SquaredDifference_grad/ReshapeEtraining/Adam/gradients/batch_normalization/moments/mean_grad/truediv*
T0*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*6
_class,
*(loc:@batch_normalization/batchnorm/mul_1
Ç
8training/Adam/gradients/hidden1/BiasAdd_grad/BiasAddGradBiasAddGradtraining/Adam/gradients/AddN_5*
T0*
data_formatNHWC*
_output_shapes
:d*"
_class
loc:@hidden1/BiasAdd
ö
2training/Adam/gradients/hidden1/MatMul_grad/MatMulMatMultraining/Adam/gradients/AddN_5hidden1/MatMul/ReadVariableOp*
transpose_b(*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*!
_class
loc:@hidden1/MatMul
ß
4training/Adam/gradients/hidden1/MatMul_grad/MatMul_1MatMulhidden1_inputtraining/Adam/gradients/AddN_5*
transpose_b( *
T0*
transpose_a(*
_output_shapes

:d*!
_class
loc:@hidden1/MatMul
U
training/Adam/ConstConst*
value	B	 R*
_output_shapes
: *
dtype0	
k
!training/Adam/AssignAddVariableOpAssignAddVariableOpAdam/iterationstraining/Adam/Const*
dtype0	

training/Adam/ReadVariableOpReadVariableOpAdam/iterations"^training/Adam/AssignAddVariableOp*
_output_shapes
: *
dtype0	
i
!training/Adam/Cast/ReadVariableOpReadVariableOpAdam/iterations*
_output_shapes
: *
dtype0	
m
training/Adam/CastCast!training/Adam/Cast/ReadVariableOp*

DstT0*
_output_shapes
: *

SrcT0	
X
training/Adam/add/yConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
b
training/Adam/addAddtraining/Adam/Casttraining/Adam/add/y*
T0*
_output_shapes
: 
d
 training/Adam/Pow/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
n
training/Adam/PowPow training/Adam/Pow/ReadVariableOptraining/Adam/add*
T0*
_output_shapes
: 
X
training/Adam/sub/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
a
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow*
T0*
_output_shapes
: 
Z
training/Adam/Const_1Const*
valueB
 *    *
_output_shapes
: *
dtype0
Z
training/Adam/Const_2Const*
valueB
 *  *
_output_shapes
: *
dtype0
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_2*
T0*
_output_shapes
: 

training/Adam/clip_by_valueMaximum#training/Adam/clip_by_value/Minimumtraining/Adam/Const_1*
T0*
_output_shapes
: 
X
training/Adam/SqrtSqrttraining/Adam/clip_by_value*
T0*
_output_shapes
: 
f
"training/Adam/Pow_1/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
r
training/Adam/Pow_1Pow"training/Adam/Pow_1/ReadVariableOptraining/Adam/add*
T0*
_output_shapes
: 
Z
training/Adam/sub_1/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
g
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow_1*
T0*
_output_shapes
: 
j
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
T0*
_output_shapes
: 
^
training/Adam/ReadVariableOp_1ReadVariableOpAdam/lr*
_output_shapes
: *
dtype0
p
training/Adam/mulMultraining/Adam/ReadVariableOp_1training/Adam/truediv*
T0*
_output_shapes
: 
h
training/Adam/zerosConst*
valueBd*    *
_output_shapes

:d*
dtype0

training/Adam/VariableVarHandleOp*
_output_shapes
: *
dtype0*'
shared_nametraining/Adam/Variable*
	container *
shape
:d
}
7training/Adam/Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable*
_output_shapes
: 

training/Adam/Variable/AssignAssignVariableOptraining/Adam/Variabletraining/Adam/zeros*
dtype0*)
_class
loc:@training/Adam/Variable
Ź
*training/Adam/Variable/Read/ReadVariableOpReadVariableOptraining/Adam/Variable*
_output_shapes

:d*
dtype0*)
_class
loc:@training/Adam/Variable
b
training/Adam/zeros_1Const*
valueBd*    *
_output_shapes
:d*
dtype0

training/Adam/Variable_1VarHandleOp*
_output_shapes
: *
dtype0*)
shared_nametraining/Adam/Variable_1*
	container *
shape:d

9training/Adam/Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_1*
_output_shapes
: 

training/Adam/Variable_1/AssignAssignVariableOptraining/Adam/Variable_1training/Adam/zeros_1*
dtype0*+
_class!
loc:@training/Adam/Variable_1
Ž
,training/Adam/Variable_1/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_1*
_output_shapes
:d*
dtype0*+
_class!
loc:@training/Adam/Variable_1
b
training/Adam/zeros_2Const*
valueBd*    *
_output_shapes
:d*
dtype0

training/Adam/Variable_2VarHandleOp*
_output_shapes
: *
dtype0*)
shared_nametraining/Adam/Variable_2*
	container *
shape:d

9training/Adam/Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_2*
_output_shapes
: 

training/Adam/Variable_2/AssignAssignVariableOptraining/Adam/Variable_2training/Adam/zeros_2*
dtype0*+
_class!
loc:@training/Adam/Variable_2
Ž
,training/Adam/Variable_2/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_2*
_output_shapes
:d*
dtype0*+
_class!
loc:@training/Adam/Variable_2
b
training/Adam/zeros_3Const*
valueBd*    *
_output_shapes
:d*
dtype0

training/Adam/Variable_3VarHandleOp*
_output_shapes
: *
dtype0*)
shared_nametraining/Adam/Variable_3*
	container *
shape:d

9training/Adam/Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_3*
_output_shapes
: 

training/Adam/Variable_3/AssignAssignVariableOptraining/Adam/Variable_3training/Adam/zeros_3*
dtype0*+
_class!
loc:@training/Adam/Variable_3
Ž
,training/Adam/Variable_3/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_3*
_output_shapes
:d*
dtype0*+
_class!
loc:@training/Adam/Variable_3
v
%training/Adam/zeros_4/shape_as_tensorConst*
valueB"d   d   *
_output_shapes
:*
dtype0
`
training/Adam/zeros_4/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0

training/Adam/zeros_4Fill%training/Adam/zeros_4/shape_as_tensortraining/Adam/zeros_4/Const*
T0*
_output_shapes

:dd*

index_type0

training/Adam/Variable_4VarHandleOp*
_output_shapes
: *
dtype0*)
shared_nametraining/Adam/Variable_4*
	container *
shape
:dd

9training/Adam/Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_4*
_output_shapes
: 

training/Adam/Variable_4/AssignAssignVariableOptraining/Adam/Variable_4training/Adam/zeros_4*
dtype0*+
_class!
loc:@training/Adam/Variable_4
˛
,training/Adam/Variable_4/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_4*
_output_shapes

:dd*
dtype0*+
_class!
loc:@training/Adam/Variable_4
b
training/Adam/zeros_5Const*
valueBd*    *
_output_shapes
:d*
dtype0

training/Adam/Variable_5VarHandleOp*
_output_shapes
: *
dtype0*)
shared_nametraining/Adam/Variable_5*
	container *
shape:d

9training/Adam/Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_5*
_output_shapes
: 

training/Adam/Variable_5/AssignAssignVariableOptraining/Adam/Variable_5training/Adam/zeros_5*
dtype0*+
_class!
loc:@training/Adam/Variable_5
Ž
,training/Adam/Variable_5/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_5*
_output_shapes
:d*
dtype0*+
_class!
loc:@training/Adam/Variable_5
b
training/Adam/zeros_6Const*
valueBd*    *
_output_shapes
:d*
dtype0

training/Adam/Variable_6VarHandleOp*
_output_shapes
: *
dtype0*)
shared_nametraining/Adam/Variable_6*
	container *
shape:d

9training/Adam/Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_6*
_output_shapes
: 

training/Adam/Variable_6/AssignAssignVariableOptraining/Adam/Variable_6training/Adam/zeros_6*
dtype0*+
_class!
loc:@training/Adam/Variable_6
Ž
,training/Adam/Variable_6/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_6*
_output_shapes
:d*
dtype0*+
_class!
loc:@training/Adam/Variable_6
b
training/Adam/zeros_7Const*
valueBd*    *
_output_shapes
:d*
dtype0

training/Adam/Variable_7VarHandleOp*
_output_shapes
: *
dtype0*)
shared_nametraining/Adam/Variable_7*
	container *
shape:d

9training/Adam/Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_7*
_output_shapes
: 

training/Adam/Variable_7/AssignAssignVariableOptraining/Adam/Variable_7training/Adam/zeros_7*
dtype0*+
_class!
loc:@training/Adam/Variable_7
Ž
,training/Adam/Variable_7/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_7*
_output_shapes
:d*
dtype0*+
_class!
loc:@training/Adam/Variable_7
j
training/Adam/zeros_8Const*
valueBd*    *
_output_shapes

:d*
dtype0

training/Adam/Variable_8VarHandleOp*
_output_shapes
: *
dtype0*)
shared_nametraining/Adam/Variable_8*
	container *
shape
:d

9training/Adam/Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_8*
_output_shapes
: 

training/Adam/Variable_8/AssignAssignVariableOptraining/Adam/Variable_8training/Adam/zeros_8*
dtype0*+
_class!
loc:@training/Adam/Variable_8
˛
,training/Adam/Variable_8/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_8*
_output_shapes

:d*
dtype0*+
_class!
loc:@training/Adam/Variable_8
b
training/Adam/zeros_9Const*
valueB*    *
_output_shapes
:*
dtype0

training/Adam/Variable_9VarHandleOp*
_output_shapes
: *
dtype0*)
shared_nametraining/Adam/Variable_9*
	container *
shape:

9training/Adam/Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_9*
_output_shapes
: 

training/Adam/Variable_9/AssignAssignVariableOptraining/Adam/Variable_9training/Adam/zeros_9*
dtype0*+
_class!
loc:@training/Adam/Variable_9
Ž
,training/Adam/Variable_9/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_9*
_output_shapes
:*
dtype0*+
_class!
loc:@training/Adam/Variable_9
k
training/Adam/zeros_10Const*
valueBd*    *
_output_shapes

:d*
dtype0

training/Adam/Variable_10VarHandleOp*
_output_shapes
: *
dtype0**
shared_nametraining/Adam/Variable_10*
	container *
shape
:d

:training/Adam/Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_10*
_output_shapes
: 
˘
 training/Adam/Variable_10/AssignAssignVariableOptraining/Adam/Variable_10training/Adam/zeros_10*
dtype0*,
_class"
 loc:@training/Adam/Variable_10
ľ
-training/Adam/Variable_10/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_10*
_output_shapes

:d*
dtype0*,
_class"
 loc:@training/Adam/Variable_10
c
training/Adam/zeros_11Const*
valueBd*    *
_output_shapes
:d*
dtype0

training/Adam/Variable_11VarHandleOp*
_output_shapes
: *
dtype0**
shared_nametraining/Adam/Variable_11*
	container *
shape:d

:training/Adam/Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_11*
_output_shapes
: 
˘
 training/Adam/Variable_11/AssignAssignVariableOptraining/Adam/Variable_11training/Adam/zeros_11*
dtype0*,
_class"
 loc:@training/Adam/Variable_11
ą
-training/Adam/Variable_11/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_11*
_output_shapes
:d*
dtype0*,
_class"
 loc:@training/Adam/Variable_11
c
training/Adam/zeros_12Const*
valueBd*    *
_output_shapes
:d*
dtype0

training/Adam/Variable_12VarHandleOp*
_output_shapes
: *
dtype0**
shared_nametraining/Adam/Variable_12*
	container *
shape:d

:training/Adam/Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_12*
_output_shapes
: 
˘
 training/Adam/Variable_12/AssignAssignVariableOptraining/Adam/Variable_12training/Adam/zeros_12*
dtype0*,
_class"
 loc:@training/Adam/Variable_12
ą
-training/Adam/Variable_12/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_12*
_output_shapes
:d*
dtype0*,
_class"
 loc:@training/Adam/Variable_12
c
training/Adam/zeros_13Const*
valueBd*    *
_output_shapes
:d*
dtype0

training/Adam/Variable_13VarHandleOp*
_output_shapes
: *
dtype0**
shared_nametraining/Adam/Variable_13*
	container *
shape:d

:training/Adam/Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_13*
_output_shapes
: 
˘
 training/Adam/Variable_13/AssignAssignVariableOptraining/Adam/Variable_13training/Adam/zeros_13*
dtype0*,
_class"
 loc:@training/Adam/Variable_13
ą
-training/Adam/Variable_13/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_13*
_output_shapes
:d*
dtype0*,
_class"
 loc:@training/Adam/Variable_13
w
&training/Adam/zeros_14/shape_as_tensorConst*
valueB"d   d   *
_output_shapes
:*
dtype0
a
training/Adam/zeros_14/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0

training/Adam/zeros_14Fill&training/Adam/zeros_14/shape_as_tensortraining/Adam/zeros_14/Const*
T0*
_output_shapes

:dd*

index_type0

training/Adam/Variable_14VarHandleOp*
_output_shapes
: *
dtype0**
shared_nametraining/Adam/Variable_14*
	container *
shape
:dd

:training/Adam/Variable_14/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_14*
_output_shapes
: 
˘
 training/Adam/Variable_14/AssignAssignVariableOptraining/Adam/Variable_14training/Adam/zeros_14*
dtype0*,
_class"
 loc:@training/Adam/Variable_14
ľ
-training/Adam/Variable_14/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_14*
_output_shapes

:dd*
dtype0*,
_class"
 loc:@training/Adam/Variable_14
c
training/Adam/zeros_15Const*
valueBd*    *
_output_shapes
:d*
dtype0

training/Adam/Variable_15VarHandleOp*
_output_shapes
: *
dtype0**
shared_nametraining/Adam/Variable_15*
	container *
shape:d

:training/Adam/Variable_15/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_15*
_output_shapes
: 
˘
 training/Adam/Variable_15/AssignAssignVariableOptraining/Adam/Variable_15training/Adam/zeros_15*
dtype0*,
_class"
 loc:@training/Adam/Variable_15
ą
-training/Adam/Variable_15/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_15*
_output_shapes
:d*
dtype0*,
_class"
 loc:@training/Adam/Variable_15
c
training/Adam/zeros_16Const*
valueBd*    *
_output_shapes
:d*
dtype0

training/Adam/Variable_16VarHandleOp*
_output_shapes
: *
dtype0**
shared_nametraining/Adam/Variable_16*
	container *
shape:d

:training/Adam/Variable_16/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_16*
_output_shapes
: 
˘
 training/Adam/Variable_16/AssignAssignVariableOptraining/Adam/Variable_16training/Adam/zeros_16*
dtype0*,
_class"
 loc:@training/Adam/Variable_16
ą
-training/Adam/Variable_16/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_16*
_output_shapes
:d*
dtype0*,
_class"
 loc:@training/Adam/Variable_16
c
training/Adam/zeros_17Const*
valueBd*    *
_output_shapes
:d*
dtype0

training/Adam/Variable_17VarHandleOp*
_output_shapes
: *
dtype0**
shared_nametraining/Adam/Variable_17*
	container *
shape:d

:training/Adam/Variable_17/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_17*
_output_shapes
: 
˘
 training/Adam/Variable_17/AssignAssignVariableOptraining/Adam/Variable_17training/Adam/zeros_17*
dtype0*,
_class"
 loc:@training/Adam/Variable_17
ą
-training/Adam/Variable_17/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_17*
_output_shapes
:d*
dtype0*,
_class"
 loc:@training/Adam/Variable_17
k
training/Adam/zeros_18Const*
valueBd*    *
_output_shapes

:d*
dtype0

training/Adam/Variable_18VarHandleOp*
_output_shapes
: *
dtype0**
shared_nametraining/Adam/Variable_18*
	container *
shape
:d

:training/Adam/Variable_18/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_18*
_output_shapes
: 
˘
 training/Adam/Variable_18/AssignAssignVariableOptraining/Adam/Variable_18training/Adam/zeros_18*
dtype0*,
_class"
 loc:@training/Adam/Variable_18
ľ
-training/Adam/Variable_18/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_18*
_output_shapes

:d*
dtype0*,
_class"
 loc:@training/Adam/Variable_18
c
training/Adam/zeros_19Const*
valueB*    *
_output_shapes
:*
dtype0

training/Adam/Variable_19VarHandleOp*
_output_shapes
: *
dtype0**
shared_nametraining/Adam/Variable_19*
	container *
shape:

:training/Adam/Variable_19/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_19*
_output_shapes
: 
˘
 training/Adam/Variable_19/AssignAssignVariableOptraining/Adam/Variable_19training/Adam/zeros_19*
dtype0*,
_class"
 loc:@training/Adam/Variable_19
ą
-training/Adam/Variable_19/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_19*
_output_shapes
:*
dtype0*,
_class"
 loc:@training/Adam/Variable_19
p
&training/Adam/zeros_20/shape_as_tensorConst*
valueB:*
_output_shapes
:*
dtype0
a
training/Adam/zeros_20/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0

training/Adam/zeros_20Fill&training/Adam/zeros_20/shape_as_tensortraining/Adam/zeros_20/Const*
T0*
_output_shapes
:*

index_type0

training/Adam/Variable_20VarHandleOp*
_output_shapes
: *
dtype0**
shared_nametraining/Adam/Variable_20*
	container *
shape:

:training/Adam/Variable_20/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_20*
_output_shapes
: 
˘
 training/Adam/Variable_20/AssignAssignVariableOptraining/Adam/Variable_20training/Adam/zeros_20*
dtype0*,
_class"
 loc:@training/Adam/Variable_20
ą
-training/Adam/Variable_20/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_20*
_output_shapes
:*
dtype0*,
_class"
 loc:@training/Adam/Variable_20
p
&training/Adam/zeros_21/shape_as_tensorConst*
valueB:*
_output_shapes
:*
dtype0
a
training/Adam/zeros_21/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0

training/Adam/zeros_21Fill&training/Adam/zeros_21/shape_as_tensortraining/Adam/zeros_21/Const*
T0*
_output_shapes
:*

index_type0

training/Adam/Variable_21VarHandleOp*
_output_shapes
: *
dtype0**
shared_nametraining/Adam/Variable_21*
	container *
shape:

:training/Adam/Variable_21/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_21*
_output_shapes
: 
˘
 training/Adam/Variable_21/AssignAssignVariableOptraining/Adam/Variable_21training/Adam/zeros_21*
dtype0*,
_class"
 loc:@training/Adam/Variable_21
ą
-training/Adam/Variable_21/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_21*
_output_shapes
:*
dtype0*,
_class"
 loc:@training/Adam/Variable_21
p
&training/Adam/zeros_22/shape_as_tensorConst*
valueB:*
_output_shapes
:*
dtype0
a
training/Adam/zeros_22/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0

training/Adam/zeros_22Fill&training/Adam/zeros_22/shape_as_tensortraining/Adam/zeros_22/Const*
T0*
_output_shapes
:*

index_type0

training/Adam/Variable_22VarHandleOp*
_output_shapes
: *
dtype0**
shared_nametraining/Adam/Variable_22*
	container *
shape:

:training/Adam/Variable_22/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_22*
_output_shapes
: 
˘
 training/Adam/Variable_22/AssignAssignVariableOptraining/Adam/Variable_22training/Adam/zeros_22*
dtype0*,
_class"
 loc:@training/Adam/Variable_22
ą
-training/Adam/Variable_22/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_22*
_output_shapes
:*
dtype0*,
_class"
 loc:@training/Adam/Variable_22
p
&training/Adam/zeros_23/shape_as_tensorConst*
valueB:*
_output_shapes
:*
dtype0
a
training/Adam/zeros_23/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0

training/Adam/zeros_23Fill&training/Adam/zeros_23/shape_as_tensortraining/Adam/zeros_23/Const*
T0*
_output_shapes
:*

index_type0

training/Adam/Variable_23VarHandleOp*
_output_shapes
: *
dtype0**
shared_nametraining/Adam/Variable_23*
	container *
shape:

:training/Adam/Variable_23/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_23*
_output_shapes
: 
˘
 training/Adam/Variable_23/AssignAssignVariableOptraining/Adam/Variable_23training/Adam/zeros_23*
dtype0*,
_class"
 loc:@training/Adam/Variable_23
ą
-training/Adam/Variable_23/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_23*
_output_shapes
:*
dtype0*,
_class"
 loc:@training/Adam/Variable_23
p
&training/Adam/zeros_24/shape_as_tensorConst*
valueB:*
_output_shapes
:*
dtype0
a
training/Adam/zeros_24/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0

training/Adam/zeros_24Fill&training/Adam/zeros_24/shape_as_tensortraining/Adam/zeros_24/Const*
T0*
_output_shapes
:*

index_type0

training/Adam/Variable_24VarHandleOp*
_output_shapes
: *
dtype0**
shared_nametraining/Adam/Variable_24*
	container *
shape:

:training/Adam/Variable_24/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_24*
_output_shapes
: 
˘
 training/Adam/Variable_24/AssignAssignVariableOptraining/Adam/Variable_24training/Adam/zeros_24*
dtype0*,
_class"
 loc:@training/Adam/Variable_24
ą
-training/Adam/Variable_24/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_24*
_output_shapes
:*
dtype0*,
_class"
 loc:@training/Adam/Variable_24
p
&training/Adam/zeros_25/shape_as_tensorConst*
valueB:*
_output_shapes
:*
dtype0
a
training/Adam/zeros_25/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0

training/Adam/zeros_25Fill&training/Adam/zeros_25/shape_as_tensortraining/Adam/zeros_25/Const*
T0*
_output_shapes
:*

index_type0

training/Adam/Variable_25VarHandleOp*
_output_shapes
: *
dtype0**
shared_nametraining/Adam/Variable_25*
	container *
shape:

:training/Adam/Variable_25/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_25*
_output_shapes
: 
˘
 training/Adam/Variable_25/AssignAssignVariableOptraining/Adam/Variable_25training/Adam/zeros_25*
dtype0*,
_class"
 loc:@training/Adam/Variable_25
ą
-training/Adam/Variable_25/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_25*
_output_shapes
:*
dtype0*,
_class"
 loc:@training/Adam/Variable_25
p
&training/Adam/zeros_26/shape_as_tensorConst*
valueB:*
_output_shapes
:*
dtype0
a
training/Adam/zeros_26/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0

training/Adam/zeros_26Fill&training/Adam/zeros_26/shape_as_tensortraining/Adam/zeros_26/Const*
T0*
_output_shapes
:*

index_type0

training/Adam/Variable_26VarHandleOp*
_output_shapes
: *
dtype0**
shared_nametraining/Adam/Variable_26*
	container *
shape:

:training/Adam/Variable_26/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_26*
_output_shapes
: 
˘
 training/Adam/Variable_26/AssignAssignVariableOptraining/Adam/Variable_26training/Adam/zeros_26*
dtype0*,
_class"
 loc:@training/Adam/Variable_26
ą
-training/Adam/Variable_26/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_26*
_output_shapes
:*
dtype0*,
_class"
 loc:@training/Adam/Variable_26
p
&training/Adam/zeros_27/shape_as_tensorConst*
valueB:*
_output_shapes
:*
dtype0
a
training/Adam/zeros_27/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0

training/Adam/zeros_27Fill&training/Adam/zeros_27/shape_as_tensortraining/Adam/zeros_27/Const*
T0*
_output_shapes
:*

index_type0

training/Adam/Variable_27VarHandleOp*
_output_shapes
: *
dtype0**
shared_nametraining/Adam/Variable_27*
	container *
shape:

:training/Adam/Variable_27/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_27*
_output_shapes
: 
˘
 training/Adam/Variable_27/AssignAssignVariableOptraining/Adam/Variable_27training/Adam/zeros_27*
dtype0*,
_class"
 loc:@training/Adam/Variable_27
ą
-training/Adam/Variable_27/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_27*
_output_shapes
:*
dtype0*,
_class"
 loc:@training/Adam/Variable_27
p
&training/Adam/zeros_28/shape_as_tensorConst*
valueB:*
_output_shapes
:*
dtype0
a
training/Adam/zeros_28/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0

training/Adam/zeros_28Fill&training/Adam/zeros_28/shape_as_tensortraining/Adam/zeros_28/Const*
T0*
_output_shapes
:*

index_type0

training/Adam/Variable_28VarHandleOp*
_output_shapes
: *
dtype0**
shared_nametraining/Adam/Variable_28*
	container *
shape:

:training/Adam/Variable_28/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_28*
_output_shapes
: 
˘
 training/Adam/Variable_28/AssignAssignVariableOptraining/Adam/Variable_28training/Adam/zeros_28*
dtype0*,
_class"
 loc:@training/Adam/Variable_28
ą
-training/Adam/Variable_28/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_28*
_output_shapes
:*
dtype0*,
_class"
 loc:@training/Adam/Variable_28
p
&training/Adam/zeros_29/shape_as_tensorConst*
valueB:*
_output_shapes
:*
dtype0
a
training/Adam/zeros_29/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0

training/Adam/zeros_29Fill&training/Adam/zeros_29/shape_as_tensortraining/Adam/zeros_29/Const*
T0*
_output_shapes
:*

index_type0

training/Adam/Variable_29VarHandleOp*
_output_shapes
: *
dtype0**
shared_nametraining/Adam/Variable_29*
	container *
shape:

:training/Adam/Variable_29/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_29*
_output_shapes
: 
˘
 training/Adam/Variable_29/AssignAssignVariableOptraining/Adam/Variable_29training/Adam/zeros_29*
dtype0*,
_class"
 loc:@training/Adam/Variable_29
ą
-training/Adam/Variable_29/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_29*
_output_shapes
:*
dtype0*,
_class"
 loc:@training/Adam/Variable_29
b
training/Adam/ReadVariableOp_2ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
y
"training/Adam/mul_1/ReadVariableOpReadVariableOptraining/Adam/Variable*
_output_shapes

:d*
dtype0

training/Adam/mul_1Multraining/Adam/ReadVariableOp_2"training/Adam/mul_1/ReadVariableOp*
T0*
_output_shapes

:d
b
training/Adam/ReadVariableOp_3ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
Z
training/Adam/sub_2/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
r
training/Adam/sub_2Subtraining/Adam/sub_2/xtraining/Adam/ReadVariableOp_3*
T0*
_output_shapes
: 

training/Adam/mul_2Multraining/Adam/sub_24training/Adam/gradients/hidden1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:d
m
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2*
T0*
_output_shapes

:d
b
training/Adam/ReadVariableOp_4ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
|
"training/Adam/mul_3/ReadVariableOpReadVariableOptraining/Adam/Variable_10*
_output_shapes

:d*
dtype0

training/Adam/mul_3Multraining/Adam/ReadVariableOp_4"training/Adam/mul_3/ReadVariableOp*
T0*
_output_shapes

:d
b
training/Adam/ReadVariableOp_5ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
Z
training/Adam/sub_3/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
r
training/Adam/sub_3Subtraining/Adam/sub_3/xtraining/Adam/ReadVariableOp_5*
T0*
_output_shapes
: 
}
training/Adam/SquareSquare4training/Adam/gradients/hidden1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:d
n
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
T0*
_output_shapes

:d
m
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4*
T0*
_output_shapes

:d
k
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1*
T0*
_output_shapes

:d
Z
training/Adam/Const_3Const*
valueB
 *    *
_output_shapes
: *
dtype0
Z
training/Adam/Const_4Const*
valueB
 *  *
_output_shapes
: *
dtype0

%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_4*
T0*
_output_shapes

:d

training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_3*
T0*
_output_shapes

:d
d
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*
T0*
_output_shapes

:d
Z
training/Adam/add_3/yConst*
valueB
 *żÖ3*
_output_shapes
: *
dtype0
p
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y*
T0*
_output_shapes

:d
u
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_3*
T0*
_output_shapes

:d
m
training/Adam/ReadVariableOp_6ReadVariableOphidden1/kernel*
_output_shapes

:d*
dtype0
|
training/Adam/sub_4Subtraining/Adam/ReadVariableOp_6training/Adam/truediv_1*
T0*
_output_shapes

:d
l
training/Adam/AssignVariableOpAssignVariableOptraining/Adam/Variabletraining/Adam/add_1*
dtype0

training/Adam/ReadVariableOp_7ReadVariableOptraining/Adam/Variable^training/Adam/AssignVariableOp*
_output_shapes

:d*
dtype0
q
 training/Adam/AssignVariableOp_1AssignVariableOptraining/Adam/Variable_10training/Adam/add_2*
dtype0

training/Adam/ReadVariableOp_8ReadVariableOptraining/Adam/Variable_10!^training/Adam/AssignVariableOp_1*
_output_shapes

:d*
dtype0
f
 training/Adam/AssignVariableOp_2AssignVariableOphidden1/kerneltraining/Adam/sub_4*
dtype0

training/Adam/ReadVariableOp_9ReadVariableOphidden1/kernel!^training/Adam/AssignVariableOp_2*
_output_shapes

:d*
dtype0
c
training/Adam/ReadVariableOp_10ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
w
"training/Adam/mul_6/ReadVariableOpReadVariableOptraining/Adam/Variable_1*
_output_shapes
:d*
dtype0

training/Adam/mul_6Multraining/Adam/ReadVariableOp_10"training/Adam/mul_6/ReadVariableOp*
T0*
_output_shapes
:d
c
training/Adam/ReadVariableOp_11ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
Z
training/Adam/sub_5/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
s
training/Adam/sub_5Subtraining/Adam/sub_5/xtraining/Adam/ReadVariableOp_11*
T0*
_output_shapes
: 

training/Adam/mul_7Multraining/Adam/sub_58training/Adam/gradients/hidden1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:d
i
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
T0*
_output_shapes
:d
c
training/Adam/ReadVariableOp_12ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
x
"training/Adam/mul_8/ReadVariableOpReadVariableOptraining/Adam/Variable_11*
_output_shapes
:d*
dtype0

training/Adam/mul_8Multraining/Adam/ReadVariableOp_12"training/Adam/mul_8/ReadVariableOp*
T0*
_output_shapes
:d
c
training/Adam/ReadVariableOp_13ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
Z
training/Adam/sub_6/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
s
training/Adam/sub_6Subtraining/Adam/sub_6/xtraining/Adam/ReadVariableOp_13*
T0*
_output_shapes
: 

training/Adam/Square_1Square8training/Adam/gradients/hidden1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:d
l
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
T0*
_output_shapes
:d
i
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
T0*
_output_shapes
:d
h
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*
T0*
_output_shapes
:d
Z
training/Adam/Const_5Const*
valueB
 *    *
_output_shapes
: *
dtype0
Z
training/Adam/Const_6Const*
valueB
 *  *
_output_shapes
: *
dtype0

%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_5training/Adam/Const_6*
T0*
_output_shapes
:d

training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_5*
T0*
_output_shapes
:d
`
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
T0*
_output_shapes
:d
Z
training/Adam/add_6/yConst*
valueB
 *żÖ3*
_output_shapes
: *
dtype0
l
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
T0*
_output_shapes
:d
r
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
T0*
_output_shapes
:d
h
training/Adam/ReadVariableOp_14ReadVariableOphidden1/bias*
_output_shapes
:d*
dtype0
y
training/Adam/sub_7Subtraining/Adam/ReadVariableOp_14training/Adam/truediv_2*
T0*
_output_shapes
:d
p
 training/Adam/AssignVariableOp_3AssignVariableOptraining/Adam/Variable_1training/Adam/add_4*
dtype0

training/Adam/ReadVariableOp_15ReadVariableOptraining/Adam/Variable_1!^training/Adam/AssignVariableOp_3*
_output_shapes
:d*
dtype0
q
 training/Adam/AssignVariableOp_4AssignVariableOptraining/Adam/Variable_11training/Adam/add_5*
dtype0

training/Adam/ReadVariableOp_16ReadVariableOptraining/Adam/Variable_11!^training/Adam/AssignVariableOp_4*
_output_shapes
:d*
dtype0
d
 training/Adam/AssignVariableOp_5AssignVariableOphidden1/biastraining/Adam/sub_7*
dtype0

training/Adam/ReadVariableOp_17ReadVariableOphidden1/bias!^training/Adam/AssignVariableOp_5*
_output_shapes
:d*
dtype0
c
training/Adam/ReadVariableOp_18ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
x
#training/Adam/mul_11/ReadVariableOpReadVariableOptraining/Adam/Variable_2*
_output_shapes
:d*
dtype0

training/Adam/mul_11Multraining/Adam/ReadVariableOp_18#training/Adam/mul_11/ReadVariableOp*
T0*
_output_shapes
:d
c
training/Adam/ReadVariableOp_19ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
Z
training/Adam/sub_8/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
s
training/Adam/sub_8Subtraining/Adam/sub_8/xtraining/Adam/ReadVariableOp_19*
T0*
_output_shapes
: 

training/Adam/mul_12Multraining/Adam/sub_8Dtraining/Adam/gradients/batch_normalization/batchnorm/mul_grad/Mul_1*
T0*
_output_shapes
:d
k
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
T0*
_output_shapes
:d
c
training/Adam/ReadVariableOp_20ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
y
#training/Adam/mul_13/ReadVariableOpReadVariableOptraining/Adam/Variable_12*
_output_shapes
:d*
dtype0

training/Adam/mul_13Multraining/Adam/ReadVariableOp_20#training/Adam/mul_13/ReadVariableOp*
T0*
_output_shapes
:d
c
training/Adam/ReadVariableOp_21ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
Z
training/Adam/sub_9/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
s
training/Adam/sub_9Subtraining/Adam/sub_9/xtraining/Adam/ReadVariableOp_21*
T0*
_output_shapes
: 

training/Adam/Square_2SquareDtraining/Adam/gradients/batch_normalization/batchnorm/mul_grad/Mul_1*
T0*
_output_shapes
:d
m
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
T0*
_output_shapes
:d
k
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
T0*
_output_shapes
:d
h
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
T0*
_output_shapes
:d
Z
training/Adam/Const_7Const*
valueB
 *    *
_output_shapes
: *
dtype0
Z
training/Adam/Const_8Const*
valueB
 *  *
_output_shapes
: *
dtype0

%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_8training/Adam/Const_8*
T0*
_output_shapes
:d

training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_7*
T0*
_output_shapes
:d
`
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
T0*
_output_shapes
:d
Z
training/Adam/add_9/yConst*
valueB
 *żÖ3*
_output_shapes
: *
dtype0
l
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
T0*
_output_shapes
:d
r
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*
T0*
_output_shapes
:d
u
training/Adam/ReadVariableOp_22ReadVariableOpbatch_normalization/gamma*
_output_shapes
:d*
dtype0
z
training/Adam/sub_10Subtraining/Adam/ReadVariableOp_22training/Adam/truediv_3*
T0*
_output_shapes
:d
p
 training/Adam/AssignVariableOp_6AssignVariableOptraining/Adam/Variable_2training/Adam/add_7*
dtype0

training/Adam/ReadVariableOp_23ReadVariableOptraining/Adam/Variable_2!^training/Adam/AssignVariableOp_6*
_output_shapes
:d*
dtype0
q
 training/Adam/AssignVariableOp_7AssignVariableOptraining/Adam/Variable_12training/Adam/add_8*
dtype0

training/Adam/ReadVariableOp_24ReadVariableOptraining/Adam/Variable_12!^training/Adam/AssignVariableOp_7*
_output_shapes
:d*
dtype0
r
 training/Adam/AssignVariableOp_8AssignVariableOpbatch_normalization/gammatraining/Adam/sub_10*
dtype0

training/Adam/ReadVariableOp_25ReadVariableOpbatch_normalization/gamma!^training/Adam/AssignVariableOp_8*
_output_shapes
:d*
dtype0
c
training/Adam/ReadVariableOp_26ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
x
#training/Adam/mul_16/ReadVariableOpReadVariableOptraining/Adam/Variable_3*
_output_shapes
:d*
dtype0

training/Adam/mul_16Multraining/Adam/ReadVariableOp_26#training/Adam/mul_16/ReadVariableOp*
T0*
_output_shapes
:d
c
training/Adam/ReadVariableOp_27ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
[
training/Adam/sub_11/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
u
training/Adam/sub_11Subtraining/Adam/sub_11/xtraining/Adam/ReadVariableOp_27*
T0*
_output_shapes
: 
˘
training/Adam/mul_17Multraining/Adam/sub_11Jtraining/Adam/gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1*
T0*
_output_shapes
:d
l
training/Adam/add_10Addtraining/Adam/mul_16training/Adam/mul_17*
T0*
_output_shapes
:d
c
training/Adam/ReadVariableOp_28ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
y
#training/Adam/mul_18/ReadVariableOpReadVariableOptraining/Adam/Variable_13*
_output_shapes
:d*
dtype0

training/Adam/mul_18Multraining/Adam/ReadVariableOp_28#training/Adam/mul_18/ReadVariableOp*
T0*
_output_shapes
:d
c
training/Adam/ReadVariableOp_29ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
[
training/Adam/sub_12/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
u
training/Adam/sub_12Subtraining/Adam/sub_12/xtraining/Adam/ReadVariableOp_29*
T0*
_output_shapes
: 

training/Adam/Square_3SquareJtraining/Adam/gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1*
T0*
_output_shapes
:d
n
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
T0*
_output_shapes
:d
l
training/Adam/add_11Addtraining/Adam/mul_18training/Adam/mul_19*
T0*
_output_shapes
:d
i
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
T0*
_output_shapes
:d
Z
training/Adam/Const_9Const*
valueB
 *    *
_output_shapes
: *
dtype0
[
training/Adam/Const_10Const*
valueB
 *  *
_output_shapes
: *
dtype0

%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_11training/Adam/Const_10*
T0*
_output_shapes
:d

training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_9*
T0*
_output_shapes
:d
`
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
T0*
_output_shapes
:d
[
training/Adam/add_12/yConst*
valueB
 *żÖ3*
_output_shapes
: *
dtype0
n
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*
T0*
_output_shapes
:d
s
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*
T0*
_output_shapes
:d
t
training/Adam/ReadVariableOp_30ReadVariableOpbatch_normalization/beta*
_output_shapes
:d*
dtype0
z
training/Adam/sub_13Subtraining/Adam/ReadVariableOp_30training/Adam/truediv_4*
T0*
_output_shapes
:d
q
 training/Adam/AssignVariableOp_9AssignVariableOptraining/Adam/Variable_3training/Adam/add_10*
dtype0

training/Adam/ReadVariableOp_31ReadVariableOptraining/Adam/Variable_3!^training/Adam/AssignVariableOp_9*
_output_shapes
:d*
dtype0
s
!training/Adam/AssignVariableOp_10AssignVariableOptraining/Adam/Variable_13training/Adam/add_11*
dtype0

training/Adam/ReadVariableOp_32ReadVariableOptraining/Adam/Variable_13"^training/Adam/AssignVariableOp_10*
_output_shapes
:d*
dtype0
r
!training/Adam/AssignVariableOp_11AssignVariableOpbatch_normalization/betatraining/Adam/sub_13*
dtype0

training/Adam/ReadVariableOp_33ReadVariableOpbatch_normalization/beta"^training/Adam/AssignVariableOp_11*
_output_shapes
:d*
dtype0
c
training/Adam/ReadVariableOp_34ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
|
#training/Adam/mul_21/ReadVariableOpReadVariableOptraining/Adam/Variable_4*
_output_shapes

:dd*
dtype0

training/Adam/mul_21Multraining/Adam/ReadVariableOp_34#training/Adam/mul_21/ReadVariableOp*
T0*
_output_shapes

:dd
c
training/Adam/ReadVariableOp_35ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
[
training/Adam/sub_14/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
u
training/Adam/sub_14Subtraining/Adam/sub_14/xtraining/Adam/ReadVariableOp_35*
T0*
_output_shapes
: 

training/Adam/mul_22Multraining/Adam/sub_144training/Adam/gradients/hidden2/MatMul_grad/MatMul_1*
T0*
_output_shapes

:dd
p
training/Adam/add_13Addtraining/Adam/mul_21training/Adam/mul_22*
T0*
_output_shapes

:dd
c
training/Adam/ReadVariableOp_36ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
}
#training/Adam/mul_23/ReadVariableOpReadVariableOptraining/Adam/Variable_14*
_output_shapes

:dd*
dtype0

training/Adam/mul_23Multraining/Adam/ReadVariableOp_36#training/Adam/mul_23/ReadVariableOp*
T0*
_output_shapes

:dd
c
training/Adam/ReadVariableOp_37ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
[
training/Adam/sub_15/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
u
training/Adam/sub_15Subtraining/Adam/sub_15/xtraining/Adam/ReadVariableOp_37*
T0*
_output_shapes
: 

training/Adam/Square_4Square4training/Adam/gradients/hidden2/MatMul_grad/MatMul_1*
T0*
_output_shapes

:dd
r
training/Adam/mul_24Multraining/Adam/sub_15training/Adam/Square_4*
T0*
_output_shapes

:dd
p
training/Adam/add_14Addtraining/Adam/mul_23training/Adam/mul_24*
T0*
_output_shapes

:dd
m
training/Adam/mul_25Multraining/Adam/multraining/Adam/add_13*
T0*
_output_shapes

:dd
[
training/Adam/Const_11Const*
valueB
 *    *
_output_shapes
: *
dtype0
[
training/Adam/Const_12Const*
valueB
 *  *
_output_shapes
: *
dtype0

%training/Adam/clip_by_value_5/MinimumMinimumtraining/Adam/add_14training/Adam/Const_12*
T0*
_output_shapes

:dd

training/Adam/clip_by_value_5Maximum%training/Adam/clip_by_value_5/Minimumtraining/Adam/Const_11*
T0*
_output_shapes

:dd
d
training/Adam/Sqrt_5Sqrttraining/Adam/clip_by_value_5*
T0*
_output_shapes

:dd
[
training/Adam/add_15/yConst*
valueB
 *żÖ3*
_output_shapes
: *
dtype0
r
training/Adam/add_15Addtraining/Adam/Sqrt_5training/Adam/add_15/y*
T0*
_output_shapes

:dd
w
training/Adam/truediv_5RealDivtraining/Adam/mul_25training/Adam/add_15*
T0*
_output_shapes

:dd
n
training/Adam/ReadVariableOp_38ReadVariableOphidden2/kernel*
_output_shapes

:dd*
dtype0
~
training/Adam/sub_16Subtraining/Adam/ReadVariableOp_38training/Adam/truediv_5*
T0*
_output_shapes

:dd
r
!training/Adam/AssignVariableOp_12AssignVariableOptraining/Adam/Variable_4training/Adam/add_13*
dtype0

training/Adam/ReadVariableOp_39ReadVariableOptraining/Adam/Variable_4"^training/Adam/AssignVariableOp_12*
_output_shapes

:dd*
dtype0
s
!training/Adam/AssignVariableOp_13AssignVariableOptraining/Adam/Variable_14training/Adam/add_14*
dtype0

training/Adam/ReadVariableOp_40ReadVariableOptraining/Adam/Variable_14"^training/Adam/AssignVariableOp_13*
_output_shapes

:dd*
dtype0
h
!training/Adam/AssignVariableOp_14AssignVariableOphidden2/kerneltraining/Adam/sub_16*
dtype0

training/Adam/ReadVariableOp_41ReadVariableOphidden2/kernel"^training/Adam/AssignVariableOp_14*
_output_shapes

:dd*
dtype0
c
training/Adam/ReadVariableOp_42ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
x
#training/Adam/mul_26/ReadVariableOpReadVariableOptraining/Adam/Variable_5*
_output_shapes
:d*
dtype0

training/Adam/mul_26Multraining/Adam/ReadVariableOp_42#training/Adam/mul_26/ReadVariableOp*
T0*
_output_shapes
:d
c
training/Adam/ReadVariableOp_43ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
[
training/Adam/sub_17/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
u
training/Adam/sub_17Subtraining/Adam/sub_17/xtraining/Adam/ReadVariableOp_43*
T0*
_output_shapes
: 

training/Adam/mul_27Multraining/Adam/sub_178training/Adam/gradients/hidden2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:d
l
training/Adam/add_16Addtraining/Adam/mul_26training/Adam/mul_27*
T0*
_output_shapes
:d
c
training/Adam/ReadVariableOp_44ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
y
#training/Adam/mul_28/ReadVariableOpReadVariableOptraining/Adam/Variable_15*
_output_shapes
:d*
dtype0

training/Adam/mul_28Multraining/Adam/ReadVariableOp_44#training/Adam/mul_28/ReadVariableOp*
T0*
_output_shapes
:d
c
training/Adam/ReadVariableOp_45ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
[
training/Adam/sub_18/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
u
training/Adam/sub_18Subtraining/Adam/sub_18/xtraining/Adam/ReadVariableOp_45*
T0*
_output_shapes
: 

training/Adam/Square_5Square8training/Adam/gradients/hidden2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:d
n
training/Adam/mul_29Multraining/Adam/sub_18training/Adam/Square_5*
T0*
_output_shapes
:d
l
training/Adam/add_17Addtraining/Adam/mul_28training/Adam/mul_29*
T0*
_output_shapes
:d
i
training/Adam/mul_30Multraining/Adam/multraining/Adam/add_16*
T0*
_output_shapes
:d
[
training/Adam/Const_13Const*
valueB
 *    *
_output_shapes
: *
dtype0
[
training/Adam/Const_14Const*
valueB
 *  *
_output_shapes
: *
dtype0

%training/Adam/clip_by_value_6/MinimumMinimumtraining/Adam/add_17training/Adam/Const_14*
T0*
_output_shapes
:d

training/Adam/clip_by_value_6Maximum%training/Adam/clip_by_value_6/Minimumtraining/Adam/Const_13*
T0*
_output_shapes
:d
`
training/Adam/Sqrt_6Sqrttraining/Adam/clip_by_value_6*
T0*
_output_shapes
:d
[
training/Adam/add_18/yConst*
valueB
 *żÖ3*
_output_shapes
: *
dtype0
n
training/Adam/add_18Addtraining/Adam/Sqrt_6training/Adam/add_18/y*
T0*
_output_shapes
:d
s
training/Adam/truediv_6RealDivtraining/Adam/mul_30training/Adam/add_18*
T0*
_output_shapes
:d
h
training/Adam/ReadVariableOp_46ReadVariableOphidden2/bias*
_output_shapes
:d*
dtype0
z
training/Adam/sub_19Subtraining/Adam/ReadVariableOp_46training/Adam/truediv_6*
T0*
_output_shapes
:d
r
!training/Adam/AssignVariableOp_15AssignVariableOptraining/Adam/Variable_5training/Adam/add_16*
dtype0

training/Adam/ReadVariableOp_47ReadVariableOptraining/Adam/Variable_5"^training/Adam/AssignVariableOp_15*
_output_shapes
:d*
dtype0
s
!training/Adam/AssignVariableOp_16AssignVariableOptraining/Adam/Variable_15training/Adam/add_17*
dtype0

training/Adam/ReadVariableOp_48ReadVariableOptraining/Adam/Variable_15"^training/Adam/AssignVariableOp_16*
_output_shapes
:d*
dtype0
f
!training/Adam/AssignVariableOp_17AssignVariableOphidden2/biastraining/Adam/sub_19*
dtype0

training/Adam/ReadVariableOp_49ReadVariableOphidden2/bias"^training/Adam/AssignVariableOp_17*
_output_shapes
:d*
dtype0
c
training/Adam/ReadVariableOp_50ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
x
#training/Adam/mul_31/ReadVariableOpReadVariableOptraining/Adam/Variable_6*
_output_shapes
:d*
dtype0

training/Adam/mul_31Multraining/Adam/ReadVariableOp_50#training/Adam/mul_31/ReadVariableOp*
T0*
_output_shapes
:d
c
training/Adam/ReadVariableOp_51ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
[
training/Adam/sub_20/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
u
training/Adam/sub_20Subtraining/Adam/sub_20/xtraining/Adam/ReadVariableOp_51*
T0*
_output_shapes
: 

training/Adam/mul_32Multraining/Adam/sub_20Ftraining/Adam/gradients/batch_normalization_1/batchnorm/mul_grad/Mul_1*
T0*
_output_shapes
:d
l
training/Adam/add_19Addtraining/Adam/mul_31training/Adam/mul_32*
T0*
_output_shapes
:d
c
training/Adam/ReadVariableOp_52ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
y
#training/Adam/mul_33/ReadVariableOpReadVariableOptraining/Adam/Variable_16*
_output_shapes
:d*
dtype0

training/Adam/mul_33Multraining/Adam/ReadVariableOp_52#training/Adam/mul_33/ReadVariableOp*
T0*
_output_shapes
:d
c
training/Adam/ReadVariableOp_53ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
[
training/Adam/sub_21/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
u
training/Adam/sub_21Subtraining/Adam/sub_21/xtraining/Adam/ReadVariableOp_53*
T0*
_output_shapes
: 

training/Adam/Square_6SquareFtraining/Adam/gradients/batch_normalization_1/batchnorm/mul_grad/Mul_1*
T0*
_output_shapes
:d
n
training/Adam/mul_34Multraining/Adam/sub_21training/Adam/Square_6*
T0*
_output_shapes
:d
l
training/Adam/add_20Addtraining/Adam/mul_33training/Adam/mul_34*
T0*
_output_shapes
:d
i
training/Adam/mul_35Multraining/Adam/multraining/Adam/add_19*
T0*
_output_shapes
:d
[
training/Adam/Const_15Const*
valueB
 *    *
_output_shapes
: *
dtype0
[
training/Adam/Const_16Const*
valueB
 *  *
_output_shapes
: *
dtype0

%training/Adam/clip_by_value_7/MinimumMinimumtraining/Adam/add_20training/Adam/Const_16*
T0*
_output_shapes
:d

training/Adam/clip_by_value_7Maximum%training/Adam/clip_by_value_7/Minimumtraining/Adam/Const_15*
T0*
_output_shapes
:d
`
training/Adam/Sqrt_7Sqrttraining/Adam/clip_by_value_7*
T0*
_output_shapes
:d
[
training/Adam/add_21/yConst*
valueB
 *żÖ3*
_output_shapes
: *
dtype0
n
training/Adam/add_21Addtraining/Adam/Sqrt_7training/Adam/add_21/y*
T0*
_output_shapes
:d
s
training/Adam/truediv_7RealDivtraining/Adam/mul_35training/Adam/add_21*
T0*
_output_shapes
:d
w
training/Adam/ReadVariableOp_54ReadVariableOpbatch_normalization_1/gamma*
_output_shapes
:d*
dtype0
z
training/Adam/sub_22Subtraining/Adam/ReadVariableOp_54training/Adam/truediv_7*
T0*
_output_shapes
:d
r
!training/Adam/AssignVariableOp_18AssignVariableOptraining/Adam/Variable_6training/Adam/add_19*
dtype0

training/Adam/ReadVariableOp_55ReadVariableOptraining/Adam/Variable_6"^training/Adam/AssignVariableOp_18*
_output_shapes
:d*
dtype0
s
!training/Adam/AssignVariableOp_19AssignVariableOptraining/Adam/Variable_16training/Adam/add_20*
dtype0

training/Adam/ReadVariableOp_56ReadVariableOptraining/Adam/Variable_16"^training/Adam/AssignVariableOp_19*
_output_shapes
:d*
dtype0
u
!training/Adam/AssignVariableOp_20AssignVariableOpbatch_normalization_1/gammatraining/Adam/sub_22*
dtype0

training/Adam/ReadVariableOp_57ReadVariableOpbatch_normalization_1/gamma"^training/Adam/AssignVariableOp_20*
_output_shapes
:d*
dtype0
c
training/Adam/ReadVariableOp_58ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
x
#training/Adam/mul_36/ReadVariableOpReadVariableOptraining/Adam/Variable_7*
_output_shapes
:d*
dtype0

training/Adam/mul_36Multraining/Adam/ReadVariableOp_58#training/Adam/mul_36/ReadVariableOp*
T0*
_output_shapes
:d
c
training/Adam/ReadVariableOp_59ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
[
training/Adam/sub_23/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
u
training/Adam/sub_23Subtraining/Adam/sub_23/xtraining/Adam/ReadVariableOp_59*
T0*
_output_shapes
: 
¤
training/Adam/mul_37Multraining/Adam/sub_23Ltraining/Adam/gradients/batch_normalization_1/batchnorm/add_1_grad/Reshape_1*
T0*
_output_shapes
:d
l
training/Adam/add_22Addtraining/Adam/mul_36training/Adam/mul_37*
T0*
_output_shapes
:d
c
training/Adam/ReadVariableOp_60ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
y
#training/Adam/mul_38/ReadVariableOpReadVariableOptraining/Adam/Variable_17*
_output_shapes
:d*
dtype0

training/Adam/mul_38Multraining/Adam/ReadVariableOp_60#training/Adam/mul_38/ReadVariableOp*
T0*
_output_shapes
:d
c
training/Adam/ReadVariableOp_61ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
[
training/Adam/sub_24/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
u
training/Adam/sub_24Subtraining/Adam/sub_24/xtraining/Adam/ReadVariableOp_61*
T0*
_output_shapes
: 

training/Adam/Square_7SquareLtraining/Adam/gradients/batch_normalization_1/batchnorm/add_1_grad/Reshape_1*
T0*
_output_shapes
:d
n
training/Adam/mul_39Multraining/Adam/sub_24training/Adam/Square_7*
T0*
_output_shapes
:d
l
training/Adam/add_23Addtraining/Adam/mul_38training/Adam/mul_39*
T0*
_output_shapes
:d
i
training/Adam/mul_40Multraining/Adam/multraining/Adam/add_22*
T0*
_output_shapes
:d
[
training/Adam/Const_17Const*
valueB
 *    *
_output_shapes
: *
dtype0
[
training/Adam/Const_18Const*
valueB
 *  *
_output_shapes
: *
dtype0

%training/Adam/clip_by_value_8/MinimumMinimumtraining/Adam/add_23training/Adam/Const_18*
T0*
_output_shapes
:d

training/Adam/clip_by_value_8Maximum%training/Adam/clip_by_value_8/Minimumtraining/Adam/Const_17*
T0*
_output_shapes
:d
`
training/Adam/Sqrt_8Sqrttraining/Adam/clip_by_value_8*
T0*
_output_shapes
:d
[
training/Adam/add_24/yConst*
valueB
 *żÖ3*
_output_shapes
: *
dtype0
n
training/Adam/add_24Addtraining/Adam/Sqrt_8training/Adam/add_24/y*
T0*
_output_shapes
:d
s
training/Adam/truediv_8RealDivtraining/Adam/mul_40training/Adam/add_24*
T0*
_output_shapes
:d
v
training/Adam/ReadVariableOp_62ReadVariableOpbatch_normalization_1/beta*
_output_shapes
:d*
dtype0
z
training/Adam/sub_25Subtraining/Adam/ReadVariableOp_62training/Adam/truediv_8*
T0*
_output_shapes
:d
r
!training/Adam/AssignVariableOp_21AssignVariableOptraining/Adam/Variable_7training/Adam/add_22*
dtype0

training/Adam/ReadVariableOp_63ReadVariableOptraining/Adam/Variable_7"^training/Adam/AssignVariableOp_21*
_output_shapes
:d*
dtype0
s
!training/Adam/AssignVariableOp_22AssignVariableOptraining/Adam/Variable_17training/Adam/add_23*
dtype0

training/Adam/ReadVariableOp_64ReadVariableOptraining/Adam/Variable_17"^training/Adam/AssignVariableOp_22*
_output_shapes
:d*
dtype0
t
!training/Adam/AssignVariableOp_23AssignVariableOpbatch_normalization_1/betatraining/Adam/sub_25*
dtype0

training/Adam/ReadVariableOp_65ReadVariableOpbatch_normalization_1/beta"^training/Adam/AssignVariableOp_23*
_output_shapes
:d*
dtype0
c
training/Adam/ReadVariableOp_66ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
|
#training/Adam/mul_41/ReadVariableOpReadVariableOptraining/Adam/Variable_8*
_output_shapes

:d*
dtype0

training/Adam/mul_41Multraining/Adam/ReadVariableOp_66#training/Adam/mul_41/ReadVariableOp*
T0*
_output_shapes

:d
c
training/Adam/ReadVariableOp_67ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
[
training/Adam/sub_26/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
u
training/Adam/sub_26Subtraining/Adam/sub_26/xtraining/Adam/ReadVariableOp_67*
T0*
_output_shapes
: 

training/Adam/mul_42Multraining/Adam/sub_264training/Adam/gradients/softmax/MatMul_grad/MatMul_1*
T0*
_output_shapes

:d
p
training/Adam/add_25Addtraining/Adam/mul_41training/Adam/mul_42*
T0*
_output_shapes

:d
c
training/Adam/ReadVariableOp_68ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
}
#training/Adam/mul_43/ReadVariableOpReadVariableOptraining/Adam/Variable_18*
_output_shapes

:d*
dtype0

training/Adam/mul_43Multraining/Adam/ReadVariableOp_68#training/Adam/mul_43/ReadVariableOp*
T0*
_output_shapes

:d
c
training/Adam/ReadVariableOp_69ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
[
training/Adam/sub_27/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
u
training/Adam/sub_27Subtraining/Adam/sub_27/xtraining/Adam/ReadVariableOp_69*
T0*
_output_shapes
: 

training/Adam/Square_8Square4training/Adam/gradients/softmax/MatMul_grad/MatMul_1*
T0*
_output_shapes

:d
r
training/Adam/mul_44Multraining/Adam/sub_27training/Adam/Square_8*
T0*
_output_shapes

:d
p
training/Adam/add_26Addtraining/Adam/mul_43training/Adam/mul_44*
T0*
_output_shapes

:d
m
training/Adam/mul_45Multraining/Adam/multraining/Adam/add_25*
T0*
_output_shapes

:d
[
training/Adam/Const_19Const*
valueB
 *    *
_output_shapes
: *
dtype0
[
training/Adam/Const_20Const*
valueB
 *  *
_output_shapes
: *
dtype0

%training/Adam/clip_by_value_9/MinimumMinimumtraining/Adam/add_26training/Adam/Const_20*
T0*
_output_shapes

:d

training/Adam/clip_by_value_9Maximum%training/Adam/clip_by_value_9/Minimumtraining/Adam/Const_19*
T0*
_output_shapes

:d
d
training/Adam/Sqrt_9Sqrttraining/Adam/clip_by_value_9*
T0*
_output_shapes

:d
[
training/Adam/add_27/yConst*
valueB
 *żÖ3*
_output_shapes
: *
dtype0
r
training/Adam/add_27Addtraining/Adam/Sqrt_9training/Adam/add_27/y*
T0*
_output_shapes

:d
w
training/Adam/truediv_9RealDivtraining/Adam/mul_45training/Adam/add_27*
T0*
_output_shapes

:d
n
training/Adam/ReadVariableOp_70ReadVariableOpsoftmax/kernel*
_output_shapes

:d*
dtype0
~
training/Adam/sub_28Subtraining/Adam/ReadVariableOp_70training/Adam/truediv_9*
T0*
_output_shapes

:d
r
!training/Adam/AssignVariableOp_24AssignVariableOptraining/Adam/Variable_8training/Adam/add_25*
dtype0

training/Adam/ReadVariableOp_71ReadVariableOptraining/Adam/Variable_8"^training/Adam/AssignVariableOp_24*
_output_shapes

:d*
dtype0
s
!training/Adam/AssignVariableOp_25AssignVariableOptraining/Adam/Variable_18training/Adam/add_26*
dtype0

training/Adam/ReadVariableOp_72ReadVariableOptraining/Adam/Variable_18"^training/Adam/AssignVariableOp_25*
_output_shapes

:d*
dtype0
h
!training/Adam/AssignVariableOp_26AssignVariableOpsoftmax/kerneltraining/Adam/sub_28*
dtype0

training/Adam/ReadVariableOp_73ReadVariableOpsoftmax/kernel"^training/Adam/AssignVariableOp_26*
_output_shapes

:d*
dtype0
c
training/Adam/ReadVariableOp_74ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
x
#training/Adam/mul_46/ReadVariableOpReadVariableOptraining/Adam/Variable_9*
_output_shapes
:*
dtype0

training/Adam/mul_46Multraining/Adam/ReadVariableOp_74#training/Adam/mul_46/ReadVariableOp*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_75ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
[
training/Adam/sub_29/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
u
training/Adam/sub_29Subtraining/Adam/sub_29/xtraining/Adam/ReadVariableOp_75*
T0*
_output_shapes
: 

training/Adam/mul_47Multraining/Adam/sub_298training/Adam/gradients/softmax/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
l
training/Adam/add_28Addtraining/Adam/mul_46training/Adam/mul_47*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_76ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
y
#training/Adam/mul_48/ReadVariableOpReadVariableOptraining/Adam/Variable_19*
_output_shapes
:*
dtype0

training/Adam/mul_48Multraining/Adam/ReadVariableOp_76#training/Adam/mul_48/ReadVariableOp*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_77ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
[
training/Adam/sub_30/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
u
training/Adam/sub_30Subtraining/Adam/sub_30/xtraining/Adam/ReadVariableOp_77*
T0*
_output_shapes
: 

training/Adam/Square_9Square8training/Adam/gradients/softmax/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
n
training/Adam/mul_49Multraining/Adam/sub_30training/Adam/Square_9*
T0*
_output_shapes
:
l
training/Adam/add_29Addtraining/Adam/mul_48training/Adam/mul_49*
T0*
_output_shapes
:
i
training/Adam/mul_50Multraining/Adam/multraining/Adam/add_28*
T0*
_output_shapes
:
[
training/Adam/Const_21Const*
valueB
 *    *
_output_shapes
: *
dtype0
[
training/Adam/Const_22Const*
valueB
 *  *
_output_shapes
: *
dtype0

&training/Adam/clip_by_value_10/MinimumMinimumtraining/Adam/add_29training/Adam/Const_22*
T0*
_output_shapes
:

training/Adam/clip_by_value_10Maximum&training/Adam/clip_by_value_10/Minimumtraining/Adam/Const_21*
T0*
_output_shapes
:
b
training/Adam/Sqrt_10Sqrttraining/Adam/clip_by_value_10*
T0*
_output_shapes
:
[
training/Adam/add_30/yConst*
valueB
 *żÖ3*
_output_shapes
: *
dtype0
o
training/Adam/add_30Addtraining/Adam/Sqrt_10training/Adam/add_30/y*
T0*
_output_shapes
:
t
training/Adam/truediv_10RealDivtraining/Adam/mul_50training/Adam/add_30*
T0*
_output_shapes
:
h
training/Adam/ReadVariableOp_78ReadVariableOpsoftmax/bias*
_output_shapes
:*
dtype0
{
training/Adam/sub_31Subtraining/Adam/ReadVariableOp_78training/Adam/truediv_10*
T0*
_output_shapes
:
r
!training/Adam/AssignVariableOp_27AssignVariableOptraining/Adam/Variable_9training/Adam/add_28*
dtype0

training/Adam/ReadVariableOp_79ReadVariableOptraining/Adam/Variable_9"^training/Adam/AssignVariableOp_27*
_output_shapes
:*
dtype0
s
!training/Adam/AssignVariableOp_28AssignVariableOptraining/Adam/Variable_19training/Adam/add_29*
dtype0

training/Adam/ReadVariableOp_80ReadVariableOptraining/Adam/Variable_19"^training/Adam/AssignVariableOp_28*
_output_shapes
:*
dtype0
f
!training/Adam/AssignVariableOp_29AssignVariableOpsoftmax/biastraining/Adam/sub_31*
dtype0

training/Adam/ReadVariableOp_81ReadVariableOpsoftmax/bias"^training/Adam/AssignVariableOp_29*
_output_shapes
:*
dtype0
á	
training/group_depsNoOp!^batch_normalization/cond_2/Merge!^batch_normalization/cond_3/Merge#^batch_normalization_1/cond_2/Merge#^batch_normalization_1/cond_3/Merge	^loss/mul^metrics/acc/Mean^training/Adam/ReadVariableOp ^training/Adam/ReadVariableOp_15 ^training/Adam/ReadVariableOp_16 ^training/Adam/ReadVariableOp_17 ^training/Adam/ReadVariableOp_23 ^training/Adam/ReadVariableOp_24 ^training/Adam/ReadVariableOp_25 ^training/Adam/ReadVariableOp_31 ^training/Adam/ReadVariableOp_32 ^training/Adam/ReadVariableOp_33 ^training/Adam/ReadVariableOp_39 ^training/Adam/ReadVariableOp_40 ^training/Adam/ReadVariableOp_41 ^training/Adam/ReadVariableOp_47 ^training/Adam/ReadVariableOp_48 ^training/Adam/ReadVariableOp_49 ^training/Adam/ReadVariableOp_55 ^training/Adam/ReadVariableOp_56 ^training/Adam/ReadVariableOp_57 ^training/Adam/ReadVariableOp_63 ^training/Adam/ReadVariableOp_64 ^training/Adam/ReadVariableOp_65^training/Adam/ReadVariableOp_7 ^training/Adam/ReadVariableOp_71 ^training/Adam/ReadVariableOp_72 ^training/Adam/ReadVariableOp_73 ^training/Adam/ReadVariableOp_79^training/Adam/ReadVariableOp_8 ^training/Adam/ReadVariableOp_80 ^training/Adam/ReadVariableOp_81^training/Adam/ReadVariableOp_9
T
VarIsInitializedOp_14VarIsInitializedOpAdam/iterations*
_output_shapes
: 
L
VarIsInitializedOp_15VarIsInitializedOpAdam/lr*
_output_shapes
: 
P
VarIsInitializedOp_16VarIsInitializedOpAdam/beta_1*
_output_shapes
: 
P
VarIsInitializedOp_17VarIsInitializedOpAdam/beta_2*
_output_shapes
: 
O
VarIsInitializedOp_18VarIsInitializedOp
Adam/decay*
_output_shapes
: 
[
VarIsInitializedOp_19VarIsInitializedOptraining/Adam/Variable*
_output_shapes
: 
]
VarIsInitializedOp_20VarIsInitializedOptraining/Adam/Variable_1*
_output_shapes
: 
]
VarIsInitializedOp_21VarIsInitializedOptraining/Adam/Variable_2*
_output_shapes
: 
]
VarIsInitializedOp_22VarIsInitializedOptraining/Adam/Variable_3*
_output_shapes
: 
]
VarIsInitializedOp_23VarIsInitializedOptraining/Adam/Variable_4*
_output_shapes
: 
]
VarIsInitializedOp_24VarIsInitializedOptraining/Adam/Variable_5*
_output_shapes
: 
]
VarIsInitializedOp_25VarIsInitializedOptraining/Adam/Variable_6*
_output_shapes
: 
]
VarIsInitializedOp_26VarIsInitializedOptraining/Adam/Variable_7*
_output_shapes
: 
]
VarIsInitializedOp_27VarIsInitializedOptraining/Adam/Variable_8*
_output_shapes
: 
]
VarIsInitializedOp_28VarIsInitializedOptraining/Adam/Variable_9*
_output_shapes
: 
^
VarIsInitializedOp_29VarIsInitializedOptraining/Adam/Variable_10*
_output_shapes
: 
^
VarIsInitializedOp_30VarIsInitializedOptraining/Adam/Variable_11*
_output_shapes
: 
^
VarIsInitializedOp_31VarIsInitializedOptraining/Adam/Variable_12*
_output_shapes
: 
^
VarIsInitializedOp_32VarIsInitializedOptraining/Adam/Variable_13*
_output_shapes
: 
^
VarIsInitializedOp_33VarIsInitializedOptraining/Adam/Variable_14*
_output_shapes
: 
^
VarIsInitializedOp_34VarIsInitializedOptraining/Adam/Variable_15*
_output_shapes
: 
^
VarIsInitializedOp_35VarIsInitializedOptraining/Adam/Variable_16*
_output_shapes
: 
^
VarIsInitializedOp_36VarIsInitializedOptraining/Adam/Variable_17*
_output_shapes
: 
^
VarIsInitializedOp_37VarIsInitializedOptraining/Adam/Variable_18*
_output_shapes
: 
^
VarIsInitializedOp_38VarIsInitializedOptraining/Adam/Variable_19*
_output_shapes
: 
^
VarIsInitializedOp_39VarIsInitializedOptraining/Adam/Variable_20*
_output_shapes
: 
^
VarIsInitializedOp_40VarIsInitializedOptraining/Adam/Variable_21*
_output_shapes
: 
^
VarIsInitializedOp_41VarIsInitializedOptraining/Adam/Variable_22*
_output_shapes
: 
^
VarIsInitializedOp_42VarIsInitializedOptraining/Adam/Variable_23*
_output_shapes
: 
^
VarIsInitializedOp_43VarIsInitializedOptraining/Adam/Variable_24*
_output_shapes
: 
^
VarIsInitializedOp_44VarIsInitializedOptraining/Adam/Variable_25*
_output_shapes
: 
^
VarIsInitializedOp_45VarIsInitializedOptraining/Adam/Variable_26*
_output_shapes
: 
^
VarIsInitializedOp_46VarIsInitializedOptraining/Adam/Variable_27*
_output_shapes
: 
^
VarIsInitializedOp_47VarIsInitializedOptraining/Adam/Variable_28*
_output_shapes
: 
^
VarIsInitializedOp_48VarIsInitializedOptraining/Adam/Variable_29*
_output_shapes
: 
	
init_1NoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign!^training/Adam/Variable_12/Assign!^training/Adam/Variable_13/Assign!^training/Adam/Variable_14/Assign!^training/Adam/Variable_15/Assign!^training/Adam/Variable_16/Assign!^training/Adam/Variable_17/Assign!^training/Adam/Variable_18/Assign!^training/Adam/Variable_19/Assign ^training/Adam/Variable_2/Assign!^training/Adam/Variable_20/Assign!^training/Adam/Variable_21/Assign!^training/Adam/Variable_22/Assign!^training/Adam/Variable_23/Assign!^training/Adam/Variable_24/Assign!^training/Adam/Variable_25/Assign!^training/Adam/Variable_26/Assign!^training/Adam/Variable_27/Assign!^training/Adam/Variable_28/Assign!^training/Adam/Variable_29/Assign ^training/Adam/Variable_3/Assign ^training/Adam/Variable_4/Assign ^training/Adam/Variable_5/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign
O
Placeholder_14Placeholder*
_output_shapes
: *
dtype0	*
shape: 
U
AssignVariableOp_14AssignVariableOpAdam/iterationsPlaceholder_14*
dtype0	
o
ReadVariableOp_14ReadVariableOpAdam/iterations^AssignVariableOp_14*
_output_shapes
: *
dtype0	
_
Placeholder_15Placeholder*
_output_shapes

:d*
dtype0*
shape
:d
\
AssignVariableOp_15AssignVariableOptraining/Adam/VariablePlaceholder_15*
dtype0
~
ReadVariableOp_15ReadVariableOptraining/Adam/Variable^AssignVariableOp_15*
_output_shapes

:d*
dtype0
W
Placeholder_16Placeholder*
_output_shapes
:d*
dtype0*
shape:d
^
AssignVariableOp_16AssignVariableOptraining/Adam/Variable_1Placeholder_16*
dtype0
|
ReadVariableOp_16ReadVariableOptraining/Adam/Variable_1^AssignVariableOp_16*
_output_shapes
:d*
dtype0
W
Placeholder_17Placeholder*
_output_shapes
:d*
dtype0*
shape:d
^
AssignVariableOp_17AssignVariableOptraining/Adam/Variable_2Placeholder_17*
dtype0
|
ReadVariableOp_17ReadVariableOptraining/Adam/Variable_2^AssignVariableOp_17*
_output_shapes
:d*
dtype0
W
Placeholder_18Placeholder*
_output_shapes
:d*
dtype0*
shape:d
^
AssignVariableOp_18AssignVariableOptraining/Adam/Variable_3Placeholder_18*
dtype0
|
ReadVariableOp_18ReadVariableOptraining/Adam/Variable_3^AssignVariableOp_18*
_output_shapes
:d*
dtype0
_
Placeholder_19Placeholder*
_output_shapes

:dd*
dtype0*
shape
:dd
^
AssignVariableOp_19AssignVariableOptraining/Adam/Variable_4Placeholder_19*
dtype0

ReadVariableOp_19ReadVariableOptraining/Adam/Variable_4^AssignVariableOp_19*
_output_shapes

:dd*
dtype0
W
Placeholder_20Placeholder*
_output_shapes
:d*
dtype0*
shape:d
^
AssignVariableOp_20AssignVariableOptraining/Adam/Variable_5Placeholder_20*
dtype0
|
ReadVariableOp_20ReadVariableOptraining/Adam/Variable_5^AssignVariableOp_20*
_output_shapes
:d*
dtype0
W
Placeholder_21Placeholder*
_output_shapes
:d*
dtype0*
shape:d
^
AssignVariableOp_21AssignVariableOptraining/Adam/Variable_6Placeholder_21*
dtype0
|
ReadVariableOp_21ReadVariableOptraining/Adam/Variable_6^AssignVariableOp_21*
_output_shapes
:d*
dtype0
W
Placeholder_22Placeholder*
_output_shapes
:d*
dtype0*
shape:d
^
AssignVariableOp_22AssignVariableOptraining/Adam/Variable_7Placeholder_22*
dtype0
|
ReadVariableOp_22ReadVariableOptraining/Adam/Variable_7^AssignVariableOp_22*
_output_shapes
:d*
dtype0
_
Placeholder_23Placeholder*
_output_shapes

:d*
dtype0*
shape
:d
^
AssignVariableOp_23AssignVariableOptraining/Adam/Variable_8Placeholder_23*
dtype0

ReadVariableOp_23ReadVariableOptraining/Adam/Variable_8^AssignVariableOp_23*
_output_shapes

:d*
dtype0
W
Placeholder_24Placeholder*
_output_shapes
:*
dtype0*
shape:
^
AssignVariableOp_24AssignVariableOptraining/Adam/Variable_9Placeholder_24*
dtype0
|
ReadVariableOp_24ReadVariableOptraining/Adam/Variable_9^AssignVariableOp_24*
_output_shapes
:*
dtype0
_
Placeholder_25Placeholder*
_output_shapes

:d*
dtype0*
shape
:d
_
AssignVariableOp_25AssignVariableOptraining/Adam/Variable_10Placeholder_25*
dtype0

ReadVariableOp_25ReadVariableOptraining/Adam/Variable_10^AssignVariableOp_25*
_output_shapes

:d*
dtype0
W
Placeholder_26Placeholder*
_output_shapes
:d*
dtype0*
shape:d
_
AssignVariableOp_26AssignVariableOptraining/Adam/Variable_11Placeholder_26*
dtype0
}
ReadVariableOp_26ReadVariableOptraining/Adam/Variable_11^AssignVariableOp_26*
_output_shapes
:d*
dtype0
W
Placeholder_27Placeholder*
_output_shapes
:d*
dtype0*
shape:d
_
AssignVariableOp_27AssignVariableOptraining/Adam/Variable_12Placeholder_27*
dtype0
}
ReadVariableOp_27ReadVariableOptraining/Adam/Variable_12^AssignVariableOp_27*
_output_shapes
:d*
dtype0
W
Placeholder_28Placeholder*
_output_shapes
:d*
dtype0*
shape:d
_
AssignVariableOp_28AssignVariableOptraining/Adam/Variable_13Placeholder_28*
dtype0
}
ReadVariableOp_28ReadVariableOptraining/Adam/Variable_13^AssignVariableOp_28*
_output_shapes
:d*
dtype0
_
Placeholder_29Placeholder*
_output_shapes

:dd*
dtype0*
shape
:dd
_
AssignVariableOp_29AssignVariableOptraining/Adam/Variable_14Placeholder_29*
dtype0

ReadVariableOp_29ReadVariableOptraining/Adam/Variable_14^AssignVariableOp_29*
_output_shapes

:dd*
dtype0
W
Placeholder_30Placeholder*
_output_shapes
:d*
dtype0*
shape:d
_
AssignVariableOp_30AssignVariableOptraining/Adam/Variable_15Placeholder_30*
dtype0
}
ReadVariableOp_30ReadVariableOptraining/Adam/Variable_15^AssignVariableOp_30*
_output_shapes
:d*
dtype0
W
Placeholder_31Placeholder*
_output_shapes
:d*
dtype0*
shape:d
_
AssignVariableOp_31AssignVariableOptraining/Adam/Variable_16Placeholder_31*
dtype0
}
ReadVariableOp_31ReadVariableOptraining/Adam/Variable_16^AssignVariableOp_31*
_output_shapes
:d*
dtype0
W
Placeholder_32Placeholder*
_output_shapes
:d*
dtype0*
shape:d
_
AssignVariableOp_32AssignVariableOptraining/Adam/Variable_17Placeholder_32*
dtype0
}
ReadVariableOp_32ReadVariableOptraining/Adam/Variable_17^AssignVariableOp_32*
_output_shapes
:d*
dtype0
_
Placeholder_33Placeholder*
_output_shapes

:d*
dtype0*
shape
:d
_
AssignVariableOp_33AssignVariableOptraining/Adam/Variable_18Placeholder_33*
dtype0

ReadVariableOp_33ReadVariableOptraining/Adam/Variable_18^AssignVariableOp_33*
_output_shapes

:d*
dtype0
W
Placeholder_34Placeholder*
_output_shapes
:*
dtype0*
shape:
_
AssignVariableOp_34AssignVariableOptraining/Adam/Variable_19Placeholder_34*
dtype0
}
ReadVariableOp_34ReadVariableOptraining/Adam/Variable_19^AssignVariableOp_34*
_output_shapes
:*
dtype0
W
Placeholder_35Placeholder*
_output_shapes
:*
dtype0*
shape:
_
AssignVariableOp_35AssignVariableOptraining/Adam/Variable_20Placeholder_35*
dtype0
}
ReadVariableOp_35ReadVariableOptraining/Adam/Variable_20^AssignVariableOp_35*
_output_shapes
:*
dtype0
W
Placeholder_36Placeholder*
_output_shapes
:*
dtype0*
shape:
_
AssignVariableOp_36AssignVariableOptraining/Adam/Variable_21Placeholder_36*
dtype0
}
ReadVariableOp_36ReadVariableOptraining/Adam/Variable_21^AssignVariableOp_36*
_output_shapes
:*
dtype0
W
Placeholder_37Placeholder*
_output_shapes
:*
dtype0*
shape:
_
AssignVariableOp_37AssignVariableOptraining/Adam/Variable_22Placeholder_37*
dtype0
}
ReadVariableOp_37ReadVariableOptraining/Adam/Variable_22^AssignVariableOp_37*
_output_shapes
:*
dtype0
W
Placeholder_38Placeholder*
_output_shapes
:*
dtype0*
shape:
_
AssignVariableOp_38AssignVariableOptraining/Adam/Variable_23Placeholder_38*
dtype0
}
ReadVariableOp_38ReadVariableOptraining/Adam/Variable_23^AssignVariableOp_38*
_output_shapes
:*
dtype0
W
Placeholder_39Placeholder*
_output_shapes
:*
dtype0*
shape:
_
AssignVariableOp_39AssignVariableOptraining/Adam/Variable_24Placeholder_39*
dtype0
}
ReadVariableOp_39ReadVariableOptraining/Adam/Variable_24^AssignVariableOp_39*
_output_shapes
:*
dtype0
W
Placeholder_40Placeholder*
_output_shapes
:*
dtype0*
shape:
_
AssignVariableOp_40AssignVariableOptraining/Adam/Variable_25Placeholder_40*
dtype0
}
ReadVariableOp_40ReadVariableOptraining/Adam/Variable_25^AssignVariableOp_40*
_output_shapes
:*
dtype0
W
Placeholder_41Placeholder*
_output_shapes
:*
dtype0*
shape:
_
AssignVariableOp_41AssignVariableOptraining/Adam/Variable_26Placeholder_41*
dtype0
}
ReadVariableOp_41ReadVariableOptraining/Adam/Variable_26^AssignVariableOp_41*
_output_shapes
:*
dtype0
W
Placeholder_42Placeholder*
_output_shapes
:*
dtype0*
shape:
_
AssignVariableOp_42AssignVariableOptraining/Adam/Variable_27Placeholder_42*
dtype0
}
ReadVariableOp_42ReadVariableOptraining/Adam/Variable_27^AssignVariableOp_42*
_output_shapes
:*
dtype0
W
Placeholder_43Placeholder*
_output_shapes
:*
dtype0*
shape:
_
AssignVariableOp_43AssignVariableOptraining/Adam/Variable_28Placeholder_43*
dtype0
}
ReadVariableOp_43ReadVariableOptraining/Adam/Variable_28^AssignVariableOp_43*
_output_shapes
:*
dtype0
W
Placeholder_44Placeholder*
_output_shapes
:*
dtype0*
shape:
_
AssignVariableOp_44AssignVariableOptraining/Adam/Variable_29Placeholder_44*
dtype0
}
ReadVariableOp_44ReadVariableOptraining/Adam/Variable_29^AssignVariableOp_44*
_output_shapes
:*
dtype0
P

save/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_77374175ac814797a6763c1aa732cda9/part*
_output_shapes
: *
dtype0
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
_output_shapes
: *
dtype0

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
§

save/SaveV2/tensor_namesConst"/device:CPU:0*Ë	
valueÁ	Bž	1BAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBbatch_normalization/betaBbatch_normalization/gammaBbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/gammaB!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBhidden1/biasBhidden1/kernelBhidden2/biasBhidden2/kernelBsoftmax/biasBsoftmax/kernelBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_11Btraining/Adam/Variable_12Btraining/Adam/Variable_13Btraining/Adam/Variable_14Btraining/Adam/Variable_15Btraining/Adam/Variable_16Btraining/Adam/Variable_17Btraining/Adam/Variable_18Btraining/Adam/Variable_19Btraining/Adam/Variable_2Btraining/Adam/Variable_20Btraining/Adam/Variable_21Btraining/Adam/Variable_22Btraining/Adam/Variable_23Btraining/Adam/Variable_24Btraining/Adam/Variable_25Btraining/Adam/Variable_26Btraining/Adam/Variable_27Btraining/Adam/Variable_28Btraining/Adam/Variable_29Btraining/Adam/Variable_3Btraining/Adam/Variable_4Btraining/Adam/Variable_5Btraining/Adam/Variable_6Btraining/Adam/Variable_7Btraining/Adam/Variable_8Btraining/Adam/Variable_9*
_output_shapes
:1*
dtype0
Ô
save/SaveV2/shape_and_slicesConst"/device:CPU:0*u
valuelBj1B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:1*
dtype0
˝
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp#Adam/iterations/Read/ReadVariableOpAdam/lr/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp-batch_normalization/gamma/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp/batch_normalization_1/gamma/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOp hidden1/bias/Read/ReadVariableOp"hidden1/kernel/Read/ReadVariableOp hidden2/bias/Read/ReadVariableOp"hidden2/kernel/Read/ReadVariableOp softmax/bias/Read/ReadVariableOp"softmax/kernel/Read/ReadVariableOp*training/Adam/Variable/Read/ReadVariableOp,training/Adam/Variable_1/Read/ReadVariableOp-training/Adam/Variable_10/Read/ReadVariableOp-training/Adam/Variable_11/Read/ReadVariableOp-training/Adam/Variable_12/Read/ReadVariableOp-training/Adam/Variable_13/Read/ReadVariableOp-training/Adam/Variable_14/Read/ReadVariableOp-training/Adam/Variable_15/Read/ReadVariableOp-training/Adam/Variable_16/Read/ReadVariableOp-training/Adam/Variable_17/Read/ReadVariableOp-training/Adam/Variable_18/Read/ReadVariableOp-training/Adam/Variable_19/Read/ReadVariableOp,training/Adam/Variable_2/Read/ReadVariableOp-training/Adam/Variable_20/Read/ReadVariableOp-training/Adam/Variable_21/Read/ReadVariableOp-training/Adam/Variable_22/Read/ReadVariableOp-training/Adam/Variable_23/Read/ReadVariableOp-training/Adam/Variable_24/Read/ReadVariableOp-training/Adam/Variable_25/Read/ReadVariableOp-training/Adam/Variable_26/Read/ReadVariableOp-training/Adam/Variable_27/Read/ReadVariableOp-training/Adam/Variable_28/Read/ReadVariableOp-training/Adam/Variable_29/Read/ReadVariableOp,training/Adam/Variable_3/Read/ReadVariableOp,training/Adam/Variable_4/Read/ReadVariableOp,training/Adam/Variable_5/Read/ReadVariableOp,training/Adam/Variable_6/Read/ReadVariableOp,training/Adam/Variable_7/Read/ReadVariableOp,training/Adam/Variable_8/Read/ReadVariableOp,training/Adam/Variable_9/Read/ReadVariableOp"/device:CPU:0*?
dtypes5
321	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*
_output_shapes
: *'
_class
loc:@save/ShardedFilename
Ź
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*

axis *
T0*
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
Ş

save/RestoreV2/tensor_namesConst"/device:CPU:0*Ë	
valueÁ	Bž	1BAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBbatch_normalization/betaBbatch_normalization/gammaBbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/gammaB!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBhidden1/biasBhidden1/kernelBhidden2/biasBhidden2/kernelBsoftmax/biasBsoftmax/kernelBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_11Btraining/Adam/Variable_12Btraining/Adam/Variable_13Btraining/Adam/Variable_14Btraining/Adam/Variable_15Btraining/Adam/Variable_16Btraining/Adam/Variable_17Btraining/Adam/Variable_18Btraining/Adam/Variable_19Btraining/Adam/Variable_2Btraining/Adam/Variable_20Btraining/Adam/Variable_21Btraining/Adam/Variable_22Btraining/Adam/Variable_23Btraining/Adam/Variable_24Btraining/Adam/Variable_25Btraining/Adam/Variable_26Btraining/Adam/Variable_27Btraining/Adam/Variable_28Btraining/Adam/Variable_29Btraining/Adam/Variable_3Btraining/Adam/Variable_4Btraining/Adam/Variable_5Btraining/Adam/Variable_6Btraining/Adam/Variable_7Btraining/Adam/Variable_8Btraining/Adam/Variable_9*
_output_shapes
:1*
dtype0
×
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*u
valuelBj1B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:1*
dtype0

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*?
dtypes5
321	*Ú
_output_shapesÇ
Ä:::::::::::::::::::::::::::::::::::::::::::::::::
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
T
save/AssignVariableOpAssignVariableOpAdam/beta_1save/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
V
save/AssignVariableOp_1AssignVariableOpAdam/beta_2save/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
U
save/AssignVariableOp_2AssignVariableOp
Adam/decaysave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0	*
_output_shapes
:
Z
save/AssignVariableOp_3AssignVariableOpAdam/iterationssave/Identity_4*
dtype0	
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
R
save/AssignVariableOp_4AssignVariableOpAdam/lrsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
c
save/AssignVariableOp_5AssignVariableOpbatch_normalization/betasave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
d
save/AssignVariableOp_6AssignVariableOpbatch_normalization/gammasave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
j
save/AssignVariableOp_7AssignVariableOpbatch_normalization/moving_meansave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
n
save/AssignVariableOp_8AssignVariableOp#batch_normalization/moving_variancesave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
f
save/AssignVariableOp_9AssignVariableOpbatch_normalization_1/betasave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
T0*
_output_shapes
:
h
save/AssignVariableOp_10AssignVariableOpbatch_normalization_1/gammasave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
n
save/AssignVariableOp_11AssignVariableOp!batch_normalization_1/moving_meansave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
r
save/AssignVariableOp_12AssignVariableOp%batch_normalization_1/moving_variancesave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
Y
save/AssignVariableOp_13AssignVariableOphidden1/biassave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:
[
save/AssignVariableOp_14AssignVariableOphidden1/kernelsave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:
Y
save/AssignVariableOp_15AssignVariableOphidden2/biassave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
T0*
_output_shapes
:
[
save/AssignVariableOp_16AssignVariableOphidden2/kernelsave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:
Y
save/AssignVariableOp_17AssignVariableOpsoftmax/biassave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
T0*
_output_shapes
:
[
save/AssignVariableOp_18AssignVariableOpsoftmax/kernelsave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
c
save/AssignVariableOp_19AssignVariableOptraining/Adam/Variablesave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
T0*
_output_shapes
:
e
save/AssignVariableOp_20AssignVariableOptraining/Adam/Variable_1save/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:21*
T0*
_output_shapes
:
f
save/AssignVariableOp_21AssignVariableOptraining/Adam/Variable_10save/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:22*
T0*
_output_shapes
:
f
save/AssignVariableOp_22AssignVariableOptraining/Adam/Variable_11save/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:23*
T0*
_output_shapes
:
f
save/AssignVariableOp_23AssignVariableOptraining/Adam/Variable_12save/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:24*
T0*
_output_shapes
:
f
save/AssignVariableOp_24AssignVariableOptraining/Adam/Variable_13save/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:25*
T0*
_output_shapes
:
f
save/AssignVariableOp_25AssignVariableOptraining/Adam/Variable_14save/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:26*
T0*
_output_shapes
:
f
save/AssignVariableOp_26AssignVariableOptraining/Adam/Variable_15save/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:27*
T0*
_output_shapes
:
f
save/AssignVariableOp_27AssignVariableOptraining/Adam/Variable_16save/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:28*
T0*
_output_shapes
:
f
save/AssignVariableOp_28AssignVariableOptraining/Adam/Variable_17save/Identity_29*
dtype0
R
save/Identity_30Identitysave/RestoreV2:29*
T0*
_output_shapes
:
f
save/AssignVariableOp_29AssignVariableOptraining/Adam/Variable_18save/Identity_30*
dtype0
R
save/Identity_31Identitysave/RestoreV2:30*
T0*
_output_shapes
:
f
save/AssignVariableOp_30AssignVariableOptraining/Adam/Variable_19save/Identity_31*
dtype0
R
save/Identity_32Identitysave/RestoreV2:31*
T0*
_output_shapes
:
e
save/AssignVariableOp_31AssignVariableOptraining/Adam/Variable_2save/Identity_32*
dtype0
R
save/Identity_33Identitysave/RestoreV2:32*
T0*
_output_shapes
:
f
save/AssignVariableOp_32AssignVariableOptraining/Adam/Variable_20save/Identity_33*
dtype0
R
save/Identity_34Identitysave/RestoreV2:33*
T0*
_output_shapes
:
f
save/AssignVariableOp_33AssignVariableOptraining/Adam/Variable_21save/Identity_34*
dtype0
R
save/Identity_35Identitysave/RestoreV2:34*
T0*
_output_shapes
:
f
save/AssignVariableOp_34AssignVariableOptraining/Adam/Variable_22save/Identity_35*
dtype0
R
save/Identity_36Identitysave/RestoreV2:35*
T0*
_output_shapes
:
f
save/AssignVariableOp_35AssignVariableOptraining/Adam/Variable_23save/Identity_36*
dtype0
R
save/Identity_37Identitysave/RestoreV2:36*
T0*
_output_shapes
:
f
save/AssignVariableOp_36AssignVariableOptraining/Adam/Variable_24save/Identity_37*
dtype0
R
save/Identity_38Identitysave/RestoreV2:37*
T0*
_output_shapes
:
f
save/AssignVariableOp_37AssignVariableOptraining/Adam/Variable_25save/Identity_38*
dtype0
R
save/Identity_39Identitysave/RestoreV2:38*
T0*
_output_shapes
:
f
save/AssignVariableOp_38AssignVariableOptraining/Adam/Variable_26save/Identity_39*
dtype0
R
save/Identity_40Identitysave/RestoreV2:39*
T0*
_output_shapes
:
f
save/AssignVariableOp_39AssignVariableOptraining/Adam/Variable_27save/Identity_40*
dtype0
R
save/Identity_41Identitysave/RestoreV2:40*
T0*
_output_shapes
:
f
save/AssignVariableOp_40AssignVariableOptraining/Adam/Variable_28save/Identity_41*
dtype0
R
save/Identity_42Identitysave/RestoreV2:41*
T0*
_output_shapes
:
f
save/AssignVariableOp_41AssignVariableOptraining/Adam/Variable_29save/Identity_42*
dtype0
R
save/Identity_43Identitysave/RestoreV2:42*
T0*
_output_shapes
:
e
save/AssignVariableOp_42AssignVariableOptraining/Adam/Variable_3save/Identity_43*
dtype0
R
save/Identity_44Identitysave/RestoreV2:43*
T0*
_output_shapes
:
e
save/AssignVariableOp_43AssignVariableOptraining/Adam/Variable_4save/Identity_44*
dtype0
R
save/Identity_45Identitysave/RestoreV2:44*
T0*
_output_shapes
:
e
save/AssignVariableOp_44AssignVariableOptraining/Adam/Variable_5save/Identity_45*
dtype0
R
save/Identity_46Identitysave/RestoreV2:45*
T0*
_output_shapes
:
e
save/AssignVariableOp_45AssignVariableOptraining/Adam/Variable_6save/Identity_46*
dtype0
R
save/Identity_47Identitysave/RestoreV2:46*
T0*
_output_shapes
:
e
save/AssignVariableOp_46AssignVariableOptraining/Adam/Variable_7save/Identity_47*
dtype0
R
save/Identity_48Identitysave/RestoreV2:47*
T0*
_output_shapes
:
e
save/AssignVariableOp_47AssignVariableOptraining/Adam/Variable_8save/Identity_48*
dtype0
R
save/Identity_49Identitysave/RestoreV2:48*
T0*
_output_shapes
:
e
save/AssignVariableOp_48AssignVariableOptraining/Adam/Variable_9save/Identity_49*
dtype0
š

save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_29^save/AssignVariableOp_3^save/AssignVariableOp_30^save/AssignVariableOp_31^save/AssignVariableOp_32^save/AssignVariableOp_33^save/AssignVariableOp_34^save/AssignVariableOp_35^save/AssignVariableOp_36^save/AssignVariableOp_37^save/AssignVariableOp_38^save/AssignVariableOp_39^save/AssignVariableOp_4^save/AssignVariableOp_40^save/AssignVariableOp_41^save/AssignVariableOp_42^save/AssignVariableOp_43^save/AssignVariableOp_44^save/AssignVariableOp_45^save/AssignVariableOp_46^save/AssignVariableOp_47^save/AssignVariableOp_48^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard
r
hidden1_input_1Placeholder*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
§
1hidden1_1/kernel/Initializer/random_uniform/shapeConst*
valueB"   d   *
_output_shapes
:*
dtype0*#
_class
loc:@hidden1_1/kernel

/hidden1_1/kernel/Initializer/random_uniform/minConst*
valueB
 *Ţ%wž*
_output_shapes
: *
dtype0*#
_class
loc:@hidden1_1/kernel

/hidden1_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *Ţ%w>*
_output_shapes
: *
dtype0*#
_class
loc:@hidden1_1/kernel
ń
9hidden1_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1hidden1_1/kernel/Initializer/random_uniform/shape*
seed2 *#
_class
loc:@hidden1_1/kernel*
T0*
_output_shapes

:d*
dtype0*

seed 
Ţ
/hidden1_1/kernel/Initializer/random_uniform/subSub/hidden1_1/kernel/Initializer/random_uniform/max/hidden1_1/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *#
_class
loc:@hidden1_1/kernel
đ
/hidden1_1/kernel/Initializer/random_uniform/mulMul9hidden1_1/kernel/Initializer/random_uniform/RandomUniform/hidden1_1/kernel/Initializer/random_uniform/sub*
T0*
_output_shapes

:d*#
_class
loc:@hidden1_1/kernel
â
+hidden1_1/kernel/Initializer/random_uniformAdd/hidden1_1/kernel/Initializer/random_uniform/mul/hidden1_1/kernel/Initializer/random_uniform/min*
T0*
_output_shapes

:d*#
_class
loc:@hidden1_1/kernel
˛
hidden1_1/kernelVarHandleOp*!
shared_namehidden1_1/kernel*#
_class
loc:@hidden1_1/kernel*
_output_shapes
: *
dtype0*
shape
:d*
	container 
q
1hidden1_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOphidden1_1/kernel*
_output_shapes
: 

hidden1_1/kernel/AssignAssignVariableOphidden1_1/kernel+hidden1_1/kernel/Initializer/random_uniform*
dtype0*#
_class
loc:@hidden1_1/kernel

$hidden1_1/kernel/Read/ReadVariableOpReadVariableOphidden1_1/kernel*
_output_shapes

:d*
dtype0*#
_class
loc:@hidden1_1/kernel

 hidden1_1/bias/Initializer/zerosConst*
valueBd*    *
_output_shapes
:d*
dtype0*!
_class
loc:@hidden1_1/bias
¨
hidden1_1/biasVarHandleOp*
shared_namehidden1_1/bias*!
_class
loc:@hidden1_1/bias*
_output_shapes
: *
dtype0*
shape:d*
	container 
m
/hidden1_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOphidden1_1/bias*
_output_shapes
: 

hidden1_1/bias/AssignAssignVariableOphidden1_1/bias hidden1_1/bias/Initializer/zeros*
dtype0*!
_class
loc:@hidden1_1/bias

"hidden1_1/bias/Read/ReadVariableOpReadVariableOphidden1_1/bias*
_output_shapes
:d*
dtype0*!
_class
loc:@hidden1_1/bias
p
hidden1_1/MatMul/ReadVariableOpReadVariableOphidden1_1/kernel*
_output_shapes

:d*
dtype0
¤
hidden1_1/MatMulMatMulhidden1_input_1hidden1_1/MatMul/ReadVariableOp*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
k
 hidden1_1/BiasAdd/ReadVariableOpReadVariableOphidden1_1/bias*
_output_shapes
:d*
dtype0

hidden1_1/BiasAddBiasAddhidden1_1/MatMul hidden1_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
Š
,batch_normalization_2/gamma/Initializer/onesConst*
valueBd*  ?*
_output_shapes
:d*
dtype0*.
_class$
" loc:@batch_normalization_2/gamma
Ď
batch_normalization_2/gammaVarHandleOp*,
shared_namebatch_normalization_2/gamma*.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes
: *
dtype0*
shape:d*
	container 

<batch_normalization_2/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_2/gamma*
_output_shapes
: 
ž
"batch_normalization_2/gamma/AssignAssignVariableOpbatch_normalization_2/gamma,batch_normalization_2/gamma/Initializer/ones*
dtype0*.
_class$
" loc:@batch_normalization_2/gamma
ˇ
/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes
:d*
dtype0*.
_class$
" loc:@batch_normalization_2/gamma
¨
,batch_normalization_2/beta/Initializer/zerosConst*
valueBd*    *
_output_shapes
:d*
dtype0*-
_class#
!loc:@batch_normalization_2/beta
Ě
batch_normalization_2/betaVarHandleOp*+
shared_namebatch_normalization_2/beta*-
_class#
!loc:@batch_normalization_2/beta*
_output_shapes
: *
dtype0*
shape:d*
	container 

;batch_normalization_2/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_2/beta*
_output_shapes
: 
ť
!batch_normalization_2/beta/AssignAssignVariableOpbatch_normalization_2/beta,batch_normalization_2/beta/Initializer/zeros*
dtype0*-
_class#
!loc:@batch_normalization_2/beta
´
.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes
:d*
dtype0*-
_class#
!loc:@batch_normalization_2/beta
ś
3batch_normalization_2/moving_mean/Initializer/zerosConst*
valueBd*    *
_output_shapes
:d*
dtype0*4
_class*
(&loc:@batch_normalization_2/moving_mean
á
!batch_normalization_2/moving_meanVarHandleOp*2
shared_name#!batch_normalization_2/moving_mean*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
: *
dtype0*
shape:d*
	container 

Bbatch_normalization_2/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp!batch_normalization_2/moving_mean*
_output_shapes
: 
×
(batch_normalization_2/moving_mean/AssignAssignVariableOp!batch_normalization_2/moving_mean3batch_normalization_2/moving_mean/Initializer/zeros*
dtype0*4
_class*
(&loc:@batch_normalization_2/moving_mean
É
5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes
:d*
dtype0*4
_class*
(&loc:@batch_normalization_2/moving_mean
˝
6batch_normalization_2/moving_variance/Initializer/onesConst*
valueBd*  ?*
_output_shapes
:d*
dtype0*8
_class.
,*loc:@batch_normalization_2/moving_variance
í
%batch_normalization_2/moving_varianceVarHandleOp*6
shared_name'%batch_normalization_2/moving_variance*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
: *
dtype0*
shape:d*
	container 

Fbatch_normalization_2/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp%batch_normalization_2/moving_variance*
_output_shapes
: 
ć
,batch_normalization_2/moving_variance/AssignAssignVariableOp%batch_normalization_2/moving_variance6batch_normalization_2/moving_variance/Initializer/ones*
dtype0*8
_class.
,*loc:@batch_normalization_2/moving_variance
Ő
9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes
:d*
dtype0*8
_class.
,*loc:@batch_normalization_2/moving_variance

.batch_normalization_2/batchnorm/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes
:d*
dtype0
j
%batch_normalization_2/batchnorm/add/yConst*
valueB
 *o:*
_output_shapes
: *
dtype0
Ś
#batch_normalization_2/batchnorm/addAdd.batch_normalization_2/batchnorm/ReadVariableOp%batch_normalization_2/batchnorm/add/y*
T0*
_output_shapes
:d
x
%batch_normalization_2/batchnorm/RsqrtRsqrt#batch_normalization_2/batchnorm/add*
T0*
_output_shapes
:d

2batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes
:d*
dtype0
Ş
#batch_normalization_2/batchnorm/mulMul%batch_normalization_2/batchnorm/Rsqrt2batch_normalization_2/batchnorm/mul/ReadVariableOp*
T0*
_output_shapes
:d

%batch_normalization_2/batchnorm/mul_1Mulhidden1_1/BiasAdd#batch_normalization_2/batchnorm/mul*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d

0batch_normalization_2/batchnorm/ReadVariableOp_1ReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes
:d*
dtype0
¨
%batch_normalization_2/batchnorm/mul_2Mul0batch_normalization_2/batchnorm/ReadVariableOp_1#batch_normalization_2/batchnorm/mul*
T0*
_output_shapes
:d

0batch_normalization_2/batchnorm/ReadVariableOp_2ReadVariableOpbatch_normalization_2/beta*
_output_shapes
:d*
dtype0
¨
#batch_normalization_2/batchnorm/subSub0batch_normalization_2/batchnorm/ReadVariableOp_2%batch_normalization_2/batchnorm/mul_2*
T0*
_output_shapes
:d
Ş
%batch_normalization_2/batchnorm/add_1Add%batch_normalization_2/batchnorm/mul_1#batch_normalization_2/batchnorm/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
r
activation_2/ReluRelu%batch_normalization_2/batchnorm/add_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
c
dropout_2/IdentityIdentityactivation_2/Relu*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
§
1hidden2_1/kernel/Initializer/random_uniform/shapeConst*
valueB"d   d   *
_output_shapes
:*
dtype0*#
_class
loc:@hidden2_1/kernel

/hidden2_1/kernel/Initializer/random_uniform/minConst*
valueB
 *Ź\1ž*
_output_shapes
: *
dtype0*#
_class
loc:@hidden2_1/kernel

/hidden2_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *Ź\1>*
_output_shapes
: *
dtype0*#
_class
loc:@hidden2_1/kernel
ń
9hidden2_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1hidden2_1/kernel/Initializer/random_uniform/shape*
seed2 *#
_class
loc:@hidden2_1/kernel*
T0*
_output_shapes

:dd*
dtype0*

seed 
Ţ
/hidden2_1/kernel/Initializer/random_uniform/subSub/hidden2_1/kernel/Initializer/random_uniform/max/hidden2_1/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *#
_class
loc:@hidden2_1/kernel
đ
/hidden2_1/kernel/Initializer/random_uniform/mulMul9hidden2_1/kernel/Initializer/random_uniform/RandomUniform/hidden2_1/kernel/Initializer/random_uniform/sub*
T0*
_output_shapes

:dd*#
_class
loc:@hidden2_1/kernel
â
+hidden2_1/kernel/Initializer/random_uniformAdd/hidden2_1/kernel/Initializer/random_uniform/mul/hidden2_1/kernel/Initializer/random_uniform/min*
T0*
_output_shapes

:dd*#
_class
loc:@hidden2_1/kernel
˛
hidden2_1/kernelVarHandleOp*!
shared_namehidden2_1/kernel*#
_class
loc:@hidden2_1/kernel*
_output_shapes
: *
dtype0*
shape
:dd*
	container 
q
1hidden2_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOphidden2_1/kernel*
_output_shapes
: 

hidden2_1/kernel/AssignAssignVariableOphidden2_1/kernel+hidden2_1/kernel/Initializer/random_uniform*
dtype0*#
_class
loc:@hidden2_1/kernel

$hidden2_1/kernel/Read/ReadVariableOpReadVariableOphidden2_1/kernel*
_output_shapes

:dd*
dtype0*#
_class
loc:@hidden2_1/kernel

 hidden2_1/bias/Initializer/zerosConst*
valueBd*    *
_output_shapes
:d*
dtype0*!
_class
loc:@hidden2_1/bias
¨
hidden2_1/biasVarHandleOp*
shared_namehidden2_1/bias*!
_class
loc:@hidden2_1/bias*
_output_shapes
: *
dtype0*
shape:d*
	container 
m
/hidden2_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOphidden2_1/bias*
_output_shapes
: 

hidden2_1/bias/AssignAssignVariableOphidden2_1/bias hidden2_1/bias/Initializer/zeros*
dtype0*!
_class
loc:@hidden2_1/bias

"hidden2_1/bias/Read/ReadVariableOpReadVariableOphidden2_1/bias*
_output_shapes
:d*
dtype0*!
_class
loc:@hidden2_1/bias
p
hidden2_1/MatMul/ReadVariableOpReadVariableOphidden2_1/kernel*
_output_shapes

:dd*
dtype0
§
hidden2_1/MatMulMatMuldropout_2/Identityhidden2_1/MatMul/ReadVariableOp*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
k
 hidden2_1/BiasAdd/ReadVariableOpReadVariableOphidden2_1/bias*
_output_shapes
:d*
dtype0

hidden2_1/BiasAddBiasAddhidden2_1/MatMul hidden2_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
­
.batch_normalization_1_1/gamma/Initializer/onesConst*
valueBd*  ?*
_output_shapes
:d*
dtype0*0
_class&
$"loc:@batch_normalization_1_1/gamma
Ő
batch_normalization_1_1/gammaVarHandleOp*.
shared_namebatch_normalization_1_1/gamma*0
_class&
$"loc:@batch_normalization_1_1/gamma*
_output_shapes
: *
dtype0*
shape:d*
	container 

>batch_normalization_1_1/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_1_1/gamma*
_output_shapes
: 
Ć
$batch_normalization_1_1/gamma/AssignAssignVariableOpbatch_normalization_1_1/gamma.batch_normalization_1_1/gamma/Initializer/ones*
dtype0*0
_class&
$"loc:@batch_normalization_1_1/gamma
˝
1batch_normalization_1_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1_1/gamma*
_output_shapes
:d*
dtype0*0
_class&
$"loc:@batch_normalization_1_1/gamma
Ź
.batch_normalization_1_1/beta/Initializer/zerosConst*
valueBd*    *
_output_shapes
:d*
dtype0*/
_class%
#!loc:@batch_normalization_1_1/beta
Ň
batch_normalization_1_1/betaVarHandleOp*-
shared_namebatch_normalization_1_1/beta*/
_class%
#!loc:@batch_normalization_1_1/beta*
_output_shapes
: *
dtype0*
shape:d*
	container 

=batch_normalization_1_1/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_1_1/beta*
_output_shapes
: 
Ă
#batch_normalization_1_1/beta/AssignAssignVariableOpbatch_normalization_1_1/beta.batch_normalization_1_1/beta/Initializer/zeros*
dtype0*/
_class%
#!loc:@batch_normalization_1_1/beta
ş
0batch_normalization_1_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1_1/beta*
_output_shapes
:d*
dtype0*/
_class%
#!loc:@batch_normalization_1_1/beta
ş
5batch_normalization_1_1/moving_mean/Initializer/zerosConst*
valueBd*    *
_output_shapes
:d*
dtype0*6
_class,
*(loc:@batch_normalization_1_1/moving_mean
ç
#batch_normalization_1_1/moving_meanVarHandleOp*4
shared_name%#batch_normalization_1_1/moving_mean*6
_class,
*(loc:@batch_normalization_1_1/moving_mean*
_output_shapes
: *
dtype0*
shape:d*
	container 

Dbatch_normalization_1_1/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp#batch_normalization_1_1/moving_mean*
_output_shapes
: 
ß
*batch_normalization_1_1/moving_mean/AssignAssignVariableOp#batch_normalization_1_1/moving_mean5batch_normalization_1_1/moving_mean/Initializer/zeros*
dtype0*6
_class,
*(loc:@batch_normalization_1_1/moving_mean
Ď
7batch_normalization_1_1/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_1_1/moving_mean*
_output_shapes
:d*
dtype0*6
_class,
*(loc:@batch_normalization_1_1/moving_mean
Á
8batch_normalization_1_1/moving_variance/Initializer/onesConst*
valueBd*  ?*
_output_shapes
:d*
dtype0*:
_class0
.,loc:@batch_normalization_1_1/moving_variance
ó
'batch_normalization_1_1/moving_varianceVarHandleOp*8
shared_name)'batch_normalization_1_1/moving_variance*:
_class0
.,loc:@batch_normalization_1_1/moving_variance*
_output_shapes
: *
dtype0*
shape:d*
	container 

Hbatch_normalization_1_1/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp'batch_normalization_1_1/moving_variance*
_output_shapes
: 
î
.batch_normalization_1_1/moving_variance/AssignAssignVariableOp'batch_normalization_1_1/moving_variance8batch_normalization_1_1/moving_variance/Initializer/ones*
dtype0*:
_class0
.,loc:@batch_normalization_1_1/moving_variance
Ű
;batch_normalization_1_1/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_1_1/moving_variance*
_output_shapes
:d*
dtype0*:
_class0
.,loc:@batch_normalization_1_1/moving_variance

0batch_normalization_1_1/batchnorm/ReadVariableOpReadVariableOp'batch_normalization_1_1/moving_variance*
_output_shapes
:d*
dtype0
l
'batch_normalization_1_1/batchnorm/add/yConst*
valueB
 *o:*
_output_shapes
: *
dtype0
Ź
%batch_normalization_1_1/batchnorm/addAdd0batch_normalization_1_1/batchnorm/ReadVariableOp'batch_normalization_1_1/batchnorm/add/y*
T0*
_output_shapes
:d
|
'batch_normalization_1_1/batchnorm/RsqrtRsqrt%batch_normalization_1_1/batchnorm/add*
T0*
_output_shapes
:d

4batch_normalization_1_1/batchnorm/mul/ReadVariableOpReadVariableOpbatch_normalization_1_1/gamma*
_output_shapes
:d*
dtype0
°
%batch_normalization_1_1/batchnorm/mulMul'batch_normalization_1_1/batchnorm/Rsqrt4batch_normalization_1_1/batchnorm/mul/ReadVariableOp*
T0*
_output_shapes
:d

'batch_normalization_1_1/batchnorm/mul_1Mulhidden2_1/BiasAdd%batch_normalization_1_1/batchnorm/mul*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d

2batch_normalization_1_1/batchnorm/ReadVariableOp_1ReadVariableOp#batch_normalization_1_1/moving_mean*
_output_shapes
:d*
dtype0
Ž
'batch_normalization_1_1/batchnorm/mul_2Mul2batch_normalization_1_1/batchnorm/ReadVariableOp_1%batch_normalization_1_1/batchnorm/mul*
T0*
_output_shapes
:d

2batch_normalization_1_1/batchnorm/ReadVariableOp_2ReadVariableOpbatch_normalization_1_1/beta*
_output_shapes
:d*
dtype0
Ž
%batch_normalization_1_1/batchnorm/subSub2batch_normalization_1_1/batchnorm/ReadVariableOp_2'batch_normalization_1_1/batchnorm/mul_2*
T0*
_output_shapes
:d
°
'batch_normalization_1_1/batchnorm/add_1Add'batch_normalization_1_1/batchnorm/mul_1%batch_normalization_1_1/batchnorm/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
v
activation_1_1/ReluRelu'batch_normalization_1_1/batchnorm/add_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
g
dropout_1_1/IdentityIdentityactivation_1_1/Relu*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
§
1softmax_1/kernel/Initializer/random_uniform/shapeConst*
valueB"d      *
_output_shapes
:*
dtype0*#
_class
loc:@softmax_1/kernel

/softmax_1/kernel/Initializer/random_uniform/minConst*
valueB
 *Ţ%wž*
_output_shapes
: *
dtype0*#
_class
loc:@softmax_1/kernel

/softmax_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *Ţ%w>*
_output_shapes
: *
dtype0*#
_class
loc:@softmax_1/kernel
ń
9softmax_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1softmax_1/kernel/Initializer/random_uniform/shape*
seed2 *#
_class
loc:@softmax_1/kernel*
T0*
_output_shapes

:d*
dtype0*

seed 
Ţ
/softmax_1/kernel/Initializer/random_uniform/subSub/softmax_1/kernel/Initializer/random_uniform/max/softmax_1/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *#
_class
loc:@softmax_1/kernel
đ
/softmax_1/kernel/Initializer/random_uniform/mulMul9softmax_1/kernel/Initializer/random_uniform/RandomUniform/softmax_1/kernel/Initializer/random_uniform/sub*
T0*
_output_shapes

:d*#
_class
loc:@softmax_1/kernel
â
+softmax_1/kernel/Initializer/random_uniformAdd/softmax_1/kernel/Initializer/random_uniform/mul/softmax_1/kernel/Initializer/random_uniform/min*
T0*
_output_shapes

:d*#
_class
loc:@softmax_1/kernel
˛
softmax_1/kernelVarHandleOp*!
shared_namesoftmax_1/kernel*#
_class
loc:@softmax_1/kernel*
_output_shapes
: *
dtype0*
shape
:d*
	container 
q
1softmax_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpsoftmax_1/kernel*
_output_shapes
: 

softmax_1/kernel/AssignAssignVariableOpsoftmax_1/kernel+softmax_1/kernel/Initializer/random_uniform*
dtype0*#
_class
loc:@softmax_1/kernel

$softmax_1/kernel/Read/ReadVariableOpReadVariableOpsoftmax_1/kernel*
_output_shapes

:d*
dtype0*#
_class
loc:@softmax_1/kernel

 softmax_1/bias/Initializer/zerosConst*
valueB*    *
_output_shapes
:*
dtype0*!
_class
loc:@softmax_1/bias
¨
softmax_1/biasVarHandleOp*
shared_namesoftmax_1/bias*!
_class
loc:@softmax_1/bias*
_output_shapes
: *
dtype0*
shape:*
	container 
m
/softmax_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpsoftmax_1/bias*
_output_shapes
: 

softmax_1/bias/AssignAssignVariableOpsoftmax_1/bias softmax_1/bias/Initializer/zeros*
dtype0*!
_class
loc:@softmax_1/bias

"softmax_1/bias/Read/ReadVariableOpReadVariableOpsoftmax_1/bias*
_output_shapes
:*
dtype0*!
_class
loc:@softmax_1/bias
p
softmax_1/MatMul/ReadVariableOpReadVariableOpsoftmax_1/kernel*
_output_shapes

:d*
dtype0
Š
softmax_1/MatMulMatMuldropout_1_1/Identitysoftmax_1/MatMul/ReadVariableOp*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
k
 softmax_1/BiasAdd/ReadVariableOpReadVariableOpsoftmax_1/bias*
_output_shapes
:*
dtype0

softmax_1/BiasAddBiasAddsoftmax_1/MatMul softmax_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
a
softmax_1/SoftmaxSoftmaxsoftmax_1/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
Placeholder_45Placeholder*
_output_shapes

:d*
dtype0*
shape
:d
V
AssignVariableOp_45AssignVariableOphidden1_1/kernelPlaceholder_45*
dtype0
x
ReadVariableOp_45ReadVariableOphidden1_1/kernel^AssignVariableOp_45*
_output_shapes

:d*
dtype0
W
Placeholder_46Placeholder*
_output_shapes
:d*
dtype0*
shape:d
T
AssignVariableOp_46AssignVariableOphidden1_1/biasPlaceholder_46*
dtype0
r
ReadVariableOp_46ReadVariableOphidden1_1/bias^AssignVariableOp_46*
_output_shapes
:d*
dtype0
W
Placeholder_47Placeholder*
_output_shapes
:d*
dtype0*
shape:d
a
AssignVariableOp_47AssignVariableOpbatch_normalization_2/gammaPlaceholder_47*
dtype0

ReadVariableOp_47ReadVariableOpbatch_normalization_2/gamma^AssignVariableOp_47*
_output_shapes
:d*
dtype0
W
Placeholder_48Placeholder*
_output_shapes
:d*
dtype0*
shape:d
`
AssignVariableOp_48AssignVariableOpbatch_normalization_2/betaPlaceholder_48*
dtype0
~
ReadVariableOp_48ReadVariableOpbatch_normalization_2/beta^AssignVariableOp_48*
_output_shapes
:d*
dtype0
W
Placeholder_49Placeholder*
_output_shapes
:d*
dtype0*
shape:d
g
AssignVariableOp_49AssignVariableOp!batch_normalization_2/moving_meanPlaceholder_49*
dtype0

ReadVariableOp_49ReadVariableOp!batch_normalization_2/moving_mean^AssignVariableOp_49*
_output_shapes
:d*
dtype0
W
Placeholder_50Placeholder*
_output_shapes
:d*
dtype0*
shape:d
k
AssignVariableOp_50AssignVariableOp%batch_normalization_2/moving_variancePlaceholder_50*
dtype0

ReadVariableOp_50ReadVariableOp%batch_normalization_2/moving_variance^AssignVariableOp_50*
_output_shapes
:d*
dtype0
_
Placeholder_51Placeholder*
_output_shapes

:dd*
dtype0*
shape
:dd
V
AssignVariableOp_51AssignVariableOphidden2_1/kernelPlaceholder_51*
dtype0
x
ReadVariableOp_51ReadVariableOphidden2_1/kernel^AssignVariableOp_51*
_output_shapes

:dd*
dtype0
W
Placeholder_52Placeholder*
_output_shapes
:d*
dtype0*
shape:d
T
AssignVariableOp_52AssignVariableOphidden2_1/biasPlaceholder_52*
dtype0
r
ReadVariableOp_52ReadVariableOphidden2_1/bias^AssignVariableOp_52*
_output_shapes
:d*
dtype0
W
Placeholder_53Placeholder*
_output_shapes
:d*
dtype0*
shape:d
c
AssignVariableOp_53AssignVariableOpbatch_normalization_1_1/gammaPlaceholder_53*
dtype0

ReadVariableOp_53ReadVariableOpbatch_normalization_1_1/gamma^AssignVariableOp_53*
_output_shapes
:d*
dtype0
W
Placeholder_54Placeholder*
_output_shapes
:d*
dtype0*
shape:d
b
AssignVariableOp_54AssignVariableOpbatch_normalization_1_1/betaPlaceholder_54*
dtype0

ReadVariableOp_54ReadVariableOpbatch_normalization_1_1/beta^AssignVariableOp_54*
_output_shapes
:d*
dtype0
W
Placeholder_55Placeholder*
_output_shapes
:d*
dtype0*
shape:d
i
AssignVariableOp_55AssignVariableOp#batch_normalization_1_1/moving_meanPlaceholder_55*
dtype0

ReadVariableOp_55ReadVariableOp#batch_normalization_1_1/moving_mean^AssignVariableOp_55*
_output_shapes
:d*
dtype0
W
Placeholder_56Placeholder*
_output_shapes
:d*
dtype0*
shape:d
m
AssignVariableOp_56AssignVariableOp'batch_normalization_1_1/moving_variancePlaceholder_56*
dtype0

ReadVariableOp_56ReadVariableOp'batch_normalization_1_1/moving_variance^AssignVariableOp_56*
_output_shapes
:d*
dtype0
_
Placeholder_57Placeholder*
_output_shapes

:d*
dtype0*
shape
:d
V
AssignVariableOp_57AssignVariableOpsoftmax_1/kernelPlaceholder_57*
dtype0
x
ReadVariableOp_57ReadVariableOpsoftmax_1/kernel^AssignVariableOp_57*
_output_shapes

:d*
dtype0
W
Placeholder_58Placeholder*
_output_shapes
:*
dtype0*
shape:
T
AssignVariableOp_58AssignVariableOpsoftmax_1/biasPlaceholder_58*
dtype0
r
ReadVariableOp_58ReadVariableOpsoftmax_1/bias^AssignVariableOp_58*
_output_shapes
:*
dtype0
U
VarIsInitializedOp_49VarIsInitializedOphidden1_1/kernel*
_output_shapes
: 
S
VarIsInitializedOp_50VarIsInitializedOphidden1_1/bias*
_output_shapes
: 
`
VarIsInitializedOp_51VarIsInitializedOpbatch_normalization_2/gamma*
_output_shapes
: 
_
VarIsInitializedOp_52VarIsInitializedOpbatch_normalization_2/beta*
_output_shapes
: 
f
VarIsInitializedOp_53VarIsInitializedOp!batch_normalization_2/moving_mean*
_output_shapes
: 
j
VarIsInitializedOp_54VarIsInitializedOp%batch_normalization_2/moving_variance*
_output_shapes
: 
U
VarIsInitializedOp_55VarIsInitializedOphidden2_1/kernel*
_output_shapes
: 
S
VarIsInitializedOp_56VarIsInitializedOphidden2_1/bias*
_output_shapes
: 
b
VarIsInitializedOp_57VarIsInitializedOpbatch_normalization_1_1/gamma*
_output_shapes
: 
a
VarIsInitializedOp_58VarIsInitializedOpbatch_normalization_1_1/beta*
_output_shapes
: 
h
VarIsInitializedOp_59VarIsInitializedOp#batch_normalization_1_1/moving_mean*
_output_shapes
: 
l
VarIsInitializedOp_60VarIsInitializedOp'batch_normalization_1_1/moving_variance*
_output_shapes
: 
U
VarIsInitializedOp_61VarIsInitializedOpsoftmax_1/kernel*
_output_shapes
: 
S
VarIsInitializedOp_62VarIsInitializedOpsoftmax_1/bias*
_output_shapes
: 
ň
init_2NoOp$^batch_normalization_1_1/beta/Assign%^batch_normalization_1_1/gamma/Assign+^batch_normalization_1_1/moving_mean/Assign/^batch_normalization_1_1/moving_variance/Assign"^batch_normalization_2/beta/Assign#^batch_normalization_2/gamma/Assign)^batch_normalization_2/moving_mean/Assign-^batch_normalization_2/moving_variance/Assign^hidden1_1/bias/Assign^hidden1_1/kernel/Assign^hidden2_1/bias/Assign^hidden2_1/kernel/Assign^softmax_1/bias/Assign^softmax_1/kernel/Assign
m
+Adam_1/iterations/Initializer/initial_valueConst*
value	B	 R *
_output_shapes
: *
dtype0	

Adam_1/iterationsVarHandleOp*
_output_shapes
: *
dtype0	*"
shared_nameAdam_1/iterations*
	container *
shape: 
s
2Adam_1/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/iterations*
_output_shapes
: 

Adam_1/iterations/AssignAssignVariableOpAdam_1/iterations+Adam_1/iterations/Initializer/initial_value*
dtype0	*$
_class
loc:@Adam_1/iterations

%Adam_1/iterations/Read/ReadVariableOpReadVariableOpAdam_1/iterations*
_output_shapes
: *
dtype0	*$
_class
loc:@Adam_1/iterations
h
#Adam_1/lr/Initializer/initial_valueConst*
valueB
 *o:*
_output_shapes
: *
dtype0
w
	Adam_1/lrVarHandleOp*
_output_shapes
: *
dtype0*
shared_name	Adam_1/lr*
	container *
shape: 
c
*Adam_1/lr/IsInitialized/VarIsInitializedOpVarIsInitializedOp	Adam_1/lr*
_output_shapes
: 

Adam_1/lr/AssignAssignVariableOp	Adam_1/lr#Adam_1/lr/Initializer/initial_value*
dtype0*
_class
loc:@Adam_1/lr
}
Adam_1/lr/Read/ReadVariableOpReadVariableOp	Adam_1/lr*
_output_shapes
: *
dtype0*
_class
loc:@Adam_1/lr
l
'Adam_1/beta_1/Initializer/initial_valueConst*
valueB
 *fff?*
_output_shapes
: *
dtype0

Adam_1/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shared_nameAdam_1/beta_1*
	container *
shape: 
k
.Adam_1/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/beta_1*
_output_shapes
: 

Adam_1/beta_1/AssignAssignVariableOpAdam_1/beta_1'Adam_1/beta_1/Initializer/initial_value*
dtype0* 
_class
loc:@Adam_1/beta_1

!Adam_1/beta_1/Read/ReadVariableOpReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0* 
_class
loc:@Adam_1/beta_1
l
'Adam_1/beta_2/Initializer/initial_valueConst*
valueB
 *wž?*
_output_shapes
: *
dtype0

Adam_1/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shared_nameAdam_1/beta_2*
	container *
shape: 
k
.Adam_1/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/beta_2*
_output_shapes
: 

Adam_1/beta_2/AssignAssignVariableOpAdam_1/beta_2'Adam_1/beta_2/Initializer/initial_value*
dtype0* 
_class
loc:@Adam_1/beta_2

!Adam_1/beta_2/Read/ReadVariableOpReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0* 
_class
loc:@Adam_1/beta_2
k
&Adam_1/decay/Initializer/initial_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
}
Adam_1/decayVarHandleOp*
_output_shapes
: *
dtype0*
shared_nameAdam_1/decay*
	container *
shape: 
i
-Adam_1/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/decay*
_output_shapes
: 

Adam_1/decay/AssignAssignVariableOpAdam_1/decay&Adam_1/decay/Initializer/initial_value*
dtype0*
_class
loc:@Adam_1/decay

 Adam_1/decay/Read/ReadVariableOpReadVariableOpAdam_1/decay*
_output_shapes
: *
dtype0*
_class
loc:@Adam_1/decay

softmax_target_1Placeholder*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
dtype0*%
shape:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
T
Const_1Const*
valueB*  ?*
_output_shapes
:*
dtype0

softmax_sample_weights_1PlaceholderWithDefaultConst_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
^
loss_1/softmax_loss/ConstConst*
valueB
 *żÖ3*
_output_shapes
: *
dtype0
^
loss_1/softmax_loss/sub/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
u
loss_1/softmax_loss/subSubloss_1/softmax_loss/sub/xloss_1/softmax_loss/Const*
T0*
_output_shapes
: 

)loss_1/softmax_loss/clip_by_value/MinimumMinimumsoftmax_1/Softmaxloss_1/softmax_loss/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¤
!loss_1/softmax_loss/clip_by_valueMaximum)loss_1/softmax_loss/clip_by_value/Minimumloss_1/softmax_loss/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
loss_1/softmax_loss/LogLog!loss_1/softmax_loss/clip_by_value*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
!loss_1/softmax_loss/Reshape/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:*
dtype0

loss_1/softmax_loss/ReshapeReshapesoftmax_target_1!loss_1/softmax_loss/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
loss_1/softmax_loss/CastCastloss_1/softmax_loss/Reshape*

DstT0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

SrcT0
t
#loss_1/softmax_loss/Reshape_1/shapeConst*
valueB"˙˙˙˙   *
_output_shapes
:*
dtype0
Ś
loss_1/softmax_loss/Reshape_1Reshapeloss_1/softmax_loss/Log#loss_1/softmax_loss/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

=loss_1/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShapeloss_1/softmax_loss/Cast*
out_type0*
T0	*
_output_shapes
:

[loss_1/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsloss_1/softmax_loss/Reshape_1loss_1/softmax_loss/Cast*
T0*6
_output_shapes$
":˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
Tlabels0	
m
*loss_1/softmax_loss/Mean/reduction_indicesConst*
valueB *
_output_shapes
: *
dtype0
ô
loss_1/softmax_loss/MeanMean[loss_1/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*loss_1/softmax_loss/Mean/reduction_indices*
	keep_dims( *
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0

loss_1/softmax_loss/mulMulloss_1/softmax_loss/Meansoftmax_sample_weights_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
loss_1/softmax_loss/NotEqual/yConst*
valueB
 *    *
_output_shapes
: *
dtype0

loss_1/softmax_loss/NotEqualNotEqualsoftmax_sample_weights_1loss_1/softmax_loss/NotEqual/y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
}
loss_1/softmax_loss/Cast_1Castloss_1/softmax_loss/NotEqual*

DstT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

SrcT0

e
loss_1/softmax_loss/Const_1Const*
valueB: *
_output_shapes
:*
dtype0

loss_1/softmax_loss/Mean_1Meanloss_1/softmax_loss/Cast_1loss_1/softmax_loss/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0

loss_1/softmax_loss/truedivRealDivloss_1/softmax_loss/mulloss_1/softmax_loss/Mean_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
loss_1/softmax_loss/Const_2Const*
valueB: *
_output_shapes
:*
dtype0

loss_1/softmax_loss/Mean_2Meanloss_1/softmax_loss/truedivloss_1/softmax_loss/Const_2*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
Q
loss_1/mul/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
\

loss_1/mulMulloss_1/mul/xloss_1/softmax_loss/Mean_2*
T0*
_output_shapes
: 
n
#metrics_1/acc/Max/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: *
dtype0

metrics_1/acc/MaxMaxsoftmax_target_1#metrics_1/acc/Max/reduction_indices*
	keep_dims( *
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
i
metrics_1/acc/ArgMax/dimensionConst*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: *
dtype0

metrics_1/acc/ArgMaxArgMaxsoftmax_1/Softmaxmetrics_1/acc/ArgMax/dimension*
output_type0	*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
m
metrics_1/acc/CastCastmetrics_1/acc/ArgMax*

DstT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

SrcT0	
q
metrics_1/acc/EqualEqualmetrics_1/acc/Maxmetrics_1/acc/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
metrics_1/acc/Cast_1Castmetrics_1/acc/Equal*

DstT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

SrcT0

]
metrics_1/acc/ConstConst*
valueB: *
_output_shapes
:*
dtype0

metrics_1/acc/MeanMeanmetrics_1/acc/Cast_1metrics_1/acc/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0

training_1/Adam/gradients/ShapeConst*
valueB *
_output_shapes
: *
dtype0*
_class
loc:@loss_1/mul

#training_1/Adam/gradients/grad_ys_0Const*
valueB
 *  ?*
_output_shapes
: *
dtype0*
_class
loc:@loss_1/mul
ž
training_1/Adam/gradients/FillFilltraining_1/Adam/gradients/Shape#training_1/Adam/gradients/grad_ys_0*
T0*
_output_shapes
: *

index_type0*
_class
loc:@loss_1/mul
°
-training_1/Adam/gradients/loss_1/mul_grad/MulMultraining_1/Adam/gradients/Fillloss_1/softmax_loss/Mean_2*
T0*
_output_shapes
: *
_class
loc:@loss_1/mul
¤
/training_1/Adam/gradients/loss_1/mul_grad/Mul_1Multraining_1/Adam/gradients/Fillloss_1/mul/x*
T0*
_output_shapes
: *
_class
loc:@loss_1/mul
Ŕ
Gtraining_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/Reshape/shapeConst*
valueB:*
_output_shapes
:*
dtype0*-
_class#
!loc:@loss_1/softmax_loss/Mean_2
¨
Atraining_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/ReshapeReshape/training_1/Adam/gradients/loss_1/mul_grad/Mul_1Gtraining_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:*-
_class#
!loc:@loss_1/softmax_loss/Mean_2
É
?training_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/ShapeShapeloss_1/softmax_loss/truediv*
out_type0*
T0*
_output_shapes
:*-
_class#
!loc:@loss_1/softmax_loss/Mean_2
š
>training_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/TileTileAtraining_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/Reshape?training_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/Shape*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0*-
_class#
!loc:@loss_1/softmax_loss/Mean_2
Ë
Atraining_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/Shape_1Shapeloss_1/softmax_loss/truediv*
out_type0*
T0*
_output_shapes
:*-
_class#
!loc:@loss_1/softmax_loss/Mean_2
ł
Atraining_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/Shape_2Const*
valueB *
_output_shapes
: *
dtype0*-
_class#
!loc:@loss_1/softmax_loss/Mean_2
¸
?training_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0*-
_class#
!loc:@loss_1/softmax_loss/Mean_2
ˇ
>training_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/ProdProdAtraining_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/Shape_1?training_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*-
_class#
!loc:@loss_1/softmax_loss/Mean_2
ş
Atraining_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0*-
_class#
!loc:@loss_1/softmax_loss/Mean_2
ť
@training_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/Prod_1ProdAtraining_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/Shape_2Atraining_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*-
_class#
!loc:@loss_1/softmax_loss/Mean_2
´
Ctraining_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0*-
_class#
!loc:@loss_1/softmax_loss/Mean_2
Ł
Atraining_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/MaximumMaximum@training_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/Prod_1Ctraining_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/Maximum/y*
T0*
_output_shapes
: *-
_class#
!loc:@loss_1/softmax_loss/Mean_2
Ą
Btraining_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/floordivFloorDiv>training_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/ProdAtraining_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/Maximum*
T0*
_output_shapes
: *-
_class#
!loc:@loss_1/softmax_loss/Mean_2
é
>training_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/CastCastBtraining_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/floordiv*

DstT0*
_output_shapes
: *-
_class#
!loc:@loss_1/softmax_loss/Mean_2*

SrcT0
Š
Atraining_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/truedivRealDiv>training_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/Tile>training_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_class#
!loc:@loss_1/softmax_loss/Mean_2
Ç
@training_1/Adam/gradients/loss_1/softmax_loss/truediv_grad/ShapeShapeloss_1/softmax_loss/mul*
out_type0*
T0*
_output_shapes
:*.
_class$
" loc:@loss_1/softmax_loss/truediv
ľ
Btraining_1/Adam/gradients/loss_1/softmax_loss/truediv_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0*.
_class$
" loc:@loss_1/softmax_loss/truediv
Ü
Ptraining_1/Adam/gradients/loss_1/softmax_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs@training_1/Adam/gradients/loss_1/softmax_loss/truediv_grad/ShapeBtraining_1/Adam/gradients/loss_1/softmax_loss/truediv_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*.
_class$
" loc:@loss_1/softmax_loss/truediv

Btraining_1/Adam/gradients/loss_1/softmax_loss/truediv_grad/RealDivRealDivAtraining_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/truedivloss_1/softmax_loss/Mean_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*.
_class$
" loc:@loss_1/softmax_loss/truediv
Ë
>training_1/Adam/gradients/loss_1/softmax_loss/truediv_grad/SumSumBtraining_1/Adam/gradients/loss_1/softmax_loss/truediv_grad/RealDivPtraining_1/Adam/gradients/loss_1/softmax_loss/truediv_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*.
_class$
" loc:@loss_1/softmax_loss/truediv
ť
Btraining_1/Adam/gradients/loss_1/softmax_loss/truediv_grad/ReshapeReshape>training_1/Adam/gradients/loss_1/softmax_loss/truediv_grad/Sum@training_1/Adam/gradients/loss_1/softmax_loss/truediv_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*.
_class$
" loc:@loss_1/softmax_loss/truediv
ź
>training_1/Adam/gradients/loss_1/softmax_loss/truediv_grad/NegNegloss_1/softmax_loss/mul*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*.
_class$
" loc:@loss_1/softmax_loss/truediv

Dtraining_1/Adam/gradients/loss_1/softmax_loss/truediv_grad/RealDiv_1RealDiv>training_1/Adam/gradients/loss_1/softmax_loss/truediv_grad/Negloss_1/softmax_loss/Mean_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*.
_class$
" loc:@loss_1/softmax_loss/truediv

Dtraining_1/Adam/gradients/loss_1/softmax_loss/truediv_grad/RealDiv_2RealDivDtraining_1/Adam/gradients/loss_1/softmax_loss/truediv_grad/RealDiv_1loss_1/softmax_loss/Mean_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*.
_class$
" loc:@loss_1/softmax_loss/truediv
Ź
>training_1/Adam/gradients/loss_1/softmax_loss/truediv_grad/mulMulAtraining_1/Adam/gradients/loss_1/softmax_loss/Mean_2_grad/truedivDtraining_1/Adam/gradients/loss_1/softmax_loss/truediv_grad/RealDiv_2*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*.
_class$
" loc:@loss_1/softmax_loss/truediv
Ë
@training_1/Adam/gradients/loss_1/softmax_loss/truediv_grad/Sum_1Sum>training_1/Adam/gradients/loss_1/softmax_loss/truediv_grad/mulRtraining_1/Adam/gradients/loss_1/softmax_loss/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*.
_class$
" loc:@loss_1/softmax_loss/truediv
´
Dtraining_1/Adam/gradients/loss_1/softmax_loss/truediv_grad/Reshape_1Reshape@training_1/Adam/gradients/loss_1/softmax_loss/truediv_grad/Sum_1Btraining_1/Adam/gradients/loss_1/softmax_loss/truediv_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: *.
_class$
" loc:@loss_1/softmax_loss/truediv
Ŕ
<training_1/Adam/gradients/loss_1/softmax_loss/mul_grad/ShapeShapeloss_1/softmax_loss/Mean*
out_type0*
T0*
_output_shapes
:**
_class 
loc:@loss_1/softmax_loss/mul
Â
>training_1/Adam/gradients/loss_1/softmax_loss/mul_grad/Shape_1Shapesoftmax_sample_weights_1*
out_type0*
T0*
_output_shapes
:**
_class 
loc:@loss_1/softmax_loss/mul
Ě
Ltraining_1/Adam/gradients/loss_1/softmax_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs<training_1/Adam/gradients/loss_1/softmax_loss/mul_grad/Shape>training_1/Adam/gradients/loss_1/softmax_loss/mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙**
_class 
loc:@loss_1/softmax_loss/mul
ů
:training_1/Adam/gradients/loss_1/softmax_loss/mul_grad/MulMulBtraining_1/Adam/gradients/loss_1/softmax_loss/truediv_grad/Reshapesoftmax_sample_weights_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙**
_class 
loc:@loss_1/softmax_loss/mul
ˇ
:training_1/Adam/gradients/loss_1/softmax_loss/mul_grad/SumSum:training_1/Adam/gradients/loss_1/softmax_loss/mul_grad/MulLtraining_1/Adam/gradients/loss_1/softmax_loss/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0**
_class 
loc:@loss_1/softmax_loss/mul
Ť
>training_1/Adam/gradients/loss_1/softmax_loss/mul_grad/ReshapeReshape:training_1/Adam/gradients/loss_1/softmax_loss/mul_grad/Sum<training_1/Adam/gradients/loss_1/softmax_loss/mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙**
_class 
loc:@loss_1/softmax_loss/mul
ű
<training_1/Adam/gradients/loss_1/softmax_loss/mul_grad/Mul_1Mulloss_1/softmax_loss/MeanBtraining_1/Adam/gradients/loss_1/softmax_loss/truediv_grad/Reshape*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙**
_class 
loc:@loss_1/softmax_loss/mul
˝
<training_1/Adam/gradients/loss_1/softmax_loss/mul_grad/Sum_1Sum<training_1/Adam/gradients/loss_1/softmax_loss/mul_grad/Mul_1Ntraining_1/Adam/gradients/loss_1/softmax_loss/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0**
_class 
loc:@loss_1/softmax_loss/mul
ą
@training_1/Adam/gradients/loss_1/softmax_loss/mul_grad/Reshape_1Reshape<training_1/Adam/gradients/loss_1/softmax_loss/mul_grad/Sum_1>training_1/Adam/gradients/loss_1/softmax_loss/mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙**
_class 
loc:@loss_1/softmax_loss/mul

=training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/ShapeShape[loss_1/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
out_type0*
T0*
_output_shapes
:*+
_class!
loc:@loss_1/softmax_loss/Mean
Ť
<training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/SizeConst*
value	B :*
_output_shapes
: *
dtype0*+
_class!
loc:@loss_1/softmax_loss/Mean
ü
;training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/addAdd*loss_1/softmax_loss/Mean/reduction_indices<training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/Size*
T0*
_output_shapes
: *+
_class!
loc:@loss_1/softmax_loss/Mean

;training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/modFloorMod;training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/add<training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/Size*
T0*
_output_shapes
: *+
_class!
loc:@loss_1/softmax_loss/Mean
ś
?training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/Shape_1Const*
valueB: *
_output_shapes
:*
dtype0*+
_class!
loc:@loss_1/softmax_loss/Mean
˛
Ctraining_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/range/startConst*
value	B : *
_output_shapes
: *
dtype0*+
_class!
loc:@loss_1/softmax_loss/Mean
˛
Ctraining_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0*+
_class!
loc:@loss_1/softmax_loss/Mean
ă
=training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/rangeRangeCtraining_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/range/start<training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/SizeCtraining_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/range/delta*
_output_shapes
:*

Tidx0*+
_class!
loc:@loss_1/softmax_loss/Mean
ą
Btraining_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/Fill/valueConst*
value	B :*
_output_shapes
: *
dtype0*+
_class!
loc:@loss_1/softmax_loss/Mean
Ť
<training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/FillFill?training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/Shape_1Btraining_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/Fill/value*
T0*
_output_shapes
: *

index_type0*+
_class!
loc:@loss_1/softmax_loss/Mean
Ş
Etraining_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/DynamicStitchDynamicStitch=training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/range;training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/mod=training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/Shape<training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/Fill*
T0*
N*
_output_shapes
:*+
_class!
loc:@loss_1/softmax_loss/Mean
°
Atraining_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0*+
_class!
loc:@loss_1/softmax_loss/Mean
Ś
?training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/MaximumMaximumEtraining_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/DynamicStitchAtraining_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/Maximum/y*
T0*
_output_shapes
:*+
_class!
loc:@loss_1/softmax_loss/Mean

@training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/floordivFloorDiv=training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/Shape?training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/Maximum*
T0*
_output_shapes
:*+
_class!
loc:@loss_1/softmax_loss/Mean
ş
?training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/ReshapeReshape>training_1/Adam/gradients/loss_1/softmax_loss/mul_grad/ReshapeEtraining_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/DynamicStitch*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*+
_class!
loc:@loss_1/softmax_loss/Mean
´
<training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/TileTile?training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/Reshape@training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/floordiv*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0*+
_class!
loc:@loss_1/softmax_loss/Mean

?training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/Shape_2Shape[loss_1/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
out_type0*
T0*
_output_shapes
:*+
_class!
loc:@loss_1/softmax_loss/Mean
Ä
?training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/Shape_3Shapeloss_1/softmax_loss/Mean*
out_type0*
T0*
_output_shapes
:*+
_class!
loc:@loss_1/softmax_loss/Mean
´
=training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0*+
_class!
loc:@loss_1/softmax_loss/Mean
Ż
<training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/ProdProd?training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/Shape_2=training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*+
_class!
loc:@loss_1/softmax_loss/Mean
ś
?training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0*+
_class!
loc:@loss_1/softmax_loss/Mean
ł
>training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/Prod_1Prod?training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/Shape_3?training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*+
_class!
loc:@loss_1/softmax_loss/Mean
˛
Ctraining_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/Maximum_1/yConst*
value	B :*
_output_shapes
: *
dtype0*+
_class!
loc:@loss_1/softmax_loss/Mean

Atraining_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/Maximum_1Maximum>training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/Prod_1Ctraining_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/Maximum_1/y*
T0*
_output_shapes
: *+
_class!
loc:@loss_1/softmax_loss/Mean

Btraining_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/floordiv_1FloorDiv<training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/ProdAtraining_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/Maximum_1*
T0*
_output_shapes
: *+
_class!
loc:@loss_1/softmax_loss/Mean
ĺ
<training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/CastCastBtraining_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/floordiv_1*

DstT0*
_output_shapes
: *+
_class!
loc:@loss_1/softmax_loss/Mean*

SrcT0
Ą
?training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/truedivRealDiv<training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/Tile<training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*+
_class!
loc:@loss_1/softmax_loss/Mean
˛
$training_1/Adam/gradients/zeros_like	ZerosLike]loss_1/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*n
_classd
b`loc:@loss_1/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
Ö
training_1/Adam/gradients/loss_1/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradient]loss_1/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*´
message¨ĽCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*n
_classd
b`loc:@loss_1/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
Ĺ
training_1/Adam/gradients/loss_1/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: *
dtype0*n
_classd
b`loc:@loss_1/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits

training_1/Adam/gradients/loss_1/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims?training_1/Adam/gradients/loss_1/softmax_loss/Mean_grad/truedivtraining_1/Adam/gradients/loss_1/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*n
_classd
b`loc:@loss_1/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
ź
~training_1/Adam/gradients/loss_1/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMultraining_1/Adam/gradients/loss_1/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimstraining_1/Adam/gradients/loss_1/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*n
_classd
b`loc:@loss_1/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
Ë
Btraining_1/Adam/gradients/loss_1/softmax_loss/Reshape_1_grad/ShapeShapeloss_1/softmax_loss/Log*
out_type0*
T0*
_output_shapes
:*0
_class&
$"loc:@loss_1/softmax_loss/Reshape_1

Dtraining_1/Adam/gradients/loss_1/softmax_loss/Reshape_1_grad/ReshapeReshape~training_1/Adam/gradients/loss_1/softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulBtraining_1/Adam/gradients/loss_1/softmax_loss/Reshape_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*0
_class&
$"loc:@loss_1/softmax_loss/Reshape_1

Atraining_1/Adam/gradients/loss_1/softmax_loss/Log_grad/Reciprocal
Reciprocal!loss_1/softmax_loss/clip_by_valueE^training_1/Adam/gradients/loss_1/softmax_loss/Reshape_1_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙**
_class 
loc:@loss_1/softmax_loss/Log
¨
:training_1/Adam/gradients/loss_1/softmax_loss/Log_grad/mulMulDtraining_1/Adam/gradients/loss_1/softmax_loss/Reshape_1_grad/ReshapeAtraining_1/Adam/gradients/loss_1/softmax_loss/Log_grad/Reciprocal*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙**
_class 
loc:@loss_1/softmax_loss/Log
ĺ
Ftraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/ShapeShape)loss_1/softmax_loss/clip_by_value/Minimum*
out_type0*
T0*
_output_shapes
:*4
_class*
(&loc:@loss_1/softmax_loss/clip_by_value
Á
Htraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0*4
_class*
(&loc:@loss_1/softmax_loss/clip_by_value
ř
Htraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/Shape_2Shape:training_1/Adam/gradients/loss_1/softmax_loss/Log_grad/mul*
out_type0*
T0*
_output_shapes
:*4
_class*
(&loc:@loss_1/softmax_loss/clip_by_value
Ç
Ltraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*4
_class*
(&loc:@loss_1/softmax_loss/clip_by_value
ŕ
Ftraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/zerosFillHtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/Shape_2Ltraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/zeros/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

index_type0*4
_class*
(&loc:@loss_1/softmax_loss/clip_by_value

Mtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/GreaterEqualGreaterEqual)loss_1/softmax_loss/clip_by_value/Minimumloss_1/softmax_loss/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*4
_class*
(&loc:@loss_1/softmax_loss/clip_by_value
ô
Vtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsFtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/ShapeHtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*4
_class*
(&loc:@loss_1/softmax_loss/clip_by_value

Gtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/SelectSelectMtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/GreaterEqual:training_1/Adam/gradients/loss_1/softmax_loss/Log_grad/mulFtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/zeros*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*4
_class*
(&loc:@loss_1/softmax_loss/clip_by_value

Itraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/Select_1SelectMtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/GreaterEqualFtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/zeros:training_1/Adam/gradients/loss_1/softmax_loss/Log_grad/mul*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*4
_class*
(&loc:@loss_1/softmax_loss/clip_by_value
â
Dtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/SumSumGtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/SelectVtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*4
_class*
(&loc:@loss_1/softmax_loss/clip_by_value
×
Htraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/ReshapeReshapeDtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/SumFtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*4
_class*
(&loc:@loss_1/softmax_loss/clip_by_value
č
Ftraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/Sum_1SumItraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/Select_1Xtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*4
_class*
(&loc:@loss_1/softmax_loss/clip_by_value
Ě
Jtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/Reshape_1ReshapeFtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/Sum_1Htraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: *4
_class*
(&loc:@loss_1/softmax_loss/clip_by_value
Ý
Ntraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/ShapeShapesoftmax_1/Softmax*
out_type0*
T0*
_output_shapes
:*<
_class2
0.loc:@loss_1/softmax_loss/clip_by_value/Minimum
Ń
Ptraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0*<
_class2
0.loc:@loss_1/softmax_loss/clip_by_value/Minimum

Ptraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/Shape_2ShapeHtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/Reshape*
out_type0*
T0*
_output_shapes
:*<
_class2
0.loc:@loss_1/softmax_loss/clip_by_value/Minimum
×
Ttraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*<
_class2
0.loc:@loss_1/softmax_loss/clip_by_value/Minimum

Ntraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/zerosFillPtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/Shape_2Ttraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/zeros/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

index_type0*<
_class2
0.loc:@loss_1/softmax_loss/clip_by_value/Minimum
ű
Rtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualsoftmax_1/Softmaxloss_1/softmax_loss/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*<
_class2
0.loc:@loss_1/softmax_loss/clip_by_value/Minimum

^training_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsNtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/ShapePtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*<
_class2
0.loc:@loss_1/softmax_loss/clip_by_value/Minimum
ˇ
Otraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/SelectSelectRtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/LessEqualHtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/ReshapeNtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/zeros*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*<
_class2
0.loc:@loss_1/softmax_loss/clip_by_value/Minimum
š
Qtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/Select_1SelectRtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/LessEqualNtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/zerosHtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*<
_class2
0.loc:@loss_1/softmax_loss/clip_by_value/Minimum

Ltraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/SumSumOtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/Select^training_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*<
_class2
0.loc:@loss_1/softmax_loss/clip_by_value/Minimum
÷
Ptraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/ReshapeReshapeLtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/SumNtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*<
_class2
0.loc:@loss_1/softmax_loss/clip_by_value/Minimum

Ntraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/Sum_1SumQtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/Select_1`training_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*<
_class2
0.loc:@loss_1/softmax_loss/clip_by_value/Minimum
ě
Rtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeNtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/Sum_1Ptraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: *<
_class2
0.loc:@loss_1/softmax_loss/clip_by_value/Minimum
ř
4training_1/Adam/gradients/softmax_1/Softmax_grad/mulMulPtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/Reshapesoftmax_1/Softmax*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_class
loc:@softmax_1/Softmax
ś
Ftraining_1/Adam/gradients/softmax_1/Softmax_grad/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0*$
_class
loc:@softmax_1/Softmax
Ş
4training_1/Adam/gradients/softmax_1/Softmax_grad/SumSum4training_1/Adam/gradients/softmax_1/Softmax_grad/mulFtraining_1/Adam/gradients/softmax_1/Softmax_grad/Sum/reduction_indices*
	keep_dims( *
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*$
_class
loc:@softmax_1/Softmax
ľ
>training_1/Adam/gradients/softmax_1/Softmax_grad/Reshape/shapeConst*
valueB"˙˙˙˙   *
_output_shapes
:*
dtype0*$
_class
loc:@softmax_1/Softmax

8training_1/Adam/gradients/softmax_1/Softmax_grad/ReshapeReshape4training_1/Adam/gradients/softmax_1/Softmax_grad/Sum>training_1/Adam/gradients/softmax_1/Softmax_grad/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_class
loc:@softmax_1/Softmax

4training_1/Adam/gradients/softmax_1/Softmax_grad/subSubPtraining_1/Adam/gradients/loss_1/softmax_loss/clip_by_value/Minimum_grad/Reshape8training_1/Adam/gradients/softmax_1/Softmax_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_class
loc:@softmax_1/Softmax
Ţ
6training_1/Adam/gradients/softmax_1/Softmax_grad/mul_1Mul4training_1/Adam/gradients/softmax_1/Softmax_grad/subsoftmax_1/Softmax*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_class
loc:@softmax_1/Softmax
ĺ
<training_1/Adam/gradients/softmax_1/BiasAdd_grad/BiasAddGradBiasAddGrad6training_1/Adam/gradients/softmax_1/Softmax_grad/mul_1*
T0*
data_formatNHWC*
_output_shapes
:*$
_class
loc:@softmax_1/BiasAdd

6training_1/Adam/gradients/softmax_1/MatMul_grad/MatMulMatMul6training_1/Adam/gradients/softmax_1/Softmax_grad/mul_1softmax_1/MatMul/ReadVariableOp*
transpose_b(*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*#
_class
loc:@softmax_1/MatMul

8training_1/Adam/gradients/softmax_1/MatMul_grad/MatMul_1MatMuldropout_1_1/Identity6training_1/Adam/gradients/softmax_1/Softmax_grad/mul_1*
transpose_b( *
T0*
transpose_a(*
_output_shapes

:d*#
_class
loc:@softmax_1/MatMul
î
;training_1/Adam/gradients/activation_1_1/Relu_grad/ReluGradReluGrad6training_1/Adam/gradients/softmax_1/MatMul_grad/MatMulactivation_1_1/Relu*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*&
_class
loc:@activation_1_1/Relu
ď
Ltraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/add_1_grad/ShapeShape'batch_normalization_1_1/batchnorm/mul_1*
out_type0*
T0*
_output_shapes
:*:
_class0
.,loc:@batch_normalization_1_1/batchnorm/add_1
Ô
Ntraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/add_1_grad/Shape_1Const*
valueB:d*
_output_shapes
:*
dtype0*:
_class0
.,loc:@batch_normalization_1_1/batchnorm/add_1

\training_1/Adam/gradients/batch_normalization_1_1/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsLtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/add_1_grad/ShapeNtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/add_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*:
_class0
.,loc:@batch_normalization_1_1/batchnorm/add_1
č
Jtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/add_1_grad/SumSum;training_1/Adam/gradients/activation_1_1/Relu_grad/ReluGrad\training_1/Adam/gradients/batch_normalization_1_1/batchnorm/add_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*:
_class0
.,loc:@batch_normalization_1_1/batchnorm/add_1
ď
Ntraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/add_1_grad/ReshapeReshapeJtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/add_1_grad/SumLtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/add_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*:
_class0
.,loc:@batch_normalization_1_1/batchnorm/add_1
ě
Ltraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/add_1_grad/Sum_1Sum;training_1/Adam/gradients/activation_1_1/Relu_grad/ReluGrad^training_1/Adam/gradients/batch_normalization_1_1/batchnorm/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*:
_class0
.,loc:@batch_normalization_1_1/batchnorm/add_1
č
Ptraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/add_1_grad/Reshape_1ReshapeLtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/add_1_grad/Sum_1Ntraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:d*:
_class0
.,loc:@batch_normalization_1_1/batchnorm/add_1
Ů
Ltraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_1_grad/ShapeShapehidden2_1/BiasAdd*
out_type0*
T0*
_output_shapes
:*:
_class0
.,loc:@batch_normalization_1_1/batchnorm/mul_1
Ô
Ntraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_1_grad/Shape_1Const*
valueB:d*
_output_shapes
:*
dtype0*:
_class0
.,loc:@batch_normalization_1_1/batchnorm/mul_1

\training_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsLtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_1_grad/ShapeNtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*:
_class0
.,loc:@batch_normalization_1_1/batchnorm/mul_1
ś
Jtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_1_grad/MulMulNtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/add_1_grad/Reshape%batch_normalization_1_1/batchnorm/mul*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*:
_class0
.,loc:@batch_normalization_1_1/batchnorm/mul_1
÷
Jtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_1_grad/SumSumJtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_1_grad/Mul\training_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*:
_class0
.,loc:@batch_normalization_1_1/batchnorm/mul_1
ď
Ntraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_1_grad/ReshapeReshapeJtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_1_grad/SumLtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*:
_class0
.,loc:@batch_normalization_1_1/batchnorm/mul_1
¤
Ltraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_1_grad/Mul_1Mulhidden2_1/BiasAddNtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/add_1_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*:
_class0
.,loc:@batch_normalization_1_1/batchnorm/mul_1
ý
Ltraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_1_grad/Sum_1SumLtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_1_grad/Mul_1^training_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*:
_class0
.,loc:@batch_normalization_1_1/batchnorm/mul_1
č
Ptraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_1_grad/Reshape_1ReshapeLtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_1_grad/Sum_1Ntraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:d*:
_class0
.,loc:@batch_normalization_1_1/batchnorm/mul_1

Htraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/sub_grad/NegNegPtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/add_1_grad/Reshape_1*
T0*
_output_shapes
:d*8
_class.
,*loc:@batch_normalization_1_1/batchnorm/sub
ý
<training_1/Adam/gradients/hidden2_1/BiasAdd_grad/BiasAddGradBiasAddGradNtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_1_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:d*$
_class
loc:@hidden2_1/BiasAdd
Ł
Jtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_2_grad/MulMulHtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/sub_grad/Neg%batch_normalization_1_1/batchnorm/mul*
T0*
_output_shapes
:d*:
_class0
.,loc:@batch_normalization_1_1/batchnorm/mul_2
˛
Ltraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_2_grad/Mul_1MulHtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/sub_grad/Neg2batch_normalization_1_1/batchnorm/ReadVariableOp_1*
T0*
_output_shapes
:d*:
_class0
.,loc:@batch_normalization_1_1/batchnorm/mul_2
Ž
6training_1/Adam/gradients/hidden2_1/MatMul_grad/MatMulMatMulNtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_1_grad/Reshapehidden2_1/MatMul/ReadVariableOp*
transpose_b(*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*#
_class
loc:@hidden2_1/MatMul

8training_1/Adam/gradients/hidden2_1/MatMul_grad/MatMul_1MatMuldropout_2/IdentityNtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_1_grad/Reshape*
transpose_b( *
T0*
transpose_a(*
_output_shapes

:dd*#
_class
loc:@hidden2_1/MatMul
°
training_1/Adam/gradients/AddNAddNPtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_1_grad/Reshape_1Ltraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_2_grad/Mul_1*
T0*
N*
_output_shapes
:d*:
_class0
.,loc:@batch_normalization_1_1/batchnorm/mul_1

Htraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_grad/MulMultraining_1/Adam/gradients/AddN4batch_normalization_1_1/batchnorm/mul/ReadVariableOp*
T0*
_output_shapes
:d*8
_class.
,*loc:@batch_normalization_1_1/batchnorm/mul
ů
Jtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_grad/Mul_1Multraining_1/Adam/gradients/AddN'batch_normalization_1_1/batchnorm/Rsqrt*
T0*
_output_shapes
:d*8
_class.
,*loc:@batch_normalization_1_1/batchnorm/mul
č
9training_1/Adam/gradients/activation_2/Relu_grad/ReluGradReluGrad6training_1/Adam/gradients/hidden2_1/MatMul_grad/MatMulactivation_2/Relu*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*$
_class
loc:@activation_2/Relu
é
Jtraining_1/Adam/gradients/batch_normalization_2/batchnorm/add_1_grad/ShapeShape%batch_normalization_2/batchnorm/mul_1*
out_type0*
T0*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1
Đ
Ltraining_1/Adam/gradients/batch_normalization_2/batchnorm/add_1_grad/Shape_1Const*
valueB:d*
_output_shapes
:*
dtype0*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1

Ztraining_1/Adam/gradients/batch_normalization_2/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsJtraining_1/Adam/gradients/batch_normalization_2/batchnorm/add_1_grad/ShapeLtraining_1/Adam/gradients/batch_normalization_2/batchnorm/add_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1
ŕ
Htraining_1/Adam/gradients/batch_normalization_2/batchnorm/add_1_grad/SumSum9training_1/Adam/gradients/activation_2/Relu_grad/ReluGradZtraining_1/Adam/gradients/batch_normalization_2/batchnorm/add_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1
ç
Ltraining_1/Adam/gradients/batch_normalization_2/batchnorm/add_1_grad/ReshapeReshapeHtraining_1/Adam/gradients/batch_normalization_2/batchnorm/add_1_grad/SumJtraining_1/Adam/gradients/batch_normalization_2/batchnorm/add_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1
ä
Jtraining_1/Adam/gradients/batch_normalization_2/batchnorm/add_1_grad/Sum_1Sum9training_1/Adam/gradients/activation_2/Relu_grad/ReluGrad\training_1/Adam/gradients/batch_normalization_2/batchnorm/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1
ŕ
Ntraining_1/Adam/gradients/batch_normalization_2/batchnorm/add_1_grad/Reshape_1ReshapeJtraining_1/Adam/gradients/batch_normalization_2/batchnorm/add_1_grad/Sum_1Ltraining_1/Adam/gradients/batch_normalization_2/batchnorm/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:d*8
_class.
,*loc:@batch_normalization_2/batchnorm/add_1
Ő
Jtraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_1_grad/ShapeShapehidden1_1/BiasAdd*
out_type0*
T0*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1
Đ
Ltraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_1_grad/Shape_1Const*
valueB:d*
_output_shapes
:*
dtype0*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1

Ztraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsJtraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_1_grad/ShapeLtraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1
Ž
Htraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_1_grad/MulMulLtraining_1/Adam/gradients/batch_normalization_2/batchnorm/add_1_grad/Reshape#batch_normalization_2/batchnorm/mul*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1
ď
Htraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_1_grad/SumSumHtraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_1_grad/MulZtraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1
ç
Ltraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_1_grad/ReshapeReshapeHtraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_1_grad/SumJtraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1

Jtraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_1_grad/Mul_1Mulhidden1_1/BiasAddLtraining_1/Adam/gradients/batch_normalization_2/batchnorm/add_1_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1
ő
Jtraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_1_grad/Sum_1SumJtraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_1_grad/Mul_1\training_1/Adam/gradients/batch_normalization_2/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1
ŕ
Ntraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_1_grad/Reshape_1ReshapeJtraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_1_grad/Sum_1Ltraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:d*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1
ú
Ftraining_1/Adam/gradients/batch_normalization_2/batchnorm/sub_grad/NegNegNtraining_1/Adam/gradients/batch_normalization_2/batchnorm/add_1_grad/Reshape_1*
T0*
_output_shapes
:d*6
_class,
*(loc:@batch_normalization_2/batchnorm/sub
ű
<training_1/Adam/gradients/hidden1_1/BiasAdd_grad/BiasAddGradBiasAddGradLtraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_1_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:d*$
_class
loc:@hidden1_1/BiasAdd

Htraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_2_grad/MulMulFtraining_1/Adam/gradients/batch_normalization_2/batchnorm/sub_grad/Neg#batch_normalization_2/batchnorm/mul*
T0*
_output_shapes
:d*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_2
Ş
Jtraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_2_grad/Mul_1MulFtraining_1/Adam/gradients/batch_normalization_2/batchnorm/sub_grad/Neg0batch_normalization_2/batchnorm/ReadVariableOp_1*
T0*
_output_shapes
:d*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_2
Ź
6training_1/Adam/gradients/hidden1_1/MatMul_grad/MatMulMatMulLtraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_1_grad/Reshapehidden1_1/MatMul/ReadVariableOp*
transpose_b(*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_class
loc:@hidden1_1/MatMul

8training_1/Adam/gradients/hidden1_1/MatMul_grad/MatMul_1MatMulhidden1_input_1Ltraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_1_grad/Reshape*
transpose_b( *
T0*
transpose_a(*
_output_shapes

:d*#
_class
loc:@hidden1_1/MatMul
Ź
 training_1/Adam/gradients/AddN_1AddNNtraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_1_grad/Reshape_1Jtraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_2_grad/Mul_1*
T0*
N*
_output_shapes
:d*8
_class.
,*loc:@batch_normalization_2/batchnorm/mul_1

Ftraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_grad/MulMul training_1/Adam/gradients/AddN_12batch_normalization_2/batchnorm/mul/ReadVariableOp*
T0*
_output_shapes
:d*6
_class,
*(loc:@batch_normalization_2/batchnorm/mul
ő
Htraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_grad/Mul_1Mul training_1/Adam/gradients/AddN_1%batch_normalization_2/batchnorm/Rsqrt*
T0*
_output_shapes
:d*6
_class,
*(loc:@batch_normalization_2/batchnorm/mul
W
training_1/Adam/ConstConst*
value	B	 R*
_output_shapes
: *
dtype0	
q
#training_1/Adam/AssignAddVariableOpAssignAddVariableOpAdam_1/iterationstraining_1/Adam/Const*
dtype0	

training_1/Adam/ReadVariableOpReadVariableOpAdam_1/iterations$^training_1/Adam/AssignAddVariableOp*
_output_shapes
: *
dtype0	
m
#training_1/Adam/Cast/ReadVariableOpReadVariableOpAdam_1/iterations*
_output_shapes
: *
dtype0	
q
training_1/Adam/CastCast#training_1/Adam/Cast/ReadVariableOp*

DstT0*
_output_shapes
: *

SrcT0	
Z
training_1/Adam/add/yConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
h
training_1/Adam/addAddtraining_1/Adam/Casttraining_1/Adam/add/y*
T0*
_output_shapes
: 
h
"training_1/Adam/Pow/ReadVariableOpReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
t
training_1/Adam/PowPow"training_1/Adam/Pow/ReadVariableOptraining_1/Adam/add*
T0*
_output_shapes
: 
Z
training_1/Adam/sub/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
g
training_1/Adam/subSubtraining_1/Adam/sub/xtraining_1/Adam/Pow*
T0*
_output_shapes
: 
\
training_1/Adam/Const_1Const*
valueB
 *    *
_output_shapes
: *
dtype0
\
training_1/Adam/Const_2Const*
valueB
 *  *
_output_shapes
: *
dtype0

%training_1/Adam/clip_by_value/MinimumMinimumtraining_1/Adam/subtraining_1/Adam/Const_2*
T0*
_output_shapes
: 

training_1/Adam/clip_by_valueMaximum%training_1/Adam/clip_by_value/Minimumtraining_1/Adam/Const_1*
T0*
_output_shapes
: 
\
training_1/Adam/SqrtSqrttraining_1/Adam/clip_by_value*
T0*
_output_shapes
: 
j
$training_1/Adam/Pow_1/ReadVariableOpReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
x
training_1/Adam/Pow_1Pow$training_1/Adam/Pow_1/ReadVariableOptraining_1/Adam/add*
T0*
_output_shapes
: 
\
training_1/Adam/sub_1/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
m
training_1/Adam/sub_1Subtraining_1/Adam/sub_1/xtraining_1/Adam/Pow_1*
T0*
_output_shapes
: 
p
training_1/Adam/truedivRealDivtraining_1/Adam/Sqrttraining_1/Adam/sub_1*
T0*
_output_shapes
: 
b
 training_1/Adam/ReadVariableOp_1ReadVariableOp	Adam_1/lr*
_output_shapes
: *
dtype0
v
training_1/Adam/mulMul training_1/Adam/ReadVariableOp_1training_1/Adam/truediv*
T0*
_output_shapes
: 
j
training_1/Adam/zerosConst*
valueBd*    *
_output_shapes

:d*
dtype0

training_1/Adam/VariableVarHandleOp*
_output_shapes
: *
dtype0*)
shared_nametraining_1/Adam/Variable*
	container *
shape
:d

9training_1/Adam/Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable*
_output_shapes
: 

training_1/Adam/Variable/AssignAssignVariableOptraining_1/Adam/Variabletraining_1/Adam/zeros*
dtype0*+
_class!
loc:@training_1/Adam/Variable
˛
,training_1/Adam/Variable/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable*
_output_shapes

:d*
dtype0*+
_class!
loc:@training_1/Adam/Variable
d
training_1/Adam/zeros_1Const*
valueBd*    *
_output_shapes
:d*
dtype0

training_1/Adam/Variable_1VarHandleOp*
_output_shapes
: *
dtype0*+
shared_nametraining_1/Adam/Variable_1*
	container *
shape:d

;training_1/Adam/Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_1*
_output_shapes
: 
Ś
!training_1/Adam/Variable_1/AssignAssignVariableOptraining_1/Adam/Variable_1training_1/Adam/zeros_1*
dtype0*-
_class#
!loc:@training_1/Adam/Variable_1
´
.training_1/Adam/Variable_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_1*
_output_shapes
:d*
dtype0*-
_class#
!loc:@training_1/Adam/Variable_1
d
training_1/Adam/zeros_2Const*
valueBd*    *
_output_shapes
:d*
dtype0

training_1/Adam/Variable_2VarHandleOp*
_output_shapes
: *
dtype0*+
shared_nametraining_1/Adam/Variable_2*
	container *
shape:d

;training_1/Adam/Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_2*
_output_shapes
: 
Ś
!training_1/Adam/Variable_2/AssignAssignVariableOptraining_1/Adam/Variable_2training_1/Adam/zeros_2*
dtype0*-
_class#
!loc:@training_1/Adam/Variable_2
´
.training_1/Adam/Variable_2/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_2*
_output_shapes
:d*
dtype0*-
_class#
!loc:@training_1/Adam/Variable_2
d
training_1/Adam/zeros_3Const*
valueBd*    *
_output_shapes
:d*
dtype0

training_1/Adam/Variable_3VarHandleOp*
_output_shapes
: *
dtype0*+
shared_nametraining_1/Adam/Variable_3*
	container *
shape:d

;training_1/Adam/Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_3*
_output_shapes
: 
Ś
!training_1/Adam/Variable_3/AssignAssignVariableOptraining_1/Adam/Variable_3training_1/Adam/zeros_3*
dtype0*-
_class#
!loc:@training_1/Adam/Variable_3
´
.training_1/Adam/Variable_3/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_3*
_output_shapes
:d*
dtype0*-
_class#
!loc:@training_1/Adam/Variable_3
x
'training_1/Adam/zeros_4/shape_as_tensorConst*
valueB"d   d   *
_output_shapes
:*
dtype0
b
training_1/Adam/zeros_4/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0
˘
training_1/Adam/zeros_4Fill'training_1/Adam/zeros_4/shape_as_tensortraining_1/Adam/zeros_4/Const*
T0*
_output_shapes

:dd*

index_type0
Ą
training_1/Adam/Variable_4VarHandleOp*
_output_shapes
: *
dtype0*+
shared_nametraining_1/Adam/Variable_4*
	container *
shape
:dd

;training_1/Adam/Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_4*
_output_shapes
: 
Ś
!training_1/Adam/Variable_4/AssignAssignVariableOptraining_1/Adam/Variable_4training_1/Adam/zeros_4*
dtype0*-
_class#
!loc:@training_1/Adam/Variable_4
¸
.training_1/Adam/Variable_4/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_4*
_output_shapes

:dd*
dtype0*-
_class#
!loc:@training_1/Adam/Variable_4
d
training_1/Adam/zeros_5Const*
valueBd*    *
_output_shapes
:d*
dtype0

training_1/Adam/Variable_5VarHandleOp*
_output_shapes
: *
dtype0*+
shared_nametraining_1/Adam/Variable_5*
	container *
shape:d

;training_1/Adam/Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_5*
_output_shapes
: 
Ś
!training_1/Adam/Variable_5/AssignAssignVariableOptraining_1/Adam/Variable_5training_1/Adam/zeros_5*
dtype0*-
_class#
!loc:@training_1/Adam/Variable_5
´
.training_1/Adam/Variable_5/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_5*
_output_shapes
:d*
dtype0*-
_class#
!loc:@training_1/Adam/Variable_5
d
training_1/Adam/zeros_6Const*
valueBd*    *
_output_shapes
:d*
dtype0

training_1/Adam/Variable_6VarHandleOp*
_output_shapes
: *
dtype0*+
shared_nametraining_1/Adam/Variable_6*
	container *
shape:d

;training_1/Adam/Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_6*
_output_shapes
: 
Ś
!training_1/Adam/Variable_6/AssignAssignVariableOptraining_1/Adam/Variable_6training_1/Adam/zeros_6*
dtype0*-
_class#
!loc:@training_1/Adam/Variable_6
´
.training_1/Adam/Variable_6/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_6*
_output_shapes
:d*
dtype0*-
_class#
!loc:@training_1/Adam/Variable_6
d
training_1/Adam/zeros_7Const*
valueBd*    *
_output_shapes
:d*
dtype0

training_1/Adam/Variable_7VarHandleOp*
_output_shapes
: *
dtype0*+
shared_nametraining_1/Adam/Variable_7*
	container *
shape:d

;training_1/Adam/Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_7*
_output_shapes
: 
Ś
!training_1/Adam/Variable_7/AssignAssignVariableOptraining_1/Adam/Variable_7training_1/Adam/zeros_7*
dtype0*-
_class#
!loc:@training_1/Adam/Variable_7
´
.training_1/Adam/Variable_7/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_7*
_output_shapes
:d*
dtype0*-
_class#
!loc:@training_1/Adam/Variable_7
l
training_1/Adam/zeros_8Const*
valueBd*    *
_output_shapes

:d*
dtype0
Ą
training_1/Adam/Variable_8VarHandleOp*
_output_shapes
: *
dtype0*+
shared_nametraining_1/Adam/Variable_8*
	container *
shape
:d

;training_1/Adam/Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_8*
_output_shapes
: 
Ś
!training_1/Adam/Variable_8/AssignAssignVariableOptraining_1/Adam/Variable_8training_1/Adam/zeros_8*
dtype0*-
_class#
!loc:@training_1/Adam/Variable_8
¸
.training_1/Adam/Variable_8/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_8*
_output_shapes

:d*
dtype0*-
_class#
!loc:@training_1/Adam/Variable_8
d
training_1/Adam/zeros_9Const*
valueB*    *
_output_shapes
:*
dtype0

training_1/Adam/Variable_9VarHandleOp*
_output_shapes
: *
dtype0*+
shared_nametraining_1/Adam/Variable_9*
	container *
shape:

;training_1/Adam/Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_9*
_output_shapes
: 
Ś
!training_1/Adam/Variable_9/AssignAssignVariableOptraining_1/Adam/Variable_9training_1/Adam/zeros_9*
dtype0*-
_class#
!loc:@training_1/Adam/Variable_9
´
.training_1/Adam/Variable_9/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_9*
_output_shapes
:*
dtype0*-
_class#
!loc:@training_1/Adam/Variable_9
m
training_1/Adam/zeros_10Const*
valueBd*    *
_output_shapes

:d*
dtype0
Ł
training_1/Adam/Variable_10VarHandleOp*
_output_shapes
: *
dtype0*,
shared_nametraining_1/Adam/Variable_10*
	container *
shape
:d

<training_1/Adam/Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_10*
_output_shapes
: 
Ş
"training_1/Adam/Variable_10/AssignAssignVariableOptraining_1/Adam/Variable_10training_1/Adam/zeros_10*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_10
ť
/training_1/Adam/Variable_10/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_10*
_output_shapes

:d*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_10
e
training_1/Adam/zeros_11Const*
valueBd*    *
_output_shapes
:d*
dtype0

training_1/Adam/Variable_11VarHandleOp*
_output_shapes
: *
dtype0*,
shared_nametraining_1/Adam/Variable_11*
	container *
shape:d

<training_1/Adam/Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_11*
_output_shapes
: 
Ş
"training_1/Adam/Variable_11/AssignAssignVariableOptraining_1/Adam/Variable_11training_1/Adam/zeros_11*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_11
ˇ
/training_1/Adam/Variable_11/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_11*
_output_shapes
:d*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_11
e
training_1/Adam/zeros_12Const*
valueBd*    *
_output_shapes
:d*
dtype0

training_1/Adam/Variable_12VarHandleOp*
_output_shapes
: *
dtype0*,
shared_nametraining_1/Adam/Variable_12*
	container *
shape:d

<training_1/Adam/Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_12*
_output_shapes
: 
Ş
"training_1/Adam/Variable_12/AssignAssignVariableOptraining_1/Adam/Variable_12training_1/Adam/zeros_12*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_12
ˇ
/training_1/Adam/Variable_12/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_12*
_output_shapes
:d*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_12
e
training_1/Adam/zeros_13Const*
valueBd*    *
_output_shapes
:d*
dtype0

training_1/Adam/Variable_13VarHandleOp*
_output_shapes
: *
dtype0*,
shared_nametraining_1/Adam/Variable_13*
	container *
shape:d

<training_1/Adam/Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_13*
_output_shapes
: 
Ş
"training_1/Adam/Variable_13/AssignAssignVariableOptraining_1/Adam/Variable_13training_1/Adam/zeros_13*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_13
ˇ
/training_1/Adam/Variable_13/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_13*
_output_shapes
:d*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_13
y
(training_1/Adam/zeros_14/shape_as_tensorConst*
valueB"d   d   *
_output_shapes
:*
dtype0
c
training_1/Adam/zeros_14/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0
Ľ
training_1/Adam/zeros_14Fill(training_1/Adam/zeros_14/shape_as_tensortraining_1/Adam/zeros_14/Const*
T0*
_output_shapes

:dd*

index_type0
Ł
training_1/Adam/Variable_14VarHandleOp*
_output_shapes
: *
dtype0*,
shared_nametraining_1/Adam/Variable_14*
	container *
shape
:dd

<training_1/Adam/Variable_14/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_14*
_output_shapes
: 
Ş
"training_1/Adam/Variable_14/AssignAssignVariableOptraining_1/Adam/Variable_14training_1/Adam/zeros_14*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_14
ť
/training_1/Adam/Variable_14/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_14*
_output_shapes

:dd*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_14
e
training_1/Adam/zeros_15Const*
valueBd*    *
_output_shapes
:d*
dtype0

training_1/Adam/Variable_15VarHandleOp*
_output_shapes
: *
dtype0*,
shared_nametraining_1/Adam/Variable_15*
	container *
shape:d

<training_1/Adam/Variable_15/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_15*
_output_shapes
: 
Ş
"training_1/Adam/Variable_15/AssignAssignVariableOptraining_1/Adam/Variable_15training_1/Adam/zeros_15*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_15
ˇ
/training_1/Adam/Variable_15/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_15*
_output_shapes
:d*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_15
e
training_1/Adam/zeros_16Const*
valueBd*    *
_output_shapes
:d*
dtype0

training_1/Adam/Variable_16VarHandleOp*
_output_shapes
: *
dtype0*,
shared_nametraining_1/Adam/Variable_16*
	container *
shape:d

<training_1/Adam/Variable_16/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_16*
_output_shapes
: 
Ş
"training_1/Adam/Variable_16/AssignAssignVariableOptraining_1/Adam/Variable_16training_1/Adam/zeros_16*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_16
ˇ
/training_1/Adam/Variable_16/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_16*
_output_shapes
:d*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_16
e
training_1/Adam/zeros_17Const*
valueBd*    *
_output_shapes
:d*
dtype0

training_1/Adam/Variable_17VarHandleOp*
_output_shapes
: *
dtype0*,
shared_nametraining_1/Adam/Variable_17*
	container *
shape:d

<training_1/Adam/Variable_17/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_17*
_output_shapes
: 
Ş
"training_1/Adam/Variable_17/AssignAssignVariableOptraining_1/Adam/Variable_17training_1/Adam/zeros_17*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_17
ˇ
/training_1/Adam/Variable_17/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_17*
_output_shapes
:d*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_17
m
training_1/Adam/zeros_18Const*
valueBd*    *
_output_shapes

:d*
dtype0
Ł
training_1/Adam/Variable_18VarHandleOp*
_output_shapes
: *
dtype0*,
shared_nametraining_1/Adam/Variable_18*
	container *
shape
:d

<training_1/Adam/Variable_18/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_18*
_output_shapes
: 
Ş
"training_1/Adam/Variable_18/AssignAssignVariableOptraining_1/Adam/Variable_18training_1/Adam/zeros_18*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_18
ť
/training_1/Adam/Variable_18/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_18*
_output_shapes

:d*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_18
e
training_1/Adam/zeros_19Const*
valueB*    *
_output_shapes
:*
dtype0

training_1/Adam/Variable_19VarHandleOp*
_output_shapes
: *
dtype0*,
shared_nametraining_1/Adam/Variable_19*
	container *
shape:

<training_1/Adam/Variable_19/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_19*
_output_shapes
: 
Ş
"training_1/Adam/Variable_19/AssignAssignVariableOptraining_1/Adam/Variable_19training_1/Adam/zeros_19*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_19
ˇ
/training_1/Adam/Variable_19/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_19*
_output_shapes
:*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_19
r
(training_1/Adam/zeros_20/shape_as_tensorConst*
valueB:*
_output_shapes
:*
dtype0
c
training_1/Adam/zeros_20/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0
Ą
training_1/Adam/zeros_20Fill(training_1/Adam/zeros_20/shape_as_tensortraining_1/Adam/zeros_20/Const*
T0*
_output_shapes
:*

index_type0

training_1/Adam/Variable_20VarHandleOp*
_output_shapes
: *
dtype0*,
shared_nametraining_1/Adam/Variable_20*
	container *
shape:

<training_1/Adam/Variable_20/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_20*
_output_shapes
: 
Ş
"training_1/Adam/Variable_20/AssignAssignVariableOptraining_1/Adam/Variable_20training_1/Adam/zeros_20*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_20
ˇ
/training_1/Adam/Variable_20/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_20*
_output_shapes
:*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_20
r
(training_1/Adam/zeros_21/shape_as_tensorConst*
valueB:*
_output_shapes
:*
dtype0
c
training_1/Adam/zeros_21/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0
Ą
training_1/Adam/zeros_21Fill(training_1/Adam/zeros_21/shape_as_tensortraining_1/Adam/zeros_21/Const*
T0*
_output_shapes
:*

index_type0

training_1/Adam/Variable_21VarHandleOp*
_output_shapes
: *
dtype0*,
shared_nametraining_1/Adam/Variable_21*
	container *
shape:

<training_1/Adam/Variable_21/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_21*
_output_shapes
: 
Ş
"training_1/Adam/Variable_21/AssignAssignVariableOptraining_1/Adam/Variable_21training_1/Adam/zeros_21*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_21
ˇ
/training_1/Adam/Variable_21/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_21*
_output_shapes
:*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_21
r
(training_1/Adam/zeros_22/shape_as_tensorConst*
valueB:*
_output_shapes
:*
dtype0
c
training_1/Adam/zeros_22/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0
Ą
training_1/Adam/zeros_22Fill(training_1/Adam/zeros_22/shape_as_tensortraining_1/Adam/zeros_22/Const*
T0*
_output_shapes
:*

index_type0

training_1/Adam/Variable_22VarHandleOp*
_output_shapes
: *
dtype0*,
shared_nametraining_1/Adam/Variable_22*
	container *
shape:

<training_1/Adam/Variable_22/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_22*
_output_shapes
: 
Ş
"training_1/Adam/Variable_22/AssignAssignVariableOptraining_1/Adam/Variable_22training_1/Adam/zeros_22*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_22
ˇ
/training_1/Adam/Variable_22/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_22*
_output_shapes
:*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_22
r
(training_1/Adam/zeros_23/shape_as_tensorConst*
valueB:*
_output_shapes
:*
dtype0
c
training_1/Adam/zeros_23/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0
Ą
training_1/Adam/zeros_23Fill(training_1/Adam/zeros_23/shape_as_tensortraining_1/Adam/zeros_23/Const*
T0*
_output_shapes
:*

index_type0

training_1/Adam/Variable_23VarHandleOp*
_output_shapes
: *
dtype0*,
shared_nametraining_1/Adam/Variable_23*
	container *
shape:

<training_1/Adam/Variable_23/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_23*
_output_shapes
: 
Ş
"training_1/Adam/Variable_23/AssignAssignVariableOptraining_1/Adam/Variable_23training_1/Adam/zeros_23*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_23
ˇ
/training_1/Adam/Variable_23/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_23*
_output_shapes
:*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_23
r
(training_1/Adam/zeros_24/shape_as_tensorConst*
valueB:*
_output_shapes
:*
dtype0
c
training_1/Adam/zeros_24/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0
Ą
training_1/Adam/zeros_24Fill(training_1/Adam/zeros_24/shape_as_tensortraining_1/Adam/zeros_24/Const*
T0*
_output_shapes
:*

index_type0

training_1/Adam/Variable_24VarHandleOp*
_output_shapes
: *
dtype0*,
shared_nametraining_1/Adam/Variable_24*
	container *
shape:

<training_1/Adam/Variable_24/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_24*
_output_shapes
: 
Ş
"training_1/Adam/Variable_24/AssignAssignVariableOptraining_1/Adam/Variable_24training_1/Adam/zeros_24*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_24
ˇ
/training_1/Adam/Variable_24/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_24*
_output_shapes
:*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_24
r
(training_1/Adam/zeros_25/shape_as_tensorConst*
valueB:*
_output_shapes
:*
dtype0
c
training_1/Adam/zeros_25/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0
Ą
training_1/Adam/zeros_25Fill(training_1/Adam/zeros_25/shape_as_tensortraining_1/Adam/zeros_25/Const*
T0*
_output_shapes
:*

index_type0

training_1/Adam/Variable_25VarHandleOp*
_output_shapes
: *
dtype0*,
shared_nametraining_1/Adam/Variable_25*
	container *
shape:

<training_1/Adam/Variable_25/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_25*
_output_shapes
: 
Ş
"training_1/Adam/Variable_25/AssignAssignVariableOptraining_1/Adam/Variable_25training_1/Adam/zeros_25*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_25
ˇ
/training_1/Adam/Variable_25/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_25*
_output_shapes
:*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_25
r
(training_1/Adam/zeros_26/shape_as_tensorConst*
valueB:*
_output_shapes
:*
dtype0
c
training_1/Adam/zeros_26/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0
Ą
training_1/Adam/zeros_26Fill(training_1/Adam/zeros_26/shape_as_tensortraining_1/Adam/zeros_26/Const*
T0*
_output_shapes
:*

index_type0

training_1/Adam/Variable_26VarHandleOp*
_output_shapes
: *
dtype0*,
shared_nametraining_1/Adam/Variable_26*
	container *
shape:

<training_1/Adam/Variable_26/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_26*
_output_shapes
: 
Ş
"training_1/Adam/Variable_26/AssignAssignVariableOptraining_1/Adam/Variable_26training_1/Adam/zeros_26*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_26
ˇ
/training_1/Adam/Variable_26/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_26*
_output_shapes
:*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_26
r
(training_1/Adam/zeros_27/shape_as_tensorConst*
valueB:*
_output_shapes
:*
dtype0
c
training_1/Adam/zeros_27/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0
Ą
training_1/Adam/zeros_27Fill(training_1/Adam/zeros_27/shape_as_tensortraining_1/Adam/zeros_27/Const*
T0*
_output_shapes
:*

index_type0

training_1/Adam/Variable_27VarHandleOp*
_output_shapes
: *
dtype0*,
shared_nametraining_1/Adam/Variable_27*
	container *
shape:

<training_1/Adam/Variable_27/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_27*
_output_shapes
: 
Ş
"training_1/Adam/Variable_27/AssignAssignVariableOptraining_1/Adam/Variable_27training_1/Adam/zeros_27*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_27
ˇ
/training_1/Adam/Variable_27/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_27*
_output_shapes
:*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_27
r
(training_1/Adam/zeros_28/shape_as_tensorConst*
valueB:*
_output_shapes
:*
dtype0
c
training_1/Adam/zeros_28/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0
Ą
training_1/Adam/zeros_28Fill(training_1/Adam/zeros_28/shape_as_tensortraining_1/Adam/zeros_28/Const*
T0*
_output_shapes
:*

index_type0

training_1/Adam/Variable_28VarHandleOp*
_output_shapes
: *
dtype0*,
shared_nametraining_1/Adam/Variable_28*
	container *
shape:

<training_1/Adam/Variable_28/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_28*
_output_shapes
: 
Ş
"training_1/Adam/Variable_28/AssignAssignVariableOptraining_1/Adam/Variable_28training_1/Adam/zeros_28*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_28
ˇ
/training_1/Adam/Variable_28/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_28*
_output_shapes
:*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_28
r
(training_1/Adam/zeros_29/shape_as_tensorConst*
valueB:*
_output_shapes
:*
dtype0
c
training_1/Adam/zeros_29/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0
Ą
training_1/Adam/zeros_29Fill(training_1/Adam/zeros_29/shape_as_tensortraining_1/Adam/zeros_29/Const*
T0*
_output_shapes
:*

index_type0

training_1/Adam/Variable_29VarHandleOp*
_output_shapes
: *
dtype0*,
shared_nametraining_1/Adam/Variable_29*
	container *
shape:

<training_1/Adam/Variable_29/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/Variable_29*
_output_shapes
: 
Ş
"training_1/Adam/Variable_29/AssignAssignVariableOptraining_1/Adam/Variable_29training_1/Adam/zeros_29*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_29
ˇ
/training_1/Adam/Variable_29/Read/ReadVariableOpReadVariableOptraining_1/Adam/Variable_29*
_output_shapes
:*
dtype0*.
_class$
" loc:@training_1/Adam/Variable_29
f
 training_1/Adam/ReadVariableOp_2ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
}
$training_1/Adam/mul_1/ReadVariableOpReadVariableOptraining_1/Adam/Variable*
_output_shapes

:d*
dtype0

training_1/Adam/mul_1Mul training_1/Adam/ReadVariableOp_2$training_1/Adam/mul_1/ReadVariableOp*
T0*
_output_shapes

:d
f
 training_1/Adam/ReadVariableOp_3ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
\
training_1/Adam/sub_2/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
x
training_1/Adam/sub_2Subtraining_1/Adam/sub_2/x training_1/Adam/ReadVariableOp_3*
T0*
_output_shapes
: 

training_1/Adam/mul_2Multraining_1/Adam/sub_28training_1/Adam/gradients/hidden1_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:d
s
training_1/Adam/add_1Addtraining_1/Adam/mul_1training_1/Adam/mul_2*
T0*
_output_shapes

:d
f
 training_1/Adam/ReadVariableOp_4ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0

$training_1/Adam/mul_3/ReadVariableOpReadVariableOptraining_1/Adam/Variable_10*
_output_shapes

:d*
dtype0

training_1/Adam/mul_3Mul training_1/Adam/ReadVariableOp_4$training_1/Adam/mul_3/ReadVariableOp*
T0*
_output_shapes

:d
f
 training_1/Adam/ReadVariableOp_5ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
\
training_1/Adam/sub_3/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
x
training_1/Adam/sub_3Subtraining_1/Adam/sub_3/x training_1/Adam/ReadVariableOp_5*
T0*
_output_shapes
: 

training_1/Adam/SquareSquare8training_1/Adam/gradients/hidden1_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:d
t
training_1/Adam/mul_4Multraining_1/Adam/sub_3training_1/Adam/Square*
T0*
_output_shapes

:d
s
training_1/Adam/add_2Addtraining_1/Adam/mul_3training_1/Adam/mul_4*
T0*
_output_shapes

:d
q
training_1/Adam/mul_5Multraining_1/Adam/multraining_1/Adam/add_1*
T0*
_output_shapes

:d
\
training_1/Adam/Const_3Const*
valueB
 *    *
_output_shapes
: *
dtype0
\
training_1/Adam/Const_4Const*
valueB
 *  *
_output_shapes
: *
dtype0

'training_1/Adam/clip_by_value_1/MinimumMinimumtraining_1/Adam/add_2training_1/Adam/Const_4*
T0*
_output_shapes

:d

training_1/Adam/clip_by_value_1Maximum'training_1/Adam/clip_by_value_1/Minimumtraining_1/Adam/Const_3*
T0*
_output_shapes

:d
h
training_1/Adam/Sqrt_1Sqrttraining_1/Adam/clip_by_value_1*
T0*
_output_shapes

:d
\
training_1/Adam/add_3/yConst*
valueB
 *żÖ3*
_output_shapes
: *
dtype0
v
training_1/Adam/add_3Addtraining_1/Adam/Sqrt_1training_1/Adam/add_3/y*
T0*
_output_shapes

:d
{
training_1/Adam/truediv_1RealDivtraining_1/Adam/mul_5training_1/Adam/add_3*
T0*
_output_shapes

:d
q
 training_1/Adam/ReadVariableOp_6ReadVariableOphidden1_1/kernel*
_output_shapes

:d*
dtype0

training_1/Adam/sub_4Sub training_1/Adam/ReadVariableOp_6training_1/Adam/truediv_1*
T0*
_output_shapes

:d
r
 training_1/Adam/AssignVariableOpAssignVariableOptraining_1/Adam/Variabletraining_1/Adam/add_1*
dtype0

 training_1/Adam/ReadVariableOp_7ReadVariableOptraining_1/Adam/Variable!^training_1/Adam/AssignVariableOp*
_output_shapes

:d*
dtype0
w
"training_1/Adam/AssignVariableOp_1AssignVariableOptraining_1/Adam/Variable_10training_1/Adam/add_2*
dtype0
Ą
 training_1/Adam/ReadVariableOp_8ReadVariableOptraining_1/Adam/Variable_10#^training_1/Adam/AssignVariableOp_1*
_output_shapes

:d*
dtype0
l
"training_1/Adam/AssignVariableOp_2AssignVariableOphidden1_1/kerneltraining_1/Adam/sub_4*
dtype0

 training_1/Adam/ReadVariableOp_9ReadVariableOphidden1_1/kernel#^training_1/Adam/AssignVariableOp_2*
_output_shapes

:d*
dtype0
g
!training_1/Adam/ReadVariableOp_10ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
{
$training_1/Adam/mul_6/ReadVariableOpReadVariableOptraining_1/Adam/Variable_1*
_output_shapes
:d*
dtype0

training_1/Adam/mul_6Mul!training_1/Adam/ReadVariableOp_10$training_1/Adam/mul_6/ReadVariableOp*
T0*
_output_shapes
:d
g
!training_1/Adam/ReadVariableOp_11ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
\
training_1/Adam/sub_5/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
y
training_1/Adam/sub_5Subtraining_1/Adam/sub_5/x!training_1/Adam/ReadVariableOp_11*
T0*
_output_shapes
: 

training_1/Adam/mul_7Multraining_1/Adam/sub_5<training_1/Adam/gradients/hidden1_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:d
o
training_1/Adam/add_4Addtraining_1/Adam/mul_6training_1/Adam/mul_7*
T0*
_output_shapes
:d
g
!training_1/Adam/ReadVariableOp_12ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
|
$training_1/Adam/mul_8/ReadVariableOpReadVariableOptraining_1/Adam/Variable_11*
_output_shapes
:d*
dtype0

training_1/Adam/mul_8Mul!training_1/Adam/ReadVariableOp_12$training_1/Adam/mul_8/ReadVariableOp*
T0*
_output_shapes
:d
g
!training_1/Adam/ReadVariableOp_13ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
\
training_1/Adam/sub_6/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
y
training_1/Adam/sub_6Subtraining_1/Adam/sub_6/x!training_1/Adam/ReadVariableOp_13*
T0*
_output_shapes
: 

training_1/Adam/Square_1Square<training_1/Adam/gradients/hidden1_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:d
r
training_1/Adam/mul_9Multraining_1/Adam/sub_6training_1/Adam/Square_1*
T0*
_output_shapes
:d
o
training_1/Adam/add_5Addtraining_1/Adam/mul_8training_1/Adam/mul_9*
T0*
_output_shapes
:d
n
training_1/Adam/mul_10Multraining_1/Adam/multraining_1/Adam/add_4*
T0*
_output_shapes
:d
\
training_1/Adam/Const_5Const*
valueB
 *    *
_output_shapes
: *
dtype0
\
training_1/Adam/Const_6Const*
valueB
 *  *
_output_shapes
: *
dtype0

'training_1/Adam/clip_by_value_2/MinimumMinimumtraining_1/Adam/add_5training_1/Adam/Const_6*
T0*
_output_shapes
:d

training_1/Adam/clip_by_value_2Maximum'training_1/Adam/clip_by_value_2/Minimumtraining_1/Adam/Const_5*
T0*
_output_shapes
:d
d
training_1/Adam/Sqrt_2Sqrttraining_1/Adam/clip_by_value_2*
T0*
_output_shapes
:d
\
training_1/Adam/add_6/yConst*
valueB
 *żÖ3*
_output_shapes
: *
dtype0
r
training_1/Adam/add_6Addtraining_1/Adam/Sqrt_2training_1/Adam/add_6/y*
T0*
_output_shapes
:d
x
training_1/Adam/truediv_2RealDivtraining_1/Adam/mul_10training_1/Adam/add_6*
T0*
_output_shapes
:d
l
!training_1/Adam/ReadVariableOp_14ReadVariableOphidden1_1/bias*
_output_shapes
:d*
dtype0

training_1/Adam/sub_7Sub!training_1/Adam/ReadVariableOp_14training_1/Adam/truediv_2*
T0*
_output_shapes
:d
v
"training_1/Adam/AssignVariableOp_3AssignVariableOptraining_1/Adam/Variable_1training_1/Adam/add_4*
dtype0

!training_1/Adam/ReadVariableOp_15ReadVariableOptraining_1/Adam/Variable_1#^training_1/Adam/AssignVariableOp_3*
_output_shapes
:d*
dtype0
w
"training_1/Adam/AssignVariableOp_4AssignVariableOptraining_1/Adam/Variable_11training_1/Adam/add_5*
dtype0

!training_1/Adam/ReadVariableOp_16ReadVariableOptraining_1/Adam/Variable_11#^training_1/Adam/AssignVariableOp_4*
_output_shapes
:d*
dtype0
j
"training_1/Adam/AssignVariableOp_5AssignVariableOphidden1_1/biastraining_1/Adam/sub_7*
dtype0

!training_1/Adam/ReadVariableOp_17ReadVariableOphidden1_1/bias#^training_1/Adam/AssignVariableOp_5*
_output_shapes
:d*
dtype0
g
!training_1/Adam/ReadVariableOp_18ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
|
%training_1/Adam/mul_11/ReadVariableOpReadVariableOptraining_1/Adam/Variable_2*
_output_shapes
:d*
dtype0

training_1/Adam/mul_11Mul!training_1/Adam/ReadVariableOp_18%training_1/Adam/mul_11/ReadVariableOp*
T0*
_output_shapes
:d
g
!training_1/Adam/ReadVariableOp_19ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
\
training_1/Adam/sub_8/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
y
training_1/Adam/sub_8Subtraining_1/Adam/sub_8/x!training_1/Adam/ReadVariableOp_19*
T0*
_output_shapes
: 
Ł
training_1/Adam/mul_12Multraining_1/Adam/sub_8Htraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_grad/Mul_1*
T0*
_output_shapes
:d
q
training_1/Adam/add_7Addtraining_1/Adam/mul_11training_1/Adam/mul_12*
T0*
_output_shapes
:d
g
!training_1/Adam/ReadVariableOp_20ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
}
%training_1/Adam/mul_13/ReadVariableOpReadVariableOptraining_1/Adam/Variable_12*
_output_shapes
:d*
dtype0

training_1/Adam/mul_13Mul!training_1/Adam/ReadVariableOp_20%training_1/Adam/mul_13/ReadVariableOp*
T0*
_output_shapes
:d
g
!training_1/Adam/ReadVariableOp_21ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
\
training_1/Adam/sub_9/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
y
training_1/Adam/sub_9Subtraining_1/Adam/sub_9/x!training_1/Adam/ReadVariableOp_21*
T0*
_output_shapes
: 

training_1/Adam/Square_2SquareHtraining_1/Adam/gradients/batch_normalization_2/batchnorm/mul_grad/Mul_1*
T0*
_output_shapes
:d
s
training_1/Adam/mul_14Multraining_1/Adam/sub_9training_1/Adam/Square_2*
T0*
_output_shapes
:d
q
training_1/Adam/add_8Addtraining_1/Adam/mul_13training_1/Adam/mul_14*
T0*
_output_shapes
:d
n
training_1/Adam/mul_15Multraining_1/Adam/multraining_1/Adam/add_7*
T0*
_output_shapes
:d
\
training_1/Adam/Const_7Const*
valueB
 *    *
_output_shapes
: *
dtype0
\
training_1/Adam/Const_8Const*
valueB
 *  *
_output_shapes
: *
dtype0

'training_1/Adam/clip_by_value_3/MinimumMinimumtraining_1/Adam/add_8training_1/Adam/Const_8*
T0*
_output_shapes
:d

training_1/Adam/clip_by_value_3Maximum'training_1/Adam/clip_by_value_3/Minimumtraining_1/Adam/Const_7*
T0*
_output_shapes
:d
d
training_1/Adam/Sqrt_3Sqrttraining_1/Adam/clip_by_value_3*
T0*
_output_shapes
:d
\
training_1/Adam/add_9/yConst*
valueB
 *żÖ3*
_output_shapes
: *
dtype0
r
training_1/Adam/add_9Addtraining_1/Adam/Sqrt_3training_1/Adam/add_9/y*
T0*
_output_shapes
:d
x
training_1/Adam/truediv_3RealDivtraining_1/Adam/mul_15training_1/Adam/add_9*
T0*
_output_shapes
:d
y
!training_1/Adam/ReadVariableOp_22ReadVariableOpbatch_normalization_2/gamma*
_output_shapes
:d*
dtype0

training_1/Adam/sub_10Sub!training_1/Adam/ReadVariableOp_22training_1/Adam/truediv_3*
T0*
_output_shapes
:d
v
"training_1/Adam/AssignVariableOp_6AssignVariableOptraining_1/Adam/Variable_2training_1/Adam/add_7*
dtype0

!training_1/Adam/ReadVariableOp_23ReadVariableOptraining_1/Adam/Variable_2#^training_1/Adam/AssignVariableOp_6*
_output_shapes
:d*
dtype0
w
"training_1/Adam/AssignVariableOp_7AssignVariableOptraining_1/Adam/Variable_12training_1/Adam/add_8*
dtype0

!training_1/Adam/ReadVariableOp_24ReadVariableOptraining_1/Adam/Variable_12#^training_1/Adam/AssignVariableOp_7*
_output_shapes
:d*
dtype0
x
"training_1/Adam/AssignVariableOp_8AssignVariableOpbatch_normalization_2/gammatraining_1/Adam/sub_10*
dtype0

!training_1/Adam/ReadVariableOp_25ReadVariableOpbatch_normalization_2/gamma#^training_1/Adam/AssignVariableOp_8*
_output_shapes
:d*
dtype0
g
!training_1/Adam/ReadVariableOp_26ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
|
%training_1/Adam/mul_16/ReadVariableOpReadVariableOptraining_1/Adam/Variable_3*
_output_shapes
:d*
dtype0

training_1/Adam/mul_16Mul!training_1/Adam/ReadVariableOp_26%training_1/Adam/mul_16/ReadVariableOp*
T0*
_output_shapes
:d
g
!training_1/Adam/ReadVariableOp_27ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
]
training_1/Adam/sub_11/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
{
training_1/Adam/sub_11Subtraining_1/Adam/sub_11/x!training_1/Adam/ReadVariableOp_27*
T0*
_output_shapes
: 
Ş
training_1/Adam/mul_17Multraining_1/Adam/sub_11Ntraining_1/Adam/gradients/batch_normalization_2/batchnorm/add_1_grad/Reshape_1*
T0*
_output_shapes
:d
r
training_1/Adam/add_10Addtraining_1/Adam/mul_16training_1/Adam/mul_17*
T0*
_output_shapes
:d
g
!training_1/Adam/ReadVariableOp_28ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
}
%training_1/Adam/mul_18/ReadVariableOpReadVariableOptraining_1/Adam/Variable_13*
_output_shapes
:d*
dtype0

training_1/Adam/mul_18Mul!training_1/Adam/ReadVariableOp_28%training_1/Adam/mul_18/ReadVariableOp*
T0*
_output_shapes
:d
g
!training_1/Adam/ReadVariableOp_29ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
]
training_1/Adam/sub_12/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
{
training_1/Adam/sub_12Subtraining_1/Adam/sub_12/x!training_1/Adam/ReadVariableOp_29*
T0*
_output_shapes
: 

training_1/Adam/Square_3SquareNtraining_1/Adam/gradients/batch_normalization_2/batchnorm/add_1_grad/Reshape_1*
T0*
_output_shapes
:d
t
training_1/Adam/mul_19Multraining_1/Adam/sub_12training_1/Adam/Square_3*
T0*
_output_shapes
:d
r
training_1/Adam/add_11Addtraining_1/Adam/mul_18training_1/Adam/mul_19*
T0*
_output_shapes
:d
o
training_1/Adam/mul_20Multraining_1/Adam/multraining_1/Adam/add_10*
T0*
_output_shapes
:d
\
training_1/Adam/Const_9Const*
valueB
 *    *
_output_shapes
: *
dtype0
]
training_1/Adam/Const_10Const*
valueB
 *  *
_output_shapes
: *
dtype0

'training_1/Adam/clip_by_value_4/MinimumMinimumtraining_1/Adam/add_11training_1/Adam/Const_10*
T0*
_output_shapes
:d

training_1/Adam/clip_by_value_4Maximum'training_1/Adam/clip_by_value_4/Minimumtraining_1/Adam/Const_9*
T0*
_output_shapes
:d
d
training_1/Adam/Sqrt_4Sqrttraining_1/Adam/clip_by_value_4*
T0*
_output_shapes
:d
]
training_1/Adam/add_12/yConst*
valueB
 *żÖ3*
_output_shapes
: *
dtype0
t
training_1/Adam/add_12Addtraining_1/Adam/Sqrt_4training_1/Adam/add_12/y*
T0*
_output_shapes
:d
y
training_1/Adam/truediv_4RealDivtraining_1/Adam/mul_20training_1/Adam/add_12*
T0*
_output_shapes
:d
x
!training_1/Adam/ReadVariableOp_30ReadVariableOpbatch_normalization_2/beta*
_output_shapes
:d*
dtype0

training_1/Adam/sub_13Sub!training_1/Adam/ReadVariableOp_30training_1/Adam/truediv_4*
T0*
_output_shapes
:d
w
"training_1/Adam/AssignVariableOp_9AssignVariableOptraining_1/Adam/Variable_3training_1/Adam/add_10*
dtype0

!training_1/Adam/ReadVariableOp_31ReadVariableOptraining_1/Adam/Variable_3#^training_1/Adam/AssignVariableOp_9*
_output_shapes
:d*
dtype0
y
#training_1/Adam/AssignVariableOp_10AssignVariableOptraining_1/Adam/Variable_13training_1/Adam/add_11*
dtype0

!training_1/Adam/ReadVariableOp_32ReadVariableOptraining_1/Adam/Variable_13$^training_1/Adam/AssignVariableOp_10*
_output_shapes
:d*
dtype0
x
#training_1/Adam/AssignVariableOp_11AssignVariableOpbatch_normalization_2/betatraining_1/Adam/sub_13*
dtype0

!training_1/Adam/ReadVariableOp_33ReadVariableOpbatch_normalization_2/beta$^training_1/Adam/AssignVariableOp_11*
_output_shapes
:d*
dtype0
g
!training_1/Adam/ReadVariableOp_34ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0

%training_1/Adam/mul_21/ReadVariableOpReadVariableOptraining_1/Adam/Variable_4*
_output_shapes

:dd*
dtype0

training_1/Adam/mul_21Mul!training_1/Adam/ReadVariableOp_34%training_1/Adam/mul_21/ReadVariableOp*
T0*
_output_shapes

:dd
g
!training_1/Adam/ReadVariableOp_35ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
]
training_1/Adam/sub_14/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
{
training_1/Adam/sub_14Subtraining_1/Adam/sub_14/x!training_1/Adam/ReadVariableOp_35*
T0*
_output_shapes
: 

training_1/Adam/mul_22Multraining_1/Adam/sub_148training_1/Adam/gradients/hidden2_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:dd
v
training_1/Adam/add_13Addtraining_1/Adam/mul_21training_1/Adam/mul_22*
T0*
_output_shapes

:dd
g
!training_1/Adam/ReadVariableOp_36ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0

%training_1/Adam/mul_23/ReadVariableOpReadVariableOptraining_1/Adam/Variable_14*
_output_shapes

:dd*
dtype0

training_1/Adam/mul_23Mul!training_1/Adam/ReadVariableOp_36%training_1/Adam/mul_23/ReadVariableOp*
T0*
_output_shapes

:dd
g
!training_1/Adam/ReadVariableOp_37ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
]
training_1/Adam/sub_15/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
{
training_1/Adam/sub_15Subtraining_1/Adam/sub_15/x!training_1/Adam/ReadVariableOp_37*
T0*
_output_shapes
: 

training_1/Adam/Square_4Square8training_1/Adam/gradients/hidden2_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:dd
x
training_1/Adam/mul_24Multraining_1/Adam/sub_15training_1/Adam/Square_4*
T0*
_output_shapes

:dd
v
training_1/Adam/add_14Addtraining_1/Adam/mul_23training_1/Adam/mul_24*
T0*
_output_shapes

:dd
s
training_1/Adam/mul_25Multraining_1/Adam/multraining_1/Adam/add_13*
T0*
_output_shapes

:dd
]
training_1/Adam/Const_11Const*
valueB
 *    *
_output_shapes
: *
dtype0
]
training_1/Adam/Const_12Const*
valueB
 *  *
_output_shapes
: *
dtype0

'training_1/Adam/clip_by_value_5/MinimumMinimumtraining_1/Adam/add_14training_1/Adam/Const_12*
T0*
_output_shapes

:dd

training_1/Adam/clip_by_value_5Maximum'training_1/Adam/clip_by_value_5/Minimumtraining_1/Adam/Const_11*
T0*
_output_shapes

:dd
h
training_1/Adam/Sqrt_5Sqrttraining_1/Adam/clip_by_value_5*
T0*
_output_shapes

:dd
]
training_1/Adam/add_15/yConst*
valueB
 *żÖ3*
_output_shapes
: *
dtype0
x
training_1/Adam/add_15Addtraining_1/Adam/Sqrt_5training_1/Adam/add_15/y*
T0*
_output_shapes

:dd
}
training_1/Adam/truediv_5RealDivtraining_1/Adam/mul_25training_1/Adam/add_15*
T0*
_output_shapes

:dd
r
!training_1/Adam/ReadVariableOp_38ReadVariableOphidden2_1/kernel*
_output_shapes

:dd*
dtype0

training_1/Adam/sub_16Sub!training_1/Adam/ReadVariableOp_38training_1/Adam/truediv_5*
T0*
_output_shapes

:dd
x
#training_1/Adam/AssignVariableOp_12AssignVariableOptraining_1/Adam/Variable_4training_1/Adam/add_13*
dtype0
˘
!training_1/Adam/ReadVariableOp_39ReadVariableOptraining_1/Adam/Variable_4$^training_1/Adam/AssignVariableOp_12*
_output_shapes

:dd*
dtype0
y
#training_1/Adam/AssignVariableOp_13AssignVariableOptraining_1/Adam/Variable_14training_1/Adam/add_14*
dtype0
Ł
!training_1/Adam/ReadVariableOp_40ReadVariableOptraining_1/Adam/Variable_14$^training_1/Adam/AssignVariableOp_13*
_output_shapes

:dd*
dtype0
n
#training_1/Adam/AssignVariableOp_14AssignVariableOphidden2_1/kerneltraining_1/Adam/sub_16*
dtype0

!training_1/Adam/ReadVariableOp_41ReadVariableOphidden2_1/kernel$^training_1/Adam/AssignVariableOp_14*
_output_shapes

:dd*
dtype0
g
!training_1/Adam/ReadVariableOp_42ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
|
%training_1/Adam/mul_26/ReadVariableOpReadVariableOptraining_1/Adam/Variable_5*
_output_shapes
:d*
dtype0

training_1/Adam/mul_26Mul!training_1/Adam/ReadVariableOp_42%training_1/Adam/mul_26/ReadVariableOp*
T0*
_output_shapes
:d
g
!training_1/Adam/ReadVariableOp_43ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
]
training_1/Adam/sub_17/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
{
training_1/Adam/sub_17Subtraining_1/Adam/sub_17/x!training_1/Adam/ReadVariableOp_43*
T0*
_output_shapes
: 

training_1/Adam/mul_27Multraining_1/Adam/sub_17<training_1/Adam/gradients/hidden2_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:d
r
training_1/Adam/add_16Addtraining_1/Adam/mul_26training_1/Adam/mul_27*
T0*
_output_shapes
:d
g
!training_1/Adam/ReadVariableOp_44ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
}
%training_1/Adam/mul_28/ReadVariableOpReadVariableOptraining_1/Adam/Variable_15*
_output_shapes
:d*
dtype0

training_1/Adam/mul_28Mul!training_1/Adam/ReadVariableOp_44%training_1/Adam/mul_28/ReadVariableOp*
T0*
_output_shapes
:d
g
!training_1/Adam/ReadVariableOp_45ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
]
training_1/Adam/sub_18/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
{
training_1/Adam/sub_18Subtraining_1/Adam/sub_18/x!training_1/Adam/ReadVariableOp_45*
T0*
_output_shapes
: 

training_1/Adam/Square_5Square<training_1/Adam/gradients/hidden2_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:d
t
training_1/Adam/mul_29Multraining_1/Adam/sub_18training_1/Adam/Square_5*
T0*
_output_shapes
:d
r
training_1/Adam/add_17Addtraining_1/Adam/mul_28training_1/Adam/mul_29*
T0*
_output_shapes
:d
o
training_1/Adam/mul_30Multraining_1/Adam/multraining_1/Adam/add_16*
T0*
_output_shapes
:d
]
training_1/Adam/Const_13Const*
valueB
 *    *
_output_shapes
: *
dtype0
]
training_1/Adam/Const_14Const*
valueB
 *  *
_output_shapes
: *
dtype0

'training_1/Adam/clip_by_value_6/MinimumMinimumtraining_1/Adam/add_17training_1/Adam/Const_14*
T0*
_output_shapes
:d

training_1/Adam/clip_by_value_6Maximum'training_1/Adam/clip_by_value_6/Minimumtraining_1/Adam/Const_13*
T0*
_output_shapes
:d
d
training_1/Adam/Sqrt_6Sqrttraining_1/Adam/clip_by_value_6*
T0*
_output_shapes
:d
]
training_1/Adam/add_18/yConst*
valueB
 *żÖ3*
_output_shapes
: *
dtype0
t
training_1/Adam/add_18Addtraining_1/Adam/Sqrt_6training_1/Adam/add_18/y*
T0*
_output_shapes
:d
y
training_1/Adam/truediv_6RealDivtraining_1/Adam/mul_30training_1/Adam/add_18*
T0*
_output_shapes
:d
l
!training_1/Adam/ReadVariableOp_46ReadVariableOphidden2_1/bias*
_output_shapes
:d*
dtype0

training_1/Adam/sub_19Sub!training_1/Adam/ReadVariableOp_46training_1/Adam/truediv_6*
T0*
_output_shapes
:d
x
#training_1/Adam/AssignVariableOp_15AssignVariableOptraining_1/Adam/Variable_5training_1/Adam/add_16*
dtype0

!training_1/Adam/ReadVariableOp_47ReadVariableOptraining_1/Adam/Variable_5$^training_1/Adam/AssignVariableOp_15*
_output_shapes
:d*
dtype0
y
#training_1/Adam/AssignVariableOp_16AssignVariableOptraining_1/Adam/Variable_15training_1/Adam/add_17*
dtype0

!training_1/Adam/ReadVariableOp_48ReadVariableOptraining_1/Adam/Variable_15$^training_1/Adam/AssignVariableOp_16*
_output_shapes
:d*
dtype0
l
#training_1/Adam/AssignVariableOp_17AssignVariableOphidden2_1/biastraining_1/Adam/sub_19*
dtype0

!training_1/Adam/ReadVariableOp_49ReadVariableOphidden2_1/bias$^training_1/Adam/AssignVariableOp_17*
_output_shapes
:d*
dtype0
g
!training_1/Adam/ReadVariableOp_50ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
|
%training_1/Adam/mul_31/ReadVariableOpReadVariableOptraining_1/Adam/Variable_6*
_output_shapes
:d*
dtype0

training_1/Adam/mul_31Mul!training_1/Adam/ReadVariableOp_50%training_1/Adam/mul_31/ReadVariableOp*
T0*
_output_shapes
:d
g
!training_1/Adam/ReadVariableOp_51ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
]
training_1/Adam/sub_20/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
{
training_1/Adam/sub_20Subtraining_1/Adam/sub_20/x!training_1/Adam/ReadVariableOp_51*
T0*
_output_shapes
: 
Ś
training_1/Adam/mul_32Multraining_1/Adam/sub_20Jtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_grad/Mul_1*
T0*
_output_shapes
:d
r
training_1/Adam/add_19Addtraining_1/Adam/mul_31training_1/Adam/mul_32*
T0*
_output_shapes
:d
g
!training_1/Adam/ReadVariableOp_52ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
}
%training_1/Adam/mul_33/ReadVariableOpReadVariableOptraining_1/Adam/Variable_16*
_output_shapes
:d*
dtype0

training_1/Adam/mul_33Mul!training_1/Adam/ReadVariableOp_52%training_1/Adam/mul_33/ReadVariableOp*
T0*
_output_shapes
:d
g
!training_1/Adam/ReadVariableOp_53ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
]
training_1/Adam/sub_21/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
{
training_1/Adam/sub_21Subtraining_1/Adam/sub_21/x!training_1/Adam/ReadVariableOp_53*
T0*
_output_shapes
: 

training_1/Adam/Square_6SquareJtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/mul_grad/Mul_1*
T0*
_output_shapes
:d
t
training_1/Adam/mul_34Multraining_1/Adam/sub_21training_1/Adam/Square_6*
T0*
_output_shapes
:d
r
training_1/Adam/add_20Addtraining_1/Adam/mul_33training_1/Adam/mul_34*
T0*
_output_shapes
:d
o
training_1/Adam/mul_35Multraining_1/Adam/multraining_1/Adam/add_19*
T0*
_output_shapes
:d
]
training_1/Adam/Const_15Const*
valueB
 *    *
_output_shapes
: *
dtype0
]
training_1/Adam/Const_16Const*
valueB
 *  *
_output_shapes
: *
dtype0

'training_1/Adam/clip_by_value_7/MinimumMinimumtraining_1/Adam/add_20training_1/Adam/Const_16*
T0*
_output_shapes
:d

training_1/Adam/clip_by_value_7Maximum'training_1/Adam/clip_by_value_7/Minimumtraining_1/Adam/Const_15*
T0*
_output_shapes
:d
d
training_1/Adam/Sqrt_7Sqrttraining_1/Adam/clip_by_value_7*
T0*
_output_shapes
:d
]
training_1/Adam/add_21/yConst*
valueB
 *żÖ3*
_output_shapes
: *
dtype0
t
training_1/Adam/add_21Addtraining_1/Adam/Sqrt_7training_1/Adam/add_21/y*
T0*
_output_shapes
:d
y
training_1/Adam/truediv_7RealDivtraining_1/Adam/mul_35training_1/Adam/add_21*
T0*
_output_shapes
:d
{
!training_1/Adam/ReadVariableOp_54ReadVariableOpbatch_normalization_1_1/gamma*
_output_shapes
:d*
dtype0

training_1/Adam/sub_22Sub!training_1/Adam/ReadVariableOp_54training_1/Adam/truediv_7*
T0*
_output_shapes
:d
x
#training_1/Adam/AssignVariableOp_18AssignVariableOptraining_1/Adam/Variable_6training_1/Adam/add_19*
dtype0

!training_1/Adam/ReadVariableOp_55ReadVariableOptraining_1/Adam/Variable_6$^training_1/Adam/AssignVariableOp_18*
_output_shapes
:d*
dtype0
y
#training_1/Adam/AssignVariableOp_19AssignVariableOptraining_1/Adam/Variable_16training_1/Adam/add_20*
dtype0

!training_1/Adam/ReadVariableOp_56ReadVariableOptraining_1/Adam/Variable_16$^training_1/Adam/AssignVariableOp_19*
_output_shapes
:d*
dtype0
{
#training_1/Adam/AssignVariableOp_20AssignVariableOpbatch_normalization_1_1/gammatraining_1/Adam/sub_22*
dtype0
Ą
!training_1/Adam/ReadVariableOp_57ReadVariableOpbatch_normalization_1_1/gamma$^training_1/Adam/AssignVariableOp_20*
_output_shapes
:d*
dtype0
g
!training_1/Adam/ReadVariableOp_58ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
|
%training_1/Adam/mul_36/ReadVariableOpReadVariableOptraining_1/Adam/Variable_7*
_output_shapes
:d*
dtype0

training_1/Adam/mul_36Mul!training_1/Adam/ReadVariableOp_58%training_1/Adam/mul_36/ReadVariableOp*
T0*
_output_shapes
:d
g
!training_1/Adam/ReadVariableOp_59ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
]
training_1/Adam/sub_23/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
{
training_1/Adam/sub_23Subtraining_1/Adam/sub_23/x!training_1/Adam/ReadVariableOp_59*
T0*
_output_shapes
: 
Ź
training_1/Adam/mul_37Multraining_1/Adam/sub_23Ptraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/add_1_grad/Reshape_1*
T0*
_output_shapes
:d
r
training_1/Adam/add_22Addtraining_1/Adam/mul_36training_1/Adam/mul_37*
T0*
_output_shapes
:d
g
!training_1/Adam/ReadVariableOp_60ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
}
%training_1/Adam/mul_38/ReadVariableOpReadVariableOptraining_1/Adam/Variable_17*
_output_shapes
:d*
dtype0

training_1/Adam/mul_38Mul!training_1/Adam/ReadVariableOp_60%training_1/Adam/mul_38/ReadVariableOp*
T0*
_output_shapes
:d
g
!training_1/Adam/ReadVariableOp_61ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
]
training_1/Adam/sub_24/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
{
training_1/Adam/sub_24Subtraining_1/Adam/sub_24/x!training_1/Adam/ReadVariableOp_61*
T0*
_output_shapes
: 

training_1/Adam/Square_7SquarePtraining_1/Adam/gradients/batch_normalization_1_1/batchnorm/add_1_grad/Reshape_1*
T0*
_output_shapes
:d
t
training_1/Adam/mul_39Multraining_1/Adam/sub_24training_1/Adam/Square_7*
T0*
_output_shapes
:d
r
training_1/Adam/add_23Addtraining_1/Adam/mul_38training_1/Adam/mul_39*
T0*
_output_shapes
:d
o
training_1/Adam/mul_40Multraining_1/Adam/multraining_1/Adam/add_22*
T0*
_output_shapes
:d
]
training_1/Adam/Const_17Const*
valueB
 *    *
_output_shapes
: *
dtype0
]
training_1/Adam/Const_18Const*
valueB
 *  *
_output_shapes
: *
dtype0

'training_1/Adam/clip_by_value_8/MinimumMinimumtraining_1/Adam/add_23training_1/Adam/Const_18*
T0*
_output_shapes
:d

training_1/Adam/clip_by_value_8Maximum'training_1/Adam/clip_by_value_8/Minimumtraining_1/Adam/Const_17*
T0*
_output_shapes
:d
d
training_1/Adam/Sqrt_8Sqrttraining_1/Adam/clip_by_value_8*
T0*
_output_shapes
:d
]
training_1/Adam/add_24/yConst*
valueB
 *żÖ3*
_output_shapes
: *
dtype0
t
training_1/Adam/add_24Addtraining_1/Adam/Sqrt_8training_1/Adam/add_24/y*
T0*
_output_shapes
:d
y
training_1/Adam/truediv_8RealDivtraining_1/Adam/mul_40training_1/Adam/add_24*
T0*
_output_shapes
:d
z
!training_1/Adam/ReadVariableOp_62ReadVariableOpbatch_normalization_1_1/beta*
_output_shapes
:d*
dtype0

training_1/Adam/sub_25Sub!training_1/Adam/ReadVariableOp_62training_1/Adam/truediv_8*
T0*
_output_shapes
:d
x
#training_1/Adam/AssignVariableOp_21AssignVariableOptraining_1/Adam/Variable_7training_1/Adam/add_22*
dtype0

!training_1/Adam/ReadVariableOp_63ReadVariableOptraining_1/Adam/Variable_7$^training_1/Adam/AssignVariableOp_21*
_output_shapes
:d*
dtype0
y
#training_1/Adam/AssignVariableOp_22AssignVariableOptraining_1/Adam/Variable_17training_1/Adam/add_23*
dtype0

!training_1/Adam/ReadVariableOp_64ReadVariableOptraining_1/Adam/Variable_17$^training_1/Adam/AssignVariableOp_22*
_output_shapes
:d*
dtype0
z
#training_1/Adam/AssignVariableOp_23AssignVariableOpbatch_normalization_1_1/betatraining_1/Adam/sub_25*
dtype0
 
!training_1/Adam/ReadVariableOp_65ReadVariableOpbatch_normalization_1_1/beta$^training_1/Adam/AssignVariableOp_23*
_output_shapes
:d*
dtype0
g
!training_1/Adam/ReadVariableOp_66ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0

%training_1/Adam/mul_41/ReadVariableOpReadVariableOptraining_1/Adam/Variable_8*
_output_shapes

:d*
dtype0

training_1/Adam/mul_41Mul!training_1/Adam/ReadVariableOp_66%training_1/Adam/mul_41/ReadVariableOp*
T0*
_output_shapes

:d
g
!training_1/Adam/ReadVariableOp_67ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
]
training_1/Adam/sub_26/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
{
training_1/Adam/sub_26Subtraining_1/Adam/sub_26/x!training_1/Adam/ReadVariableOp_67*
T0*
_output_shapes
: 

training_1/Adam/mul_42Multraining_1/Adam/sub_268training_1/Adam/gradients/softmax_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:d
v
training_1/Adam/add_25Addtraining_1/Adam/mul_41training_1/Adam/mul_42*
T0*
_output_shapes

:d
g
!training_1/Adam/ReadVariableOp_68ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0

%training_1/Adam/mul_43/ReadVariableOpReadVariableOptraining_1/Adam/Variable_18*
_output_shapes

:d*
dtype0

training_1/Adam/mul_43Mul!training_1/Adam/ReadVariableOp_68%training_1/Adam/mul_43/ReadVariableOp*
T0*
_output_shapes

:d
g
!training_1/Adam/ReadVariableOp_69ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
]
training_1/Adam/sub_27/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
{
training_1/Adam/sub_27Subtraining_1/Adam/sub_27/x!training_1/Adam/ReadVariableOp_69*
T0*
_output_shapes
: 

training_1/Adam/Square_8Square8training_1/Adam/gradients/softmax_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:d
x
training_1/Adam/mul_44Multraining_1/Adam/sub_27training_1/Adam/Square_8*
T0*
_output_shapes

:d
v
training_1/Adam/add_26Addtraining_1/Adam/mul_43training_1/Adam/mul_44*
T0*
_output_shapes

:d
s
training_1/Adam/mul_45Multraining_1/Adam/multraining_1/Adam/add_25*
T0*
_output_shapes

:d
]
training_1/Adam/Const_19Const*
valueB
 *    *
_output_shapes
: *
dtype0
]
training_1/Adam/Const_20Const*
valueB
 *  *
_output_shapes
: *
dtype0

'training_1/Adam/clip_by_value_9/MinimumMinimumtraining_1/Adam/add_26training_1/Adam/Const_20*
T0*
_output_shapes

:d

training_1/Adam/clip_by_value_9Maximum'training_1/Adam/clip_by_value_9/Minimumtraining_1/Adam/Const_19*
T0*
_output_shapes

:d
h
training_1/Adam/Sqrt_9Sqrttraining_1/Adam/clip_by_value_9*
T0*
_output_shapes

:d
]
training_1/Adam/add_27/yConst*
valueB
 *żÖ3*
_output_shapes
: *
dtype0
x
training_1/Adam/add_27Addtraining_1/Adam/Sqrt_9training_1/Adam/add_27/y*
T0*
_output_shapes

:d
}
training_1/Adam/truediv_9RealDivtraining_1/Adam/mul_45training_1/Adam/add_27*
T0*
_output_shapes

:d
r
!training_1/Adam/ReadVariableOp_70ReadVariableOpsoftmax_1/kernel*
_output_shapes

:d*
dtype0

training_1/Adam/sub_28Sub!training_1/Adam/ReadVariableOp_70training_1/Adam/truediv_9*
T0*
_output_shapes

:d
x
#training_1/Adam/AssignVariableOp_24AssignVariableOptraining_1/Adam/Variable_8training_1/Adam/add_25*
dtype0
˘
!training_1/Adam/ReadVariableOp_71ReadVariableOptraining_1/Adam/Variable_8$^training_1/Adam/AssignVariableOp_24*
_output_shapes

:d*
dtype0
y
#training_1/Adam/AssignVariableOp_25AssignVariableOptraining_1/Adam/Variable_18training_1/Adam/add_26*
dtype0
Ł
!training_1/Adam/ReadVariableOp_72ReadVariableOptraining_1/Adam/Variable_18$^training_1/Adam/AssignVariableOp_25*
_output_shapes

:d*
dtype0
n
#training_1/Adam/AssignVariableOp_26AssignVariableOpsoftmax_1/kerneltraining_1/Adam/sub_28*
dtype0

!training_1/Adam/ReadVariableOp_73ReadVariableOpsoftmax_1/kernel$^training_1/Adam/AssignVariableOp_26*
_output_shapes

:d*
dtype0
g
!training_1/Adam/ReadVariableOp_74ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
|
%training_1/Adam/mul_46/ReadVariableOpReadVariableOptraining_1/Adam/Variable_9*
_output_shapes
:*
dtype0

training_1/Adam/mul_46Mul!training_1/Adam/ReadVariableOp_74%training_1/Adam/mul_46/ReadVariableOp*
T0*
_output_shapes
:
g
!training_1/Adam/ReadVariableOp_75ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
]
training_1/Adam/sub_29/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
{
training_1/Adam/sub_29Subtraining_1/Adam/sub_29/x!training_1/Adam/ReadVariableOp_75*
T0*
_output_shapes
: 

training_1/Adam/mul_47Multraining_1/Adam/sub_29<training_1/Adam/gradients/softmax_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
r
training_1/Adam/add_28Addtraining_1/Adam/mul_46training_1/Adam/mul_47*
T0*
_output_shapes
:
g
!training_1/Adam/ReadVariableOp_76ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
}
%training_1/Adam/mul_48/ReadVariableOpReadVariableOptraining_1/Adam/Variable_19*
_output_shapes
:*
dtype0

training_1/Adam/mul_48Mul!training_1/Adam/ReadVariableOp_76%training_1/Adam/mul_48/ReadVariableOp*
T0*
_output_shapes
:
g
!training_1/Adam/ReadVariableOp_77ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
]
training_1/Adam/sub_30/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
{
training_1/Adam/sub_30Subtraining_1/Adam/sub_30/x!training_1/Adam/ReadVariableOp_77*
T0*
_output_shapes
: 

training_1/Adam/Square_9Square<training_1/Adam/gradients/softmax_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
t
training_1/Adam/mul_49Multraining_1/Adam/sub_30training_1/Adam/Square_9*
T0*
_output_shapes
:
r
training_1/Adam/add_29Addtraining_1/Adam/mul_48training_1/Adam/mul_49*
T0*
_output_shapes
:
o
training_1/Adam/mul_50Multraining_1/Adam/multraining_1/Adam/add_28*
T0*
_output_shapes
:
]
training_1/Adam/Const_21Const*
valueB
 *    *
_output_shapes
: *
dtype0
]
training_1/Adam/Const_22Const*
valueB
 *  *
_output_shapes
: *
dtype0

(training_1/Adam/clip_by_value_10/MinimumMinimumtraining_1/Adam/add_29training_1/Adam/Const_22*
T0*
_output_shapes
:

 training_1/Adam/clip_by_value_10Maximum(training_1/Adam/clip_by_value_10/Minimumtraining_1/Adam/Const_21*
T0*
_output_shapes
:
f
training_1/Adam/Sqrt_10Sqrt training_1/Adam/clip_by_value_10*
T0*
_output_shapes
:
]
training_1/Adam/add_30/yConst*
valueB
 *żÖ3*
_output_shapes
: *
dtype0
u
training_1/Adam/add_30Addtraining_1/Adam/Sqrt_10training_1/Adam/add_30/y*
T0*
_output_shapes
:
z
training_1/Adam/truediv_10RealDivtraining_1/Adam/mul_50training_1/Adam/add_30*
T0*
_output_shapes
:
l
!training_1/Adam/ReadVariableOp_78ReadVariableOpsoftmax_1/bias*
_output_shapes
:*
dtype0

training_1/Adam/sub_31Sub!training_1/Adam/ReadVariableOp_78training_1/Adam/truediv_10*
T0*
_output_shapes
:
x
#training_1/Adam/AssignVariableOp_27AssignVariableOptraining_1/Adam/Variable_9training_1/Adam/add_28*
dtype0

!training_1/Adam/ReadVariableOp_79ReadVariableOptraining_1/Adam/Variable_9$^training_1/Adam/AssignVariableOp_27*
_output_shapes
:*
dtype0
y
#training_1/Adam/AssignVariableOp_28AssignVariableOptraining_1/Adam/Variable_19training_1/Adam/add_29*
dtype0

!training_1/Adam/ReadVariableOp_80ReadVariableOptraining_1/Adam/Variable_19$^training_1/Adam/AssignVariableOp_28*
_output_shapes
:*
dtype0
l
#training_1/Adam/AssignVariableOp_29AssignVariableOpsoftmax_1/biastraining_1/Adam/sub_31*
dtype0

!training_1/Adam/ReadVariableOp_81ReadVariableOpsoftmax_1/bias$^training_1/Adam/AssignVariableOp_29*
_output_shapes
:*
dtype0
	
training_1/group_depsNoOp^loss_1/mul^metrics_1/acc/Mean^training_1/Adam/ReadVariableOp"^training_1/Adam/ReadVariableOp_15"^training_1/Adam/ReadVariableOp_16"^training_1/Adam/ReadVariableOp_17"^training_1/Adam/ReadVariableOp_23"^training_1/Adam/ReadVariableOp_24"^training_1/Adam/ReadVariableOp_25"^training_1/Adam/ReadVariableOp_31"^training_1/Adam/ReadVariableOp_32"^training_1/Adam/ReadVariableOp_33"^training_1/Adam/ReadVariableOp_39"^training_1/Adam/ReadVariableOp_40"^training_1/Adam/ReadVariableOp_41"^training_1/Adam/ReadVariableOp_47"^training_1/Adam/ReadVariableOp_48"^training_1/Adam/ReadVariableOp_49"^training_1/Adam/ReadVariableOp_55"^training_1/Adam/ReadVariableOp_56"^training_1/Adam/ReadVariableOp_57"^training_1/Adam/ReadVariableOp_63"^training_1/Adam/ReadVariableOp_64"^training_1/Adam/ReadVariableOp_65!^training_1/Adam/ReadVariableOp_7"^training_1/Adam/ReadVariableOp_71"^training_1/Adam/ReadVariableOp_72"^training_1/Adam/ReadVariableOp_73"^training_1/Adam/ReadVariableOp_79!^training_1/Adam/ReadVariableOp_8"^training_1/Adam/ReadVariableOp_80"^training_1/Adam/ReadVariableOp_81!^training_1/Adam/ReadVariableOp_9
V
VarIsInitializedOp_63VarIsInitializedOpAdam_1/iterations*
_output_shapes
: 
N
VarIsInitializedOp_64VarIsInitializedOp	Adam_1/lr*
_output_shapes
: 
R
VarIsInitializedOp_65VarIsInitializedOpAdam_1/beta_1*
_output_shapes
: 
R
VarIsInitializedOp_66VarIsInitializedOpAdam_1/beta_2*
_output_shapes
: 
Q
VarIsInitializedOp_67VarIsInitializedOpAdam_1/decay*
_output_shapes
: 
]
VarIsInitializedOp_68VarIsInitializedOptraining_1/Adam/Variable*
_output_shapes
: 
_
VarIsInitializedOp_69VarIsInitializedOptraining_1/Adam/Variable_1*
_output_shapes
: 
_
VarIsInitializedOp_70VarIsInitializedOptraining_1/Adam/Variable_2*
_output_shapes
: 
_
VarIsInitializedOp_71VarIsInitializedOptraining_1/Adam/Variable_3*
_output_shapes
: 
_
VarIsInitializedOp_72VarIsInitializedOptraining_1/Adam/Variable_4*
_output_shapes
: 
_
VarIsInitializedOp_73VarIsInitializedOptraining_1/Adam/Variable_5*
_output_shapes
: 
_
VarIsInitializedOp_74VarIsInitializedOptraining_1/Adam/Variable_6*
_output_shapes
: 
_
VarIsInitializedOp_75VarIsInitializedOptraining_1/Adam/Variable_7*
_output_shapes
: 
_
VarIsInitializedOp_76VarIsInitializedOptraining_1/Adam/Variable_8*
_output_shapes
: 
_
VarIsInitializedOp_77VarIsInitializedOptraining_1/Adam/Variable_9*
_output_shapes
: 
`
VarIsInitializedOp_78VarIsInitializedOptraining_1/Adam/Variable_10*
_output_shapes
: 
`
VarIsInitializedOp_79VarIsInitializedOptraining_1/Adam/Variable_11*
_output_shapes
: 
`
VarIsInitializedOp_80VarIsInitializedOptraining_1/Adam/Variable_12*
_output_shapes
: 
`
VarIsInitializedOp_81VarIsInitializedOptraining_1/Adam/Variable_13*
_output_shapes
: 
`
VarIsInitializedOp_82VarIsInitializedOptraining_1/Adam/Variable_14*
_output_shapes
: 
`
VarIsInitializedOp_83VarIsInitializedOptraining_1/Adam/Variable_15*
_output_shapes
: 
`
VarIsInitializedOp_84VarIsInitializedOptraining_1/Adam/Variable_16*
_output_shapes
: 
`
VarIsInitializedOp_85VarIsInitializedOptraining_1/Adam/Variable_17*
_output_shapes
: 
`
VarIsInitializedOp_86VarIsInitializedOptraining_1/Adam/Variable_18*
_output_shapes
: 
`
VarIsInitializedOp_87VarIsInitializedOptraining_1/Adam/Variable_19*
_output_shapes
: 
`
VarIsInitializedOp_88VarIsInitializedOptraining_1/Adam/Variable_20*
_output_shapes
: 
`
VarIsInitializedOp_89VarIsInitializedOptraining_1/Adam/Variable_21*
_output_shapes
: 
`
VarIsInitializedOp_90VarIsInitializedOptraining_1/Adam/Variable_22*
_output_shapes
: 
`
VarIsInitializedOp_91VarIsInitializedOptraining_1/Adam/Variable_23*
_output_shapes
: 
`
VarIsInitializedOp_92VarIsInitializedOptraining_1/Adam/Variable_24*
_output_shapes
: 
`
VarIsInitializedOp_93VarIsInitializedOptraining_1/Adam/Variable_25*
_output_shapes
: 
`
VarIsInitializedOp_94VarIsInitializedOptraining_1/Adam/Variable_26*
_output_shapes
: 
`
VarIsInitializedOp_95VarIsInitializedOptraining_1/Adam/Variable_27*
_output_shapes
: 
`
VarIsInitializedOp_96VarIsInitializedOptraining_1/Adam/Variable_28*
_output_shapes
: 
`
VarIsInitializedOp_97VarIsInitializedOptraining_1/Adam/Variable_29*
_output_shapes
: 
Ę	
init_3NoOp^Adam_1/beta_1/Assign^Adam_1/beta_2/Assign^Adam_1/decay/Assign^Adam_1/iterations/Assign^Adam_1/lr/Assign ^training_1/Adam/Variable/Assign"^training_1/Adam/Variable_1/Assign#^training_1/Adam/Variable_10/Assign#^training_1/Adam/Variable_11/Assign#^training_1/Adam/Variable_12/Assign#^training_1/Adam/Variable_13/Assign#^training_1/Adam/Variable_14/Assign#^training_1/Adam/Variable_15/Assign#^training_1/Adam/Variable_16/Assign#^training_1/Adam/Variable_17/Assign#^training_1/Adam/Variable_18/Assign#^training_1/Adam/Variable_19/Assign"^training_1/Adam/Variable_2/Assign#^training_1/Adam/Variable_20/Assign#^training_1/Adam/Variable_21/Assign#^training_1/Adam/Variable_22/Assign#^training_1/Adam/Variable_23/Assign#^training_1/Adam/Variable_24/Assign#^training_1/Adam/Variable_25/Assign#^training_1/Adam/Variable_26/Assign#^training_1/Adam/Variable_27/Assign#^training_1/Adam/Variable_28/Assign#^training_1/Adam/Variable_29/Assign"^training_1/Adam/Variable_3/Assign"^training_1/Adam/Variable_4/Assign"^training_1/Adam/Variable_5/Assign"^training_1/Adam/Variable_6/Assign"^training_1/Adam/Variable_7/Assign"^training_1/Adam/Variable_8/Assign"^training_1/Adam/Variable_9/Assign
O
Placeholder_59Placeholder*
_output_shapes
: *
dtype0	*
shape: 
W
AssignVariableOp_59AssignVariableOpAdam_1/iterationsPlaceholder_59*
dtype0	
q
ReadVariableOp_59ReadVariableOpAdam_1/iterations^AssignVariableOp_59*
_output_shapes
: *
dtype0	
_
Placeholder_60Placeholder*
_output_shapes

:d*
dtype0*
shape
:d
^
AssignVariableOp_60AssignVariableOptraining_1/Adam/VariablePlaceholder_60*
dtype0

ReadVariableOp_60ReadVariableOptraining_1/Adam/Variable^AssignVariableOp_60*
_output_shapes

:d*
dtype0
W
Placeholder_61Placeholder*
_output_shapes
:d*
dtype0*
shape:d
`
AssignVariableOp_61AssignVariableOptraining_1/Adam/Variable_1Placeholder_61*
dtype0
~
ReadVariableOp_61ReadVariableOptraining_1/Adam/Variable_1^AssignVariableOp_61*
_output_shapes
:d*
dtype0
W
Placeholder_62Placeholder*
_output_shapes
:d*
dtype0*
shape:d
`
AssignVariableOp_62AssignVariableOptraining_1/Adam/Variable_2Placeholder_62*
dtype0
~
ReadVariableOp_62ReadVariableOptraining_1/Adam/Variable_2^AssignVariableOp_62*
_output_shapes
:d*
dtype0
W
Placeholder_63Placeholder*
_output_shapes
:d*
dtype0*
shape:d
`
AssignVariableOp_63AssignVariableOptraining_1/Adam/Variable_3Placeholder_63*
dtype0
~
ReadVariableOp_63ReadVariableOptraining_1/Adam/Variable_3^AssignVariableOp_63*
_output_shapes
:d*
dtype0
_
Placeholder_64Placeholder*
_output_shapes

:dd*
dtype0*
shape
:dd
`
AssignVariableOp_64AssignVariableOptraining_1/Adam/Variable_4Placeholder_64*
dtype0

ReadVariableOp_64ReadVariableOptraining_1/Adam/Variable_4^AssignVariableOp_64*
_output_shapes

:dd*
dtype0
W
Placeholder_65Placeholder*
_output_shapes
:d*
dtype0*
shape:d
`
AssignVariableOp_65AssignVariableOptraining_1/Adam/Variable_5Placeholder_65*
dtype0
~
ReadVariableOp_65ReadVariableOptraining_1/Adam/Variable_5^AssignVariableOp_65*
_output_shapes
:d*
dtype0
W
Placeholder_66Placeholder*
_output_shapes
:d*
dtype0*
shape:d
`
AssignVariableOp_66AssignVariableOptraining_1/Adam/Variable_6Placeholder_66*
dtype0
~
ReadVariableOp_66ReadVariableOptraining_1/Adam/Variable_6^AssignVariableOp_66*
_output_shapes
:d*
dtype0
W
Placeholder_67Placeholder*
_output_shapes
:d*
dtype0*
shape:d
`
AssignVariableOp_67AssignVariableOptraining_1/Adam/Variable_7Placeholder_67*
dtype0
~
ReadVariableOp_67ReadVariableOptraining_1/Adam/Variable_7^AssignVariableOp_67*
_output_shapes
:d*
dtype0
_
Placeholder_68Placeholder*
_output_shapes

:d*
dtype0*
shape
:d
`
AssignVariableOp_68AssignVariableOptraining_1/Adam/Variable_8Placeholder_68*
dtype0

ReadVariableOp_68ReadVariableOptraining_1/Adam/Variable_8^AssignVariableOp_68*
_output_shapes

:d*
dtype0
W
Placeholder_69Placeholder*
_output_shapes
:*
dtype0*
shape:
`
AssignVariableOp_69AssignVariableOptraining_1/Adam/Variable_9Placeholder_69*
dtype0
~
ReadVariableOp_69ReadVariableOptraining_1/Adam/Variable_9^AssignVariableOp_69*
_output_shapes
:*
dtype0
_
Placeholder_70Placeholder*
_output_shapes

:d*
dtype0*
shape
:d
a
AssignVariableOp_70AssignVariableOptraining_1/Adam/Variable_10Placeholder_70*
dtype0

ReadVariableOp_70ReadVariableOptraining_1/Adam/Variable_10^AssignVariableOp_70*
_output_shapes

:d*
dtype0
W
Placeholder_71Placeholder*
_output_shapes
:d*
dtype0*
shape:d
a
AssignVariableOp_71AssignVariableOptraining_1/Adam/Variable_11Placeholder_71*
dtype0

ReadVariableOp_71ReadVariableOptraining_1/Adam/Variable_11^AssignVariableOp_71*
_output_shapes
:d*
dtype0
W
Placeholder_72Placeholder*
_output_shapes
:d*
dtype0*
shape:d
a
AssignVariableOp_72AssignVariableOptraining_1/Adam/Variable_12Placeholder_72*
dtype0

ReadVariableOp_72ReadVariableOptraining_1/Adam/Variable_12^AssignVariableOp_72*
_output_shapes
:d*
dtype0
W
Placeholder_73Placeholder*
_output_shapes
:d*
dtype0*
shape:d
a
AssignVariableOp_73AssignVariableOptraining_1/Adam/Variable_13Placeholder_73*
dtype0

ReadVariableOp_73ReadVariableOptraining_1/Adam/Variable_13^AssignVariableOp_73*
_output_shapes
:d*
dtype0
_
Placeholder_74Placeholder*
_output_shapes

:dd*
dtype0*
shape
:dd
a
AssignVariableOp_74AssignVariableOptraining_1/Adam/Variable_14Placeholder_74*
dtype0

ReadVariableOp_74ReadVariableOptraining_1/Adam/Variable_14^AssignVariableOp_74*
_output_shapes

:dd*
dtype0
W
Placeholder_75Placeholder*
_output_shapes
:d*
dtype0*
shape:d
a
AssignVariableOp_75AssignVariableOptraining_1/Adam/Variable_15Placeholder_75*
dtype0

ReadVariableOp_75ReadVariableOptraining_1/Adam/Variable_15^AssignVariableOp_75*
_output_shapes
:d*
dtype0
W
Placeholder_76Placeholder*
_output_shapes
:d*
dtype0*
shape:d
a
AssignVariableOp_76AssignVariableOptraining_1/Adam/Variable_16Placeholder_76*
dtype0

ReadVariableOp_76ReadVariableOptraining_1/Adam/Variable_16^AssignVariableOp_76*
_output_shapes
:d*
dtype0
W
Placeholder_77Placeholder*
_output_shapes
:d*
dtype0*
shape:d
a
AssignVariableOp_77AssignVariableOptraining_1/Adam/Variable_17Placeholder_77*
dtype0

ReadVariableOp_77ReadVariableOptraining_1/Adam/Variable_17^AssignVariableOp_77*
_output_shapes
:d*
dtype0
_
Placeholder_78Placeholder*
_output_shapes

:d*
dtype0*
shape
:d
a
AssignVariableOp_78AssignVariableOptraining_1/Adam/Variable_18Placeholder_78*
dtype0

ReadVariableOp_78ReadVariableOptraining_1/Adam/Variable_18^AssignVariableOp_78*
_output_shapes

:d*
dtype0
W
Placeholder_79Placeholder*
_output_shapes
:*
dtype0*
shape:
a
AssignVariableOp_79AssignVariableOptraining_1/Adam/Variable_19Placeholder_79*
dtype0

ReadVariableOp_79ReadVariableOptraining_1/Adam/Variable_19^AssignVariableOp_79*
_output_shapes
:*
dtype0
W
Placeholder_80Placeholder*
_output_shapes
:*
dtype0*
shape:
a
AssignVariableOp_80AssignVariableOptraining_1/Adam/Variable_20Placeholder_80*
dtype0

ReadVariableOp_80ReadVariableOptraining_1/Adam/Variable_20^AssignVariableOp_80*
_output_shapes
:*
dtype0
W
Placeholder_81Placeholder*
_output_shapes
:*
dtype0*
shape:
a
AssignVariableOp_81AssignVariableOptraining_1/Adam/Variable_21Placeholder_81*
dtype0

ReadVariableOp_81ReadVariableOptraining_1/Adam/Variable_21^AssignVariableOp_81*
_output_shapes
:*
dtype0
W
Placeholder_82Placeholder*
_output_shapes
:*
dtype0*
shape:
a
AssignVariableOp_82AssignVariableOptraining_1/Adam/Variable_22Placeholder_82*
dtype0

ReadVariableOp_82ReadVariableOptraining_1/Adam/Variable_22^AssignVariableOp_82*
_output_shapes
:*
dtype0
W
Placeholder_83Placeholder*
_output_shapes
:*
dtype0*
shape:
a
AssignVariableOp_83AssignVariableOptraining_1/Adam/Variable_23Placeholder_83*
dtype0

ReadVariableOp_83ReadVariableOptraining_1/Adam/Variable_23^AssignVariableOp_83*
_output_shapes
:*
dtype0
W
Placeholder_84Placeholder*
_output_shapes
:*
dtype0*
shape:
a
AssignVariableOp_84AssignVariableOptraining_1/Adam/Variable_24Placeholder_84*
dtype0

ReadVariableOp_84ReadVariableOptraining_1/Adam/Variable_24^AssignVariableOp_84*
_output_shapes
:*
dtype0
W
Placeholder_85Placeholder*
_output_shapes
:*
dtype0*
shape:
a
AssignVariableOp_85AssignVariableOptraining_1/Adam/Variable_25Placeholder_85*
dtype0

ReadVariableOp_85ReadVariableOptraining_1/Adam/Variable_25^AssignVariableOp_85*
_output_shapes
:*
dtype0
W
Placeholder_86Placeholder*
_output_shapes
:*
dtype0*
shape:
a
AssignVariableOp_86AssignVariableOptraining_1/Adam/Variable_26Placeholder_86*
dtype0

ReadVariableOp_86ReadVariableOptraining_1/Adam/Variable_26^AssignVariableOp_86*
_output_shapes
:*
dtype0
W
Placeholder_87Placeholder*
_output_shapes
:*
dtype0*
shape:
a
AssignVariableOp_87AssignVariableOptraining_1/Adam/Variable_27Placeholder_87*
dtype0

ReadVariableOp_87ReadVariableOptraining_1/Adam/Variable_27^AssignVariableOp_87*
_output_shapes
:*
dtype0
W
Placeholder_88Placeholder*
_output_shapes
:*
dtype0*
shape:
a
AssignVariableOp_88AssignVariableOptraining_1/Adam/Variable_28Placeholder_88*
dtype0

ReadVariableOp_88ReadVariableOptraining_1/Adam/Variable_28^AssignVariableOp_88*
_output_shapes
:*
dtype0
W
Placeholder_89Placeholder*
_output_shapes
:*
dtype0*
shape:
a
AssignVariableOp_89AssignVariableOptraining_1/Adam/Variable_29Placeholder_89*
dtype0

ReadVariableOp_89ReadVariableOptraining_1/Adam/Variable_29^AssignVariableOp_89*
_output_shapes
:*
dtype0
R
save_1/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_5b97d3b7def1490a8b9d705e627554ea/part*
_output_shapes
: *
dtype0
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
_output_shapes
: *
dtype0

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
Á
save_1/SaveV2/tensor_namesConst"/device:CPU:0*ă
valueŮBÖbBAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBAdam_1/beta_1BAdam_1/beta_2BAdam_1/decayBAdam_1/iterationsB	Adam_1/lrBbatch_normalization/betaBbatch_normalization/gammaBbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/gammaB!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBbatch_normalization_1_1/betaBbatch_normalization_1_1/gammaB#batch_normalization_1_1/moving_meanB'batch_normalization_1_1/moving_varianceBbatch_normalization_2/betaBbatch_normalization_2/gammaB!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBhidden1/biasBhidden1/kernelBhidden1_1/biasBhidden1_1/kernelBhidden2/biasBhidden2/kernelBhidden2_1/biasBhidden2_1/kernelBsoftmax/biasBsoftmax/kernelBsoftmax_1/biasBsoftmax_1/kernelBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_11Btraining/Adam/Variable_12Btraining/Adam/Variable_13Btraining/Adam/Variable_14Btraining/Adam/Variable_15Btraining/Adam/Variable_16Btraining/Adam/Variable_17Btraining/Adam/Variable_18Btraining/Adam/Variable_19Btraining/Adam/Variable_2Btraining/Adam/Variable_20Btraining/Adam/Variable_21Btraining/Adam/Variable_22Btraining/Adam/Variable_23Btraining/Adam/Variable_24Btraining/Adam/Variable_25Btraining/Adam/Variable_26Btraining/Adam/Variable_27Btraining/Adam/Variable_28Btraining/Adam/Variable_29Btraining/Adam/Variable_3Btraining/Adam/Variable_4Btraining/Adam/Variable_5Btraining/Adam/Variable_6Btraining/Adam/Variable_7Btraining/Adam/Variable_8Btraining/Adam/Variable_9Btraining_1/Adam/VariableBtraining_1/Adam/Variable_1Btraining_1/Adam/Variable_10Btraining_1/Adam/Variable_11Btraining_1/Adam/Variable_12Btraining_1/Adam/Variable_13Btraining_1/Adam/Variable_14Btraining_1/Adam/Variable_15Btraining_1/Adam/Variable_16Btraining_1/Adam/Variable_17Btraining_1/Adam/Variable_18Btraining_1/Adam/Variable_19Btraining_1/Adam/Variable_2Btraining_1/Adam/Variable_20Btraining_1/Adam/Variable_21Btraining_1/Adam/Variable_22Btraining_1/Adam/Variable_23Btraining_1/Adam/Variable_24Btraining_1/Adam/Variable_25Btraining_1/Adam/Variable_26Btraining_1/Adam/Variable_27Btraining_1/Adam/Variable_28Btraining_1/Adam/Variable_29Btraining_1/Adam/Variable_3Btraining_1/Adam/Variable_4Btraining_1/Adam/Variable_5Btraining_1/Adam/Variable_6Btraining_1/Adam/Variable_7Btraining_1/Adam/Variable_8Btraining_1/Adam/Variable_9*
_output_shapes
:b*
dtype0
ť
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*Ů
valueĎBĚbB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:b*
dtype0
â$
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp#Adam/iterations/Read/ReadVariableOpAdam/lr/Read/ReadVariableOp!Adam_1/beta_1/Read/ReadVariableOp!Adam_1/beta_2/Read/ReadVariableOp Adam_1/decay/Read/ReadVariableOp%Adam_1/iterations/Read/ReadVariableOpAdam_1/lr/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp-batch_normalization/gamma/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp/batch_normalization_1/gamma/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOp0batch_normalization_1_1/beta/Read/ReadVariableOp1batch_normalization_1_1/gamma/Read/ReadVariableOp7batch_normalization_1_1/moving_mean/Read/ReadVariableOp;batch_normalization_1_1/moving_variance/Read/ReadVariableOp.batch_normalization_2/beta/Read/ReadVariableOp/batch_normalization_2/gamma/Read/ReadVariableOp5batch_normalization_2/moving_mean/Read/ReadVariableOp9batch_normalization_2/moving_variance/Read/ReadVariableOp hidden1/bias/Read/ReadVariableOp"hidden1/kernel/Read/ReadVariableOp"hidden1_1/bias/Read/ReadVariableOp$hidden1_1/kernel/Read/ReadVariableOp hidden2/bias/Read/ReadVariableOp"hidden2/kernel/Read/ReadVariableOp"hidden2_1/bias/Read/ReadVariableOp$hidden2_1/kernel/Read/ReadVariableOp softmax/bias/Read/ReadVariableOp"softmax/kernel/Read/ReadVariableOp"softmax_1/bias/Read/ReadVariableOp$softmax_1/kernel/Read/ReadVariableOp*training/Adam/Variable/Read/ReadVariableOp,training/Adam/Variable_1/Read/ReadVariableOp-training/Adam/Variable_10/Read/ReadVariableOp-training/Adam/Variable_11/Read/ReadVariableOp-training/Adam/Variable_12/Read/ReadVariableOp-training/Adam/Variable_13/Read/ReadVariableOp-training/Adam/Variable_14/Read/ReadVariableOp-training/Adam/Variable_15/Read/ReadVariableOp-training/Adam/Variable_16/Read/ReadVariableOp-training/Adam/Variable_17/Read/ReadVariableOp-training/Adam/Variable_18/Read/ReadVariableOp-training/Adam/Variable_19/Read/ReadVariableOp,training/Adam/Variable_2/Read/ReadVariableOp-training/Adam/Variable_20/Read/ReadVariableOp-training/Adam/Variable_21/Read/ReadVariableOp-training/Adam/Variable_22/Read/ReadVariableOp-training/Adam/Variable_23/Read/ReadVariableOp-training/Adam/Variable_24/Read/ReadVariableOp-training/Adam/Variable_25/Read/ReadVariableOp-training/Adam/Variable_26/Read/ReadVariableOp-training/Adam/Variable_27/Read/ReadVariableOp-training/Adam/Variable_28/Read/ReadVariableOp-training/Adam/Variable_29/Read/ReadVariableOp,training/Adam/Variable_3/Read/ReadVariableOp,training/Adam/Variable_4/Read/ReadVariableOp,training/Adam/Variable_5/Read/ReadVariableOp,training/Adam/Variable_6/Read/ReadVariableOp,training/Adam/Variable_7/Read/ReadVariableOp,training/Adam/Variable_8/Read/ReadVariableOp,training/Adam/Variable_9/Read/ReadVariableOp,training_1/Adam/Variable/Read/ReadVariableOp.training_1/Adam/Variable_1/Read/ReadVariableOp/training_1/Adam/Variable_10/Read/ReadVariableOp/training_1/Adam/Variable_11/Read/ReadVariableOp/training_1/Adam/Variable_12/Read/ReadVariableOp/training_1/Adam/Variable_13/Read/ReadVariableOp/training_1/Adam/Variable_14/Read/ReadVariableOp/training_1/Adam/Variable_15/Read/ReadVariableOp/training_1/Adam/Variable_16/Read/ReadVariableOp/training_1/Adam/Variable_17/Read/ReadVariableOp/training_1/Adam/Variable_18/Read/ReadVariableOp/training_1/Adam/Variable_19/Read/ReadVariableOp.training_1/Adam/Variable_2/Read/ReadVariableOp/training_1/Adam/Variable_20/Read/ReadVariableOp/training_1/Adam/Variable_21/Read/ReadVariableOp/training_1/Adam/Variable_22/Read/ReadVariableOp/training_1/Adam/Variable_23/Read/ReadVariableOp/training_1/Adam/Variable_24/Read/ReadVariableOp/training_1/Adam/Variable_25/Read/ReadVariableOp/training_1/Adam/Variable_26/Read/ReadVariableOp/training_1/Adam/Variable_27/Read/ReadVariableOp/training_1/Adam/Variable_28/Read/ReadVariableOp/training_1/Adam/Variable_29/Read/ReadVariableOp.training_1/Adam/Variable_3/Read/ReadVariableOp.training_1/Adam/Variable_4/Read/ReadVariableOp.training_1/Adam/Variable_5/Read/ReadVariableOp.training_1/Adam/Variable_6/Read/ReadVariableOp.training_1/Adam/Variable_7/Read/ReadVariableOp.training_1/Adam/Variable_8/Read/ReadVariableOp.training_1/Adam/Variable_9/Read/ReadVariableOp"/device:CPU:0*p
dtypesf
d2b		
¨
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*
_output_shapes
: *)
_class
loc:@save_1/ShardedFilename
˛
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*

axis *
T0*
N*
_output_shapes
:

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
Ä
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*ă
valueŮBÖbBAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBAdam_1/beta_1BAdam_1/beta_2BAdam_1/decayBAdam_1/iterationsB	Adam_1/lrBbatch_normalization/betaBbatch_normalization/gammaBbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/gammaB!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBbatch_normalization_1_1/betaBbatch_normalization_1_1/gammaB#batch_normalization_1_1/moving_meanB'batch_normalization_1_1/moving_varianceBbatch_normalization_2/betaBbatch_normalization_2/gammaB!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBhidden1/biasBhidden1/kernelBhidden1_1/biasBhidden1_1/kernelBhidden2/biasBhidden2/kernelBhidden2_1/biasBhidden2_1/kernelBsoftmax/biasBsoftmax/kernelBsoftmax_1/biasBsoftmax_1/kernelBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_11Btraining/Adam/Variable_12Btraining/Adam/Variable_13Btraining/Adam/Variable_14Btraining/Adam/Variable_15Btraining/Adam/Variable_16Btraining/Adam/Variable_17Btraining/Adam/Variable_18Btraining/Adam/Variable_19Btraining/Adam/Variable_2Btraining/Adam/Variable_20Btraining/Adam/Variable_21Btraining/Adam/Variable_22Btraining/Adam/Variable_23Btraining/Adam/Variable_24Btraining/Adam/Variable_25Btraining/Adam/Variable_26Btraining/Adam/Variable_27Btraining/Adam/Variable_28Btraining/Adam/Variable_29Btraining/Adam/Variable_3Btraining/Adam/Variable_4Btraining/Adam/Variable_5Btraining/Adam/Variable_6Btraining/Adam/Variable_7Btraining/Adam/Variable_8Btraining/Adam/Variable_9Btraining_1/Adam/VariableBtraining_1/Adam/Variable_1Btraining_1/Adam/Variable_10Btraining_1/Adam/Variable_11Btraining_1/Adam/Variable_12Btraining_1/Adam/Variable_13Btraining_1/Adam/Variable_14Btraining_1/Adam/Variable_15Btraining_1/Adam/Variable_16Btraining_1/Adam/Variable_17Btraining_1/Adam/Variable_18Btraining_1/Adam/Variable_19Btraining_1/Adam/Variable_2Btraining_1/Adam/Variable_20Btraining_1/Adam/Variable_21Btraining_1/Adam/Variable_22Btraining_1/Adam/Variable_23Btraining_1/Adam/Variable_24Btraining_1/Adam/Variable_25Btraining_1/Adam/Variable_26Btraining_1/Adam/Variable_27Btraining_1/Adam/Variable_28Btraining_1/Adam/Variable_29Btraining_1/Adam/Variable_3Btraining_1/Adam/Variable_4Btraining_1/Adam/Variable_5Btraining_1/Adam/Variable_6Btraining_1/Adam/Variable_7Btraining_1/Adam/Variable_8Btraining_1/Adam/Variable_9*
_output_shapes
:b*
dtype0
ž
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*Ů
valueĎBĚbB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:b*
dtype0

save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*p
dtypesf
d2b		*
_output_shapes
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
R
save_1/Identity_1Identitysave_1/RestoreV2*
T0*
_output_shapes
:
X
save_1/AssignVariableOpAssignVariableOpAdam/beta_1save_1/Identity_1*
dtype0
T
save_1/Identity_2Identitysave_1/RestoreV2:1*
T0*
_output_shapes
:
Z
save_1/AssignVariableOp_1AssignVariableOpAdam/beta_2save_1/Identity_2*
dtype0
T
save_1/Identity_3Identitysave_1/RestoreV2:2*
T0*
_output_shapes
:
Y
save_1/AssignVariableOp_2AssignVariableOp
Adam/decaysave_1/Identity_3*
dtype0
T
save_1/Identity_4Identitysave_1/RestoreV2:3*
T0	*
_output_shapes
:
^
save_1/AssignVariableOp_3AssignVariableOpAdam/iterationssave_1/Identity_4*
dtype0	
T
save_1/Identity_5Identitysave_1/RestoreV2:4*
T0*
_output_shapes
:
V
save_1/AssignVariableOp_4AssignVariableOpAdam/lrsave_1/Identity_5*
dtype0
T
save_1/Identity_6Identitysave_1/RestoreV2:5*
T0*
_output_shapes
:
\
save_1/AssignVariableOp_5AssignVariableOpAdam_1/beta_1save_1/Identity_6*
dtype0
T
save_1/Identity_7Identitysave_1/RestoreV2:6*
T0*
_output_shapes
:
\
save_1/AssignVariableOp_6AssignVariableOpAdam_1/beta_2save_1/Identity_7*
dtype0
T
save_1/Identity_8Identitysave_1/RestoreV2:7*
T0*
_output_shapes
:
[
save_1/AssignVariableOp_7AssignVariableOpAdam_1/decaysave_1/Identity_8*
dtype0
T
save_1/Identity_9Identitysave_1/RestoreV2:8*
T0	*
_output_shapes
:
`
save_1/AssignVariableOp_8AssignVariableOpAdam_1/iterationssave_1/Identity_9*
dtype0	
U
save_1/Identity_10Identitysave_1/RestoreV2:9*
T0*
_output_shapes
:
Y
save_1/AssignVariableOp_9AssignVariableOp	Adam_1/lrsave_1/Identity_10*
dtype0
V
save_1/Identity_11Identitysave_1/RestoreV2:10*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_10AssignVariableOpbatch_normalization/betasave_1/Identity_11*
dtype0
V
save_1/Identity_12Identitysave_1/RestoreV2:11*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_11AssignVariableOpbatch_normalization/gammasave_1/Identity_12*
dtype0
V
save_1/Identity_13Identitysave_1/RestoreV2:12*
T0*
_output_shapes
:
p
save_1/AssignVariableOp_12AssignVariableOpbatch_normalization/moving_meansave_1/Identity_13*
dtype0
V
save_1/Identity_14Identitysave_1/RestoreV2:13*
T0*
_output_shapes
:
t
save_1/AssignVariableOp_13AssignVariableOp#batch_normalization/moving_variancesave_1/Identity_14*
dtype0
V
save_1/Identity_15Identitysave_1/RestoreV2:14*
T0*
_output_shapes
:
k
save_1/AssignVariableOp_14AssignVariableOpbatch_normalization_1/betasave_1/Identity_15*
dtype0
V
save_1/Identity_16Identitysave_1/RestoreV2:15*
T0*
_output_shapes
:
l
save_1/AssignVariableOp_15AssignVariableOpbatch_normalization_1/gammasave_1/Identity_16*
dtype0
V
save_1/Identity_17Identitysave_1/RestoreV2:16*
T0*
_output_shapes
:
r
save_1/AssignVariableOp_16AssignVariableOp!batch_normalization_1/moving_meansave_1/Identity_17*
dtype0
V
save_1/Identity_18Identitysave_1/RestoreV2:17*
T0*
_output_shapes
:
v
save_1/AssignVariableOp_17AssignVariableOp%batch_normalization_1/moving_variancesave_1/Identity_18*
dtype0
V
save_1/Identity_19Identitysave_1/RestoreV2:18*
T0*
_output_shapes
:
m
save_1/AssignVariableOp_18AssignVariableOpbatch_normalization_1_1/betasave_1/Identity_19*
dtype0
V
save_1/Identity_20Identitysave_1/RestoreV2:19*
T0*
_output_shapes
:
n
save_1/AssignVariableOp_19AssignVariableOpbatch_normalization_1_1/gammasave_1/Identity_20*
dtype0
V
save_1/Identity_21Identitysave_1/RestoreV2:20*
T0*
_output_shapes
:
t
save_1/AssignVariableOp_20AssignVariableOp#batch_normalization_1_1/moving_meansave_1/Identity_21*
dtype0
V
save_1/Identity_22Identitysave_1/RestoreV2:21*
T0*
_output_shapes
:
x
save_1/AssignVariableOp_21AssignVariableOp'batch_normalization_1_1/moving_variancesave_1/Identity_22*
dtype0
V
save_1/Identity_23Identitysave_1/RestoreV2:22*
T0*
_output_shapes
:
k
save_1/AssignVariableOp_22AssignVariableOpbatch_normalization_2/betasave_1/Identity_23*
dtype0
V
save_1/Identity_24Identitysave_1/RestoreV2:23*
T0*
_output_shapes
:
l
save_1/AssignVariableOp_23AssignVariableOpbatch_normalization_2/gammasave_1/Identity_24*
dtype0
V
save_1/Identity_25Identitysave_1/RestoreV2:24*
T0*
_output_shapes
:
r
save_1/AssignVariableOp_24AssignVariableOp!batch_normalization_2/moving_meansave_1/Identity_25*
dtype0
V
save_1/Identity_26Identitysave_1/RestoreV2:25*
T0*
_output_shapes
:
v
save_1/AssignVariableOp_25AssignVariableOp%batch_normalization_2/moving_variancesave_1/Identity_26*
dtype0
V
save_1/Identity_27Identitysave_1/RestoreV2:26*
T0*
_output_shapes
:
]
save_1/AssignVariableOp_26AssignVariableOphidden1/biassave_1/Identity_27*
dtype0
V
save_1/Identity_28Identitysave_1/RestoreV2:27*
T0*
_output_shapes
:
_
save_1/AssignVariableOp_27AssignVariableOphidden1/kernelsave_1/Identity_28*
dtype0
V
save_1/Identity_29Identitysave_1/RestoreV2:28*
T0*
_output_shapes
:
_
save_1/AssignVariableOp_28AssignVariableOphidden1_1/biassave_1/Identity_29*
dtype0
V
save_1/Identity_30Identitysave_1/RestoreV2:29*
T0*
_output_shapes
:
a
save_1/AssignVariableOp_29AssignVariableOphidden1_1/kernelsave_1/Identity_30*
dtype0
V
save_1/Identity_31Identitysave_1/RestoreV2:30*
T0*
_output_shapes
:
]
save_1/AssignVariableOp_30AssignVariableOphidden2/biassave_1/Identity_31*
dtype0
V
save_1/Identity_32Identitysave_1/RestoreV2:31*
T0*
_output_shapes
:
_
save_1/AssignVariableOp_31AssignVariableOphidden2/kernelsave_1/Identity_32*
dtype0
V
save_1/Identity_33Identitysave_1/RestoreV2:32*
T0*
_output_shapes
:
_
save_1/AssignVariableOp_32AssignVariableOphidden2_1/biassave_1/Identity_33*
dtype0
V
save_1/Identity_34Identitysave_1/RestoreV2:33*
T0*
_output_shapes
:
a
save_1/AssignVariableOp_33AssignVariableOphidden2_1/kernelsave_1/Identity_34*
dtype0
V
save_1/Identity_35Identitysave_1/RestoreV2:34*
T0*
_output_shapes
:
]
save_1/AssignVariableOp_34AssignVariableOpsoftmax/biassave_1/Identity_35*
dtype0
V
save_1/Identity_36Identitysave_1/RestoreV2:35*
T0*
_output_shapes
:
_
save_1/AssignVariableOp_35AssignVariableOpsoftmax/kernelsave_1/Identity_36*
dtype0
V
save_1/Identity_37Identitysave_1/RestoreV2:36*
T0*
_output_shapes
:
_
save_1/AssignVariableOp_36AssignVariableOpsoftmax_1/biassave_1/Identity_37*
dtype0
V
save_1/Identity_38Identitysave_1/RestoreV2:37*
T0*
_output_shapes
:
a
save_1/AssignVariableOp_37AssignVariableOpsoftmax_1/kernelsave_1/Identity_38*
dtype0
V
save_1/Identity_39Identitysave_1/RestoreV2:38*
T0*
_output_shapes
:
g
save_1/AssignVariableOp_38AssignVariableOptraining/Adam/Variablesave_1/Identity_39*
dtype0
V
save_1/Identity_40Identitysave_1/RestoreV2:39*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_39AssignVariableOptraining/Adam/Variable_1save_1/Identity_40*
dtype0
V
save_1/Identity_41Identitysave_1/RestoreV2:40*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_40AssignVariableOptraining/Adam/Variable_10save_1/Identity_41*
dtype0
V
save_1/Identity_42Identitysave_1/RestoreV2:41*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_41AssignVariableOptraining/Adam/Variable_11save_1/Identity_42*
dtype0
V
save_1/Identity_43Identitysave_1/RestoreV2:42*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_42AssignVariableOptraining/Adam/Variable_12save_1/Identity_43*
dtype0
V
save_1/Identity_44Identitysave_1/RestoreV2:43*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_43AssignVariableOptraining/Adam/Variable_13save_1/Identity_44*
dtype0
V
save_1/Identity_45Identitysave_1/RestoreV2:44*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_44AssignVariableOptraining/Adam/Variable_14save_1/Identity_45*
dtype0
V
save_1/Identity_46Identitysave_1/RestoreV2:45*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_45AssignVariableOptraining/Adam/Variable_15save_1/Identity_46*
dtype0
V
save_1/Identity_47Identitysave_1/RestoreV2:46*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_46AssignVariableOptraining/Adam/Variable_16save_1/Identity_47*
dtype0
V
save_1/Identity_48Identitysave_1/RestoreV2:47*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_47AssignVariableOptraining/Adam/Variable_17save_1/Identity_48*
dtype0
V
save_1/Identity_49Identitysave_1/RestoreV2:48*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_48AssignVariableOptraining/Adam/Variable_18save_1/Identity_49*
dtype0
V
save_1/Identity_50Identitysave_1/RestoreV2:49*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_49AssignVariableOptraining/Adam/Variable_19save_1/Identity_50*
dtype0
V
save_1/Identity_51Identitysave_1/RestoreV2:50*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_50AssignVariableOptraining/Adam/Variable_2save_1/Identity_51*
dtype0
V
save_1/Identity_52Identitysave_1/RestoreV2:51*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_51AssignVariableOptraining/Adam/Variable_20save_1/Identity_52*
dtype0
V
save_1/Identity_53Identitysave_1/RestoreV2:52*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_52AssignVariableOptraining/Adam/Variable_21save_1/Identity_53*
dtype0
V
save_1/Identity_54Identitysave_1/RestoreV2:53*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_53AssignVariableOptraining/Adam/Variable_22save_1/Identity_54*
dtype0
V
save_1/Identity_55Identitysave_1/RestoreV2:54*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_54AssignVariableOptraining/Adam/Variable_23save_1/Identity_55*
dtype0
V
save_1/Identity_56Identitysave_1/RestoreV2:55*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_55AssignVariableOptraining/Adam/Variable_24save_1/Identity_56*
dtype0
V
save_1/Identity_57Identitysave_1/RestoreV2:56*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_56AssignVariableOptraining/Adam/Variable_25save_1/Identity_57*
dtype0
V
save_1/Identity_58Identitysave_1/RestoreV2:57*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_57AssignVariableOptraining/Adam/Variable_26save_1/Identity_58*
dtype0
V
save_1/Identity_59Identitysave_1/RestoreV2:58*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_58AssignVariableOptraining/Adam/Variable_27save_1/Identity_59*
dtype0
V
save_1/Identity_60Identitysave_1/RestoreV2:59*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_59AssignVariableOptraining/Adam/Variable_28save_1/Identity_60*
dtype0
V
save_1/Identity_61Identitysave_1/RestoreV2:60*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_60AssignVariableOptraining/Adam/Variable_29save_1/Identity_61*
dtype0
V
save_1/Identity_62Identitysave_1/RestoreV2:61*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_61AssignVariableOptraining/Adam/Variable_3save_1/Identity_62*
dtype0
V
save_1/Identity_63Identitysave_1/RestoreV2:62*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_62AssignVariableOptraining/Adam/Variable_4save_1/Identity_63*
dtype0
V
save_1/Identity_64Identitysave_1/RestoreV2:63*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_63AssignVariableOptraining/Adam/Variable_5save_1/Identity_64*
dtype0
V
save_1/Identity_65Identitysave_1/RestoreV2:64*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_64AssignVariableOptraining/Adam/Variable_6save_1/Identity_65*
dtype0
V
save_1/Identity_66Identitysave_1/RestoreV2:65*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_65AssignVariableOptraining/Adam/Variable_7save_1/Identity_66*
dtype0
V
save_1/Identity_67Identitysave_1/RestoreV2:66*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_66AssignVariableOptraining/Adam/Variable_8save_1/Identity_67*
dtype0
V
save_1/Identity_68Identitysave_1/RestoreV2:67*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_67AssignVariableOptraining/Adam/Variable_9save_1/Identity_68*
dtype0
V
save_1/Identity_69Identitysave_1/RestoreV2:68*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_68AssignVariableOptraining_1/Adam/Variablesave_1/Identity_69*
dtype0
V
save_1/Identity_70Identitysave_1/RestoreV2:69*
T0*
_output_shapes
:
k
save_1/AssignVariableOp_69AssignVariableOptraining_1/Adam/Variable_1save_1/Identity_70*
dtype0
V
save_1/Identity_71Identitysave_1/RestoreV2:70*
T0*
_output_shapes
:
l
save_1/AssignVariableOp_70AssignVariableOptraining_1/Adam/Variable_10save_1/Identity_71*
dtype0
V
save_1/Identity_72Identitysave_1/RestoreV2:71*
T0*
_output_shapes
:
l
save_1/AssignVariableOp_71AssignVariableOptraining_1/Adam/Variable_11save_1/Identity_72*
dtype0
V
save_1/Identity_73Identitysave_1/RestoreV2:72*
T0*
_output_shapes
:
l
save_1/AssignVariableOp_72AssignVariableOptraining_1/Adam/Variable_12save_1/Identity_73*
dtype0
V
save_1/Identity_74Identitysave_1/RestoreV2:73*
T0*
_output_shapes
:
l
save_1/AssignVariableOp_73AssignVariableOptraining_1/Adam/Variable_13save_1/Identity_74*
dtype0
V
save_1/Identity_75Identitysave_1/RestoreV2:74*
T0*
_output_shapes
:
l
save_1/AssignVariableOp_74AssignVariableOptraining_1/Adam/Variable_14save_1/Identity_75*
dtype0
V
save_1/Identity_76Identitysave_1/RestoreV2:75*
T0*
_output_shapes
:
l
save_1/AssignVariableOp_75AssignVariableOptraining_1/Adam/Variable_15save_1/Identity_76*
dtype0
V
save_1/Identity_77Identitysave_1/RestoreV2:76*
T0*
_output_shapes
:
l
save_1/AssignVariableOp_76AssignVariableOptraining_1/Adam/Variable_16save_1/Identity_77*
dtype0
V
save_1/Identity_78Identitysave_1/RestoreV2:77*
T0*
_output_shapes
:
l
save_1/AssignVariableOp_77AssignVariableOptraining_1/Adam/Variable_17save_1/Identity_78*
dtype0
V
save_1/Identity_79Identitysave_1/RestoreV2:78*
T0*
_output_shapes
:
l
save_1/AssignVariableOp_78AssignVariableOptraining_1/Adam/Variable_18save_1/Identity_79*
dtype0
V
save_1/Identity_80Identitysave_1/RestoreV2:79*
T0*
_output_shapes
:
l
save_1/AssignVariableOp_79AssignVariableOptraining_1/Adam/Variable_19save_1/Identity_80*
dtype0
V
save_1/Identity_81Identitysave_1/RestoreV2:80*
T0*
_output_shapes
:
k
save_1/AssignVariableOp_80AssignVariableOptraining_1/Adam/Variable_2save_1/Identity_81*
dtype0
V
save_1/Identity_82Identitysave_1/RestoreV2:81*
T0*
_output_shapes
:
l
save_1/AssignVariableOp_81AssignVariableOptraining_1/Adam/Variable_20save_1/Identity_82*
dtype0
V
save_1/Identity_83Identitysave_1/RestoreV2:82*
T0*
_output_shapes
:
l
save_1/AssignVariableOp_82AssignVariableOptraining_1/Adam/Variable_21save_1/Identity_83*
dtype0
V
save_1/Identity_84Identitysave_1/RestoreV2:83*
T0*
_output_shapes
:
l
save_1/AssignVariableOp_83AssignVariableOptraining_1/Adam/Variable_22save_1/Identity_84*
dtype0
V
save_1/Identity_85Identitysave_1/RestoreV2:84*
T0*
_output_shapes
:
l
save_1/AssignVariableOp_84AssignVariableOptraining_1/Adam/Variable_23save_1/Identity_85*
dtype0
V
save_1/Identity_86Identitysave_1/RestoreV2:85*
T0*
_output_shapes
:
l
save_1/AssignVariableOp_85AssignVariableOptraining_1/Adam/Variable_24save_1/Identity_86*
dtype0
V
save_1/Identity_87Identitysave_1/RestoreV2:86*
T0*
_output_shapes
:
l
save_1/AssignVariableOp_86AssignVariableOptraining_1/Adam/Variable_25save_1/Identity_87*
dtype0
V
save_1/Identity_88Identitysave_1/RestoreV2:87*
T0*
_output_shapes
:
l
save_1/AssignVariableOp_87AssignVariableOptraining_1/Adam/Variable_26save_1/Identity_88*
dtype0
V
save_1/Identity_89Identitysave_1/RestoreV2:88*
T0*
_output_shapes
:
l
save_1/AssignVariableOp_88AssignVariableOptraining_1/Adam/Variable_27save_1/Identity_89*
dtype0
V
save_1/Identity_90Identitysave_1/RestoreV2:89*
T0*
_output_shapes
:
l
save_1/AssignVariableOp_89AssignVariableOptraining_1/Adam/Variable_28save_1/Identity_90*
dtype0
V
save_1/Identity_91Identitysave_1/RestoreV2:90*
T0*
_output_shapes
:
l
save_1/AssignVariableOp_90AssignVariableOptraining_1/Adam/Variable_29save_1/Identity_91*
dtype0
V
save_1/Identity_92Identitysave_1/RestoreV2:91*
T0*
_output_shapes
:
k
save_1/AssignVariableOp_91AssignVariableOptraining_1/Adam/Variable_3save_1/Identity_92*
dtype0
V
save_1/Identity_93Identitysave_1/RestoreV2:92*
T0*
_output_shapes
:
k
save_1/AssignVariableOp_92AssignVariableOptraining_1/Adam/Variable_4save_1/Identity_93*
dtype0
V
save_1/Identity_94Identitysave_1/RestoreV2:93*
T0*
_output_shapes
:
k
save_1/AssignVariableOp_93AssignVariableOptraining_1/Adam/Variable_5save_1/Identity_94*
dtype0
V
save_1/Identity_95Identitysave_1/RestoreV2:94*
T0*
_output_shapes
:
k
save_1/AssignVariableOp_94AssignVariableOptraining_1/Adam/Variable_6save_1/Identity_95*
dtype0
V
save_1/Identity_96Identitysave_1/RestoreV2:95*
T0*
_output_shapes
:
k
save_1/AssignVariableOp_95AssignVariableOptraining_1/Adam/Variable_7save_1/Identity_96*
dtype0
V
save_1/Identity_97Identitysave_1/RestoreV2:96*
T0*
_output_shapes
:
k
save_1/AssignVariableOp_96AssignVariableOptraining_1/Adam/Variable_8save_1/Identity_97*
dtype0
V
save_1/Identity_98Identitysave_1/RestoreV2:97*
T0*
_output_shapes
:
k
save_1/AssignVariableOp_97AssignVariableOptraining_1/Adam/Variable_9save_1/Identity_98*
dtype0
Ş
save_1/restore_shardNoOp^save_1/AssignVariableOp^save_1/AssignVariableOp_1^save_1/AssignVariableOp_10^save_1/AssignVariableOp_11^save_1/AssignVariableOp_12^save_1/AssignVariableOp_13^save_1/AssignVariableOp_14^save_1/AssignVariableOp_15^save_1/AssignVariableOp_16^save_1/AssignVariableOp_17^save_1/AssignVariableOp_18^save_1/AssignVariableOp_19^save_1/AssignVariableOp_2^save_1/AssignVariableOp_20^save_1/AssignVariableOp_21^save_1/AssignVariableOp_22^save_1/AssignVariableOp_23^save_1/AssignVariableOp_24^save_1/AssignVariableOp_25^save_1/AssignVariableOp_26^save_1/AssignVariableOp_27^save_1/AssignVariableOp_28^save_1/AssignVariableOp_29^save_1/AssignVariableOp_3^save_1/AssignVariableOp_30^save_1/AssignVariableOp_31^save_1/AssignVariableOp_32^save_1/AssignVariableOp_33^save_1/AssignVariableOp_34^save_1/AssignVariableOp_35^save_1/AssignVariableOp_36^save_1/AssignVariableOp_37^save_1/AssignVariableOp_38^save_1/AssignVariableOp_39^save_1/AssignVariableOp_4^save_1/AssignVariableOp_40^save_1/AssignVariableOp_41^save_1/AssignVariableOp_42^save_1/AssignVariableOp_43^save_1/AssignVariableOp_44^save_1/AssignVariableOp_45^save_1/AssignVariableOp_46^save_1/AssignVariableOp_47^save_1/AssignVariableOp_48^save_1/AssignVariableOp_49^save_1/AssignVariableOp_5^save_1/AssignVariableOp_50^save_1/AssignVariableOp_51^save_1/AssignVariableOp_52^save_1/AssignVariableOp_53^save_1/AssignVariableOp_54^save_1/AssignVariableOp_55^save_1/AssignVariableOp_56^save_1/AssignVariableOp_57^save_1/AssignVariableOp_58^save_1/AssignVariableOp_59^save_1/AssignVariableOp_6^save_1/AssignVariableOp_60^save_1/AssignVariableOp_61^save_1/AssignVariableOp_62^save_1/AssignVariableOp_63^save_1/AssignVariableOp_64^save_1/AssignVariableOp_65^save_1/AssignVariableOp_66^save_1/AssignVariableOp_67^save_1/AssignVariableOp_68^save_1/AssignVariableOp_69^save_1/AssignVariableOp_7^save_1/AssignVariableOp_70^save_1/AssignVariableOp_71^save_1/AssignVariableOp_72^save_1/AssignVariableOp_73^save_1/AssignVariableOp_74^save_1/AssignVariableOp_75^save_1/AssignVariableOp_76^save_1/AssignVariableOp_77^save_1/AssignVariableOp_78^save_1/AssignVariableOp_79^save_1/AssignVariableOp_8^save_1/AssignVariableOp_80^save_1/AssignVariableOp_81^save_1/AssignVariableOp_82^save_1/AssignVariableOp_83^save_1/AssignVariableOp_84^save_1/AssignVariableOp_85^save_1/AssignVariableOp_86^save_1/AssignVariableOp_87^save_1/AssignVariableOp_88^save_1/AssignVariableOp_89^save_1/AssignVariableOp_9^save_1/AssignVariableOp_90^save_1/AssignVariableOp_91^save_1/AssignVariableOp_92^save_1/AssignVariableOp_93^save_1/AssignVariableOp_94^save_1/AssignVariableOp_95^save_1/AssignVariableOp_96^save_1/AssignVariableOp_97
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"e
trainable_variablesee

hidden1/kernel:0hidden1/kernel/Assign$hidden1/kernel/Read/ReadVariableOp:0(2+hidden1/kernel/Initializer/random_uniform:08
o
hidden1/bias:0hidden1/bias/Assign"hidden1/bias/Read/ReadVariableOp:0(2 hidden1/bias/Initializer/zeros:08
˘
batch_normalization/gamma:0 batch_normalization/gamma/Assign/batch_normalization/gamma/Read/ReadVariableOp:0(2,batch_normalization/gamma/Initializer/ones:08

batch_normalization/beta:0batch_normalization/beta/Assign.batch_normalization/beta/Read/ReadVariableOp:0(2,batch_normalization/beta/Initializer/zeros:08

hidden2/kernel:0hidden2/kernel/Assign$hidden2/kernel/Read/ReadVariableOp:0(2+hidden2/kernel/Initializer/random_uniform:08
o
hidden2/bias:0hidden2/bias/Assign"hidden2/bias/Read/ReadVariableOp:0(2 hidden2/bias/Initializer/zeros:08
Ş
batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign1batch_normalization_1/gamma/Read/ReadVariableOp:0(2.batch_normalization_1/gamma/Initializer/ones:08
§
batch_normalization_1/beta:0!batch_normalization_1/beta/Assign0batch_normalization_1/beta/Read/ReadVariableOp:0(2.batch_normalization_1/beta/Initializer/zeros:08

softmax/kernel:0softmax/kernel/Assign$softmax/kernel/Read/ReadVariableOp:0(2+softmax/kernel/Initializer/random_uniform:08
o
softmax/bias:0softmax/bias/Assign"softmax/bias/Read/ReadVariableOp:0(2 softmax/bias/Initializer/zeros:08

Adam/iterations:0Adam/iterations/Assign%Adam/iterations/Read/ReadVariableOp:0(2+Adam/iterations/Initializer/initial_value:08
c
	Adam/lr:0Adam/lr/AssignAdam/lr/Read/ReadVariableOp:0(2#Adam/lr/Initializer/initial_value:08
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:08
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:08
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:08

training/Adam/Variable:0training/Adam/Variable/Assign,training/Adam/Variable/Read/ReadVariableOp:0(2training/Adam/zeros:08

training/Adam/Variable_1:0training/Adam/Variable_1/Assign.training/Adam/Variable_1/Read/ReadVariableOp:0(2training/Adam/zeros_1:08

training/Adam/Variable_2:0training/Adam/Variable_2/Assign.training/Adam/Variable_2/Read/ReadVariableOp:0(2training/Adam/zeros_2:08

training/Adam/Variable_3:0training/Adam/Variable_3/Assign.training/Adam/Variable_3/Read/ReadVariableOp:0(2training/Adam/zeros_3:08

training/Adam/Variable_4:0training/Adam/Variable_4/Assign.training/Adam/Variable_4/Read/ReadVariableOp:0(2training/Adam/zeros_4:08

training/Adam/Variable_5:0training/Adam/Variable_5/Assign.training/Adam/Variable_5/Read/ReadVariableOp:0(2training/Adam/zeros_5:08

training/Adam/Variable_6:0training/Adam/Variable_6/Assign.training/Adam/Variable_6/Read/ReadVariableOp:0(2training/Adam/zeros_6:08

training/Adam/Variable_7:0training/Adam/Variable_7/Assign.training/Adam/Variable_7/Read/ReadVariableOp:0(2training/Adam/zeros_7:08

training/Adam/Variable_8:0training/Adam/Variable_8/Assign.training/Adam/Variable_8/Read/ReadVariableOp:0(2training/Adam/zeros_8:08

training/Adam/Variable_9:0training/Adam/Variable_9/Assign.training/Adam/Variable_9/Read/ReadVariableOp:0(2training/Adam/zeros_9:08

training/Adam/Variable_10:0 training/Adam/Variable_10/Assign/training/Adam/Variable_10/Read/ReadVariableOp:0(2training/Adam/zeros_10:08

training/Adam/Variable_11:0 training/Adam/Variable_11/Assign/training/Adam/Variable_11/Read/ReadVariableOp:0(2training/Adam/zeros_11:08

training/Adam/Variable_12:0 training/Adam/Variable_12/Assign/training/Adam/Variable_12/Read/ReadVariableOp:0(2training/Adam/zeros_12:08

training/Adam/Variable_13:0 training/Adam/Variable_13/Assign/training/Adam/Variable_13/Read/ReadVariableOp:0(2training/Adam/zeros_13:08

training/Adam/Variable_14:0 training/Adam/Variable_14/Assign/training/Adam/Variable_14/Read/ReadVariableOp:0(2training/Adam/zeros_14:08

training/Adam/Variable_15:0 training/Adam/Variable_15/Assign/training/Adam/Variable_15/Read/ReadVariableOp:0(2training/Adam/zeros_15:08

training/Adam/Variable_16:0 training/Adam/Variable_16/Assign/training/Adam/Variable_16/Read/ReadVariableOp:0(2training/Adam/zeros_16:08

training/Adam/Variable_17:0 training/Adam/Variable_17/Assign/training/Adam/Variable_17/Read/ReadVariableOp:0(2training/Adam/zeros_17:08

training/Adam/Variable_18:0 training/Adam/Variable_18/Assign/training/Adam/Variable_18/Read/ReadVariableOp:0(2training/Adam/zeros_18:08

training/Adam/Variable_19:0 training/Adam/Variable_19/Assign/training/Adam/Variable_19/Read/ReadVariableOp:0(2training/Adam/zeros_19:08

training/Adam/Variable_20:0 training/Adam/Variable_20/Assign/training/Adam/Variable_20/Read/ReadVariableOp:0(2training/Adam/zeros_20:08

training/Adam/Variable_21:0 training/Adam/Variable_21/Assign/training/Adam/Variable_21/Read/ReadVariableOp:0(2training/Adam/zeros_21:08

training/Adam/Variable_22:0 training/Adam/Variable_22/Assign/training/Adam/Variable_22/Read/ReadVariableOp:0(2training/Adam/zeros_22:08

training/Adam/Variable_23:0 training/Adam/Variable_23/Assign/training/Adam/Variable_23/Read/ReadVariableOp:0(2training/Adam/zeros_23:08

training/Adam/Variable_24:0 training/Adam/Variable_24/Assign/training/Adam/Variable_24/Read/ReadVariableOp:0(2training/Adam/zeros_24:08

training/Adam/Variable_25:0 training/Adam/Variable_25/Assign/training/Adam/Variable_25/Read/ReadVariableOp:0(2training/Adam/zeros_25:08

training/Adam/Variable_26:0 training/Adam/Variable_26/Assign/training/Adam/Variable_26/Read/ReadVariableOp:0(2training/Adam/zeros_26:08

training/Adam/Variable_27:0 training/Adam/Variable_27/Assign/training/Adam/Variable_27/Read/ReadVariableOp:0(2training/Adam/zeros_27:08

training/Adam/Variable_28:0 training/Adam/Variable_28/Assign/training/Adam/Variable_28/Read/ReadVariableOp:0(2training/Adam/zeros_28:08

training/Adam/Variable_29:0 training/Adam/Variable_29/Assign/training/Adam/Variable_29/Read/ReadVariableOp:0(2training/Adam/zeros_29:08

hidden1_1/kernel:0hidden1_1/kernel/Assign&hidden1_1/kernel/Read/ReadVariableOp:0(2-hidden1_1/kernel/Initializer/random_uniform:08
w
hidden1_1/bias:0hidden1_1/bias/Assign$hidden1_1/bias/Read/ReadVariableOp:0(2"hidden1_1/bias/Initializer/zeros:08
Ş
batch_normalization_2/gamma:0"batch_normalization_2/gamma/Assign1batch_normalization_2/gamma/Read/ReadVariableOp:0(2.batch_normalization_2/gamma/Initializer/ones:08
§
batch_normalization_2/beta:0!batch_normalization_2/beta/Assign0batch_normalization_2/beta/Read/ReadVariableOp:0(2.batch_normalization_2/beta/Initializer/zeros:08

hidden2_1/kernel:0hidden2_1/kernel/Assign&hidden2_1/kernel/Read/ReadVariableOp:0(2-hidden2_1/kernel/Initializer/random_uniform:08
w
hidden2_1/bias:0hidden2_1/bias/Assign$hidden2_1/bias/Read/ReadVariableOp:0(2"hidden2_1/bias/Initializer/zeros:08
˛
batch_normalization_1_1/gamma:0$batch_normalization_1_1/gamma/Assign3batch_normalization_1_1/gamma/Read/ReadVariableOp:0(20batch_normalization_1_1/gamma/Initializer/ones:08
Ż
batch_normalization_1_1/beta:0#batch_normalization_1_1/beta/Assign2batch_normalization_1_1/beta/Read/ReadVariableOp:0(20batch_normalization_1_1/beta/Initializer/zeros:08

softmax_1/kernel:0softmax_1/kernel/Assign&softmax_1/kernel/Read/ReadVariableOp:0(2-softmax_1/kernel/Initializer/random_uniform:08
w
softmax_1/bias:0softmax_1/bias/Assign$softmax_1/bias/Read/ReadVariableOp:0(2"softmax_1/bias/Initializer/zeros:08

Adam_1/iterations:0Adam_1/iterations/Assign'Adam_1/iterations/Read/ReadVariableOp:0(2-Adam_1/iterations/Initializer/initial_value:08
k
Adam_1/lr:0Adam_1/lr/AssignAdam_1/lr/Read/ReadVariableOp:0(2%Adam_1/lr/Initializer/initial_value:08
{
Adam_1/beta_1:0Adam_1/beta_1/Assign#Adam_1/beta_1/Read/ReadVariableOp:0(2)Adam_1/beta_1/Initializer/initial_value:08
{
Adam_1/beta_2:0Adam_1/beta_2/Assign#Adam_1/beta_2/Read/ReadVariableOp:0(2)Adam_1/beta_2/Initializer/initial_value:08
w
Adam_1/decay:0Adam_1/decay/Assign"Adam_1/decay/Read/ReadVariableOp:0(2(Adam_1/decay/Initializer/initial_value:08

training_1/Adam/Variable:0training_1/Adam/Variable/Assign.training_1/Adam/Variable/Read/ReadVariableOp:0(2training_1/Adam/zeros:08

training_1/Adam/Variable_1:0!training_1/Adam/Variable_1/Assign0training_1/Adam/Variable_1/Read/ReadVariableOp:0(2training_1/Adam/zeros_1:08

training_1/Adam/Variable_2:0!training_1/Adam/Variable_2/Assign0training_1/Adam/Variable_2/Read/ReadVariableOp:0(2training_1/Adam/zeros_2:08

training_1/Adam/Variable_3:0!training_1/Adam/Variable_3/Assign0training_1/Adam/Variable_3/Read/ReadVariableOp:0(2training_1/Adam/zeros_3:08

training_1/Adam/Variable_4:0!training_1/Adam/Variable_4/Assign0training_1/Adam/Variable_4/Read/ReadVariableOp:0(2training_1/Adam/zeros_4:08

training_1/Adam/Variable_5:0!training_1/Adam/Variable_5/Assign0training_1/Adam/Variable_5/Read/ReadVariableOp:0(2training_1/Adam/zeros_5:08

training_1/Adam/Variable_6:0!training_1/Adam/Variable_6/Assign0training_1/Adam/Variable_6/Read/ReadVariableOp:0(2training_1/Adam/zeros_6:08

training_1/Adam/Variable_7:0!training_1/Adam/Variable_7/Assign0training_1/Adam/Variable_7/Read/ReadVariableOp:0(2training_1/Adam/zeros_7:08

training_1/Adam/Variable_8:0!training_1/Adam/Variable_8/Assign0training_1/Adam/Variable_8/Read/ReadVariableOp:0(2training_1/Adam/zeros_8:08

training_1/Adam/Variable_9:0!training_1/Adam/Variable_9/Assign0training_1/Adam/Variable_9/Read/ReadVariableOp:0(2training_1/Adam/zeros_9:08

training_1/Adam/Variable_10:0"training_1/Adam/Variable_10/Assign1training_1/Adam/Variable_10/Read/ReadVariableOp:0(2training_1/Adam/zeros_10:08

training_1/Adam/Variable_11:0"training_1/Adam/Variable_11/Assign1training_1/Adam/Variable_11/Read/ReadVariableOp:0(2training_1/Adam/zeros_11:08

training_1/Adam/Variable_12:0"training_1/Adam/Variable_12/Assign1training_1/Adam/Variable_12/Read/ReadVariableOp:0(2training_1/Adam/zeros_12:08

training_1/Adam/Variable_13:0"training_1/Adam/Variable_13/Assign1training_1/Adam/Variable_13/Read/ReadVariableOp:0(2training_1/Adam/zeros_13:08

training_1/Adam/Variable_14:0"training_1/Adam/Variable_14/Assign1training_1/Adam/Variable_14/Read/ReadVariableOp:0(2training_1/Adam/zeros_14:08

training_1/Adam/Variable_15:0"training_1/Adam/Variable_15/Assign1training_1/Adam/Variable_15/Read/ReadVariableOp:0(2training_1/Adam/zeros_15:08

training_1/Adam/Variable_16:0"training_1/Adam/Variable_16/Assign1training_1/Adam/Variable_16/Read/ReadVariableOp:0(2training_1/Adam/zeros_16:08

training_1/Adam/Variable_17:0"training_1/Adam/Variable_17/Assign1training_1/Adam/Variable_17/Read/ReadVariableOp:0(2training_1/Adam/zeros_17:08

training_1/Adam/Variable_18:0"training_1/Adam/Variable_18/Assign1training_1/Adam/Variable_18/Read/ReadVariableOp:0(2training_1/Adam/zeros_18:08

training_1/Adam/Variable_19:0"training_1/Adam/Variable_19/Assign1training_1/Adam/Variable_19/Read/ReadVariableOp:0(2training_1/Adam/zeros_19:08

training_1/Adam/Variable_20:0"training_1/Adam/Variable_20/Assign1training_1/Adam/Variable_20/Read/ReadVariableOp:0(2training_1/Adam/zeros_20:08

training_1/Adam/Variable_21:0"training_1/Adam/Variable_21/Assign1training_1/Adam/Variable_21/Read/ReadVariableOp:0(2training_1/Adam/zeros_21:08

training_1/Adam/Variable_22:0"training_1/Adam/Variable_22/Assign1training_1/Adam/Variable_22/Read/ReadVariableOp:0(2training_1/Adam/zeros_22:08

training_1/Adam/Variable_23:0"training_1/Adam/Variable_23/Assign1training_1/Adam/Variable_23/Read/ReadVariableOp:0(2training_1/Adam/zeros_23:08

training_1/Adam/Variable_24:0"training_1/Adam/Variable_24/Assign1training_1/Adam/Variable_24/Read/ReadVariableOp:0(2training_1/Adam/zeros_24:08

training_1/Adam/Variable_25:0"training_1/Adam/Variable_25/Assign1training_1/Adam/Variable_25/Read/ReadVariableOp:0(2training_1/Adam/zeros_25:08

training_1/Adam/Variable_26:0"training_1/Adam/Variable_26/Assign1training_1/Adam/Variable_26/Read/ReadVariableOp:0(2training_1/Adam/zeros_26:08

training_1/Adam/Variable_27:0"training_1/Adam/Variable_27/Assign1training_1/Adam/Variable_27/Read/ReadVariableOp:0(2training_1/Adam/zeros_27:08

training_1/Adam/Variable_28:0"training_1/Adam/Variable_28/Assign1training_1/Adam/Variable_28/Read/ReadVariableOp:0(2training_1/Adam/zeros_28:08

training_1/Adam/Variable_29:0"training_1/Adam/Variable_29/Assign1training_1/Adam/Variable_29/Read/ReadVariableOp:0(2training_1/Adam/zeros_29:08"d
cond_contextócđc
Ä
"batch_normalization/cond/cond_text"batch_normalization/cond/pred_id:0#batch_normalization/cond/switch_t:0 *Ň
#batch_normalization/cond/Switch_1:0
#batch_normalization/cond/Switch_1:1
"batch_normalization/cond/pred_id:0
#batch_normalization/cond/switch_t:0
%batch_normalization/moments/Squeeze:0H
"batch_normalization/cond/pred_id:0"batch_normalization/cond/pred_id:0L
%batch_normalization/moments/Squeeze:0#batch_normalization/cond/Switch_1:1
Ü
$batch_normalization/cond/cond_text_1"batch_normalization/cond/pred_id:0#batch_normalization/cond/switch_f:0*ę
0batch_normalization/cond/ReadVariableOp/Switch:0
)batch_normalization/cond/ReadVariableOp:0
"batch_normalization/cond/pred_id:0
#batch_normalization/cond/switch_f:0
!batch_normalization/moving_mean:0H
"batch_normalization/cond/pred_id:0"batch_normalization/cond/pred_id:0U
!batch_normalization/moving_mean:00batch_normalization/cond/ReadVariableOp/Switch:0
Ü
$batch_normalization/cond_1/cond_text$batch_normalization/cond_1/pred_id:0%batch_normalization/cond_1/switch_t:0 *ä
%batch_normalization/cond_1/Switch_1:0
%batch_normalization/cond_1/Switch_1:1
$batch_normalization/cond_1/pred_id:0
%batch_normalization/cond_1/switch_t:0
'batch_normalization/moments/Squeeze_1:0L
$batch_normalization/cond_1/pred_id:0$batch_normalization/cond_1/pred_id:0P
'batch_normalization/moments/Squeeze_1:0%batch_normalization/cond_1/Switch_1:1
ř
&batch_normalization/cond_1/cond_text_1$batch_normalization/cond_1/pred_id:0%batch_normalization/cond_1/switch_f:0*
2batch_normalization/cond_1/ReadVariableOp/Switch:0
+batch_normalization/cond_1/ReadVariableOp:0
$batch_normalization/cond_1/pred_id:0
%batch_normalization/cond_1/switch_f:0
%batch_normalization/moving_variance:0L
$batch_normalization/cond_1/pred_id:0$batch_normalization/cond_1/pred_id:0[
%batch_normalization/moving_variance:02batch_normalization/cond_1/ReadVariableOp/Switch:0
ß
$batch_normalization/cond_2/cond_text$batch_normalization/cond_2/pred_id:0%batch_normalization/cond_2/switch_t:0 *ç
 batch_normalization/cond/Merge:0
5batch_normalization/cond_2/AssignMovingAvg/Identity:0
Gbatch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp/Switch:1
@batch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp:0
;batch_normalization/cond_2/AssignMovingAvg/ReadVariableOp:0
=batch_normalization/cond_2/AssignMovingAvg/ReadVariableOp_1:0
2batch_normalization/cond_2/AssignMovingAvg/decay:0
0batch_normalization/cond_2/AssignMovingAvg/mul:0
7batch_normalization/cond_2/AssignMovingAvg/sub/Switch:1
0batch_normalization/cond_2/AssignMovingAvg/sub:0
+batch_normalization/cond_2/ReadVariableOp:0
$batch_normalization/cond_2/pred_id:0
%batch_normalization/cond_2/switch_t:0
!batch_normalization/moving_mean:0[
 batch_normalization/cond/Merge:07batch_normalization/cond_2/AssignMovingAvg/sub/Switch:1l
!batch_normalization/moving_mean:0Gbatch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp/Switch:1L
$batch_normalization/cond_2/pred_id:0$batch_normalization/cond_2/pred_id:0
ö
&batch_normalization/cond_2/cond_text_1$batch_normalization/cond_2/pred_id:0%batch_normalization/cond_2/switch_f:0*ţ
4batch_normalization/cond_2/ReadVariableOp_1/Switch:0
-batch_normalization/cond_2/ReadVariableOp_1:0
$batch_normalization/cond_2/pred_id:0
%batch_normalization/cond_2/switch_f:0
!batch_normalization/moving_mean:0Y
!batch_normalization/moving_mean:04batch_normalization/cond_2/ReadVariableOp_1/Switch:0L
$batch_normalization/cond_2/pred_id:0$batch_normalization/cond_2/pred_id:0
ë
$batch_normalization/cond_3/cond_text$batch_normalization/cond_3/pred_id:0%batch_normalization/cond_3/switch_t:0 *ó
"batch_normalization/cond_1/Merge:0
5batch_normalization/cond_3/AssignMovingAvg/Identity:0
Gbatch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp/Switch:1
@batch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp:0
;batch_normalization/cond_3/AssignMovingAvg/ReadVariableOp:0
=batch_normalization/cond_3/AssignMovingAvg/ReadVariableOp_1:0
2batch_normalization/cond_3/AssignMovingAvg/decay:0
0batch_normalization/cond_3/AssignMovingAvg/mul:0
7batch_normalization/cond_3/AssignMovingAvg/sub/Switch:1
0batch_normalization/cond_3/AssignMovingAvg/sub:0
+batch_normalization/cond_3/ReadVariableOp:0
$batch_normalization/cond_3/pred_id:0
%batch_normalization/cond_3/switch_t:0
%batch_normalization/moving_variance:0]
"batch_normalization/cond_1/Merge:07batch_normalization/cond_3/AssignMovingAvg/sub/Switch:1p
%batch_normalization/moving_variance:0Gbatch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp/Switch:1L
$batch_normalization/cond_3/pred_id:0$batch_normalization/cond_3/pred_id:0
ţ
&batch_normalization/cond_3/cond_text_1$batch_normalization/cond_3/pred_id:0%batch_normalization/cond_3/switch_f:0*
4batch_normalization/cond_3/ReadVariableOp_1/Switch:0
-batch_normalization/cond_3/ReadVariableOp_1:0
$batch_normalization/cond_3/pred_id:0
%batch_normalization/cond_3/switch_f:0
%batch_normalization/moving_variance:0]
%batch_normalization/moving_variance:04batch_normalization/cond_3/ReadVariableOp_1/Switch:0L
$batch_normalization/cond_3/pred_id:0$batch_normalization/cond_3/pred_id:0
Ý
dropout/cond/cond_textdropout/cond/pred_id:0dropout/cond/switch_t:0 *
activation/Relu:0
dropout/cond/dropout/Floor:0
#dropout/cond/dropout/Shape/Switch:1
dropout/cond/dropout/Shape:0
dropout/cond/dropout/add:0
dropout/cond/dropout/div:0
 dropout/cond/dropout/keep_prob:0
dropout/cond/dropout/mul:0
3dropout/cond/dropout/random_uniform/RandomUniform:0
)dropout/cond/dropout/random_uniform/max:0
)dropout/cond/dropout/random_uniform/min:0
)dropout/cond/dropout/random_uniform/mul:0
)dropout/cond/dropout/random_uniform/sub:0
%dropout/cond/dropout/random_uniform:0
dropout/cond/pred_id:0
dropout/cond/switch_t:08
activation/Relu:0#dropout/cond/dropout/Shape/Switch:10
dropout/cond/pred_id:0dropout/cond/pred_id:0
˛
dropout/cond/cond_text_1dropout/cond/pred_id:0dropout/cond/switch_f:0*ä
activation/Relu:0
dropout/cond/Identity/Switch:0
dropout/cond/Identity:0
dropout/cond/pred_id:0
dropout/cond/switch_f:03
activation/Relu:0dropout/cond/Identity/Switch:00
dropout/cond/pred_id:0dropout/cond/pred_id:0
Ü
$batch_normalization_1/cond/cond_text$batch_normalization_1/cond/pred_id:0%batch_normalization_1/cond/switch_t:0 *ä
%batch_normalization_1/cond/Switch_1:0
%batch_normalization_1/cond/Switch_1:1
$batch_normalization_1/cond/pred_id:0
%batch_normalization_1/cond/switch_t:0
'batch_normalization_1/moments/Squeeze:0P
'batch_normalization_1/moments/Squeeze:0%batch_normalization_1/cond/Switch_1:1L
$batch_normalization_1/cond/pred_id:0$batch_normalization_1/cond/pred_id:0
ô
&batch_normalization_1/cond/cond_text_1$batch_normalization_1/cond/pred_id:0%batch_normalization_1/cond/switch_f:0*ü
2batch_normalization_1/cond/ReadVariableOp/Switch:0
+batch_normalization_1/cond/ReadVariableOp:0
$batch_normalization_1/cond/pred_id:0
%batch_normalization_1/cond/switch_f:0
#batch_normalization_1/moving_mean:0Y
#batch_normalization_1/moving_mean:02batch_normalization_1/cond/ReadVariableOp/Switch:0L
$batch_normalization_1/cond/pred_id:0$batch_normalization_1/cond/pred_id:0
ô
&batch_normalization_1/cond_1/cond_text&batch_normalization_1/cond_1/pred_id:0'batch_normalization_1/cond_1/switch_t:0 *ö
'batch_normalization_1/cond_1/Switch_1:0
'batch_normalization_1/cond_1/Switch_1:1
&batch_normalization_1/cond_1/pred_id:0
'batch_normalization_1/cond_1/switch_t:0
)batch_normalization_1/moments/Squeeze_1:0P
&batch_normalization_1/cond_1/pred_id:0&batch_normalization_1/cond_1/pred_id:0T
)batch_normalization_1/moments/Squeeze_1:0'batch_normalization_1/cond_1/Switch_1:1

(batch_normalization_1/cond_1/cond_text_1&batch_normalization_1/cond_1/pred_id:0'batch_normalization_1/cond_1/switch_f:0*
4batch_normalization_1/cond_1/ReadVariableOp/Switch:0
-batch_normalization_1/cond_1/ReadVariableOp:0
&batch_normalization_1/cond_1/pred_id:0
'batch_normalization_1/cond_1/switch_f:0
'batch_normalization_1/moving_variance:0_
'batch_normalization_1/moving_variance:04batch_normalization_1/cond_1/ReadVariableOp/Switch:0P
&batch_normalization_1/cond_1/pred_id:0&batch_normalization_1/cond_1/pred_id:0
	
&batch_normalization_1/cond_2/cond_text&batch_normalization_1/cond_2/pred_id:0'batch_normalization_1/cond_2/switch_t:0 *
"batch_normalization_1/cond/Merge:0
7batch_normalization_1/cond_2/AssignMovingAvg/Identity:0
Ibatch_normalization_1/cond_2/AssignMovingAvg/Read/ReadVariableOp/Switch:1
Bbatch_normalization_1/cond_2/AssignMovingAvg/Read/ReadVariableOp:0
=batch_normalization_1/cond_2/AssignMovingAvg/ReadVariableOp:0
?batch_normalization_1/cond_2/AssignMovingAvg/ReadVariableOp_1:0
4batch_normalization_1/cond_2/AssignMovingAvg/decay:0
2batch_normalization_1/cond_2/AssignMovingAvg/mul:0
9batch_normalization_1/cond_2/AssignMovingAvg/sub/Switch:1
2batch_normalization_1/cond_2/AssignMovingAvg/sub:0
-batch_normalization_1/cond_2/ReadVariableOp:0
&batch_normalization_1/cond_2/pred_id:0
'batch_normalization_1/cond_2/switch_t:0
#batch_normalization_1/moving_mean:0P
&batch_normalization_1/cond_2/pred_id:0&batch_normalization_1/cond_2/pred_id:0p
#batch_normalization_1/moving_mean:0Ibatch_normalization_1/cond_2/AssignMovingAvg/Read/ReadVariableOp/Switch:1_
"batch_normalization_1/cond/Merge:09batch_normalization_1/cond_2/AssignMovingAvg/sub/Switch:1

(batch_normalization_1/cond_2/cond_text_1&batch_normalization_1/cond_2/pred_id:0'batch_normalization_1/cond_2/switch_f:0*
6batch_normalization_1/cond_2/ReadVariableOp_1/Switch:0
/batch_normalization_1/cond_2/ReadVariableOp_1:0
&batch_normalization_1/cond_2/pred_id:0
'batch_normalization_1/cond_2/switch_f:0
#batch_normalization_1/moving_mean:0P
&batch_normalization_1/cond_2/pred_id:0&batch_normalization_1/cond_2/pred_id:0]
#batch_normalization_1/moving_mean:06batch_normalization_1/cond_2/ReadVariableOp_1/Switch:0
	
&batch_normalization_1/cond_3/cond_text&batch_normalization_1/cond_3/pred_id:0'batch_normalization_1/cond_3/switch_t:0 *
$batch_normalization_1/cond_1/Merge:0
7batch_normalization_1/cond_3/AssignMovingAvg/Identity:0
Ibatch_normalization_1/cond_3/AssignMovingAvg/Read/ReadVariableOp/Switch:1
Bbatch_normalization_1/cond_3/AssignMovingAvg/Read/ReadVariableOp:0
=batch_normalization_1/cond_3/AssignMovingAvg/ReadVariableOp:0
?batch_normalization_1/cond_3/AssignMovingAvg/ReadVariableOp_1:0
4batch_normalization_1/cond_3/AssignMovingAvg/decay:0
2batch_normalization_1/cond_3/AssignMovingAvg/mul:0
9batch_normalization_1/cond_3/AssignMovingAvg/sub/Switch:1
2batch_normalization_1/cond_3/AssignMovingAvg/sub:0
-batch_normalization_1/cond_3/ReadVariableOp:0
&batch_normalization_1/cond_3/pred_id:0
'batch_normalization_1/cond_3/switch_t:0
'batch_normalization_1/moving_variance:0t
'batch_normalization_1/moving_variance:0Ibatch_normalization_1/cond_3/AssignMovingAvg/Read/ReadVariableOp/Switch:1P
&batch_normalization_1/cond_3/pred_id:0&batch_normalization_1/cond_3/pred_id:0a
$batch_normalization_1/cond_1/Merge:09batch_normalization_1/cond_3/AssignMovingAvg/sub/Switch:1

(batch_normalization_1/cond_3/cond_text_1&batch_normalization_1/cond_3/pred_id:0'batch_normalization_1/cond_3/switch_f:0*
6batch_normalization_1/cond_3/ReadVariableOp_1/Switch:0
/batch_normalization_1/cond_3/ReadVariableOp_1:0
&batch_normalization_1/cond_3/pred_id:0
'batch_normalization_1/cond_3/switch_f:0
'batch_normalization_1/moving_variance:0a
'batch_normalization_1/moving_variance:06batch_normalization_1/cond_3/ReadVariableOp_1/Switch:0P
&batch_normalization_1/cond_3/pred_id:0&batch_normalization_1/cond_3/pred_id:0

dropout_1/cond/cond_textdropout_1/cond/pred_id:0dropout_1/cond/switch_t:0 *ˇ
activation_1/Relu:0
dropout_1/cond/dropout/Floor:0
%dropout_1/cond/dropout/Shape/Switch:1
dropout_1/cond/dropout/Shape:0
dropout_1/cond/dropout/add:0
dropout_1/cond/dropout/div:0
"dropout_1/cond/dropout/keep_prob:0
dropout_1/cond/dropout/mul:0
5dropout_1/cond/dropout/random_uniform/RandomUniform:0
+dropout_1/cond/dropout/random_uniform/max:0
+dropout_1/cond/dropout/random_uniform/min:0
+dropout_1/cond/dropout/random_uniform/mul:0
+dropout_1/cond/dropout/random_uniform/sub:0
'dropout_1/cond/dropout/random_uniform:0
dropout_1/cond/pred_id:0
dropout_1/cond/switch_t:0<
activation_1/Relu:0%dropout_1/cond/dropout/Shape/Switch:14
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:0
Ę
dropout_1/cond/cond_text_1dropout_1/cond/pred_id:0dropout_1/cond/switch_f:0*ö
activation_1/Relu:0
 dropout_1/cond/Identity/Switch:0
dropout_1/cond/Identity:0
dropout_1/cond/pred_id:0
dropout_1/cond/switch_f:07
activation_1/Relu:0 dropout_1/cond/Identity/Switch:04
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:0"ńq
	variablesăqŕq

hidden1/kernel:0hidden1/kernel/Assign$hidden1/kernel/Read/ReadVariableOp:0(2+hidden1/kernel/Initializer/random_uniform:08
o
hidden1/bias:0hidden1/bias/Assign"hidden1/bias/Read/ReadVariableOp:0(2 hidden1/bias/Initializer/zeros:08
˘
batch_normalization/gamma:0 batch_normalization/gamma/Assign/batch_normalization/gamma/Read/ReadVariableOp:0(2,batch_normalization/gamma/Initializer/ones:08

batch_normalization/beta:0batch_normalization/beta/Assign.batch_normalization/beta/Read/ReadVariableOp:0(2,batch_normalization/beta/Initializer/zeros:08
š
!batch_normalization/moving_mean:0&batch_normalization/moving_mean/Assign5batch_normalization/moving_mean/Read/ReadVariableOp:0(23batch_normalization/moving_mean/Initializer/zeros:0
Č
%batch_normalization/moving_variance:0*batch_normalization/moving_variance/Assign9batch_normalization/moving_variance/Read/ReadVariableOp:0(26batch_normalization/moving_variance/Initializer/ones:0

hidden2/kernel:0hidden2/kernel/Assign$hidden2/kernel/Read/ReadVariableOp:0(2+hidden2/kernel/Initializer/random_uniform:08
o
hidden2/bias:0hidden2/bias/Assign"hidden2/bias/Read/ReadVariableOp:0(2 hidden2/bias/Initializer/zeros:08
Ş
batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign1batch_normalization_1/gamma/Read/ReadVariableOp:0(2.batch_normalization_1/gamma/Initializer/ones:08
§
batch_normalization_1/beta:0!batch_normalization_1/beta/Assign0batch_normalization_1/beta/Read/ReadVariableOp:0(2.batch_normalization_1/beta/Initializer/zeros:08
Á
#batch_normalization_1/moving_mean:0(batch_normalization_1/moving_mean/Assign7batch_normalization_1/moving_mean/Read/ReadVariableOp:0(25batch_normalization_1/moving_mean/Initializer/zeros:0
Đ
'batch_normalization_1/moving_variance:0,batch_normalization_1/moving_variance/Assign;batch_normalization_1/moving_variance/Read/ReadVariableOp:0(28batch_normalization_1/moving_variance/Initializer/ones:0

softmax/kernel:0softmax/kernel/Assign$softmax/kernel/Read/ReadVariableOp:0(2+softmax/kernel/Initializer/random_uniform:08
o
softmax/bias:0softmax/bias/Assign"softmax/bias/Read/ReadVariableOp:0(2 softmax/bias/Initializer/zeros:08

Adam/iterations:0Adam/iterations/Assign%Adam/iterations/Read/ReadVariableOp:0(2+Adam/iterations/Initializer/initial_value:08
c
	Adam/lr:0Adam/lr/AssignAdam/lr/Read/ReadVariableOp:0(2#Adam/lr/Initializer/initial_value:08
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:08
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:08
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:08

training/Adam/Variable:0training/Adam/Variable/Assign,training/Adam/Variable/Read/ReadVariableOp:0(2training/Adam/zeros:08

training/Adam/Variable_1:0training/Adam/Variable_1/Assign.training/Adam/Variable_1/Read/ReadVariableOp:0(2training/Adam/zeros_1:08

training/Adam/Variable_2:0training/Adam/Variable_2/Assign.training/Adam/Variable_2/Read/ReadVariableOp:0(2training/Adam/zeros_2:08

training/Adam/Variable_3:0training/Adam/Variable_3/Assign.training/Adam/Variable_3/Read/ReadVariableOp:0(2training/Adam/zeros_3:08

training/Adam/Variable_4:0training/Adam/Variable_4/Assign.training/Adam/Variable_4/Read/ReadVariableOp:0(2training/Adam/zeros_4:08

training/Adam/Variable_5:0training/Adam/Variable_5/Assign.training/Adam/Variable_5/Read/ReadVariableOp:0(2training/Adam/zeros_5:08

training/Adam/Variable_6:0training/Adam/Variable_6/Assign.training/Adam/Variable_6/Read/ReadVariableOp:0(2training/Adam/zeros_6:08

training/Adam/Variable_7:0training/Adam/Variable_7/Assign.training/Adam/Variable_7/Read/ReadVariableOp:0(2training/Adam/zeros_7:08

training/Adam/Variable_8:0training/Adam/Variable_8/Assign.training/Adam/Variable_8/Read/ReadVariableOp:0(2training/Adam/zeros_8:08

training/Adam/Variable_9:0training/Adam/Variable_9/Assign.training/Adam/Variable_9/Read/ReadVariableOp:0(2training/Adam/zeros_9:08

training/Adam/Variable_10:0 training/Adam/Variable_10/Assign/training/Adam/Variable_10/Read/ReadVariableOp:0(2training/Adam/zeros_10:08

training/Adam/Variable_11:0 training/Adam/Variable_11/Assign/training/Adam/Variable_11/Read/ReadVariableOp:0(2training/Adam/zeros_11:08

training/Adam/Variable_12:0 training/Adam/Variable_12/Assign/training/Adam/Variable_12/Read/ReadVariableOp:0(2training/Adam/zeros_12:08

training/Adam/Variable_13:0 training/Adam/Variable_13/Assign/training/Adam/Variable_13/Read/ReadVariableOp:0(2training/Adam/zeros_13:08

training/Adam/Variable_14:0 training/Adam/Variable_14/Assign/training/Adam/Variable_14/Read/ReadVariableOp:0(2training/Adam/zeros_14:08

training/Adam/Variable_15:0 training/Adam/Variable_15/Assign/training/Adam/Variable_15/Read/ReadVariableOp:0(2training/Adam/zeros_15:08

training/Adam/Variable_16:0 training/Adam/Variable_16/Assign/training/Adam/Variable_16/Read/ReadVariableOp:0(2training/Adam/zeros_16:08

training/Adam/Variable_17:0 training/Adam/Variable_17/Assign/training/Adam/Variable_17/Read/ReadVariableOp:0(2training/Adam/zeros_17:08

training/Adam/Variable_18:0 training/Adam/Variable_18/Assign/training/Adam/Variable_18/Read/ReadVariableOp:0(2training/Adam/zeros_18:08

training/Adam/Variable_19:0 training/Adam/Variable_19/Assign/training/Adam/Variable_19/Read/ReadVariableOp:0(2training/Adam/zeros_19:08

training/Adam/Variable_20:0 training/Adam/Variable_20/Assign/training/Adam/Variable_20/Read/ReadVariableOp:0(2training/Adam/zeros_20:08

training/Adam/Variable_21:0 training/Adam/Variable_21/Assign/training/Adam/Variable_21/Read/ReadVariableOp:0(2training/Adam/zeros_21:08

training/Adam/Variable_22:0 training/Adam/Variable_22/Assign/training/Adam/Variable_22/Read/ReadVariableOp:0(2training/Adam/zeros_22:08

training/Adam/Variable_23:0 training/Adam/Variable_23/Assign/training/Adam/Variable_23/Read/ReadVariableOp:0(2training/Adam/zeros_23:08

training/Adam/Variable_24:0 training/Adam/Variable_24/Assign/training/Adam/Variable_24/Read/ReadVariableOp:0(2training/Adam/zeros_24:08

training/Adam/Variable_25:0 training/Adam/Variable_25/Assign/training/Adam/Variable_25/Read/ReadVariableOp:0(2training/Adam/zeros_25:08

training/Adam/Variable_26:0 training/Adam/Variable_26/Assign/training/Adam/Variable_26/Read/ReadVariableOp:0(2training/Adam/zeros_26:08

training/Adam/Variable_27:0 training/Adam/Variable_27/Assign/training/Adam/Variable_27/Read/ReadVariableOp:0(2training/Adam/zeros_27:08

training/Adam/Variable_28:0 training/Adam/Variable_28/Assign/training/Adam/Variable_28/Read/ReadVariableOp:0(2training/Adam/zeros_28:08

training/Adam/Variable_29:0 training/Adam/Variable_29/Assign/training/Adam/Variable_29/Read/ReadVariableOp:0(2training/Adam/zeros_29:08

hidden1_1/kernel:0hidden1_1/kernel/Assign&hidden1_1/kernel/Read/ReadVariableOp:0(2-hidden1_1/kernel/Initializer/random_uniform:08
w
hidden1_1/bias:0hidden1_1/bias/Assign$hidden1_1/bias/Read/ReadVariableOp:0(2"hidden1_1/bias/Initializer/zeros:08
Ş
batch_normalization_2/gamma:0"batch_normalization_2/gamma/Assign1batch_normalization_2/gamma/Read/ReadVariableOp:0(2.batch_normalization_2/gamma/Initializer/ones:08
§
batch_normalization_2/beta:0!batch_normalization_2/beta/Assign0batch_normalization_2/beta/Read/ReadVariableOp:0(2.batch_normalization_2/beta/Initializer/zeros:08
Á
#batch_normalization_2/moving_mean:0(batch_normalization_2/moving_mean/Assign7batch_normalization_2/moving_mean/Read/ReadVariableOp:0(25batch_normalization_2/moving_mean/Initializer/zeros:0
Đ
'batch_normalization_2/moving_variance:0,batch_normalization_2/moving_variance/Assign;batch_normalization_2/moving_variance/Read/ReadVariableOp:0(28batch_normalization_2/moving_variance/Initializer/ones:0

hidden2_1/kernel:0hidden2_1/kernel/Assign&hidden2_1/kernel/Read/ReadVariableOp:0(2-hidden2_1/kernel/Initializer/random_uniform:08
w
hidden2_1/bias:0hidden2_1/bias/Assign$hidden2_1/bias/Read/ReadVariableOp:0(2"hidden2_1/bias/Initializer/zeros:08
˛
batch_normalization_1_1/gamma:0$batch_normalization_1_1/gamma/Assign3batch_normalization_1_1/gamma/Read/ReadVariableOp:0(20batch_normalization_1_1/gamma/Initializer/ones:08
Ż
batch_normalization_1_1/beta:0#batch_normalization_1_1/beta/Assign2batch_normalization_1_1/beta/Read/ReadVariableOp:0(20batch_normalization_1_1/beta/Initializer/zeros:08
É
%batch_normalization_1_1/moving_mean:0*batch_normalization_1_1/moving_mean/Assign9batch_normalization_1_1/moving_mean/Read/ReadVariableOp:0(27batch_normalization_1_1/moving_mean/Initializer/zeros:0
Ř
)batch_normalization_1_1/moving_variance:0.batch_normalization_1_1/moving_variance/Assign=batch_normalization_1_1/moving_variance/Read/ReadVariableOp:0(2:batch_normalization_1_1/moving_variance/Initializer/ones:0

softmax_1/kernel:0softmax_1/kernel/Assign&softmax_1/kernel/Read/ReadVariableOp:0(2-softmax_1/kernel/Initializer/random_uniform:08
w
softmax_1/bias:0softmax_1/bias/Assign$softmax_1/bias/Read/ReadVariableOp:0(2"softmax_1/bias/Initializer/zeros:08

Adam_1/iterations:0Adam_1/iterations/Assign'Adam_1/iterations/Read/ReadVariableOp:0(2-Adam_1/iterations/Initializer/initial_value:08
k
Adam_1/lr:0Adam_1/lr/AssignAdam_1/lr/Read/ReadVariableOp:0(2%Adam_1/lr/Initializer/initial_value:08
{
Adam_1/beta_1:0Adam_1/beta_1/Assign#Adam_1/beta_1/Read/ReadVariableOp:0(2)Adam_1/beta_1/Initializer/initial_value:08
{
Adam_1/beta_2:0Adam_1/beta_2/Assign#Adam_1/beta_2/Read/ReadVariableOp:0(2)Adam_1/beta_2/Initializer/initial_value:08
w
Adam_1/decay:0Adam_1/decay/Assign"Adam_1/decay/Read/ReadVariableOp:0(2(Adam_1/decay/Initializer/initial_value:08

training_1/Adam/Variable:0training_1/Adam/Variable/Assign.training_1/Adam/Variable/Read/ReadVariableOp:0(2training_1/Adam/zeros:08

training_1/Adam/Variable_1:0!training_1/Adam/Variable_1/Assign0training_1/Adam/Variable_1/Read/ReadVariableOp:0(2training_1/Adam/zeros_1:08

training_1/Adam/Variable_2:0!training_1/Adam/Variable_2/Assign0training_1/Adam/Variable_2/Read/ReadVariableOp:0(2training_1/Adam/zeros_2:08

training_1/Adam/Variable_3:0!training_1/Adam/Variable_3/Assign0training_1/Adam/Variable_3/Read/ReadVariableOp:0(2training_1/Adam/zeros_3:08

training_1/Adam/Variable_4:0!training_1/Adam/Variable_4/Assign0training_1/Adam/Variable_4/Read/ReadVariableOp:0(2training_1/Adam/zeros_4:08

training_1/Adam/Variable_5:0!training_1/Adam/Variable_5/Assign0training_1/Adam/Variable_5/Read/ReadVariableOp:0(2training_1/Adam/zeros_5:08

training_1/Adam/Variable_6:0!training_1/Adam/Variable_6/Assign0training_1/Adam/Variable_6/Read/ReadVariableOp:0(2training_1/Adam/zeros_6:08

training_1/Adam/Variable_7:0!training_1/Adam/Variable_7/Assign0training_1/Adam/Variable_7/Read/ReadVariableOp:0(2training_1/Adam/zeros_7:08

training_1/Adam/Variable_8:0!training_1/Adam/Variable_8/Assign0training_1/Adam/Variable_8/Read/ReadVariableOp:0(2training_1/Adam/zeros_8:08

training_1/Adam/Variable_9:0!training_1/Adam/Variable_9/Assign0training_1/Adam/Variable_9/Read/ReadVariableOp:0(2training_1/Adam/zeros_9:08

training_1/Adam/Variable_10:0"training_1/Adam/Variable_10/Assign1training_1/Adam/Variable_10/Read/ReadVariableOp:0(2training_1/Adam/zeros_10:08

training_1/Adam/Variable_11:0"training_1/Adam/Variable_11/Assign1training_1/Adam/Variable_11/Read/ReadVariableOp:0(2training_1/Adam/zeros_11:08

training_1/Adam/Variable_12:0"training_1/Adam/Variable_12/Assign1training_1/Adam/Variable_12/Read/ReadVariableOp:0(2training_1/Adam/zeros_12:08

training_1/Adam/Variable_13:0"training_1/Adam/Variable_13/Assign1training_1/Adam/Variable_13/Read/ReadVariableOp:0(2training_1/Adam/zeros_13:08

training_1/Adam/Variable_14:0"training_1/Adam/Variable_14/Assign1training_1/Adam/Variable_14/Read/ReadVariableOp:0(2training_1/Adam/zeros_14:08

training_1/Adam/Variable_15:0"training_1/Adam/Variable_15/Assign1training_1/Adam/Variable_15/Read/ReadVariableOp:0(2training_1/Adam/zeros_15:08

training_1/Adam/Variable_16:0"training_1/Adam/Variable_16/Assign1training_1/Adam/Variable_16/Read/ReadVariableOp:0(2training_1/Adam/zeros_16:08

training_1/Adam/Variable_17:0"training_1/Adam/Variable_17/Assign1training_1/Adam/Variable_17/Read/ReadVariableOp:0(2training_1/Adam/zeros_17:08

training_1/Adam/Variable_18:0"training_1/Adam/Variable_18/Assign1training_1/Adam/Variable_18/Read/ReadVariableOp:0(2training_1/Adam/zeros_18:08

training_1/Adam/Variable_19:0"training_1/Adam/Variable_19/Assign1training_1/Adam/Variable_19/Read/ReadVariableOp:0(2training_1/Adam/zeros_19:08

training_1/Adam/Variable_20:0"training_1/Adam/Variable_20/Assign1training_1/Adam/Variable_20/Read/ReadVariableOp:0(2training_1/Adam/zeros_20:08

training_1/Adam/Variable_21:0"training_1/Adam/Variable_21/Assign1training_1/Adam/Variable_21/Read/ReadVariableOp:0(2training_1/Adam/zeros_21:08

training_1/Adam/Variable_22:0"training_1/Adam/Variable_22/Assign1training_1/Adam/Variable_22/Read/ReadVariableOp:0(2training_1/Adam/zeros_22:08

training_1/Adam/Variable_23:0"training_1/Adam/Variable_23/Assign1training_1/Adam/Variable_23/Read/ReadVariableOp:0(2training_1/Adam/zeros_23:08

training_1/Adam/Variable_24:0"training_1/Adam/Variable_24/Assign1training_1/Adam/Variable_24/Read/ReadVariableOp:0(2training_1/Adam/zeros_24:08

training_1/Adam/Variable_25:0"training_1/Adam/Variable_25/Assign1training_1/Adam/Variable_25/Read/ReadVariableOp:0(2training_1/Adam/zeros_25:08

training_1/Adam/Variable_26:0"training_1/Adam/Variable_26/Assign1training_1/Adam/Variable_26/Read/ReadVariableOp:0(2training_1/Adam/zeros_26:08

training_1/Adam/Variable_27:0"training_1/Adam/Variable_27/Assign1training_1/Adam/Variable_27/Read/ReadVariableOp:0(2training_1/Adam/zeros_27:08

training_1/Adam/Variable_28:0"training_1/Adam/Variable_28/Assign1training_1/Adam/Variable_28/Read/ReadVariableOp:0(2training_1/Adam/zeros_28:08

training_1/Adam/Variable_29:0"training_1/Adam/Variable_29/Assign1training_1/Adam/Variable_29/Read/ReadVariableOp:0(2training_1/Adam/zeros_29:08*
serving_default
2
inputs(
hidden1_input_1:0˙˙˙˙˙˙˙˙˙4
scores*
softmax_1/Softmax:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict