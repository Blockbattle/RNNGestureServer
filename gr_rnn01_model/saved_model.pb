ўю
ђо
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(ѕ
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ
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
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ѕе
@
StaticRegexFullMatch	
input

output
"
patternstring
Ш
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
-
Tanh
x"T
y"T"
Ttype:

2
Ф
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleіжelement_dtype"
element_dtypetype"

shape_typetype:
2	
џ
TensorListReserve
element_shape"
shape_type
num_elements#
handleіжelement_dtype"
element_dtypetype"

shape_typetype:
2	
ѕ
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ
ћ
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
ѕ"serve*2.7.02v2.7.0-0-gc256c071bb28у╚
{
dense_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Я* 
shared_namedense_25/kernel
t
#dense_25/kernel/Read/ReadVariableOpReadVariableOpdense_25/kernel*
_output_shapes
:	Я*
dtype0
r
dense_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_25/bias
k
!dense_25/bias/Read/ReadVariableOpReadVariableOpdense_25/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
ф
'simple_rnn_50/simple_rnn_cell_50/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*8
shared_name)'simple_rnn_50/simple_rnn_cell_50/kernel
Б
;simple_rnn_50/simple_rnn_cell_50/kernel/Read/ReadVariableOpReadVariableOp'simple_rnn_50/simple_rnn_cell_50/kernel*
_output_shapes

:@*
dtype0
Й
1simple_rnn_50/simple_rnn_cell_50/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*B
shared_name31simple_rnn_50/simple_rnn_cell_50/recurrent_kernel
и
Esimple_rnn_50/simple_rnn_cell_50/recurrent_kernel/Read/ReadVariableOpReadVariableOp1simple_rnn_50/simple_rnn_cell_50/recurrent_kernel*
_output_shapes

:@@*
dtype0
б
%simple_rnn_50/simple_rnn_cell_50/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%simple_rnn_50/simple_rnn_cell_50/bias
Џ
9simple_rnn_50/simple_rnn_cell_50/bias/Read/ReadVariableOpReadVariableOp%simple_rnn_50/simple_rnn_cell_50/bias*
_output_shapes
:@*
dtype0
Ф
'simple_rnn_51/simple_rnn_cell_51/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@Я*8
shared_name)'simple_rnn_51/simple_rnn_cell_51/kernel
ц
;simple_rnn_51/simple_rnn_cell_51/kernel/Read/ReadVariableOpReadVariableOp'simple_rnn_51/simple_rnn_cell_51/kernel*
_output_shapes
:	@Я*
dtype0
└
1simple_rnn_51/simple_rnn_cell_51/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ЯЯ*B
shared_name31simple_rnn_51/simple_rnn_cell_51/recurrent_kernel
╣
Esimple_rnn_51/simple_rnn_cell_51/recurrent_kernel/Read/ReadVariableOpReadVariableOp1simple_rnn_51/simple_rnn_cell_51/recurrent_kernel* 
_output_shapes
:
ЯЯ*
dtype0
Б
%simple_rnn_51/simple_rnn_cell_51/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Я*6
shared_name'%simple_rnn_51/simple_rnn_cell_51/bias
ю
9simple_rnn_51/simple_rnn_cell_51/bias/Read/ReadVariableOpReadVariableOp%simple_rnn_51/simple_rnn_cell_51/bias*
_output_shapes	
:Я*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
Ѕ
Adam/dense_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Я*'
shared_nameAdam/dense_25/kernel/m
ѓ
*Adam/dense_25/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_25/kernel/m*
_output_shapes
:	Я*
dtype0
ђ
Adam/dense_25/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_25/bias/m
y
(Adam/dense_25/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_25/bias/m*
_output_shapes
:*
dtype0
И
.Adam/simple_rnn_50/simple_rnn_cell_50/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*?
shared_name0.Adam/simple_rnn_50/simple_rnn_cell_50/kernel/m
▒
BAdam/simple_rnn_50/simple_rnn_cell_50/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_50/simple_rnn_cell_50/kernel/m*
_output_shapes

:@*
dtype0
╠
8Adam/simple_rnn_50/simple_rnn_cell_50/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*I
shared_name:8Adam/simple_rnn_50/simple_rnn_cell_50/recurrent_kernel/m
┼
LAdam/simple_rnn_50/simple_rnn_cell_50/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_50/simple_rnn_cell_50/recurrent_kernel/m*
_output_shapes

:@@*
dtype0
░
,Adam/simple_rnn_50/simple_rnn_cell_50/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*=
shared_name.,Adam/simple_rnn_50/simple_rnn_cell_50/bias/m
Е
@Adam/simple_rnn_50/simple_rnn_cell_50/bias/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_50/simple_rnn_cell_50/bias/m*
_output_shapes
:@*
dtype0
╣
.Adam/simple_rnn_51/simple_rnn_cell_51/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@Я*?
shared_name0.Adam/simple_rnn_51/simple_rnn_cell_51/kernel/m
▓
BAdam/simple_rnn_51/simple_rnn_cell_51/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_51/simple_rnn_cell_51/kernel/m*
_output_shapes
:	@Я*
dtype0
╬
8Adam/simple_rnn_51/simple_rnn_cell_51/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ЯЯ*I
shared_name:8Adam/simple_rnn_51/simple_rnn_cell_51/recurrent_kernel/m
К
LAdam/simple_rnn_51/simple_rnn_cell_51/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_51/simple_rnn_cell_51/recurrent_kernel/m* 
_output_shapes
:
ЯЯ*
dtype0
▒
,Adam/simple_rnn_51/simple_rnn_cell_51/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Я*=
shared_name.,Adam/simple_rnn_51/simple_rnn_cell_51/bias/m
ф
@Adam/simple_rnn_51/simple_rnn_cell_51/bias/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_51/simple_rnn_cell_51/bias/m*
_output_shapes	
:Я*
dtype0
Ѕ
Adam/dense_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Я*'
shared_nameAdam/dense_25/kernel/v
ѓ
*Adam/dense_25/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_25/kernel/v*
_output_shapes
:	Я*
dtype0
ђ
Adam/dense_25/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_25/bias/v
y
(Adam/dense_25/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_25/bias/v*
_output_shapes
:*
dtype0
И
.Adam/simple_rnn_50/simple_rnn_cell_50/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*?
shared_name0.Adam/simple_rnn_50/simple_rnn_cell_50/kernel/v
▒
BAdam/simple_rnn_50/simple_rnn_cell_50/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_50/simple_rnn_cell_50/kernel/v*
_output_shapes

:@*
dtype0
╠
8Adam/simple_rnn_50/simple_rnn_cell_50/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*I
shared_name:8Adam/simple_rnn_50/simple_rnn_cell_50/recurrent_kernel/v
┼
LAdam/simple_rnn_50/simple_rnn_cell_50/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_50/simple_rnn_cell_50/recurrent_kernel/v*
_output_shapes

:@@*
dtype0
░
,Adam/simple_rnn_50/simple_rnn_cell_50/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*=
shared_name.,Adam/simple_rnn_50/simple_rnn_cell_50/bias/v
Е
@Adam/simple_rnn_50/simple_rnn_cell_50/bias/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_50/simple_rnn_cell_50/bias/v*
_output_shapes
:@*
dtype0
╣
.Adam/simple_rnn_51/simple_rnn_cell_51/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@Я*?
shared_name0.Adam/simple_rnn_51/simple_rnn_cell_51/kernel/v
▓
BAdam/simple_rnn_51/simple_rnn_cell_51/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_51/simple_rnn_cell_51/kernel/v*
_output_shapes
:	@Я*
dtype0
╬
8Adam/simple_rnn_51/simple_rnn_cell_51/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ЯЯ*I
shared_name:8Adam/simple_rnn_51/simple_rnn_cell_51/recurrent_kernel/v
К
LAdam/simple_rnn_51/simple_rnn_cell_51/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_51/simple_rnn_cell_51/recurrent_kernel/v* 
_output_shapes
:
ЯЯ*
dtype0
▒
,Adam/simple_rnn_51/simple_rnn_cell_51/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Я*=
shared_name.,Adam/simple_rnn_51/simple_rnn_cell_51/bias/v
ф
@Adam/simple_rnn_51/simple_rnn_cell_51/bias/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_51/simple_rnn_cell_51/bias/v*
_output_shapes	
:Я*
dtype0

NoOpNoOp
Ч7
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*и7
valueГ7Bф7 BБ7
ђ
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

 kernel
!bias
"	variables
#trainable_variables
$regularization_losses
%	keras_api
л
&iter

'beta_1

(beta_2
	)decay
*learning_rate mn!mo+mp,mq-mr.ms/mt0mu vv!vw+vx,vy-vz.v{/v|0v}
8
+0
,1
-2
.3
/4
05
 6
!7
8
+0
,1
-2
.3
/4
05
 6
!7
 
Г
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
	regularization_losses
 
~

+kernel
,recurrent_kernel
-bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
 

+0
,1
-2

+0
,1
-2
 
╣

:states
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
Г
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
regularization_losses
~

.kernel
/recurrent_kernel
0bias
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
 

.0
/1
02

.0
/1
02
 
╣

Istates
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
Г
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
regularization_losses
[Y
VARIABLE_VALUEdense_25/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_25/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

 0
!1

 0
!1
 
Г
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
"	variables
#trainable_variables
$regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'simple_rnn_50/simple_rnn_cell_50/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE1simple_rnn_50/simple_rnn_cell_50/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%simple_rnn_50/simple_rnn_cell_50/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'simple_rnn_51/simple_rnn_cell_51/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE1simple_rnn_51/simple_rnn_cell_51/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%simple_rnn_51/simple_rnn_cell_51/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
 
#
0
1
2
3
4

Y0
Z1
 
 

+0
,1
-2

+0
,1
-2
 
Г
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
6	variables
7trainable_variables
8regularization_losses
 
 

0
 
 
 
 
 
 
 
 

.0
/1
02

.0
/1
02
 
Г
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
 
 

0
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	etotal
	fcount
g	variables
h	keras_api
D
	itotal
	jcount
k
_fn_kwargs
l	variables
m	keras_api
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

e0
f1

g	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

i0
j1

l	variables
~|
VARIABLE_VALUEAdam/dense_25/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_25/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/simple_rnn_50/simple_rnn_cell_50/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Љј
VARIABLE_VALUE8Adam/simple_rnn_50/simple_rnn_cell_50/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Ёѓ
VARIABLE_VALUE,Adam/simple_rnn_50/simple_rnn_cell_50/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/simple_rnn_51/simple_rnn_cell_51/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Љј
VARIABLE_VALUE8Adam/simple_rnn_51/simple_rnn_cell_51/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Ёѓ
VARIABLE_VALUE,Adam/simple_rnn_51/simple_rnn_cell_51/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_25/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_25/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/simple_rnn_50/simple_rnn_cell_50/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Љј
VARIABLE_VALUE8Adam/simple_rnn_50/simple_rnn_cell_50/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ёѓ
VARIABLE_VALUE,Adam/simple_rnn_50/simple_rnn_cell_50/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/simple_rnn_51/simple_rnn_cell_51/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Љј
VARIABLE_VALUE8Adam/simple_rnn_51/simple_rnn_cell_51/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ёѓ
VARIABLE_VALUE,Adam/simple_rnn_51/simple_rnn_cell_51/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ј
#serving_default_simple_rnn_50_inputPlaceholder*+
_output_shapes
:         *
dtype0* 
shape:         
э
StatefulPartitionedCallStatefulPartitionedCall#serving_default_simple_rnn_50_input'simple_rnn_50/simple_rnn_cell_50/kernel%simple_rnn_50/simple_rnn_cell_50/bias1simple_rnn_50/simple_rnn_cell_50/recurrent_kernel'simple_rnn_51/simple_rnn_cell_51/kernel%simple_rnn_51/simple_rnn_cell_51/bias1simple_rnn_51/simple_rnn_cell_51/recurrent_kerneldense_25/kerneldense_25/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8ѓ *-
f(R&
$__inference_signature_wrapper_190402
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
џ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_25/kernel/Read/ReadVariableOp!dense_25/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp;simple_rnn_50/simple_rnn_cell_50/kernel/Read/ReadVariableOpEsimple_rnn_50/simple_rnn_cell_50/recurrent_kernel/Read/ReadVariableOp9simple_rnn_50/simple_rnn_cell_50/bias/Read/ReadVariableOp;simple_rnn_51/simple_rnn_cell_51/kernel/Read/ReadVariableOpEsimple_rnn_51/simple_rnn_cell_51/recurrent_kernel/Read/ReadVariableOp9simple_rnn_51/simple_rnn_cell_51/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_25/kernel/m/Read/ReadVariableOp(Adam/dense_25/bias/m/Read/ReadVariableOpBAdam/simple_rnn_50/simple_rnn_cell_50/kernel/m/Read/ReadVariableOpLAdam/simple_rnn_50/simple_rnn_cell_50/recurrent_kernel/m/Read/ReadVariableOp@Adam/simple_rnn_50/simple_rnn_cell_50/bias/m/Read/ReadVariableOpBAdam/simple_rnn_51/simple_rnn_cell_51/kernel/m/Read/ReadVariableOpLAdam/simple_rnn_51/simple_rnn_cell_51/recurrent_kernel/m/Read/ReadVariableOp@Adam/simple_rnn_51/simple_rnn_cell_51/bias/m/Read/ReadVariableOp*Adam/dense_25/kernel/v/Read/ReadVariableOp(Adam/dense_25/bias/v/Read/ReadVariableOpBAdam/simple_rnn_50/simple_rnn_cell_50/kernel/v/Read/ReadVariableOpLAdam/simple_rnn_50/simple_rnn_cell_50/recurrent_kernel/v/Read/ReadVariableOp@Adam/simple_rnn_50/simple_rnn_cell_50/bias/v/Read/ReadVariableOpBAdam/simple_rnn_51/simple_rnn_cell_51/kernel/v/Read/ReadVariableOpLAdam/simple_rnn_51/simple_rnn_cell_51/recurrent_kernel/v/Read/ReadVariableOp@Adam/simple_rnn_51/simple_rnn_cell_51/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *(
f#R!
__inference__traced_save_192220
Ђ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_25/kerneldense_25/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate'simple_rnn_50/simple_rnn_cell_50/kernel1simple_rnn_50/simple_rnn_cell_50/recurrent_kernel%simple_rnn_50/simple_rnn_cell_50/bias'simple_rnn_51/simple_rnn_cell_51/kernel1simple_rnn_51/simple_rnn_cell_51/recurrent_kernel%simple_rnn_51/simple_rnn_cell_51/biastotalcounttotal_1count_1Adam/dense_25/kernel/mAdam/dense_25/bias/m.Adam/simple_rnn_50/simple_rnn_cell_50/kernel/m8Adam/simple_rnn_50/simple_rnn_cell_50/recurrent_kernel/m,Adam/simple_rnn_50/simple_rnn_cell_50/bias/m.Adam/simple_rnn_51/simple_rnn_cell_51/kernel/m8Adam/simple_rnn_51/simple_rnn_cell_51/recurrent_kernel/m,Adam/simple_rnn_51/simple_rnn_cell_51/bias/mAdam/dense_25/kernel/vAdam/dense_25/bias/v.Adam/simple_rnn_50/simple_rnn_cell_50/kernel/v8Adam/simple_rnn_50/simple_rnn_cell_50/recurrent_kernel/v,Adam/simple_rnn_50/simple_rnn_cell_50/bias/v.Adam/simple_rnn_51/simple_rnn_cell_51/kernel/v8Adam/simple_rnn_51/simple_rnn_cell_51/recurrent_kernel/v,Adam/simple_rnn_51/simple_rnn_cell_51/bias/v*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *+
f&R$
"__inference__traced_restore_192329ща
л
Й
-sequential_25_simple_rnn_50_while_cond_188831T
Psequential_25_simple_rnn_50_while_sequential_25_simple_rnn_50_while_loop_counterZ
Vsequential_25_simple_rnn_50_while_sequential_25_simple_rnn_50_while_maximum_iterations1
-sequential_25_simple_rnn_50_while_placeholder3
/sequential_25_simple_rnn_50_while_placeholder_13
/sequential_25_simple_rnn_50_while_placeholder_2V
Rsequential_25_simple_rnn_50_while_less_sequential_25_simple_rnn_50_strided_slice_1l
hsequential_25_simple_rnn_50_while_sequential_25_simple_rnn_50_while_cond_188831___redundant_placeholder0l
hsequential_25_simple_rnn_50_while_sequential_25_simple_rnn_50_while_cond_188831___redundant_placeholder1l
hsequential_25_simple_rnn_50_while_sequential_25_simple_rnn_50_while_cond_188831___redundant_placeholder2l
hsequential_25_simple_rnn_50_while_sequential_25_simple_rnn_50_while_cond_188831___redundant_placeholder3.
*sequential_25_simple_rnn_50_while_identity
м
&sequential_25/simple_rnn_50/while/LessLess-sequential_25_simple_rnn_50_while_placeholderRsequential_25_simple_rnn_50_while_less_sequential_25_simple_rnn_50_strided_slice_1*
T0*
_output_shapes
: Ѓ
*sequential_25/simple_rnn_50/while/IdentityIdentity*sequential_25/simple_rnn_50/while/Less:z:0*
T0
*
_output_shapes
: "a
*sequential_25_simple_rnn_50_while_identity3sequential_25/simple_rnn_50/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
м
Й
-sequential_25_simple_rnn_51_while_cond_188940T
Psequential_25_simple_rnn_51_while_sequential_25_simple_rnn_51_while_loop_counterZ
Vsequential_25_simple_rnn_51_while_sequential_25_simple_rnn_51_while_maximum_iterations1
-sequential_25_simple_rnn_51_while_placeholder3
/sequential_25_simple_rnn_51_while_placeholder_13
/sequential_25_simple_rnn_51_while_placeholder_2V
Rsequential_25_simple_rnn_51_while_less_sequential_25_simple_rnn_51_strided_slice_1l
hsequential_25_simple_rnn_51_while_sequential_25_simple_rnn_51_while_cond_188940___redundant_placeholder0l
hsequential_25_simple_rnn_51_while_sequential_25_simple_rnn_51_while_cond_188940___redundant_placeholder1l
hsequential_25_simple_rnn_51_while_sequential_25_simple_rnn_51_while_cond_188940___redundant_placeholder2l
hsequential_25_simple_rnn_51_while_sequential_25_simple_rnn_51_while_cond_188940___redundant_placeholder3.
*sequential_25_simple_rnn_51_while_identity
м
&sequential_25/simple_rnn_51/while/LessLess-sequential_25_simple_rnn_51_while_placeholderRsequential_25_simple_rnn_51_while_less_sequential_25_simple_rnn_51_strided_slice_1*
T0*
_output_shapes
: Ѓ
*sequential_25/simple_rnn_51/while/IdentityIdentity*sequential_25/simple_rnn_51/while/Less:z:0*
T0
*
_output_shapes
: "a
*sequential_25_simple_rnn_51_while_identity3sequential_25/simple_rnn_51/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         Я: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         Я:

_output_shapes
: :

_output_shapes
:
▄	
к
.__inference_sequential_25_layer_call_fn_190423

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:	@Я
	unknown_3:	Я
	unknown_4:
ЯЯ
	unknown_5:	Я
	unknown_6:
identityѕбStatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_25_layer_call_and_return_conditional_losses_189892o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ЩЅ
О
"__inference__traced_restore_192329
file_prefix3
 assignvariableop_dense_25_kernel:	Я.
 assignvariableop_1_dense_25_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: L
:assignvariableop_7_simple_rnn_50_simple_rnn_cell_50_kernel:@V
Dassignvariableop_8_simple_rnn_50_simple_rnn_cell_50_recurrent_kernel:@@F
8assignvariableop_9_simple_rnn_50_simple_rnn_cell_50_bias:@N
;assignvariableop_10_simple_rnn_51_simple_rnn_cell_51_kernel:	@ЯY
Eassignvariableop_11_simple_rnn_51_simple_rnn_cell_51_recurrent_kernel:
ЯЯH
9assignvariableop_12_simple_rnn_51_simple_rnn_cell_51_bias:	Я#
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: =
*assignvariableop_17_adam_dense_25_kernel_m:	Я6
(assignvariableop_18_adam_dense_25_bias_m:T
Bassignvariableop_19_adam_simple_rnn_50_simple_rnn_cell_50_kernel_m:@^
Lassignvariableop_20_adam_simple_rnn_50_simple_rnn_cell_50_recurrent_kernel_m:@@N
@assignvariableop_21_adam_simple_rnn_50_simple_rnn_cell_50_bias_m:@U
Bassignvariableop_22_adam_simple_rnn_51_simple_rnn_cell_51_kernel_m:	@Я`
Lassignvariableop_23_adam_simple_rnn_51_simple_rnn_cell_51_recurrent_kernel_m:
ЯЯO
@assignvariableop_24_adam_simple_rnn_51_simple_rnn_cell_51_bias_m:	Я=
*assignvariableop_25_adam_dense_25_kernel_v:	Я6
(assignvariableop_26_adam_dense_25_bias_v:T
Bassignvariableop_27_adam_simple_rnn_50_simple_rnn_cell_50_kernel_v:@^
Lassignvariableop_28_adam_simple_rnn_50_simple_rnn_cell_50_recurrent_kernel_v:@@N
@assignvariableop_29_adam_simple_rnn_50_simple_rnn_cell_50_bias_v:@U
Bassignvariableop_30_adam_simple_rnn_51_simple_rnn_cell_51_kernel_v:	@Я`
Lassignvariableop_31_adam_simple_rnn_51_simple_rnn_cell_51_recurrent_kernel_v:
ЯЯO
@assignvariableop_32_adam_simple_rnn_51_simple_rnn_cell_51_bias_v:	Я
identity_34ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9ц
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*╩
value└Bй"B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH┤
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ╦
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ъ
_output_shapesІ
ѕ::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOpAssignVariableOp assignvariableop_dense_25_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_25_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:І
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_7AssignVariableOp:assignvariableop_7_simple_rnn_50_simple_rnn_cell_50_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_8AssignVariableOpDassignvariableop_8_simple_rnn_50_simple_rnn_cell_50_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_9AssignVariableOp8assignvariableop_9_simple_rnn_50_simple_rnn_cell_50_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_10AssignVariableOp;assignvariableop_10_simple_rnn_51_simple_rnn_cell_51_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_11AssignVariableOpEassignvariableop_11_simple_rnn_51_simple_rnn_cell_51_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:ф
AssignVariableOp_12AssignVariableOp9assignvariableop_12_simple_rnn_51_simple_rnn_cell_51_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_25_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_25_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_19AssignVariableOpBassignvariableop_19_adam_simple_rnn_50_simple_rnn_cell_50_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_20AssignVariableOpLassignvariableop_20_adam_simple_rnn_50_simple_rnn_cell_50_recurrent_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:▒
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_simple_rnn_50_simple_rnn_cell_50_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_22AssignVariableOpBassignvariableop_22_adam_simple_rnn_51_simple_rnn_cell_51_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_23AssignVariableOpLassignvariableop_23_adam_simple_rnn_51_simple_rnn_cell_51_recurrent_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:▒
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_simple_rnn_51_simple_rnn_cell_51_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_25_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_25_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_simple_rnn_50_simple_rnn_cell_50_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_28AssignVariableOpLassignvariableop_28_adam_simple_rnn_50_simple_rnn_cell_50_recurrent_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:▒
AssignVariableOp_29AssignVariableOp@assignvariableop_29_adam_simple_rnn_50_simple_rnn_cell_50_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_30AssignVariableOpBassignvariableop_30_adam_simple_rnn_51_simple_rnn_cell_51_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_31AssignVariableOpLassignvariableop_31_adam_simple_rnn_51_simple_rnn_cell_51_recurrent_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:▒
AssignVariableOp_32AssignVariableOp@assignvariableop_32_adam_simple_rnn_51_simple_rnn_cell_51_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Ц
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: њ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ч
Ќ
I__inference_sequential_25_layer_call_and_return_conditional_losses_190348
simple_rnn_50_input&
simple_rnn_50_190326:@"
simple_rnn_50_190328:@&
simple_rnn_50_190330:@@'
simple_rnn_51_190334:	@Я#
simple_rnn_51_190336:	Я(
simple_rnn_51_190338:
ЯЯ"
dense_25_190342:	Я
dense_25_190344:
identityѕб dense_25/StatefulPartitionedCallб%simple_rnn_50/StatefulPartitionedCallб%simple_rnn_51/StatefulPartitionedCall░
%simple_rnn_50/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_50_inputsimple_rnn_50_190326simple_rnn_50_190328simple_rnn_50_190330*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_simple_rnn_50_layer_call_and_return_conditional_losses_189733в
dropout_28/PartitionedCallPartitionedCall.simple_rnn_50/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_189746й
%simple_rnn_51/StatefulPartitionedCallStatefulPartitionedCall#dropout_28/PartitionedCall:output:0simple_rnn_51_190334simple_rnn_51_190336simple_rnn_51_190338*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Я*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_simple_rnn_51_layer_call_and_return_conditional_losses_189859У
dropout_29/PartitionedCallPartitionedCall.simple_rnn_51/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Я* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_189872љ
 dense_25/StatefulPartitionedCallStatefulPartitionedCall#dropout_29/PartitionedCall:output:0dense_25_190342dense_25_190344*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_189885x
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╣
NoOpNoOp!^dense_25/StatefulPartitionedCall&^simple_rnn_50/StatefulPartitionedCall&^simple_rnn_51/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : : : : : 2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2N
%simple_rnn_50/StatefulPartitionedCall%simple_rnn_50/StatefulPartitionedCall2N
%simple_rnn_51/StatefulPartitionedCall%simple_rnn_51/StatefulPartitionedCall:` \
+
_output_shapes
:         
-
_user_specified_namesimple_rnn_50_input
ё
в
N__inference_simple_rnn_cell_50_layer_call_and_return_conditional_losses_192019

inputs
states_00
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:         @G
TanhTanhadd:z:0*
T0*'
_output_shapes
:         @W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         @Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         @Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         :         @: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         @
"
_user_specified_name
states/0
љ!
п
while_body_189243
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_03
!while_simple_rnn_cell_50_189265_0:@/
!while_simple_rnn_cell_50_189267_0:@3
!while_simple_rnn_cell_50_189269_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor1
while_simple_rnn_cell_50_189265:@-
while_simple_rnn_cell_50_189267:@1
while_simple_rnn_cell_50_189269:@@ѕб0while/simple_rnn_cell_50/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ф
0while/simple_rnn_cell_50/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2!while_simple_rnn_cell_50_189265_0!while_simple_rnn_cell_50_189267_0!while_simple_rnn_cell_50_189269_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         @:         @*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *W
fRRP
N__inference_simple_rnn_cell_50_layer_call_and_return_conditional_losses_189187Р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder9while/simple_rnn_cell_50/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ќ
while/Identity_4Identity9while/simple_rnn_cell_50/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         @

while/NoOpNoOp1^while/simple_rnn_cell_50/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_simple_rnn_cell_50_189265!while_simple_rnn_cell_50_189265_0"D
while_simple_rnn_cell_50_189267!while_simple_rnn_cell_50_189267_0"D
while_simple_rnn_cell_50_189269!while_simple_rnn_cell_50_189269_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2d
0while/simple_rnn_cell_50/StatefulPartitionedCall0while/simple_rnn_cell_50/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
П
d
F__inference_dropout_29_layer_call_and_return_conditional_losses_191942

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         Я\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         Я"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         Я:P L
(
_output_shapes
:         Я
 
_user_specified_nameinputs
Б@
┬
I__inference_simple_rnn_50_layer_call_and_return_conditional_losses_189733

inputsC
1simple_rnn_cell_50_matmul_readvariableop_resource:@@
2simple_rnn_cell_50_biasadd_readvariableop_resource:@E
3simple_rnn_cell_50_matmul_1_readvariableop_resource:@@
identityѕб)simple_rnn_cell_50/BiasAdd/ReadVariableOpб(simple_rnn_cell_50/MatMul/ReadVariableOpб*simple_rnn_cell_50/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :УY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskџ
(simple_rnn_cell_50/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_50_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0А
simple_rnn_cell_50/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ў
)simple_rnn_cell_50/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_50_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0»
simple_rnn_cell_50/BiasAddBiasAdd#simple_rnn_cell_50/MatMul:product:01simple_rnn_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ъ
*simple_rnn_cell_50/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_50_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Џ
simple_rnn_cell_50/MatMul_1MatMulzeros:output:02simple_rnn_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Ю
simple_rnn_cell_50/addAddV2#simple_rnn_cell_50/BiasAdd:output:0%simple_rnn_cell_50/MatMul_1:product:0*
T0*'
_output_shapes
:         @m
simple_rnn_cell_50/TanhTanhsimple_rnn_cell_50/add:z:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : █
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_50_matmul_readvariableop_resource2simple_rnn_cell_50_biasadd_readvariableop_resource3simple_rnn_cell_50_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_189667*
condR
while_cond_189666*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         @b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         @м
NoOpNoOp*^simple_rnn_cell_50/BiasAdd/ReadVariableOp)^simple_rnn_cell_50/MatMul/ReadVariableOp+^simple_rnn_cell_50/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2V
)simple_rnn_cell_50/BiasAdd/ReadVariableOp)simple_rnn_cell_50/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_50/MatMul/ReadVariableOp(simple_rnn_cell_50/MatMul/ReadVariableOp2X
*simple_rnn_cell_50/MatMul_1/ReadVariableOp*simple_rnn_cell_50/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
┌
ф
while_cond_189079
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_189079___redundant_placeholder04
0while_while_cond_189079___redundant_placeholder14
0while_while_cond_189079___redundant_placeholder24
0while_while_cond_189079___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
Ћ
№
N__inference_simple_rnn_cell_51_layer_call_and_return_conditional_losses_192098

inputs
states_01
matmul_readvariableop_resource:	@Я.
biasadd_readvariableop_resource:	Я4
 matmul_1_readvariableop_resource:
ЯЯ
identity

identity_1ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@Я*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Яs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Я*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Яz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
ЯЯ*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Яe
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:         ЯH
TanhTanhadd:z:0*
T0*(
_output_shapes
:         ЯX
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:         ЯZ

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:         ЯЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         @:         Я: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs:RN
(
_output_shapes
:         Я
"
_user_specified_name
states/0
┌
ф
while_cond_191229
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_191229___redundant_placeholder04
0while_while_cond_191229___redundant_placeholder14
0while_while_cond_191229___redundant_placeholder24
0while_while_cond_191229___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
Ј
ь
N__inference_simple_rnn_cell_51_layer_call_and_return_conditional_losses_189367

inputs

states1
matmul_readvariableop_resource:	@Я.
biasadd_readvariableop_resource:	Я4
 matmul_1_readvariableop_resource:
ЯЯ
identity

identity_1ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@Я*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Яs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Я*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Яz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
ЯЯ*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Яe
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:         ЯH
TanhTanhadd:z:0*
T0*(
_output_shapes
:         ЯX
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:         ЯZ

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:         ЯЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         @:         Я: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Я
 
_user_specified_namestates
јL
▓
__inference__traced_save_192220
file_prefix.
*savev2_dense_25_kernel_read_readvariableop,
(savev2_dense_25_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopF
Bsavev2_simple_rnn_50_simple_rnn_cell_50_kernel_read_readvariableopP
Lsavev2_simple_rnn_50_simple_rnn_cell_50_recurrent_kernel_read_readvariableopD
@savev2_simple_rnn_50_simple_rnn_cell_50_bias_read_readvariableopF
Bsavev2_simple_rnn_51_simple_rnn_cell_51_kernel_read_readvariableopP
Lsavev2_simple_rnn_51_simple_rnn_cell_51_recurrent_kernel_read_readvariableopD
@savev2_simple_rnn_51_simple_rnn_cell_51_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_25_kernel_m_read_readvariableop3
/savev2_adam_dense_25_bias_m_read_readvariableopM
Isavev2_adam_simple_rnn_50_simple_rnn_cell_50_kernel_m_read_readvariableopW
Ssavev2_adam_simple_rnn_50_simple_rnn_cell_50_recurrent_kernel_m_read_readvariableopK
Gsavev2_adam_simple_rnn_50_simple_rnn_cell_50_bias_m_read_readvariableopM
Isavev2_adam_simple_rnn_51_simple_rnn_cell_51_kernel_m_read_readvariableopW
Ssavev2_adam_simple_rnn_51_simple_rnn_cell_51_recurrent_kernel_m_read_readvariableopK
Gsavev2_adam_simple_rnn_51_simple_rnn_cell_51_bias_m_read_readvariableop5
1savev2_adam_dense_25_kernel_v_read_readvariableop3
/savev2_adam_dense_25_bias_v_read_readvariableopM
Isavev2_adam_simple_rnn_50_simple_rnn_cell_50_kernel_v_read_readvariableopW
Ssavev2_adam_simple_rnn_50_simple_rnn_cell_50_recurrent_kernel_v_read_readvariableopK
Gsavev2_adam_simple_rnn_50_simple_rnn_cell_50_bias_v_read_readvariableopM
Isavev2_adam_simple_rnn_51_simple_rnn_cell_51_kernel_v_read_readvariableopW
Ssavev2_adam_simple_rnn_51_simple_rnn_cell_51_recurrent_kernel_v_read_readvariableopK
Gsavev2_adam_simple_rnn_51_simple_rnn_cell_51_bias_v_read_readvariableop
savev2_const

identity_1ѕбMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partЂ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: А
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*╩
value└Bй"B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH▒
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Њ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_25_kernel_read_readvariableop(savev2_dense_25_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopBsavev2_simple_rnn_50_simple_rnn_cell_50_kernel_read_readvariableopLsavev2_simple_rnn_50_simple_rnn_cell_50_recurrent_kernel_read_readvariableop@savev2_simple_rnn_50_simple_rnn_cell_50_bias_read_readvariableopBsavev2_simple_rnn_51_simple_rnn_cell_51_kernel_read_readvariableopLsavev2_simple_rnn_51_simple_rnn_cell_51_recurrent_kernel_read_readvariableop@savev2_simple_rnn_51_simple_rnn_cell_51_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_25_kernel_m_read_readvariableop/savev2_adam_dense_25_bias_m_read_readvariableopIsavev2_adam_simple_rnn_50_simple_rnn_cell_50_kernel_m_read_readvariableopSsavev2_adam_simple_rnn_50_simple_rnn_cell_50_recurrent_kernel_m_read_readvariableopGsavev2_adam_simple_rnn_50_simple_rnn_cell_50_bias_m_read_readvariableopIsavev2_adam_simple_rnn_51_simple_rnn_cell_51_kernel_m_read_readvariableopSsavev2_adam_simple_rnn_51_simple_rnn_cell_51_recurrent_kernel_m_read_readvariableopGsavev2_adam_simple_rnn_51_simple_rnn_cell_51_bias_m_read_readvariableop1savev2_adam_dense_25_kernel_v_read_readvariableop/savev2_adam_dense_25_bias_v_read_readvariableopIsavev2_adam_simple_rnn_50_simple_rnn_cell_50_kernel_v_read_readvariableopSsavev2_adam_simple_rnn_50_simple_rnn_cell_50_recurrent_kernel_v_read_readvariableopGsavev2_adam_simple_rnn_50_simple_rnn_cell_50_bias_v_read_readvariableopIsavev2_adam_simple_rnn_51_simple_rnn_cell_51_kernel_v_read_readvariableopSsavev2_adam_simple_rnn_51_simple_rnn_cell_51_recurrent_kernel_v_read_readvariableopGsavev2_adam_simple_rnn_51_simple_rnn_cell_51_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:І
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*є
_input_shapesЗ
ы: :	Я:: : : : : :@:@@:@:	@Я:
ЯЯ:Я: : : : :	Я::@:@@:@:	@Я:
ЯЯ:Я:	Я::@:@@:@:	@Я:
ЯЯ:Я: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	Я: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:@:$	 

_output_shapes

:@@: 


_output_shapes
:@:%!

_output_shapes
:	@Я:&"
 
_output_shapes
:
ЯЯ:!

_output_shapes	
:Я:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Я: 

_output_shapes
::$ 

_output_shapes

:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:%!

_output_shapes
:	@Я:&"
 
_output_shapes
:
ЯЯ:!

_output_shapes	
:Я:%!

_output_shapes
:	Я: 

_output_shapes
::$ 

_output_shapes

:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:%!

_output_shapes
:	@Я:& "
 
_output_shapes
:
ЯЯ:!!

_output_shapes	
:Я:"

_output_shapes
: 
┌
ф
while_cond_191341
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_191341___redundant_placeholder04
0while_while_cond_191341___redundant_placeholder14
0while_while_cond_191341___redundant_placeholder24
0while_while_cond_191341___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
Ж,
┘
while_body_191861
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
9while_simple_rnn_cell_51_matmul_readvariableop_resource_0:	@ЯI
:while_simple_rnn_cell_51_biasadd_readvariableop_resource_0:	ЯO
;while_simple_rnn_cell_51_matmul_1_readvariableop_resource_0:
ЯЯ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
7while_simple_rnn_cell_51_matmul_readvariableop_resource:	@ЯG
8while_simple_rnn_cell_51_biasadd_readvariableop_resource:	ЯM
9while_simple_rnn_cell_51_matmul_1_readvariableop_resource:
ЯЯѕб/while/simple_rnn_cell_51/BiasAdd/ReadVariableOpб.while/simple_rnn_cell_51/MatMul/ReadVariableOpб0while/simple_rnn_cell_51/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype0Е
.while/simple_rnn_cell_51/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_51_matmul_readvariableop_resource_0*
_output_shapes
:	@Я*
dtype0к
while/simple_rnn_cell_51/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ЯД
/while/simple_rnn_cell_51/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_51_biasadd_readvariableop_resource_0*
_output_shapes	
:Я*
dtype0┬
 while/simple_rnn_cell_51/BiasAddBiasAdd)while/simple_rnn_cell_51/MatMul:product:07while/simple_rnn_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Я«
0while/simple_rnn_cell_51/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_51_matmul_1_readvariableop_resource_0* 
_output_shapes
:
ЯЯ*
dtype0Г
!while/simple_rnn_cell_51/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Я░
while/simple_rnn_cell_51/addAddV2)while/simple_rnn_cell_51/BiasAdd:output:0+while/simple_rnn_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:         Яz
while/simple_rnn_cell_51/TanhTanh while/simple_rnn_cell_51/add:z:0*
T0*(
_output_shapes
:         Я╩
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_51/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity!while/simple_rnn_cell_51/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:         ЯР

while/NoOpNoOp0^while/simple_rnn_cell_51/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_51/MatMul/ReadVariableOp1^while/simple_rnn_cell_51/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_51_biasadd_readvariableop_resource:while_simple_rnn_cell_51_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_51_matmul_1_readvariableop_resource;while_simple_rnn_cell_51_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_51_matmul_readvariableop_resource9while_simple_rnn_cell_51_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         Я: : : : : 2b
/while/simple_rnn_cell_51/BiasAdd/ReadVariableOp/while/simple_rnn_cell_51/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_51/MatMul/ReadVariableOp.while/simple_rnn_cell_51/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_51/MatMul_1/ReadVariableOp0while/simple_rnn_cell_51/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         Я:

_output_shapes
: :

_output_shapes
: 
┌
ф
while_cond_189666
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_189666___redundant_placeholder04
0while_while_cond_189666___redundant_placeholder14
0while_while_cond_189666___redundant_placeholder24
0while_while_cond_189666___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
┌
ф
while_cond_189242
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_189242___redundant_placeholder04
0while_while_cond_189242___redundant_placeholder14
0while_while_cond_189242___redundant_placeholder24
0while_while_cond_189242___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
с9
ш
simple_rnn_50_while_body_1907198
4simple_rnn_50_while_simple_rnn_50_while_loop_counter>
:simple_rnn_50_while_simple_rnn_50_while_maximum_iterations#
simple_rnn_50_while_placeholder%
!simple_rnn_50_while_placeholder_1%
!simple_rnn_50_while_placeholder_27
3simple_rnn_50_while_simple_rnn_50_strided_slice_1_0s
osimple_rnn_50_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_50_tensorarrayunstack_tensorlistfromtensor_0Y
Gsimple_rnn_50_while_simple_rnn_cell_50_matmul_readvariableop_resource_0:@V
Hsimple_rnn_50_while_simple_rnn_cell_50_biasadd_readvariableop_resource_0:@[
Isimple_rnn_50_while_simple_rnn_cell_50_matmul_1_readvariableop_resource_0:@@ 
simple_rnn_50_while_identity"
simple_rnn_50_while_identity_1"
simple_rnn_50_while_identity_2"
simple_rnn_50_while_identity_3"
simple_rnn_50_while_identity_45
1simple_rnn_50_while_simple_rnn_50_strided_slice_1q
msimple_rnn_50_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_50_tensorarrayunstack_tensorlistfromtensorW
Esimple_rnn_50_while_simple_rnn_cell_50_matmul_readvariableop_resource:@T
Fsimple_rnn_50_while_simple_rnn_cell_50_biasadd_readvariableop_resource:@Y
Gsimple_rnn_50_while_simple_rnn_cell_50_matmul_1_readvariableop_resource:@@ѕб=simple_rnn_50/while/simple_rnn_cell_50/BiasAdd/ReadVariableOpб<simple_rnn_50/while/simple_rnn_cell_50/MatMul/ReadVariableOpб>simple_rnn_50/while/simple_rnn_cell_50/MatMul_1/ReadVariableOpќ
Esimple_rnn_50/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       В
7simple_rnn_50/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_50_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_50_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_50_while_placeholderNsimple_rnn_50/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0─
<simple_rnn_50/while/simple_rnn_cell_50/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_50_while_simple_rnn_cell_50_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0№
-simple_rnn_50/while/simple_rnn_cell_50/MatMulMatMul>simple_rnn_50/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_50/while/simple_rnn_cell_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @┬
=simple_rnn_50/while/simple_rnn_cell_50/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_50_while_simple_rnn_cell_50_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0в
.simple_rnn_50/while/simple_rnn_cell_50/BiasAddBiasAdd7simple_rnn_50/while/simple_rnn_cell_50/MatMul:product:0Esimple_rnn_50/while/simple_rnn_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @╚
>simple_rnn_50/while/simple_rnn_cell_50/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_50_while_simple_rnn_cell_50_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0о
/simple_rnn_50/while/simple_rnn_cell_50/MatMul_1MatMul!simple_rnn_50_while_placeholder_2Fsimple_rnn_50/while/simple_rnn_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @┘
*simple_rnn_50/while/simple_rnn_cell_50/addAddV27simple_rnn_50/while/simple_rnn_cell_50/BiasAdd:output:09simple_rnn_50/while/simple_rnn_cell_50/MatMul_1:product:0*
T0*'
_output_shapes
:         @Ћ
+simple_rnn_50/while/simple_rnn_cell_50/TanhTanh.simple_rnn_50/while/simple_rnn_cell_50/add:z:0*
T0*'
_output_shapes
:         @ѓ
8simple_rnn_50/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_50_while_placeholder_1simple_rnn_50_while_placeholder/simple_rnn_50/while/simple_rnn_cell_50/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУм[
simple_rnn_50/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :є
simple_rnn_50/while/addAddV2simple_rnn_50_while_placeholder"simple_rnn_50/while/add/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_50/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ъ
simple_rnn_50/while/add_1AddV24simple_rnn_50_while_simple_rnn_50_while_loop_counter$simple_rnn_50/while/add_1/y:output:0*
T0*
_output_shapes
: Ѓ
simple_rnn_50/while/IdentityIdentitysimple_rnn_50/while/add_1:z:0^simple_rnn_50/while/NoOp*
T0*
_output_shapes
: б
simple_rnn_50/while/Identity_1Identity:simple_rnn_50_while_simple_rnn_50_while_maximum_iterations^simple_rnn_50/while/NoOp*
T0*
_output_shapes
: Ѓ
simple_rnn_50/while/Identity_2Identitysimple_rnn_50/while/add:z:0^simple_rnn_50/while/NoOp*
T0*
_output_shapes
: ░
simple_rnn_50/while/Identity_3IdentityHsimple_rnn_50/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_50/while/NoOp*
T0*
_output_shapes
: е
simple_rnn_50/while/Identity_4Identity/simple_rnn_50/while/simple_rnn_cell_50/Tanh:y:0^simple_rnn_50/while/NoOp*
T0*'
_output_shapes
:         @џ
simple_rnn_50/while/NoOpNoOp>^simple_rnn_50/while/simple_rnn_cell_50/BiasAdd/ReadVariableOp=^simple_rnn_50/while/simple_rnn_cell_50/MatMul/ReadVariableOp?^simple_rnn_50/while/simple_rnn_cell_50/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
simple_rnn_50_while_identity%simple_rnn_50/while/Identity:output:0"I
simple_rnn_50_while_identity_1'simple_rnn_50/while/Identity_1:output:0"I
simple_rnn_50_while_identity_2'simple_rnn_50/while/Identity_2:output:0"I
simple_rnn_50_while_identity_3'simple_rnn_50/while/Identity_3:output:0"I
simple_rnn_50_while_identity_4'simple_rnn_50/while/Identity_4:output:0"h
1simple_rnn_50_while_simple_rnn_50_strided_slice_13simple_rnn_50_while_simple_rnn_50_strided_slice_1_0"њ
Fsimple_rnn_50_while_simple_rnn_cell_50_biasadd_readvariableop_resourceHsimple_rnn_50_while_simple_rnn_cell_50_biasadd_readvariableop_resource_0"ћ
Gsimple_rnn_50_while_simple_rnn_cell_50_matmul_1_readvariableop_resourceIsimple_rnn_50_while_simple_rnn_cell_50_matmul_1_readvariableop_resource_0"љ
Esimple_rnn_50_while_simple_rnn_cell_50_matmul_readvariableop_resourceGsimple_rnn_50_while_simple_rnn_cell_50_matmul_readvariableop_resource_0"Я
msimple_rnn_50_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_50_tensorarrayunstack_tensorlistfromtensorosimple_rnn_50_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_50_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2~
=simple_rnn_50/while/simple_rnn_cell_50/BiasAdd/ReadVariableOp=simple_rnn_50/while/simple_rnn_cell_50/BiasAdd/ReadVariableOp2|
<simple_rnn_50/while/simple_rnn_cell_50/MatMul/ReadVariableOp<simple_rnn_50/while/simple_rnn_cell_50/MatMul/ReadVariableOp2ђ
>simple_rnn_50/while/simple_rnn_cell_50/MatMul_1/ReadVariableOp>simple_rnn_50/while/simple_rnn_cell_50/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
Ѓ

М
.__inference_sequential_25_layer_call_fn_189911
simple_rnn_50_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:	@Я
	unknown_3:	Я
	unknown_4:
ЯЯ
	unknown_5:	Я
	unknown_6:
identityѕбStatefulPartitionedCall╝
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_50_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_25_layer_call_and_return_conditional_losses_189892o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:         
-
_user_specified_namesimple_rnn_50_input
Ѕ
╝
.__inference_simple_rnn_51_layer_call_fn_191479

inputs
unknown:	@Я
	unknown_0:	Я
	unknown_1:
ЯЯ
identityѕбStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Я*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_simple_rnn_51_layer_call_and_return_conditional_losses_190069p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         Я`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         @: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
Ж,
┘
while_body_190003
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
9while_simple_rnn_cell_51_matmul_readvariableop_resource_0:	@ЯI
:while_simple_rnn_cell_51_biasadd_readvariableop_resource_0:	ЯO
;while_simple_rnn_cell_51_matmul_1_readvariableop_resource_0:
ЯЯ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
7while_simple_rnn_cell_51_matmul_readvariableop_resource:	@ЯG
8while_simple_rnn_cell_51_biasadd_readvariableop_resource:	ЯM
9while_simple_rnn_cell_51_matmul_1_readvariableop_resource:
ЯЯѕб/while/simple_rnn_cell_51/BiasAdd/ReadVariableOpб.while/simple_rnn_cell_51/MatMul/ReadVariableOpб0while/simple_rnn_cell_51/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype0Е
.while/simple_rnn_cell_51/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_51_matmul_readvariableop_resource_0*
_output_shapes
:	@Я*
dtype0к
while/simple_rnn_cell_51/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ЯД
/while/simple_rnn_cell_51/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_51_biasadd_readvariableop_resource_0*
_output_shapes	
:Я*
dtype0┬
 while/simple_rnn_cell_51/BiasAddBiasAdd)while/simple_rnn_cell_51/MatMul:product:07while/simple_rnn_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Я«
0while/simple_rnn_cell_51/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_51_matmul_1_readvariableop_resource_0* 
_output_shapes
:
ЯЯ*
dtype0Г
!while/simple_rnn_cell_51/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Я░
while/simple_rnn_cell_51/addAddV2)while/simple_rnn_cell_51/BiasAdd:output:0+while/simple_rnn_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:         Яz
while/simple_rnn_cell_51/TanhTanh while/simple_rnn_cell_51/add:z:0*
T0*(
_output_shapes
:         Я╩
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_51/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity!while/simple_rnn_cell_51/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:         ЯР

while/NoOpNoOp0^while/simple_rnn_cell_51/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_51/MatMul/ReadVariableOp1^while/simple_rnn_cell_51/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_51_biasadd_readvariableop_resource:while_simple_rnn_cell_51_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_51_matmul_1_readvariableop_resource;while_simple_rnn_cell_51_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_51_matmul_readvariableop_resource9while_simple_rnn_cell_51_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         Я: : : : : 2b
/while/simple_rnn_cell_51/BiasAdd/ReadVariableOp/while/simple_rnn_cell_51/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_51/MatMul/ReadVariableOp.while/simple_rnn_cell_51/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_51/MatMul_1/ReadVariableOp0while/simple_rnn_cell_51/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         Я:

_output_shapes
: :

_output_shapes
: 
О

┤
simple_rnn_51_while_cond_1905988
4simple_rnn_51_while_simple_rnn_51_while_loop_counter>
:simple_rnn_51_while_simple_rnn_51_while_maximum_iterations#
simple_rnn_51_while_placeholder%
!simple_rnn_51_while_placeholder_1%
!simple_rnn_51_while_placeholder_2:
6simple_rnn_51_while_less_simple_rnn_51_strided_slice_1P
Lsimple_rnn_51_while_simple_rnn_51_while_cond_190598___redundant_placeholder0P
Lsimple_rnn_51_while_simple_rnn_51_while_cond_190598___redundant_placeholder1P
Lsimple_rnn_51_while_simple_rnn_51_while_cond_190598___redundant_placeholder2P
Lsimple_rnn_51_while_simple_rnn_51_while_cond_190598___redundant_placeholder3 
simple_rnn_51_while_identity
џ
simple_rnn_51/while/LessLesssimple_rnn_51_while_placeholder6simple_rnn_51_while_less_simple_rnn_51_strided_slice_1*
T0*
_output_shapes
: g
simple_rnn_51/while/IdentityIdentitysimple_rnn_51/while/Less:z:0*
T0
*
_output_shapes
: "E
simple_rnn_51_while_identity%simple_rnn_51/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         Я: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         Я:

_output_shapes
: :

_output_shapes
:
Л	
╔
$__inference_signature_wrapper_190402
simple_rnn_50_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:	@Я
	unknown_3:	Я
	unknown_4:
ЯЯ
	unknown_5:	Я
	unknown_6:
identityѕбStatefulPartitionedCallћ
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_50_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8ѓ **
f%R#
!__inference__wrapped_model_189015o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:         
-
_user_specified_namesimple_rnn_50_input
Ю!
Я
while_body_189543
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_04
!while_simple_rnn_cell_51_189565_0:	@Я0
!while_simple_rnn_cell_51_189567_0:	Я5
!while_simple_rnn_cell_51_189569_0:
ЯЯ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor2
while_simple_rnn_cell_51_189565:	@Я.
while_simple_rnn_cell_51_189567:	Я3
while_simple_rnn_cell_51_189569:
ЯЯѕб0while/simple_rnn_cell_51/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype0г
0while/simple_rnn_cell_51/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2!while_simple_rnn_cell_51_189565_0!while_simple_rnn_cell_51_189567_0!while_simple_rnn_cell_51_189569_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:         Я:         Я*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *W
fRRP
N__inference_simple_rnn_cell_51_layer_call_and_return_conditional_losses_189487Р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder9while/simple_rnn_cell_51/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Ќ
while/Identity_4Identity9while/simple_rnn_cell_51/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:         Я

while/NoOpNoOp1^while/simple_rnn_cell_51/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_simple_rnn_cell_51_189565!while_simple_rnn_cell_51_189565_0"D
while_simple_rnn_cell_51_189567!while_simple_rnn_cell_51_189567_0"D
while_simple_rnn_cell_51_189569!while_simple_rnn_cell_51_189569_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         Я: : : : : 2d
0while/simple_rnn_cell_51/StatefulPartitionedCall0while/simple_rnn_cell_51/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         Я:

_output_shapes
: :

_output_shapes
: 
┌
ф
while_cond_191005
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_191005___redundant_placeholder04
0while_while_cond_191005___redundant_placeholder14
0while_while_cond_191005___redundant_placeholder24
0while_while_cond_191005___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
■
ж
N__inference_simple_rnn_cell_50_layer_call_and_return_conditional_losses_189187

inputs

states0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:         @G
TanhTanhadd:z:0*
T0*'
_output_shapes
:         @W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         @Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         @Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         :         @: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         @
 
_user_specified_namestates
Ж,
┘
while_body_189793
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
9while_simple_rnn_cell_51_matmul_readvariableop_resource_0:	@ЯI
:while_simple_rnn_cell_51_biasadd_readvariableop_resource_0:	ЯO
;while_simple_rnn_cell_51_matmul_1_readvariableop_resource_0:
ЯЯ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
7while_simple_rnn_cell_51_matmul_readvariableop_resource:	@ЯG
8while_simple_rnn_cell_51_biasadd_readvariableop_resource:	ЯM
9while_simple_rnn_cell_51_matmul_1_readvariableop_resource:
ЯЯѕб/while/simple_rnn_cell_51/BiasAdd/ReadVariableOpб.while/simple_rnn_cell_51/MatMul/ReadVariableOpб0while/simple_rnn_cell_51/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype0Е
.while/simple_rnn_cell_51/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_51_matmul_readvariableop_resource_0*
_output_shapes
:	@Я*
dtype0к
while/simple_rnn_cell_51/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ЯД
/while/simple_rnn_cell_51/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_51_biasadd_readvariableop_resource_0*
_output_shapes	
:Я*
dtype0┬
 while/simple_rnn_cell_51/BiasAddBiasAdd)while/simple_rnn_cell_51/MatMul:product:07while/simple_rnn_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Я«
0while/simple_rnn_cell_51/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_51_matmul_1_readvariableop_resource_0* 
_output_shapes
:
ЯЯ*
dtype0Г
!while/simple_rnn_cell_51/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Я░
while/simple_rnn_cell_51/addAddV2)while/simple_rnn_cell_51/BiasAdd:output:0+while/simple_rnn_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:         Яz
while/simple_rnn_cell_51/TanhTanh while/simple_rnn_cell_51/add:z:0*
T0*(
_output_shapes
:         Я╩
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_51/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity!while/simple_rnn_cell_51/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:         ЯР

while/NoOpNoOp0^while/simple_rnn_cell_51/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_51/MatMul/ReadVariableOp1^while/simple_rnn_cell_51/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_51_biasadd_readvariableop_resource:while_simple_rnn_cell_51_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_51_matmul_1_readvariableop_resource;while_simple_rnn_cell_51_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_51_matmul_readvariableop_resource9while_simple_rnn_cell_51_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         Я: : : : : 2b
/while/simple_rnn_cell_51/BiasAdd/ReadVariableOp/while/simple_rnn_cell_51/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_51/MatMul/ReadVariableOp.while/simple_rnn_cell_51/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_51/MatMul_1/ReadVariableOp0while/simple_rnn_cell_51/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         Я:

_output_shapes
: :

_output_shapes
: 
Ѕ
╝
.__inference_simple_rnn_51_layer_call_fn_191468

inputs
unknown:	@Я
	unknown_0:	Я
	unknown_1:
ЯЯ
identityѕбStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Я*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_simple_rnn_51_layer_call_and_return_conditional_losses_189859p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         Я`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         @: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
Ч6
а
I__inference_simple_rnn_50_layer_call_and_return_conditional_losses_189306

inputs+
simple_rnn_cell_50_189231:@'
simple_rnn_cell_50_189233:@+
simple_rnn_cell_50_189235:@@
identityѕб*simple_rnn_cell_50/StatefulPartitionedCallбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :УY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask№
*simple_rnn_cell_50/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_50_189231simple_rnn_cell_50_189233simple_rnn_cell_50_189235*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         @:         @*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *W
fRRP
N__inference_simple_rnn_cell_50_layer_call_and_return_conditional_losses_189187n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : љ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_50_189231simple_rnn_cell_50_189233simple_rnn_cell_50_189235*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_189243*
condR
while_cond_189242*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  @{
NoOpNoOp+^simple_rnn_cell_50/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2X
*simple_rnn_cell_50/StatefulPartitionedCall*simple_rnn_cell_50/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
А
Й
.__inference_simple_rnn_51_layer_call_fn_191446
inputs_0
unknown:	@Я
	unknown_0:	Я
	unknown_1:
ЯЯ
identityѕбStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Я*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_simple_rnn_51_layer_call_and_return_conditional_losses_189443p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         Я`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  @: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  @
"
_user_specified_name
inputs/0
А
Й
.__inference_simple_rnn_51_layer_call_fn_191457
inputs_0
unknown:	@Я
	unknown_0:	Я
	unknown_1:
ЯЯ
identityѕбStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Я*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_simple_rnn_51_layer_call_and_return_conditional_losses_189606p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         Я`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  @: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  @
"
_user_specified_name
inputs/0
▄
ф
while_cond_190002
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_190002___redundant_placeholder04
0while_while_cond_190002___redundant_placeholder14
0while_while_cond_190002___redundant_placeholder24
0while_while_cond_190002___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         Я: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         Я:

_output_shapes
: :

_output_shapes
:
І
И
.__inference_simple_rnn_50_layer_call_fn_190960

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
identityѕбStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_simple_rnn_50_layer_call_and_return_conditional_losses_190226s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Й@
к
I__inference_simple_rnn_51_layer_call_and_return_conditional_losses_189859

inputsD
1simple_rnn_cell_51_matmul_readvariableop_resource:	@ЯA
2simple_rnn_cell_51_biasadd_readvariableop_resource:	ЯG
3simple_rnn_cell_51_matmul_1_readvariableop_resource:
ЯЯ
identityѕб)simple_rnn_cell_51/BiasAdd/ReadVariableOpб(simple_rnn_cell_51/MatMul/ReadVariableOpб*simple_rnn_cell_51/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskN
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Я_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :УY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: Q
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Яs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         Яc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         @D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maskЏ
(simple_rnn_cell_51/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_51_matmul_readvariableop_resource*
_output_shapes
:	@Я*
dtype0б
simple_rnn_cell_51/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ЯЎ
)simple_rnn_cell_51/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_51_biasadd_readvariableop_resource*
_output_shapes	
:Я*
dtype0░
simple_rnn_cell_51/BiasAddBiasAdd#simple_rnn_cell_51/MatMul:product:01simple_rnn_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Яа
*simple_rnn_cell_51/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_51_matmul_1_readvariableop_resource* 
_output_shapes
:
ЯЯ*
dtype0ю
simple_rnn_cell_51/MatMul_1MatMulzeros:output:02simple_rnn_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Яъ
simple_rnn_cell_51/addAddV2#simple_rnn_cell_51/BiasAdd:output:0%simple_rnn_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:         Яn
simple_rnn_cell_51/TanhTanhsimple_rnn_cell_51/add:z:0*
T0*(
_output_shapes
:         Яn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Я   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : П
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_51_matmul_readvariableop_resource2simple_rnn_cell_51_biasadd_readvariableop_resource3simple_rnn_cell_51_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         Я: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_189793*
condR
while_cond_189792*9
output_shapes(
&: : : : :         Я: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Я   ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         Я*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Я*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         Яh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         Ям
NoOpNoOp*^simple_rnn_cell_51/BiasAdd/ReadVariableOp)^simple_rnn_cell_51/MatMul/ReadVariableOp+^simple_rnn_cell_51/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         @: : : 2V
)simple_rnn_cell_51/BiasAdd/ReadVariableOp)simple_rnn_cell_51/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_51/MatMul/ReadVariableOp(simple_rnn_cell_51/MatMul/ReadVariableOp2X
*simple_rnn_cell_51/MatMul_1/ReadVariableOp*simple_rnn_cell_51/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
Ж,
┘
while_body_191637
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
9while_simple_rnn_cell_51_matmul_readvariableop_resource_0:	@ЯI
:while_simple_rnn_cell_51_biasadd_readvariableop_resource_0:	ЯO
;while_simple_rnn_cell_51_matmul_1_readvariableop_resource_0:
ЯЯ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
7while_simple_rnn_cell_51_matmul_readvariableop_resource:	@ЯG
8while_simple_rnn_cell_51_biasadd_readvariableop_resource:	ЯM
9while_simple_rnn_cell_51_matmul_1_readvariableop_resource:
ЯЯѕб/while/simple_rnn_cell_51/BiasAdd/ReadVariableOpб.while/simple_rnn_cell_51/MatMul/ReadVariableOpб0while/simple_rnn_cell_51/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype0Е
.while/simple_rnn_cell_51/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_51_matmul_readvariableop_resource_0*
_output_shapes
:	@Я*
dtype0к
while/simple_rnn_cell_51/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ЯД
/while/simple_rnn_cell_51/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_51_biasadd_readvariableop_resource_0*
_output_shapes	
:Я*
dtype0┬
 while/simple_rnn_cell_51/BiasAddBiasAdd)while/simple_rnn_cell_51/MatMul:product:07while/simple_rnn_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Я«
0while/simple_rnn_cell_51/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_51_matmul_1_readvariableop_resource_0* 
_output_shapes
:
ЯЯ*
dtype0Г
!while/simple_rnn_cell_51/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Я░
while/simple_rnn_cell_51/addAddV2)while/simple_rnn_cell_51/BiasAdd:output:0+while/simple_rnn_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:         Яz
while/simple_rnn_cell_51/TanhTanh while/simple_rnn_cell_51/add:z:0*
T0*(
_output_shapes
:         Я╩
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_51/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity!while/simple_rnn_cell_51/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:         ЯР

while/NoOpNoOp0^while/simple_rnn_cell_51/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_51/MatMul/ReadVariableOp1^while/simple_rnn_cell_51/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_51_biasadd_readvariableop_resource:while_simple_rnn_cell_51_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_51_matmul_1_readvariableop_resource;while_simple_rnn_cell_51_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_51_matmul_readvariableop_resource9while_simple_rnn_cell_51_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         Я: : : : : 2b
/while/simple_rnn_cell_51/BiasAdd/ReadVariableOp/while/simple_rnn_cell_51/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_51/MatMul/ReadVariableOp.while/simple_rnn_cell_51/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_51/MatMul_1/ReadVariableOp0while/simple_rnn_cell_51/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         Я:

_output_shapes
: :

_output_shapes
: 
ьБ
Џ	
I__inference_sequential_25_layer_call_and_return_conditional_losses_190673

inputsQ
?simple_rnn_50_simple_rnn_cell_50_matmul_readvariableop_resource:@N
@simple_rnn_50_simple_rnn_cell_50_biasadd_readvariableop_resource:@S
Asimple_rnn_50_simple_rnn_cell_50_matmul_1_readvariableop_resource:@@R
?simple_rnn_51_simple_rnn_cell_51_matmul_readvariableop_resource:	@ЯO
@simple_rnn_51_simple_rnn_cell_51_biasadd_readvariableop_resource:	ЯU
Asimple_rnn_51_simple_rnn_cell_51_matmul_1_readvariableop_resource:
ЯЯ:
'dense_25_matmul_readvariableop_resource:	Я6
(dense_25_biasadd_readvariableop_resource:
identityѕбdense_25/BiasAdd/ReadVariableOpбdense_25/MatMul/ReadVariableOpб7simple_rnn_50/simple_rnn_cell_50/BiasAdd/ReadVariableOpб6simple_rnn_50/simple_rnn_cell_50/MatMul/ReadVariableOpб8simple_rnn_50/simple_rnn_cell_50/MatMul_1/ReadVariableOpбsimple_rnn_50/whileб7simple_rnn_51/simple_rnn_cell_51/BiasAdd/ReadVariableOpб6simple_rnn_51/simple_rnn_cell_51/MatMul/ReadVariableOpб8simple_rnn_51/simple_rnn_cell_51/MatMul_1/ReadVariableOpбsimple_rnn_51/whileI
simple_rnn_50/ShapeShapeinputs*
T0*
_output_shapes
:k
!simple_rnn_50/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#simple_rnn_50/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#simple_rnn_50/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ќ
simple_rnn_50/strided_sliceStridedSlicesimple_rnn_50/Shape:output:0*simple_rnn_50/strided_slice/stack:output:0,simple_rnn_50/strided_slice/stack_1:output:0,simple_rnn_50/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
simple_rnn_50/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@Ѕ
simple_rnn_50/zeros/mulMul$simple_rnn_50/strided_slice:output:0"simple_rnn_50/zeros/mul/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_50/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :УЃ
simple_rnn_50/zeros/LessLesssimple_rnn_50/zeros/mul:z:0#simple_rnn_50/zeros/Less/y:output:0*
T0*
_output_shapes
: ^
simple_rnn_50/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@Ю
simple_rnn_50/zeros/packedPack$simple_rnn_50/strided_slice:output:0%simple_rnn_50/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
simple_rnn_50/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ќ
simple_rnn_50/zerosFill#simple_rnn_50/zeros/packed:output:0"simple_rnn_50/zeros/Const:output:0*
T0*'
_output_shapes
:         @q
simple_rnn_50/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѕ
simple_rnn_50/transpose	Transposeinputs%simple_rnn_50/transpose/perm:output:0*
T0*+
_output_shapes
:         `
simple_rnn_50/Shape_1Shapesimple_rnn_50/transpose:y:0*
T0*
_output_shapes
:m
#simple_rnn_50/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_50/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_50/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
simple_rnn_50/strided_slice_1StridedSlicesimple_rnn_50/Shape_1:output:0,simple_rnn_50/strided_slice_1/stack:output:0.simple_rnn_50/strided_slice_1/stack_1:output:0.simple_rnn_50/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)simple_rnn_50/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         я
simple_rnn_50/TensorArrayV2TensorListReserve2simple_rnn_50/TensorArrayV2/element_shape:output:0&simple_rnn_50/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмћ
Csimple_rnn_50/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       і
5simple_rnn_50/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_50/transpose:y:0Lsimple_rnn_50/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмm
#simple_rnn_50/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_50/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_50/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:»
simple_rnn_50/strided_slice_2StridedSlicesimple_rnn_50/transpose:y:0,simple_rnn_50/strided_slice_2/stack:output:0.simple_rnn_50/strided_slice_2/stack_1:output:0.simple_rnn_50/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskХ
6simple_rnn_50/simple_rnn_cell_50/MatMul/ReadVariableOpReadVariableOp?simple_rnn_50_simple_rnn_cell_50_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0╦
'simple_rnn_50/simple_rnn_cell_50/MatMulMatMul&simple_rnn_50/strided_slice_2:output:0>simple_rnn_50/simple_rnn_cell_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @┤
7simple_rnn_50/simple_rnn_cell_50/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_50_simple_rnn_cell_50_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┘
(simple_rnn_50/simple_rnn_cell_50/BiasAddBiasAdd1simple_rnn_50/simple_rnn_cell_50/MatMul:product:0?simple_rnn_50/simple_rnn_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @║
8simple_rnn_50/simple_rnn_cell_50/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_50_simple_rnn_cell_50_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0┼
)simple_rnn_50/simple_rnn_cell_50/MatMul_1MatMulsimple_rnn_50/zeros:output:0@simple_rnn_50/simple_rnn_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @К
$simple_rnn_50/simple_rnn_cell_50/addAddV21simple_rnn_50/simple_rnn_cell_50/BiasAdd:output:03simple_rnn_50/simple_rnn_cell_50/MatMul_1:product:0*
T0*'
_output_shapes
:         @Ѕ
%simple_rnn_50/simple_rnn_cell_50/TanhTanh(simple_rnn_50/simple_rnn_cell_50/add:z:0*
T0*'
_output_shapes
:         @|
+simple_rnn_50/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   Р
simple_rnn_50/TensorArrayV2_1TensorListReserve4simple_rnn_50/TensorArrayV2_1/element_shape:output:0&simple_rnn_50/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмT
simple_rnn_50/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&simple_rnn_50/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         b
 simple_rnn_50/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Љ
simple_rnn_50/whileWhile)simple_rnn_50/while/loop_counter:output:0/simple_rnn_50/while/maximum_iterations:output:0simple_rnn_50/time:output:0&simple_rnn_50/TensorArrayV2_1:handle:0simple_rnn_50/zeros:output:0&simple_rnn_50/strided_slice_1:output:0Esimple_rnn_50/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_50_simple_rnn_cell_50_matmul_readvariableop_resource@simple_rnn_50_simple_rnn_cell_50_biasadd_readvariableop_resourceAsimple_rnn_50_simple_rnn_cell_50_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *+
body#R!
simple_rnn_50_while_body_190490*+
cond#R!
simple_rnn_50_while_cond_190489*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations Ј
>simple_rnn_50/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   В
0simple_rnn_50/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_50/while:output:3Gsimple_rnn_50/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype0v
#simple_rnn_50/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         o
%simple_rnn_50/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_50/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:═
simple_rnn_50/strided_slice_3StridedSlice9simple_rnn_50/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_50/strided_slice_3/stack:output:0.simple_rnn_50/strided_slice_3/stack_1:output:0.simple_rnn_50/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_masks
simple_rnn_50/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          └
simple_rnn_50/transpose_1	Transpose9simple_rnn_50/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_50/transpose_1/perm:output:0*
T0*+
_output_shapes
:         @t
dropout_28/IdentityIdentitysimple_rnn_50/transpose_1:y:0*
T0*+
_output_shapes
:         @_
simple_rnn_51/ShapeShapedropout_28/Identity:output:0*
T0*
_output_shapes
:k
!simple_rnn_51/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#simple_rnn_51/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#simple_rnn_51/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ќ
simple_rnn_51/strided_sliceStridedSlicesimple_rnn_51/Shape:output:0*simple_rnn_51/strided_slice/stack:output:0,simple_rnn_51/strided_slice/stack_1:output:0,simple_rnn_51/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
simple_rnn_51/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :ЯЅ
simple_rnn_51/zeros/mulMul$simple_rnn_51/strided_slice:output:0"simple_rnn_51/zeros/mul/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_51/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :УЃ
simple_rnn_51/zeros/LessLesssimple_rnn_51/zeros/mul:z:0#simple_rnn_51/zeros/Less/y:output:0*
T0*
_output_shapes
: _
simple_rnn_51/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ЯЮ
simple_rnn_51/zeros/packedPack$simple_rnn_51/strided_slice:output:0%simple_rnn_51/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
simple_rnn_51/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ќ
simple_rnn_51/zerosFill#simple_rnn_51/zeros/packed:output:0"simple_rnn_51/zeros/Const:output:0*
T0*(
_output_shapes
:         Яq
simple_rnn_51/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
simple_rnn_51/transpose	Transposedropout_28/Identity:output:0%simple_rnn_51/transpose/perm:output:0*
T0*+
_output_shapes
:         @`
simple_rnn_51/Shape_1Shapesimple_rnn_51/transpose:y:0*
T0*
_output_shapes
:m
#simple_rnn_51/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_51/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_51/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
simple_rnn_51/strided_slice_1StridedSlicesimple_rnn_51/Shape_1:output:0,simple_rnn_51/strided_slice_1/stack:output:0.simple_rnn_51/strided_slice_1/stack_1:output:0.simple_rnn_51/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)simple_rnn_51/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         я
simple_rnn_51/TensorArrayV2TensorListReserve2simple_rnn_51/TensorArrayV2/element_shape:output:0&simple_rnn_51/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмћ
Csimple_rnn_51/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   і
5simple_rnn_51/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_51/transpose:y:0Lsimple_rnn_51/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмm
#simple_rnn_51/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_51/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_51/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:»
simple_rnn_51/strided_slice_2StridedSlicesimple_rnn_51/transpose:y:0,simple_rnn_51/strided_slice_2/stack:output:0.simple_rnn_51/strided_slice_2/stack_1:output:0.simple_rnn_51/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maskи
6simple_rnn_51/simple_rnn_cell_51/MatMul/ReadVariableOpReadVariableOp?simple_rnn_51_simple_rnn_cell_51_matmul_readvariableop_resource*
_output_shapes
:	@Я*
dtype0╠
'simple_rnn_51/simple_rnn_cell_51/MatMulMatMul&simple_rnn_51/strided_slice_2:output:0>simple_rnn_51/simple_rnn_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ях
7simple_rnn_51/simple_rnn_cell_51/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_51_simple_rnn_cell_51_biasadd_readvariableop_resource*
_output_shapes	
:Я*
dtype0┌
(simple_rnn_51/simple_rnn_cell_51/BiasAddBiasAdd1simple_rnn_51/simple_rnn_cell_51/MatMul:product:0?simple_rnn_51/simple_rnn_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Я╝
8simple_rnn_51/simple_rnn_cell_51/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_51_simple_rnn_cell_51_matmul_1_readvariableop_resource* 
_output_shapes
:
ЯЯ*
dtype0к
)simple_rnn_51/simple_rnn_cell_51/MatMul_1MatMulsimple_rnn_51/zeros:output:0@simple_rnn_51/simple_rnn_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Я╚
$simple_rnn_51/simple_rnn_cell_51/addAddV21simple_rnn_51/simple_rnn_cell_51/BiasAdd:output:03simple_rnn_51/simple_rnn_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:         Яі
%simple_rnn_51/simple_rnn_cell_51/TanhTanh(simple_rnn_51/simple_rnn_cell_51/add:z:0*
T0*(
_output_shapes
:         Я|
+simple_rnn_51/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Я   Р
simple_rnn_51/TensorArrayV2_1TensorListReserve4simple_rnn_51/TensorArrayV2_1/element_shape:output:0&simple_rnn_51/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмT
simple_rnn_51/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&simple_rnn_51/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         b
 simple_rnn_51/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Њ
simple_rnn_51/whileWhile)simple_rnn_51/while/loop_counter:output:0/simple_rnn_51/while/maximum_iterations:output:0simple_rnn_51/time:output:0&simple_rnn_51/TensorArrayV2_1:handle:0simple_rnn_51/zeros:output:0&simple_rnn_51/strided_slice_1:output:0Esimple_rnn_51/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_51_simple_rnn_cell_51_matmul_readvariableop_resource@simple_rnn_51_simple_rnn_cell_51_biasadd_readvariableop_resourceAsimple_rnn_51_simple_rnn_cell_51_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         Я: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *+
body#R!
simple_rnn_51_while_body_190599*+
cond#R!
simple_rnn_51_while_cond_190598*9
output_shapes(
&: : : : :         Я: : : : : *
parallel_iterations Ј
>simple_rnn_51/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Я   ь
0simple_rnn_51/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_51/while:output:3Gsimple_rnn_51/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         Я*
element_dtype0v
#simple_rnn_51/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         o
%simple_rnn_51/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_51/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
simple_rnn_51/strided_slice_3StridedSlice9simple_rnn_51/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_51/strided_slice_3/stack:output:0.simple_rnn_51/strided_slice_3/stack_1:output:0.simple_rnn_51/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Я*
shrink_axis_masks
simple_rnn_51/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ┴
simple_rnn_51/transpose_1	Transpose9simple_rnn_51/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_51/transpose_1/perm:output:0*
T0*,
_output_shapes
:         Яz
dropout_29/IdentityIdentity&simple_rnn_51/strided_slice_3:output:0*
T0*(
_output_shapes
:         ЯЄ
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes
:	Я*
dtype0Љ
dense_25/MatMulMatMuldropout_29/Identity:output:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
dense_25/SoftmaxSoftmaxdense_25/BiasAdd:output:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_25/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         Љ
NoOpNoOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp8^simple_rnn_50/simple_rnn_cell_50/BiasAdd/ReadVariableOp7^simple_rnn_50/simple_rnn_cell_50/MatMul/ReadVariableOp9^simple_rnn_50/simple_rnn_cell_50/MatMul_1/ReadVariableOp^simple_rnn_50/while8^simple_rnn_51/simple_rnn_cell_51/BiasAdd/ReadVariableOp7^simple_rnn_51/simple_rnn_cell_51/MatMul/ReadVariableOp9^simple_rnn_51/simple_rnn_cell_51/MatMul_1/ReadVariableOp^simple_rnn_51/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : : : : : 2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2r
7simple_rnn_50/simple_rnn_cell_50/BiasAdd/ReadVariableOp7simple_rnn_50/simple_rnn_cell_50/BiasAdd/ReadVariableOp2p
6simple_rnn_50/simple_rnn_cell_50/MatMul/ReadVariableOp6simple_rnn_50/simple_rnn_cell_50/MatMul/ReadVariableOp2t
8simple_rnn_50/simple_rnn_cell_50/MatMul_1/ReadVariableOp8simple_rnn_50/simple_rnn_cell_50/MatMul_1/ReadVariableOp2*
simple_rnn_50/whilesimple_rnn_50/while2r
7simple_rnn_51/simple_rnn_cell_51/BiasAdd/ReadVariableOp7simple_rnn_51/simple_rnn_cell_51/BiasAdd/ReadVariableOp2p
6simple_rnn_51/simple_rnn_cell_51/MatMul/ReadVariableOp6simple_rnn_51/simple_rnn_cell_51/MatMul/ReadVariableOp2t
8simple_rnn_51/simple_rnn_cell_51/MatMul_1/ReadVariableOp8simple_rnn_51/simple_rnn_cell_51/MatMul_1/ReadVariableOp2*
simple_rnn_51/whilesimple_rnn_51/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╚

▀
3__inference_simple_rnn_cell_51_layer_call_fn_192064

inputs
states_0
unknown:	@Я
	unknown_0:	Я
	unknown_1:
ЯЯ
identity

identity_1ѕбStatefulPartitionedCallћ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:         Я:         Я*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *W
fRRP
N__inference_simple_rnn_cell_51_layer_call_and_return_conditional_losses_189487p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         Яr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         Я`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         @:         Я: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs:RN
(
_output_shapes
:         Я
"
_user_specified_name
states/0
х
║
.__inference_simple_rnn_50_layer_call_fn_190938
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@@
identityѕбStatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  @*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_simple_rnn_50_layer_call_and_return_conditional_losses_189306|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
┌
ф
while_cond_190159
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_190159___redundant_placeholder04
0while_while_cond_190159___redundant_placeholder14
0while_while_cond_190159___redundant_placeholder24
0while_while_cond_190159___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
▓│
Џ	
I__inference_sequential_25_layer_call_and_return_conditional_losses_190916

inputsQ
?simple_rnn_50_simple_rnn_cell_50_matmul_readvariableop_resource:@N
@simple_rnn_50_simple_rnn_cell_50_biasadd_readvariableop_resource:@S
Asimple_rnn_50_simple_rnn_cell_50_matmul_1_readvariableop_resource:@@R
?simple_rnn_51_simple_rnn_cell_51_matmul_readvariableop_resource:	@ЯO
@simple_rnn_51_simple_rnn_cell_51_biasadd_readvariableop_resource:	ЯU
Asimple_rnn_51_simple_rnn_cell_51_matmul_1_readvariableop_resource:
ЯЯ:
'dense_25_matmul_readvariableop_resource:	Я6
(dense_25_biasadd_readvariableop_resource:
identityѕбdense_25/BiasAdd/ReadVariableOpбdense_25/MatMul/ReadVariableOpб7simple_rnn_50/simple_rnn_cell_50/BiasAdd/ReadVariableOpб6simple_rnn_50/simple_rnn_cell_50/MatMul/ReadVariableOpб8simple_rnn_50/simple_rnn_cell_50/MatMul_1/ReadVariableOpбsimple_rnn_50/whileб7simple_rnn_51/simple_rnn_cell_51/BiasAdd/ReadVariableOpб6simple_rnn_51/simple_rnn_cell_51/MatMul/ReadVariableOpб8simple_rnn_51/simple_rnn_cell_51/MatMul_1/ReadVariableOpбsimple_rnn_51/whileI
simple_rnn_50/ShapeShapeinputs*
T0*
_output_shapes
:k
!simple_rnn_50/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#simple_rnn_50/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#simple_rnn_50/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ќ
simple_rnn_50/strided_sliceStridedSlicesimple_rnn_50/Shape:output:0*simple_rnn_50/strided_slice/stack:output:0,simple_rnn_50/strided_slice/stack_1:output:0,simple_rnn_50/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
simple_rnn_50/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@Ѕ
simple_rnn_50/zeros/mulMul$simple_rnn_50/strided_slice:output:0"simple_rnn_50/zeros/mul/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_50/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :УЃ
simple_rnn_50/zeros/LessLesssimple_rnn_50/zeros/mul:z:0#simple_rnn_50/zeros/Less/y:output:0*
T0*
_output_shapes
: ^
simple_rnn_50/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@Ю
simple_rnn_50/zeros/packedPack$simple_rnn_50/strided_slice:output:0%simple_rnn_50/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
simple_rnn_50/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ќ
simple_rnn_50/zerosFill#simple_rnn_50/zeros/packed:output:0"simple_rnn_50/zeros/Const:output:0*
T0*'
_output_shapes
:         @q
simple_rnn_50/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѕ
simple_rnn_50/transpose	Transposeinputs%simple_rnn_50/transpose/perm:output:0*
T0*+
_output_shapes
:         `
simple_rnn_50/Shape_1Shapesimple_rnn_50/transpose:y:0*
T0*
_output_shapes
:m
#simple_rnn_50/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_50/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_50/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
simple_rnn_50/strided_slice_1StridedSlicesimple_rnn_50/Shape_1:output:0,simple_rnn_50/strided_slice_1/stack:output:0.simple_rnn_50/strided_slice_1/stack_1:output:0.simple_rnn_50/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)simple_rnn_50/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         я
simple_rnn_50/TensorArrayV2TensorListReserve2simple_rnn_50/TensorArrayV2/element_shape:output:0&simple_rnn_50/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмћ
Csimple_rnn_50/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       і
5simple_rnn_50/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_50/transpose:y:0Lsimple_rnn_50/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмm
#simple_rnn_50/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_50/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_50/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:»
simple_rnn_50/strided_slice_2StridedSlicesimple_rnn_50/transpose:y:0,simple_rnn_50/strided_slice_2/stack:output:0.simple_rnn_50/strided_slice_2/stack_1:output:0.simple_rnn_50/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskХ
6simple_rnn_50/simple_rnn_cell_50/MatMul/ReadVariableOpReadVariableOp?simple_rnn_50_simple_rnn_cell_50_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0╦
'simple_rnn_50/simple_rnn_cell_50/MatMulMatMul&simple_rnn_50/strided_slice_2:output:0>simple_rnn_50/simple_rnn_cell_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @┤
7simple_rnn_50/simple_rnn_cell_50/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_50_simple_rnn_cell_50_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┘
(simple_rnn_50/simple_rnn_cell_50/BiasAddBiasAdd1simple_rnn_50/simple_rnn_cell_50/MatMul:product:0?simple_rnn_50/simple_rnn_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @║
8simple_rnn_50/simple_rnn_cell_50/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_50_simple_rnn_cell_50_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0┼
)simple_rnn_50/simple_rnn_cell_50/MatMul_1MatMulsimple_rnn_50/zeros:output:0@simple_rnn_50/simple_rnn_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @К
$simple_rnn_50/simple_rnn_cell_50/addAddV21simple_rnn_50/simple_rnn_cell_50/BiasAdd:output:03simple_rnn_50/simple_rnn_cell_50/MatMul_1:product:0*
T0*'
_output_shapes
:         @Ѕ
%simple_rnn_50/simple_rnn_cell_50/TanhTanh(simple_rnn_50/simple_rnn_cell_50/add:z:0*
T0*'
_output_shapes
:         @|
+simple_rnn_50/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   Р
simple_rnn_50/TensorArrayV2_1TensorListReserve4simple_rnn_50/TensorArrayV2_1/element_shape:output:0&simple_rnn_50/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмT
simple_rnn_50/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&simple_rnn_50/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         b
 simple_rnn_50/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Љ
simple_rnn_50/whileWhile)simple_rnn_50/while/loop_counter:output:0/simple_rnn_50/while/maximum_iterations:output:0simple_rnn_50/time:output:0&simple_rnn_50/TensorArrayV2_1:handle:0simple_rnn_50/zeros:output:0&simple_rnn_50/strided_slice_1:output:0Esimple_rnn_50/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_50_simple_rnn_cell_50_matmul_readvariableop_resource@simple_rnn_50_simple_rnn_cell_50_biasadd_readvariableop_resourceAsimple_rnn_50_simple_rnn_cell_50_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *+
body#R!
simple_rnn_50_while_body_190719*+
cond#R!
simple_rnn_50_while_cond_190718*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations Ј
>simple_rnn_50/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   В
0simple_rnn_50/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_50/while:output:3Gsimple_rnn_50/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype0v
#simple_rnn_50/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         o
%simple_rnn_50/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_50/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:═
simple_rnn_50/strided_slice_3StridedSlice9simple_rnn_50/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_50/strided_slice_3/stack:output:0.simple_rnn_50/strided_slice_3/stack_1:output:0.simple_rnn_50/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_masks
simple_rnn_50/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          └
simple_rnn_50/transpose_1	Transpose9simple_rnn_50/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_50/transpose_1/perm:output:0*
T0*+
_output_shapes
:         @]
dropout_28/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *б╝є?Ћ
dropout_28/dropout/MulMulsimple_rnn_50/transpose_1:y:0!dropout_28/dropout/Const:output:0*
T0*+
_output_shapes
:         @e
dropout_28/dropout/ShapeShapesimple_rnn_50/transpose_1:y:0*
T0*
_output_shapes
:д
/dropout_28/dropout/random_uniform/RandomUniformRandomUniform!dropout_28/dropout/Shape:output:0*
T0*+
_output_shapes
:         @*
dtype0f
!dropout_28/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L=╦
dropout_28/dropout/GreaterEqualGreaterEqual8dropout_28/dropout/random_uniform/RandomUniform:output:0*dropout_28/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:         @Ѕ
dropout_28/dropout/CastCast#dropout_28/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:         @ј
dropout_28/dropout/Mul_1Muldropout_28/dropout/Mul:z:0dropout_28/dropout/Cast:y:0*
T0*+
_output_shapes
:         @_
simple_rnn_51/ShapeShapedropout_28/dropout/Mul_1:z:0*
T0*
_output_shapes
:k
!simple_rnn_51/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#simple_rnn_51/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#simple_rnn_51/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ќ
simple_rnn_51/strided_sliceStridedSlicesimple_rnn_51/Shape:output:0*simple_rnn_51/strided_slice/stack:output:0,simple_rnn_51/strided_slice/stack_1:output:0,simple_rnn_51/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
simple_rnn_51/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :ЯЅ
simple_rnn_51/zeros/mulMul$simple_rnn_51/strided_slice:output:0"simple_rnn_51/zeros/mul/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_51/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :УЃ
simple_rnn_51/zeros/LessLesssimple_rnn_51/zeros/mul:z:0#simple_rnn_51/zeros/Less/y:output:0*
T0*
_output_shapes
: _
simple_rnn_51/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ЯЮ
simple_rnn_51/zeros/packedPack$simple_rnn_51/strided_slice:output:0%simple_rnn_51/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
simple_rnn_51/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ќ
simple_rnn_51/zerosFill#simple_rnn_51/zeros/packed:output:0"simple_rnn_51/zeros/Const:output:0*
T0*(
_output_shapes
:         Яq
simple_rnn_51/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
simple_rnn_51/transpose	Transposedropout_28/dropout/Mul_1:z:0%simple_rnn_51/transpose/perm:output:0*
T0*+
_output_shapes
:         @`
simple_rnn_51/Shape_1Shapesimple_rnn_51/transpose:y:0*
T0*
_output_shapes
:m
#simple_rnn_51/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_51/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_51/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
simple_rnn_51/strided_slice_1StridedSlicesimple_rnn_51/Shape_1:output:0,simple_rnn_51/strided_slice_1/stack:output:0.simple_rnn_51/strided_slice_1/stack_1:output:0.simple_rnn_51/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)simple_rnn_51/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         я
simple_rnn_51/TensorArrayV2TensorListReserve2simple_rnn_51/TensorArrayV2/element_shape:output:0&simple_rnn_51/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмћ
Csimple_rnn_51/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   і
5simple_rnn_51/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_51/transpose:y:0Lsimple_rnn_51/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмm
#simple_rnn_51/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_51/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_51/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:»
simple_rnn_51/strided_slice_2StridedSlicesimple_rnn_51/transpose:y:0,simple_rnn_51/strided_slice_2/stack:output:0.simple_rnn_51/strided_slice_2/stack_1:output:0.simple_rnn_51/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maskи
6simple_rnn_51/simple_rnn_cell_51/MatMul/ReadVariableOpReadVariableOp?simple_rnn_51_simple_rnn_cell_51_matmul_readvariableop_resource*
_output_shapes
:	@Я*
dtype0╠
'simple_rnn_51/simple_rnn_cell_51/MatMulMatMul&simple_rnn_51/strided_slice_2:output:0>simple_rnn_51/simple_rnn_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ях
7simple_rnn_51/simple_rnn_cell_51/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_51_simple_rnn_cell_51_biasadd_readvariableop_resource*
_output_shapes	
:Я*
dtype0┌
(simple_rnn_51/simple_rnn_cell_51/BiasAddBiasAdd1simple_rnn_51/simple_rnn_cell_51/MatMul:product:0?simple_rnn_51/simple_rnn_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Я╝
8simple_rnn_51/simple_rnn_cell_51/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_51_simple_rnn_cell_51_matmul_1_readvariableop_resource* 
_output_shapes
:
ЯЯ*
dtype0к
)simple_rnn_51/simple_rnn_cell_51/MatMul_1MatMulsimple_rnn_51/zeros:output:0@simple_rnn_51/simple_rnn_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Я╚
$simple_rnn_51/simple_rnn_cell_51/addAddV21simple_rnn_51/simple_rnn_cell_51/BiasAdd:output:03simple_rnn_51/simple_rnn_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:         Яі
%simple_rnn_51/simple_rnn_cell_51/TanhTanh(simple_rnn_51/simple_rnn_cell_51/add:z:0*
T0*(
_output_shapes
:         Я|
+simple_rnn_51/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Я   Р
simple_rnn_51/TensorArrayV2_1TensorListReserve4simple_rnn_51/TensorArrayV2_1/element_shape:output:0&simple_rnn_51/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмT
simple_rnn_51/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&simple_rnn_51/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         b
 simple_rnn_51/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Њ
simple_rnn_51/whileWhile)simple_rnn_51/while/loop_counter:output:0/simple_rnn_51/while/maximum_iterations:output:0simple_rnn_51/time:output:0&simple_rnn_51/TensorArrayV2_1:handle:0simple_rnn_51/zeros:output:0&simple_rnn_51/strided_slice_1:output:0Esimple_rnn_51/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_51_simple_rnn_cell_51_matmul_readvariableop_resource@simple_rnn_51_simple_rnn_cell_51_biasadd_readvariableop_resourceAsimple_rnn_51_simple_rnn_cell_51_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         Я: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *+
body#R!
simple_rnn_51_while_body_190835*+
cond#R!
simple_rnn_51_while_cond_190834*9
output_shapes(
&: : : : :         Я: : : : : *
parallel_iterations Ј
>simple_rnn_51/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Я   ь
0simple_rnn_51/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_51/while:output:3Gsimple_rnn_51/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         Я*
element_dtype0v
#simple_rnn_51/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         o
%simple_rnn_51/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_51/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
simple_rnn_51/strided_slice_3StridedSlice9simple_rnn_51/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_51/strided_slice_3/stack:output:0.simple_rnn_51/strided_slice_3/stack_1:output:0.simple_rnn_51/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Я*
shrink_axis_masks
simple_rnn_51/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ┴
simple_rnn_51/transpose_1	Transpose9simple_rnn_51/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_51/transpose_1/perm:output:0*
T0*,
_output_shapes
:         Я]
dropout_29/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *б╝є?Џ
dropout_29/dropout/MulMul&simple_rnn_51/strided_slice_3:output:0!dropout_29/dropout/Const:output:0*
T0*(
_output_shapes
:         Яn
dropout_29/dropout/ShapeShape&simple_rnn_51/strided_slice_3:output:0*
T0*
_output_shapes
:Б
/dropout_29/dropout/random_uniform/RandomUniformRandomUniform!dropout_29/dropout/Shape:output:0*
T0*(
_output_shapes
:         Я*
dtype0f
!dropout_29/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L=╚
dropout_29/dropout/GreaterEqualGreaterEqual8dropout_29/dropout/random_uniform/RandomUniform:output:0*dropout_29/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         Яє
dropout_29/dropout/CastCast#dropout_29/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ЯІ
dropout_29/dropout/Mul_1Muldropout_29/dropout/Mul:z:0dropout_29/dropout/Cast:y:0*
T0*(
_output_shapes
:         ЯЄ
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes
:	Я*
dtype0Љ
dense_25/MatMulMatMuldropout_29/dropout/Mul_1:z:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
dense_25/SoftmaxSoftmaxdense_25/BiasAdd:output:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_25/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         Љ
NoOpNoOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp8^simple_rnn_50/simple_rnn_cell_50/BiasAdd/ReadVariableOp7^simple_rnn_50/simple_rnn_cell_50/MatMul/ReadVariableOp9^simple_rnn_50/simple_rnn_cell_50/MatMul_1/ReadVariableOp^simple_rnn_50/while8^simple_rnn_51/simple_rnn_cell_51/BiasAdd/ReadVariableOp7^simple_rnn_51/simple_rnn_cell_51/MatMul/ReadVariableOp9^simple_rnn_51/simple_rnn_cell_51/MatMul_1/ReadVariableOp^simple_rnn_51/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : : : : : 2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2r
7simple_rnn_50/simple_rnn_cell_50/BiasAdd/ReadVariableOp7simple_rnn_50/simple_rnn_cell_50/BiasAdd/ReadVariableOp2p
6simple_rnn_50/simple_rnn_cell_50/MatMul/ReadVariableOp6simple_rnn_50/simple_rnn_cell_50/MatMul/ReadVariableOp2t
8simple_rnn_50/simple_rnn_cell_50/MatMul_1/ReadVariableOp8simple_rnn_50/simple_rnn_cell_50/MatMul_1/ReadVariableOp2*
simple_rnn_50/whilesimple_rnn_50/while2r
7simple_rnn_51/simple_rnn_cell_51/BiasAdd/ReadVariableOp7simple_rnn_51/simple_rnn_cell_51/BiasAdd/ReadVariableOp2p
6simple_rnn_51/simple_rnn_cell_51/MatMul/ReadVariableOp6simple_rnn_51/simple_rnn_cell_51/MatMul/ReadVariableOp2t
8simple_rnn_51/simple_rnn_cell_51/MatMul_1/ReadVariableOp8simple_rnn_51/simple_rnn_cell_51/MatMul_1/ReadVariableOp2*
simple_rnn_51/whilesimple_rnn_51/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ц

Ш
D__inference_dense_25_layer_call_and_return_conditional_losses_189885

inputs1
matmul_readvariableop_resource:	Я-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Я*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         Я: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         Я
 
_user_specified_nameinputs
о,
Л
while_body_191006
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_50_matmul_readvariableop_resource_0:@H
:while_simple_rnn_cell_50_biasadd_readvariableop_resource_0:@M
;while_simple_rnn_cell_50_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_50_matmul_readvariableop_resource:@F
8while_simple_rnn_cell_50_biasadd_readvariableop_resource:@K
9while_simple_rnn_cell_50_matmul_1_readvariableop_resource:@@ѕб/while/simple_rnn_cell_50/BiasAdd/ReadVariableOpб.while/simple_rnn_cell_50/MatMul/ReadVariableOpб0while/simple_rnn_cell_50/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0е
.while/simple_rnn_cell_50/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_50_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0┼
while/simple_rnn_cell_50/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
/while/simple_rnn_cell_50/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_50_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0┴
 while/simple_rnn_cell_50/BiasAddBiasAdd)while/simple_rnn_cell_50/MatMul:product:07while/simple_rnn_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @г
0while/simple_rnn_cell_50/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_50_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0г
!while/simple_rnn_cell_50/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @»
while/simple_rnn_cell_50/addAddV2)while/simple_rnn_cell_50/BiasAdd:output:0+while/simple_rnn_cell_50/MatMul_1:product:0*
T0*'
_output_shapes
:         @y
while/simple_rnn_cell_50/TanhTanh while/simple_rnn_cell_50/add:z:0*
T0*'
_output_shapes
:         @╩
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_50/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ~
while/Identity_4Identity!while/simple_rnn_cell_50/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         @Р

while/NoOpNoOp0^while/simple_rnn_cell_50/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_50/MatMul/ReadVariableOp1^while/simple_rnn_cell_50/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_50_biasadd_readvariableop_resource:while_simple_rnn_cell_50_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_50_matmul_1_readvariableop_resource;while_simple_rnn_cell_50_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_50_matmul_readvariableop_resource9while_simple_rnn_cell_50_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2b
/while/simple_rnn_cell_50/BiasAdd/ReadVariableOp/while/simple_rnn_cell_50/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_50/MatMul/ReadVariableOp.while/simple_rnn_cell_50/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_50/MatMul_1/ReadVariableOp0while/simple_rnn_cell_50/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
о,
Л
while_body_191342
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_50_matmul_readvariableop_resource_0:@H
:while_simple_rnn_cell_50_biasadd_readvariableop_resource_0:@M
;while_simple_rnn_cell_50_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_50_matmul_readvariableop_resource:@F
8while_simple_rnn_cell_50_biasadd_readvariableop_resource:@K
9while_simple_rnn_cell_50_matmul_1_readvariableop_resource:@@ѕб/while/simple_rnn_cell_50/BiasAdd/ReadVariableOpб.while/simple_rnn_cell_50/MatMul/ReadVariableOpб0while/simple_rnn_cell_50/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0е
.while/simple_rnn_cell_50/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_50_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0┼
while/simple_rnn_cell_50/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
/while/simple_rnn_cell_50/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_50_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0┴
 while/simple_rnn_cell_50/BiasAddBiasAdd)while/simple_rnn_cell_50/MatMul:product:07while/simple_rnn_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @г
0while/simple_rnn_cell_50/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_50_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0г
!while/simple_rnn_cell_50/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @»
while/simple_rnn_cell_50/addAddV2)while/simple_rnn_cell_50/BiasAdd:output:0+while/simple_rnn_cell_50/MatMul_1:product:0*
T0*'
_output_shapes
:         @y
while/simple_rnn_cell_50/TanhTanh while/simple_rnn_cell_50/add:z:0*
T0*'
_output_shapes
:         @╩
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_50/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ~
while/Identity_4Identity!while/simple_rnn_cell_50/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         @Р

while/NoOpNoOp0^while/simple_rnn_cell_50/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_50/MatMul/ReadVariableOp1^while/simple_rnn_cell_50/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_50_biasadd_readvariableop_resource:while_simple_rnn_cell_50_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_50_matmul_1_readvariableop_resource;while_simple_rnn_cell_50_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_50_matmul_readvariableop_resource9while_simple_rnn_cell_50_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2b
/while/simple_rnn_cell_50/BiasAdd/ReadVariableOp/while/simple_rnn_cell_50/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_50/MatMul/ReadVariableOp.while/simple_rnn_cell_50/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_50/MatMul_1/ReadVariableOp0while/simple_rnn_cell_50/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
О

┤
simple_rnn_51_while_cond_1908348
4simple_rnn_51_while_simple_rnn_51_while_loop_counter>
:simple_rnn_51_while_simple_rnn_51_while_maximum_iterations#
simple_rnn_51_while_placeholder%
!simple_rnn_51_while_placeholder_1%
!simple_rnn_51_while_placeholder_2:
6simple_rnn_51_while_less_simple_rnn_51_strided_slice_1P
Lsimple_rnn_51_while_simple_rnn_51_while_cond_190834___redundant_placeholder0P
Lsimple_rnn_51_while_simple_rnn_51_while_cond_190834___redundant_placeholder1P
Lsimple_rnn_51_while_simple_rnn_51_while_cond_190834___redundant_placeholder2P
Lsimple_rnn_51_while_simple_rnn_51_while_cond_190834___redundant_placeholder3 
simple_rnn_51_while_identity
џ
simple_rnn_51/while/LessLesssimple_rnn_51_while_placeholder6simple_rnn_51_while_less_simple_rnn_51_strided_slice_1*
T0*
_output_shapes
: g
simple_rnn_51/while/IdentityIdentitysimple_rnn_51/while/Less:z:0*
T0
*
_output_shapes
: "E
simple_rnn_51_while_identity%simple_rnn_51/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         Я: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         Я:

_output_shapes
: :

_output_shapes
:
Б@
┬
I__inference_simple_rnn_50_layer_call_and_return_conditional_losses_191408

inputsC
1simple_rnn_cell_50_matmul_readvariableop_resource:@@
2simple_rnn_cell_50_biasadd_readvariableop_resource:@E
3simple_rnn_cell_50_matmul_1_readvariableop_resource:@@
identityѕб)simple_rnn_cell_50/BiasAdd/ReadVariableOpб(simple_rnn_cell_50/MatMul/ReadVariableOpб*simple_rnn_cell_50/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :УY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskџ
(simple_rnn_cell_50/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_50_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0А
simple_rnn_cell_50/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ў
)simple_rnn_cell_50/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_50_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0»
simple_rnn_cell_50/BiasAddBiasAdd#simple_rnn_cell_50/MatMul:product:01simple_rnn_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ъ
*simple_rnn_cell_50/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_50_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Џ
simple_rnn_cell_50/MatMul_1MatMulzeros:output:02simple_rnn_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Ю
simple_rnn_cell_50/addAddV2#simple_rnn_cell_50/BiasAdd:output:0%simple_rnn_cell_50/MatMul_1:product:0*
T0*'
_output_shapes
:         @m
simple_rnn_cell_50/TanhTanhsimple_rnn_cell_50/add:z:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : █
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_50_matmul_readvariableop_resource2simple_rnn_cell_50_biasadd_readvariableop_resource3simple_rnn_cell_50_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_191342*
condR
while_cond_191341*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         @b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         @м
NoOpNoOp*^simple_rnn_cell_50/BiasAdd/ReadVariableOp)^simple_rnn_cell_50/MatMul/ReadVariableOp+^simple_rnn_cell_50/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2V
)simple_rnn_cell_50/BiasAdd/ReadVariableOp)simple_rnn_cell_50/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_50/MatMul/ReadVariableOp(simple_rnn_cell_50/MatMul/ReadVariableOp2X
*simple_rnn_cell_50/MatMul_1/ReadVariableOp*simple_rnn_cell_50/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
┤
G
+__inference_dropout_28_layer_call_fn_191413

inputs
identityИ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_189746d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
Ч	
e
F__inference_dropout_29_layer_call_and_return_conditional_losses_189941

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *б╝є?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         ЯC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         Я*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L=Д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         Яp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Яj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         ЯZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         Я"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         Я:P L
(
_output_shapes
:         Я
 
_user_specified_nameinputs
о,
Л
while_body_191230
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_50_matmul_readvariableop_resource_0:@H
:while_simple_rnn_cell_50_biasadd_readvariableop_resource_0:@M
;while_simple_rnn_cell_50_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_50_matmul_readvariableop_resource:@F
8while_simple_rnn_cell_50_biasadd_readvariableop_resource:@K
9while_simple_rnn_cell_50_matmul_1_readvariableop_resource:@@ѕб/while/simple_rnn_cell_50/BiasAdd/ReadVariableOpб.while/simple_rnn_cell_50/MatMul/ReadVariableOpб0while/simple_rnn_cell_50/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0е
.while/simple_rnn_cell_50/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_50_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0┼
while/simple_rnn_cell_50/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
/while/simple_rnn_cell_50/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_50_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0┴
 while/simple_rnn_cell_50/BiasAddBiasAdd)while/simple_rnn_cell_50/MatMul:product:07while/simple_rnn_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @г
0while/simple_rnn_cell_50/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_50_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0г
!while/simple_rnn_cell_50/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @»
while/simple_rnn_cell_50/addAddV2)while/simple_rnn_cell_50/BiasAdd:output:0+while/simple_rnn_cell_50/MatMul_1:product:0*
T0*'
_output_shapes
:         @y
while/simple_rnn_cell_50/TanhTanh while/simple_rnn_cell_50/add:z:0*
T0*'
_output_shapes
:         @╩
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_50/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ~
while/Identity_4Identity!while/simple_rnn_cell_50/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         @Р

while/NoOpNoOp0^while/simple_rnn_cell_50/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_50/MatMul/ReadVariableOp1^while/simple_rnn_cell_50/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_50_biasadd_readvariableop_resource:while_simple_rnn_cell_50_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_50_matmul_1_readvariableop_resource;while_simple_rnn_cell_50_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_50_matmul_readvariableop_resource9while_simple_rnn_cell_50_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2b
/while/simple_rnn_cell_50/BiasAdd/ReadVariableOp/while/simple_rnn_cell_50/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_50/MatMul/ReadVariableOp.while/simple_rnn_cell_50/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_50/MatMul_1/ReadVariableOp0while/simple_rnn_cell_50/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
о,
Л
while_body_189667
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_50_matmul_readvariableop_resource_0:@H
:while_simple_rnn_cell_50_biasadd_readvariableop_resource_0:@M
;while_simple_rnn_cell_50_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_50_matmul_readvariableop_resource:@F
8while_simple_rnn_cell_50_biasadd_readvariableop_resource:@K
9while_simple_rnn_cell_50_matmul_1_readvariableop_resource:@@ѕб/while/simple_rnn_cell_50/BiasAdd/ReadVariableOpб.while/simple_rnn_cell_50/MatMul/ReadVariableOpб0while/simple_rnn_cell_50/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0е
.while/simple_rnn_cell_50/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_50_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0┼
while/simple_rnn_cell_50/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
/while/simple_rnn_cell_50/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_50_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0┴
 while/simple_rnn_cell_50/BiasAddBiasAdd)while/simple_rnn_cell_50/MatMul:product:07while/simple_rnn_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @г
0while/simple_rnn_cell_50/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_50_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0г
!while/simple_rnn_cell_50/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @»
while/simple_rnn_cell_50/addAddV2)while/simple_rnn_cell_50/BiasAdd:output:0+while/simple_rnn_cell_50/MatMul_1:product:0*
T0*'
_output_shapes
:         @y
while/simple_rnn_cell_50/TanhTanh while/simple_rnn_cell_50/add:z:0*
T0*'
_output_shapes
:         @╩
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_50/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ~
while/Identity_4Identity!while/simple_rnn_cell_50/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         @Р

while/NoOpNoOp0^while/simple_rnn_cell_50/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_50/MatMul/ReadVariableOp1^while/simple_rnn_cell_50/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_50_biasadd_readvariableop_resource:while_simple_rnn_cell_50_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_50_matmul_1_readvariableop_resource;while_simple_rnn_cell_50_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_50_matmul_readvariableop_resource9while_simple_rnn_cell_50_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2b
/while/simple_rnn_cell_50/BiasAdd/ReadVariableOp/while/simple_rnn_cell_50/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_50/MatMul/ReadVariableOp.while/simple_rnn_cell_50/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_50/MatMul_1/ReadVariableOp0while/simple_rnn_cell_50/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
с9
ш
simple_rnn_50_while_body_1904908
4simple_rnn_50_while_simple_rnn_50_while_loop_counter>
:simple_rnn_50_while_simple_rnn_50_while_maximum_iterations#
simple_rnn_50_while_placeholder%
!simple_rnn_50_while_placeholder_1%
!simple_rnn_50_while_placeholder_27
3simple_rnn_50_while_simple_rnn_50_strided_slice_1_0s
osimple_rnn_50_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_50_tensorarrayunstack_tensorlistfromtensor_0Y
Gsimple_rnn_50_while_simple_rnn_cell_50_matmul_readvariableop_resource_0:@V
Hsimple_rnn_50_while_simple_rnn_cell_50_biasadd_readvariableop_resource_0:@[
Isimple_rnn_50_while_simple_rnn_cell_50_matmul_1_readvariableop_resource_0:@@ 
simple_rnn_50_while_identity"
simple_rnn_50_while_identity_1"
simple_rnn_50_while_identity_2"
simple_rnn_50_while_identity_3"
simple_rnn_50_while_identity_45
1simple_rnn_50_while_simple_rnn_50_strided_slice_1q
msimple_rnn_50_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_50_tensorarrayunstack_tensorlistfromtensorW
Esimple_rnn_50_while_simple_rnn_cell_50_matmul_readvariableop_resource:@T
Fsimple_rnn_50_while_simple_rnn_cell_50_biasadd_readvariableop_resource:@Y
Gsimple_rnn_50_while_simple_rnn_cell_50_matmul_1_readvariableop_resource:@@ѕб=simple_rnn_50/while/simple_rnn_cell_50/BiasAdd/ReadVariableOpб<simple_rnn_50/while/simple_rnn_cell_50/MatMul/ReadVariableOpб>simple_rnn_50/while/simple_rnn_cell_50/MatMul_1/ReadVariableOpќ
Esimple_rnn_50/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       В
7simple_rnn_50/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_50_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_50_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_50_while_placeholderNsimple_rnn_50/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0─
<simple_rnn_50/while/simple_rnn_cell_50/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_50_while_simple_rnn_cell_50_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0№
-simple_rnn_50/while/simple_rnn_cell_50/MatMulMatMul>simple_rnn_50/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_50/while/simple_rnn_cell_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @┬
=simple_rnn_50/while/simple_rnn_cell_50/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_50_while_simple_rnn_cell_50_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0в
.simple_rnn_50/while/simple_rnn_cell_50/BiasAddBiasAdd7simple_rnn_50/while/simple_rnn_cell_50/MatMul:product:0Esimple_rnn_50/while/simple_rnn_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @╚
>simple_rnn_50/while/simple_rnn_cell_50/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_50_while_simple_rnn_cell_50_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0о
/simple_rnn_50/while/simple_rnn_cell_50/MatMul_1MatMul!simple_rnn_50_while_placeholder_2Fsimple_rnn_50/while/simple_rnn_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @┘
*simple_rnn_50/while/simple_rnn_cell_50/addAddV27simple_rnn_50/while/simple_rnn_cell_50/BiasAdd:output:09simple_rnn_50/while/simple_rnn_cell_50/MatMul_1:product:0*
T0*'
_output_shapes
:         @Ћ
+simple_rnn_50/while/simple_rnn_cell_50/TanhTanh.simple_rnn_50/while/simple_rnn_cell_50/add:z:0*
T0*'
_output_shapes
:         @ѓ
8simple_rnn_50/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_50_while_placeholder_1simple_rnn_50_while_placeholder/simple_rnn_50/while/simple_rnn_cell_50/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУм[
simple_rnn_50/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :є
simple_rnn_50/while/addAddV2simple_rnn_50_while_placeholder"simple_rnn_50/while/add/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_50/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ъ
simple_rnn_50/while/add_1AddV24simple_rnn_50_while_simple_rnn_50_while_loop_counter$simple_rnn_50/while/add_1/y:output:0*
T0*
_output_shapes
: Ѓ
simple_rnn_50/while/IdentityIdentitysimple_rnn_50/while/add_1:z:0^simple_rnn_50/while/NoOp*
T0*
_output_shapes
: б
simple_rnn_50/while/Identity_1Identity:simple_rnn_50_while_simple_rnn_50_while_maximum_iterations^simple_rnn_50/while/NoOp*
T0*
_output_shapes
: Ѓ
simple_rnn_50/while/Identity_2Identitysimple_rnn_50/while/add:z:0^simple_rnn_50/while/NoOp*
T0*
_output_shapes
: ░
simple_rnn_50/while/Identity_3IdentityHsimple_rnn_50/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_50/while/NoOp*
T0*
_output_shapes
: е
simple_rnn_50/while/Identity_4Identity/simple_rnn_50/while/simple_rnn_cell_50/Tanh:y:0^simple_rnn_50/while/NoOp*
T0*'
_output_shapes
:         @џ
simple_rnn_50/while/NoOpNoOp>^simple_rnn_50/while/simple_rnn_cell_50/BiasAdd/ReadVariableOp=^simple_rnn_50/while/simple_rnn_cell_50/MatMul/ReadVariableOp?^simple_rnn_50/while/simple_rnn_cell_50/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
simple_rnn_50_while_identity%simple_rnn_50/while/Identity:output:0"I
simple_rnn_50_while_identity_1'simple_rnn_50/while/Identity_1:output:0"I
simple_rnn_50_while_identity_2'simple_rnn_50/while/Identity_2:output:0"I
simple_rnn_50_while_identity_3'simple_rnn_50/while/Identity_3:output:0"I
simple_rnn_50_while_identity_4'simple_rnn_50/while/Identity_4:output:0"h
1simple_rnn_50_while_simple_rnn_50_strided_slice_13simple_rnn_50_while_simple_rnn_50_strided_slice_1_0"њ
Fsimple_rnn_50_while_simple_rnn_cell_50_biasadd_readvariableop_resourceHsimple_rnn_50_while_simple_rnn_cell_50_biasadd_readvariableop_resource_0"ћ
Gsimple_rnn_50_while_simple_rnn_cell_50_matmul_1_readvariableop_resourceIsimple_rnn_50_while_simple_rnn_cell_50_matmul_1_readvariableop_resource_0"љ
Esimple_rnn_50_while_simple_rnn_cell_50_matmul_readvariableop_resourceGsimple_rnn_50_while_simple_rnn_cell_50_matmul_readvariableop_resource_0"Я
msimple_rnn_50_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_50_tensorarrayunstack_tensorlistfromtensorosimple_rnn_50_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_50_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2~
=simple_rnn_50/while/simple_rnn_cell_50/BiasAdd/ReadVariableOp=simple_rnn_50/while/simple_rnn_cell_50/BiasAdd/ReadVariableOp2|
<simple_rnn_50/while/simple_rnn_cell_50/MatMul/ReadVariableOp<simple_rnn_50/while/simple_rnn_cell_50/MatMul/ReadVariableOp2ђ
>simple_rnn_50/while/simple_rnn_cell_50/MatMul_1/ReadVariableOp>simple_rnn_50/while/simple_rnn_cell_50/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
▄
ф
while_cond_191748
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_191748___redundant_placeholder04
0while_while_cond_191748___redundant_placeholder14
0while_while_cond_191748___redundant_placeholder24
0while_while_cond_191748___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         Я: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         Я:

_output_shapes
: :

_output_shapes
:
Ж,
┘
while_body_191749
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
9while_simple_rnn_cell_51_matmul_readvariableop_resource_0:	@ЯI
:while_simple_rnn_cell_51_biasadd_readvariableop_resource_0:	ЯO
;while_simple_rnn_cell_51_matmul_1_readvariableop_resource_0:
ЯЯ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
7while_simple_rnn_cell_51_matmul_readvariableop_resource:	@ЯG
8while_simple_rnn_cell_51_biasadd_readvariableop_resource:	ЯM
9while_simple_rnn_cell_51_matmul_1_readvariableop_resource:
ЯЯѕб/while/simple_rnn_cell_51/BiasAdd/ReadVariableOpб.while/simple_rnn_cell_51/MatMul/ReadVariableOpб0while/simple_rnn_cell_51/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype0Е
.while/simple_rnn_cell_51/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_51_matmul_readvariableop_resource_0*
_output_shapes
:	@Я*
dtype0к
while/simple_rnn_cell_51/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ЯД
/while/simple_rnn_cell_51/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_51_biasadd_readvariableop_resource_0*
_output_shapes	
:Я*
dtype0┬
 while/simple_rnn_cell_51/BiasAddBiasAdd)while/simple_rnn_cell_51/MatMul:product:07while/simple_rnn_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Я«
0while/simple_rnn_cell_51/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_51_matmul_1_readvariableop_resource_0* 
_output_shapes
:
ЯЯ*
dtype0Г
!while/simple_rnn_cell_51/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Я░
while/simple_rnn_cell_51/addAddV2)while/simple_rnn_cell_51/BiasAdd:output:0+while/simple_rnn_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:         Яz
while/simple_rnn_cell_51/TanhTanh while/simple_rnn_cell_51/add:z:0*
T0*(
_output_shapes
:         Я╩
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_51/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity!while/simple_rnn_cell_51/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:         ЯР

while/NoOpNoOp0^while/simple_rnn_cell_51/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_51/MatMul/ReadVariableOp1^while/simple_rnn_cell_51/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_51_biasadd_readvariableop_resource:while_simple_rnn_cell_51_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_51_matmul_1_readvariableop_resource;while_simple_rnn_cell_51_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_51_matmul_readvariableop_resource9while_simple_rnn_cell_51_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         Я: : : : : 2b
/while/simple_rnn_cell_51/BiasAdd/ReadVariableOp/while/simple_rnn_cell_51/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_51/MatMul/ReadVariableOp.while/simple_rnn_cell_51/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_51/MatMul_1/ReadVariableOp0while/simple_rnn_cell_51/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         Я:

_output_shapes
: :

_output_shapes
: 
м
н
I__inference_sequential_25_layer_call_and_return_conditional_losses_190283

inputs&
simple_rnn_50_190261:@"
simple_rnn_50_190263:@&
simple_rnn_50_190265:@@'
simple_rnn_51_190269:	@Я#
simple_rnn_51_190271:	Я(
simple_rnn_51_190273:
ЯЯ"
dense_25_190277:	Я
dense_25_190279:
identityѕб dense_25/StatefulPartitionedCallб"dropout_28/StatefulPartitionedCallб"dropout_29/StatefulPartitionedCallб%simple_rnn_50/StatefulPartitionedCallб%simple_rnn_51/StatefulPartitionedCallБ
%simple_rnn_50/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_50_190261simple_rnn_50_190263simple_rnn_50_190265*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_simple_rnn_50_layer_call_and_return_conditional_losses_190226ч
"dropout_28/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_50/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_190098┼
%simple_rnn_51/StatefulPartitionedCallStatefulPartitionedCall+dropout_28/StatefulPartitionedCall:output:0simple_rnn_51_190269simple_rnn_51_190271simple_rnn_51_190273*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Я*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_simple_rnn_51_layer_call_and_return_conditional_losses_190069Ю
"dropout_29/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_51/StatefulPartitionedCall:output:0#^dropout_28/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Я* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_189941ў
 dense_25/StatefulPartitionedCallStatefulPartitionedCall+dropout_29/StatefulPartitionedCall:output:0dense_25_190277dense_25_190279*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_189885x
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Ѓ
NoOpNoOp!^dense_25/StatefulPartitionedCall#^dropout_28/StatefulPartitionedCall#^dropout_29/StatefulPartitionedCall&^simple_rnn_50/StatefulPartitionedCall&^simple_rnn_51/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : : : : : 2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2H
"dropout_28/StatefulPartitionedCall"dropout_28/StatefulPartitionedCall2H
"dropout_29/StatefulPartitionedCall"dropout_29/StatefulPartitionedCall2N
%simple_rnn_50/StatefulPartitionedCall%simple_rnn_50/StatefulPartitionedCall2N
%simple_rnn_51/StatefulPartitionedCall%simple_rnn_51/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
х
║
.__inference_simple_rnn_50_layer_call_fn_190927
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@@
identityѕбStatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  @*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_simple_rnn_50_layer_call_and_return_conditional_losses_189143|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
Б@
┬
I__inference_simple_rnn_50_layer_call_and_return_conditional_losses_190226

inputsC
1simple_rnn_cell_50_matmul_readvariableop_resource:@@
2simple_rnn_cell_50_biasadd_readvariableop_resource:@E
3simple_rnn_cell_50_matmul_1_readvariableop_resource:@@
identityѕб)simple_rnn_cell_50/BiasAdd/ReadVariableOpб(simple_rnn_cell_50/MatMul/ReadVariableOpб*simple_rnn_cell_50/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :УY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskџ
(simple_rnn_cell_50/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_50_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0А
simple_rnn_cell_50/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ў
)simple_rnn_cell_50/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_50_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0»
simple_rnn_cell_50/BiasAddBiasAdd#simple_rnn_cell_50/MatMul:product:01simple_rnn_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ъ
*simple_rnn_cell_50/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_50_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Џ
simple_rnn_cell_50/MatMul_1MatMulzeros:output:02simple_rnn_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Ю
simple_rnn_cell_50/addAddV2#simple_rnn_cell_50/BiasAdd:output:0%simple_rnn_cell_50/MatMul_1:product:0*
T0*'
_output_shapes
:         @m
simple_rnn_cell_50/TanhTanhsimple_rnn_cell_50/add:z:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : █
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_50_matmul_readvariableop_resource2simple_rnn_cell_50_biasadd_readvariableop_resource3simple_rnn_cell_50_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_190160*
condR
while_cond_190159*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         @b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         @м
NoOpNoOp*^simple_rnn_cell_50/BiasAdd/ReadVariableOp)^simple_rnn_cell_50/MatMul/ReadVariableOp+^simple_rnn_cell_50/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2V
)simple_rnn_cell_50/BiasAdd/ReadVariableOp)simple_rnn_cell_50/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_50/MatMul/ReadVariableOp(simple_rnn_cell_50/MatMul/ReadVariableOp2X
*simple_rnn_cell_50/MatMul_1/ReadVariableOp*simple_rnn_cell_50/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ч	
e
F__inference_dropout_29_layer_call_and_return_conditional_losses_191954

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *б╝є?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         ЯC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         Я*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L=Д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         Яp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Яj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         ЯZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         Я"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         Я:P L
(
_output_shapes
:         Я
 
_user_specified_nameinputs
╚

▀
3__inference_simple_rnn_cell_51_layer_call_fn_192050

inputs
states_0
unknown:	@Я
	unknown_0:	Я
	unknown_1:
ЯЯ
identity

identity_1ѕбStatefulPartitionedCallћ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:         Я:         Я*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *W
fRRP
N__inference_simple_rnn_cell_51_layer_call_and_return_conditional_losses_189367p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         Яr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         Я`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         @:         Я: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs:RN
(
_output_shapes
:         Я
"
_user_specified_name
states/0
ж
d
F__inference_dropout_28_layer_call_and_return_conditional_losses_189746

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:         @_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
Н

┤
simple_rnn_50_while_cond_1907188
4simple_rnn_50_while_simple_rnn_50_while_loop_counter>
:simple_rnn_50_while_simple_rnn_50_while_maximum_iterations#
simple_rnn_50_while_placeholder%
!simple_rnn_50_while_placeholder_1%
!simple_rnn_50_while_placeholder_2:
6simple_rnn_50_while_less_simple_rnn_50_strided_slice_1P
Lsimple_rnn_50_while_simple_rnn_50_while_cond_190718___redundant_placeholder0P
Lsimple_rnn_50_while_simple_rnn_50_while_cond_190718___redundant_placeholder1P
Lsimple_rnn_50_while_simple_rnn_50_while_cond_190718___redundant_placeholder2P
Lsimple_rnn_50_while_simple_rnn_50_while_cond_190718___redundant_placeholder3 
simple_rnn_50_while_identity
џ
simple_rnn_50/while/LessLesssimple_rnn_50_while_placeholder6simple_rnn_50_while_less_simple_rnn_50_strided_slice_1*
T0*
_output_shapes
: g
simple_rnn_50/while/IdentityIdentitysimple_rnn_50/while/Less:z:0*
T0
*
_output_shapes
: "E
simple_rnn_50_while_identity%simple_rnn_50/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
Й

█
3__inference_simple_rnn_cell_50_layer_call_fn_192002

inputs
states_0
unknown:@
	unknown_0:@
	unknown_1:@@
identity

identity_1ѕбStatefulPartitionedCallњ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         @:         @*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *W
fRRP
N__inference_simple_rnn_cell_50_layer_call_and_return_conditional_losses_189187o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         :         @: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         @
"
_user_specified_name
states/0
Н
і
I__inference_sequential_25_layer_call_and_return_conditional_losses_189892

inputs&
simple_rnn_50_189734:@"
simple_rnn_50_189736:@&
simple_rnn_50_189738:@@'
simple_rnn_51_189860:	@Я#
simple_rnn_51_189862:	Я(
simple_rnn_51_189864:
ЯЯ"
dense_25_189886:	Я
dense_25_189888:
identityѕб dense_25/StatefulPartitionedCallб%simple_rnn_50/StatefulPartitionedCallб%simple_rnn_51/StatefulPartitionedCallБ
%simple_rnn_50/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_50_189734simple_rnn_50_189736simple_rnn_50_189738*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_simple_rnn_50_layer_call_and_return_conditional_losses_189733в
dropout_28/PartitionedCallPartitionedCall.simple_rnn_50/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_189746й
%simple_rnn_51/StatefulPartitionedCallStatefulPartitionedCall#dropout_28/PartitionedCall:output:0simple_rnn_51_189860simple_rnn_51_189862simple_rnn_51_189864*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Я*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_simple_rnn_51_layer_call_and_return_conditional_losses_189859У
dropout_29/PartitionedCallPartitionedCall.simple_rnn_51/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Я* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_189872љ
 dense_25/StatefulPartitionedCallStatefulPartitionedCall#dropout_29/PartitionedCall:output:0dense_25_189886dense_25_189888*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_189885x
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╣
NoOpNoOp!^dense_25/StatefulPartitionedCall&^simple_rnn_50/StatefulPartitionedCall&^simple_rnn_51/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : : : : : 2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2N
%simple_rnn_50/StatefulPartitionedCall%simple_rnn_50/StatefulPartitionedCall2N
%simple_rnn_51/StatefulPartitionedCall%simple_rnn_51/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
┌
ф
while_cond_191117
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_191117___redundant_placeholder04
0while_while_cond_191117___redundant_placeholder14
0while_while_cond_191117___redundant_placeholder24
0while_while_cond_191117___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
р@
─
I__inference_simple_rnn_50_layer_call_and_return_conditional_losses_191072
inputs_0C
1simple_rnn_cell_50_matmul_readvariableop_resource:@@
2simple_rnn_cell_50_biasadd_readvariableop_resource:@E
3simple_rnn_cell_50_matmul_1_readvariableop_resource:@@
identityѕб)simple_rnn_cell_50/BiasAdd/ReadVariableOpб(simple_rnn_cell_50/MatMul/ReadVariableOpб*simple_rnn_cell_50/MatMul_1/ReadVariableOpбwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :УY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskџ
(simple_rnn_cell_50/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_50_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0А
simple_rnn_cell_50/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ў
)simple_rnn_cell_50/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_50_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0»
simple_rnn_cell_50/BiasAddBiasAdd#simple_rnn_cell_50/MatMul:product:01simple_rnn_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ъ
*simple_rnn_cell_50/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_50_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Џ
simple_rnn_cell_50/MatMul_1MatMulzeros:output:02simple_rnn_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Ю
simple_rnn_cell_50/addAddV2#simple_rnn_cell_50/BiasAdd:output:0%simple_rnn_cell_50/MatMul_1:product:0*
T0*'
_output_shapes
:         @m
simple_rnn_cell_50/TanhTanhsimple_rnn_cell_50/add:z:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : █
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_50_matmul_readvariableop_resource2simple_rnn_cell_50_biasadd_readvariableop_resource3simple_rnn_cell_50_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_191006*
condR
while_cond_191005*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  @м
NoOpNoOp*^simple_rnn_cell_50/BiasAdd/ReadVariableOp)^simple_rnn_cell_50/MatMul/ReadVariableOp+^simple_rnn_cell_50/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2V
)simple_rnn_cell_50/BiasAdd/ReadVariableOp)simple_rnn_cell_50/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_50/MatMul/ReadVariableOp(simple_rnn_cell_50/MatMul/ReadVariableOp2X
*simple_rnn_cell_50/MatMul_1/ReadVariableOp*simple_rnn_cell_50/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
ж
d
F__inference_dropout_28_layer_call_and_return_conditional_losses_191423

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:         @_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
№F
Ю
-sequential_25_simple_rnn_50_while_body_188832T
Psequential_25_simple_rnn_50_while_sequential_25_simple_rnn_50_while_loop_counterZ
Vsequential_25_simple_rnn_50_while_sequential_25_simple_rnn_50_while_maximum_iterations1
-sequential_25_simple_rnn_50_while_placeholder3
/sequential_25_simple_rnn_50_while_placeholder_13
/sequential_25_simple_rnn_50_while_placeholder_2S
Osequential_25_simple_rnn_50_while_sequential_25_simple_rnn_50_strided_slice_1_0љ
Іsequential_25_simple_rnn_50_while_tensorarrayv2read_tensorlistgetitem_sequential_25_simple_rnn_50_tensorarrayunstack_tensorlistfromtensor_0g
Usequential_25_simple_rnn_50_while_simple_rnn_cell_50_matmul_readvariableop_resource_0:@d
Vsequential_25_simple_rnn_50_while_simple_rnn_cell_50_biasadd_readvariableop_resource_0:@i
Wsequential_25_simple_rnn_50_while_simple_rnn_cell_50_matmul_1_readvariableop_resource_0:@@.
*sequential_25_simple_rnn_50_while_identity0
,sequential_25_simple_rnn_50_while_identity_10
,sequential_25_simple_rnn_50_while_identity_20
,sequential_25_simple_rnn_50_while_identity_30
,sequential_25_simple_rnn_50_while_identity_4Q
Msequential_25_simple_rnn_50_while_sequential_25_simple_rnn_50_strided_slice_1ј
Ѕsequential_25_simple_rnn_50_while_tensorarrayv2read_tensorlistgetitem_sequential_25_simple_rnn_50_tensorarrayunstack_tensorlistfromtensore
Ssequential_25_simple_rnn_50_while_simple_rnn_cell_50_matmul_readvariableop_resource:@b
Tsequential_25_simple_rnn_50_while_simple_rnn_cell_50_biasadd_readvariableop_resource:@g
Usequential_25_simple_rnn_50_while_simple_rnn_cell_50_matmul_1_readvariableop_resource:@@ѕбKsequential_25/simple_rnn_50/while/simple_rnn_cell_50/BiasAdd/ReadVariableOpбJsequential_25/simple_rnn_50/while/simple_rnn_cell_50/MatMul/ReadVariableOpбLsequential_25/simple_rnn_50/while/simple_rnn_cell_50/MatMul_1/ReadVariableOpц
Ssequential_25/simple_rnn_50/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       │
Esequential_25/simple_rnn_50/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemІsequential_25_simple_rnn_50_while_tensorarrayv2read_tensorlistgetitem_sequential_25_simple_rnn_50_tensorarrayunstack_tensorlistfromtensor_0-sequential_25_simple_rnn_50_while_placeholder\sequential_25/simple_rnn_50/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Я
Jsequential_25/simple_rnn_50/while/simple_rnn_cell_50/MatMul/ReadVariableOpReadVariableOpUsequential_25_simple_rnn_50_while_simple_rnn_cell_50_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0Ў
;sequential_25/simple_rnn_50/while/simple_rnn_cell_50/MatMulMatMulLsequential_25/simple_rnn_50/while/TensorArrayV2Read/TensorListGetItem:item:0Rsequential_25/simple_rnn_50/while/simple_rnn_cell_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @я
Ksequential_25/simple_rnn_50/while/simple_rnn_cell_50/BiasAdd/ReadVariableOpReadVariableOpVsequential_25_simple_rnn_50_while_simple_rnn_cell_50_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0Ћ
<sequential_25/simple_rnn_50/while/simple_rnn_cell_50/BiasAddBiasAddEsequential_25/simple_rnn_50/while/simple_rnn_cell_50/MatMul:product:0Ssequential_25/simple_rnn_50/while/simple_rnn_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @С
Lsequential_25/simple_rnn_50/while/simple_rnn_cell_50/MatMul_1/ReadVariableOpReadVariableOpWsequential_25_simple_rnn_50_while_simple_rnn_cell_50_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ђ
=sequential_25/simple_rnn_50/while/simple_rnn_cell_50/MatMul_1MatMul/sequential_25_simple_rnn_50_while_placeholder_2Tsequential_25/simple_rnn_50/while/simple_rnn_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Ѓ
8sequential_25/simple_rnn_50/while/simple_rnn_cell_50/addAddV2Esequential_25/simple_rnn_50/while/simple_rnn_cell_50/BiasAdd:output:0Gsequential_25/simple_rnn_50/while/simple_rnn_cell_50/MatMul_1:product:0*
T0*'
_output_shapes
:         @▒
9sequential_25/simple_rnn_50/while/simple_rnn_cell_50/TanhTanh<sequential_25/simple_rnn_50/while/simple_rnn_cell_50/add:z:0*
T0*'
_output_shapes
:         @║
Fsequential_25/simple_rnn_50/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem/sequential_25_simple_rnn_50_while_placeholder_1-sequential_25_simple_rnn_50_while_placeholder=sequential_25/simple_rnn_50/while/simple_rnn_cell_50/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУмi
'sequential_25/simple_rnn_50/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :░
%sequential_25/simple_rnn_50/while/addAddV2-sequential_25_simple_rnn_50_while_placeholder0sequential_25/simple_rnn_50/while/add/y:output:0*
T0*
_output_shapes
: k
)sequential_25/simple_rnn_50/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :О
'sequential_25/simple_rnn_50/while/add_1AddV2Psequential_25_simple_rnn_50_while_sequential_25_simple_rnn_50_while_loop_counter2sequential_25/simple_rnn_50/while/add_1/y:output:0*
T0*
_output_shapes
: Г
*sequential_25/simple_rnn_50/while/IdentityIdentity+sequential_25/simple_rnn_50/while/add_1:z:0'^sequential_25/simple_rnn_50/while/NoOp*
T0*
_output_shapes
: ┌
,sequential_25/simple_rnn_50/while/Identity_1IdentityVsequential_25_simple_rnn_50_while_sequential_25_simple_rnn_50_while_maximum_iterations'^sequential_25/simple_rnn_50/while/NoOp*
T0*
_output_shapes
: Г
,sequential_25/simple_rnn_50/while/Identity_2Identity)sequential_25/simple_rnn_50/while/add:z:0'^sequential_25/simple_rnn_50/while/NoOp*
T0*
_output_shapes
: ┌
,sequential_25/simple_rnn_50/while/Identity_3IdentityVsequential_25/simple_rnn_50/while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^sequential_25/simple_rnn_50/while/NoOp*
T0*
_output_shapes
: м
,sequential_25/simple_rnn_50/while/Identity_4Identity=sequential_25/simple_rnn_50/while/simple_rnn_cell_50/Tanh:y:0'^sequential_25/simple_rnn_50/while/NoOp*
T0*'
_output_shapes
:         @м
&sequential_25/simple_rnn_50/while/NoOpNoOpL^sequential_25/simple_rnn_50/while/simple_rnn_cell_50/BiasAdd/ReadVariableOpK^sequential_25/simple_rnn_50/while/simple_rnn_cell_50/MatMul/ReadVariableOpM^sequential_25/simple_rnn_50/while/simple_rnn_cell_50/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "a
*sequential_25_simple_rnn_50_while_identity3sequential_25/simple_rnn_50/while/Identity:output:0"e
,sequential_25_simple_rnn_50_while_identity_15sequential_25/simple_rnn_50/while/Identity_1:output:0"e
,sequential_25_simple_rnn_50_while_identity_25sequential_25/simple_rnn_50/while/Identity_2:output:0"e
,sequential_25_simple_rnn_50_while_identity_35sequential_25/simple_rnn_50/while/Identity_3:output:0"e
,sequential_25_simple_rnn_50_while_identity_45sequential_25/simple_rnn_50/while/Identity_4:output:0"а
Msequential_25_simple_rnn_50_while_sequential_25_simple_rnn_50_strided_slice_1Osequential_25_simple_rnn_50_while_sequential_25_simple_rnn_50_strided_slice_1_0"«
Tsequential_25_simple_rnn_50_while_simple_rnn_cell_50_biasadd_readvariableop_resourceVsequential_25_simple_rnn_50_while_simple_rnn_cell_50_biasadd_readvariableop_resource_0"░
Usequential_25_simple_rnn_50_while_simple_rnn_cell_50_matmul_1_readvariableop_resourceWsequential_25_simple_rnn_50_while_simple_rnn_cell_50_matmul_1_readvariableop_resource_0"г
Ssequential_25_simple_rnn_50_while_simple_rnn_cell_50_matmul_readvariableop_resourceUsequential_25_simple_rnn_50_while_simple_rnn_cell_50_matmul_readvariableop_resource_0"џ
Ѕsequential_25_simple_rnn_50_while_tensorarrayv2read_tensorlistgetitem_sequential_25_simple_rnn_50_tensorarrayunstack_tensorlistfromtensorІsequential_25_simple_rnn_50_while_tensorarrayv2read_tensorlistgetitem_sequential_25_simple_rnn_50_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2џ
Ksequential_25/simple_rnn_50/while/simple_rnn_cell_50/BiasAdd/ReadVariableOpKsequential_25/simple_rnn_50/while/simple_rnn_cell_50/BiasAdd/ReadVariableOp2ў
Jsequential_25/simple_rnn_50/while/simple_rnn_cell_50/MatMul/ReadVariableOpJsequential_25/simple_rnn_50/while/simple_rnn_cell_50/MatMul/ReadVariableOp2ю
Lsequential_25/simple_rnn_50/while/simple_rnn_cell_50/MatMul_1/ReadVariableOpLsequential_25/simple_rnn_50/while/simple_rnn_cell_50/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
Ю!
Я
while_body_189380
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_04
!while_simple_rnn_cell_51_189402_0:	@Я0
!while_simple_rnn_cell_51_189404_0:	Я5
!while_simple_rnn_cell_51_189406_0:
ЯЯ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor2
while_simple_rnn_cell_51_189402:	@Я.
while_simple_rnn_cell_51_189404:	Я3
while_simple_rnn_cell_51_189406:
ЯЯѕб0while/simple_rnn_cell_51/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype0г
0while/simple_rnn_cell_51/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2!while_simple_rnn_cell_51_189402_0!while_simple_rnn_cell_51_189404_0!while_simple_rnn_cell_51_189406_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:         Я:         Я*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *W
fRRP
N__inference_simple_rnn_cell_51_layer_call_and_return_conditional_losses_189367Р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder9while/simple_rnn_cell_51/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Ќ
while/Identity_4Identity9while/simple_rnn_cell_51/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:         Я

while/NoOpNoOp1^while/simple_rnn_cell_51/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_simple_rnn_cell_51_189402!while_simple_rnn_cell_51_189402_0"D
while_simple_rnn_cell_51_189404!while_simple_rnn_cell_51_189404_0"D
while_simple_rnn_cell_51_189406!while_simple_rnn_cell_51_189406_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         Я: : : : : 2d
0while/simple_rnn_cell_51/StatefulPartitionedCall0while/simple_rnn_cell_51/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         Я:

_output_shapes
: :

_output_shapes
: 
▄
ф
while_cond_191636
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_191636___redundant_placeholder04
0while_while_cond_191636___redundant_placeholder14
0while_while_cond_191636___redundant_placeholder24
0while_while_cond_191636___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         Я: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         Я:

_output_shapes
: :

_output_shapes
:
ц

Ш
D__inference_dense_25_layer_call_and_return_conditional_losses_191974

inputs1
matmul_readvariableop_resource:	Я-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Я*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         Я: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         Я
 
_user_specified_nameinputs
▄
ф
while_cond_191860
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_191860___redundant_placeholder04
0while_while_cond_191860___redundant_placeholder14
0while_while_cond_191860___redundant_placeholder24
0while_while_cond_191860___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         Я: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         Я:

_output_shapes
: :

_output_shapes
:
ЃG
Ц
-sequential_25_simple_rnn_51_while_body_188941T
Psequential_25_simple_rnn_51_while_sequential_25_simple_rnn_51_while_loop_counterZ
Vsequential_25_simple_rnn_51_while_sequential_25_simple_rnn_51_while_maximum_iterations1
-sequential_25_simple_rnn_51_while_placeholder3
/sequential_25_simple_rnn_51_while_placeholder_13
/sequential_25_simple_rnn_51_while_placeholder_2S
Osequential_25_simple_rnn_51_while_sequential_25_simple_rnn_51_strided_slice_1_0љ
Іsequential_25_simple_rnn_51_while_tensorarrayv2read_tensorlistgetitem_sequential_25_simple_rnn_51_tensorarrayunstack_tensorlistfromtensor_0h
Usequential_25_simple_rnn_51_while_simple_rnn_cell_51_matmul_readvariableop_resource_0:	@Яe
Vsequential_25_simple_rnn_51_while_simple_rnn_cell_51_biasadd_readvariableop_resource_0:	Яk
Wsequential_25_simple_rnn_51_while_simple_rnn_cell_51_matmul_1_readvariableop_resource_0:
ЯЯ.
*sequential_25_simple_rnn_51_while_identity0
,sequential_25_simple_rnn_51_while_identity_10
,sequential_25_simple_rnn_51_while_identity_20
,sequential_25_simple_rnn_51_while_identity_30
,sequential_25_simple_rnn_51_while_identity_4Q
Msequential_25_simple_rnn_51_while_sequential_25_simple_rnn_51_strided_slice_1ј
Ѕsequential_25_simple_rnn_51_while_tensorarrayv2read_tensorlistgetitem_sequential_25_simple_rnn_51_tensorarrayunstack_tensorlistfromtensorf
Ssequential_25_simple_rnn_51_while_simple_rnn_cell_51_matmul_readvariableop_resource:	@Яc
Tsequential_25_simple_rnn_51_while_simple_rnn_cell_51_biasadd_readvariableop_resource:	Яi
Usequential_25_simple_rnn_51_while_simple_rnn_cell_51_matmul_1_readvariableop_resource:
ЯЯѕбKsequential_25/simple_rnn_51/while/simple_rnn_cell_51/BiasAdd/ReadVariableOpбJsequential_25/simple_rnn_51/while/simple_rnn_cell_51/MatMul/ReadVariableOpбLsequential_25/simple_rnn_51/while/simple_rnn_cell_51/MatMul_1/ReadVariableOpц
Ssequential_25/simple_rnn_51/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   │
Esequential_25/simple_rnn_51/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemІsequential_25_simple_rnn_51_while_tensorarrayv2read_tensorlistgetitem_sequential_25_simple_rnn_51_tensorarrayunstack_tensorlistfromtensor_0-sequential_25_simple_rnn_51_while_placeholder\sequential_25/simple_rnn_51/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype0р
Jsequential_25/simple_rnn_51/while/simple_rnn_cell_51/MatMul/ReadVariableOpReadVariableOpUsequential_25_simple_rnn_51_while_simple_rnn_cell_51_matmul_readvariableop_resource_0*
_output_shapes
:	@Я*
dtype0џ
;sequential_25/simple_rnn_51/while/simple_rnn_cell_51/MatMulMatMulLsequential_25/simple_rnn_51/while/TensorArrayV2Read/TensorListGetItem:item:0Rsequential_25/simple_rnn_51/while/simple_rnn_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Я▀
Ksequential_25/simple_rnn_51/while/simple_rnn_cell_51/BiasAdd/ReadVariableOpReadVariableOpVsequential_25_simple_rnn_51_while_simple_rnn_cell_51_biasadd_readvariableop_resource_0*
_output_shapes	
:Я*
dtype0ќ
<sequential_25/simple_rnn_51/while/simple_rnn_cell_51/BiasAddBiasAddEsequential_25/simple_rnn_51/while/simple_rnn_cell_51/MatMul:product:0Ssequential_25/simple_rnn_51/while/simple_rnn_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ЯТ
Lsequential_25/simple_rnn_51/while/simple_rnn_cell_51/MatMul_1/ReadVariableOpReadVariableOpWsequential_25_simple_rnn_51_while_simple_rnn_cell_51_matmul_1_readvariableop_resource_0* 
_output_shapes
:
ЯЯ*
dtype0Ђ
=sequential_25/simple_rnn_51/while/simple_rnn_cell_51/MatMul_1MatMul/sequential_25_simple_rnn_51_while_placeholder_2Tsequential_25/simple_rnn_51/while/simple_rnn_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Яё
8sequential_25/simple_rnn_51/while/simple_rnn_cell_51/addAddV2Esequential_25/simple_rnn_51/while/simple_rnn_cell_51/BiasAdd:output:0Gsequential_25/simple_rnn_51/while/simple_rnn_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:         Я▓
9sequential_25/simple_rnn_51/while/simple_rnn_cell_51/TanhTanh<sequential_25/simple_rnn_51/while/simple_rnn_cell_51/add:z:0*
T0*(
_output_shapes
:         Я║
Fsequential_25/simple_rnn_51/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem/sequential_25_simple_rnn_51_while_placeholder_1-sequential_25_simple_rnn_51_while_placeholder=sequential_25/simple_rnn_51/while/simple_rnn_cell_51/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУмi
'sequential_25/simple_rnn_51/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :░
%sequential_25/simple_rnn_51/while/addAddV2-sequential_25_simple_rnn_51_while_placeholder0sequential_25/simple_rnn_51/while/add/y:output:0*
T0*
_output_shapes
: k
)sequential_25/simple_rnn_51/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :О
'sequential_25/simple_rnn_51/while/add_1AddV2Psequential_25_simple_rnn_51_while_sequential_25_simple_rnn_51_while_loop_counter2sequential_25/simple_rnn_51/while/add_1/y:output:0*
T0*
_output_shapes
: Г
*sequential_25/simple_rnn_51/while/IdentityIdentity+sequential_25/simple_rnn_51/while/add_1:z:0'^sequential_25/simple_rnn_51/while/NoOp*
T0*
_output_shapes
: ┌
,sequential_25/simple_rnn_51/while/Identity_1IdentityVsequential_25_simple_rnn_51_while_sequential_25_simple_rnn_51_while_maximum_iterations'^sequential_25/simple_rnn_51/while/NoOp*
T0*
_output_shapes
: Г
,sequential_25/simple_rnn_51/while/Identity_2Identity)sequential_25/simple_rnn_51/while/add:z:0'^sequential_25/simple_rnn_51/while/NoOp*
T0*
_output_shapes
: ┌
,sequential_25/simple_rnn_51/while/Identity_3IdentityVsequential_25/simple_rnn_51/while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^sequential_25/simple_rnn_51/while/NoOp*
T0*
_output_shapes
: М
,sequential_25/simple_rnn_51/while/Identity_4Identity=sequential_25/simple_rnn_51/while/simple_rnn_cell_51/Tanh:y:0'^sequential_25/simple_rnn_51/while/NoOp*
T0*(
_output_shapes
:         Ям
&sequential_25/simple_rnn_51/while/NoOpNoOpL^sequential_25/simple_rnn_51/while/simple_rnn_cell_51/BiasAdd/ReadVariableOpK^sequential_25/simple_rnn_51/while/simple_rnn_cell_51/MatMul/ReadVariableOpM^sequential_25/simple_rnn_51/while/simple_rnn_cell_51/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "a
*sequential_25_simple_rnn_51_while_identity3sequential_25/simple_rnn_51/while/Identity:output:0"e
,sequential_25_simple_rnn_51_while_identity_15sequential_25/simple_rnn_51/while/Identity_1:output:0"e
,sequential_25_simple_rnn_51_while_identity_25sequential_25/simple_rnn_51/while/Identity_2:output:0"e
,sequential_25_simple_rnn_51_while_identity_35sequential_25/simple_rnn_51/while/Identity_3:output:0"e
,sequential_25_simple_rnn_51_while_identity_45sequential_25/simple_rnn_51/while/Identity_4:output:0"а
Msequential_25_simple_rnn_51_while_sequential_25_simple_rnn_51_strided_slice_1Osequential_25_simple_rnn_51_while_sequential_25_simple_rnn_51_strided_slice_1_0"«
Tsequential_25_simple_rnn_51_while_simple_rnn_cell_51_biasadd_readvariableop_resourceVsequential_25_simple_rnn_51_while_simple_rnn_cell_51_biasadd_readvariableop_resource_0"░
Usequential_25_simple_rnn_51_while_simple_rnn_cell_51_matmul_1_readvariableop_resourceWsequential_25_simple_rnn_51_while_simple_rnn_cell_51_matmul_1_readvariableop_resource_0"г
Ssequential_25_simple_rnn_51_while_simple_rnn_cell_51_matmul_readvariableop_resourceUsequential_25_simple_rnn_51_while_simple_rnn_cell_51_matmul_readvariableop_resource_0"џ
Ѕsequential_25_simple_rnn_51_while_tensorarrayv2read_tensorlistgetitem_sequential_25_simple_rnn_51_tensorarrayunstack_tensorlistfromtensorІsequential_25_simple_rnn_51_while_tensorarrayv2read_tensorlistgetitem_sequential_25_simple_rnn_51_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         Я: : : : : 2џ
Ksequential_25/simple_rnn_51/while/simple_rnn_cell_51/BiasAdd/ReadVariableOpKsequential_25/simple_rnn_51/while/simple_rnn_cell_51/BiasAdd/ReadVariableOp2ў
Jsequential_25/simple_rnn_51/while/simple_rnn_cell_51/MatMul/ReadVariableOpJsequential_25/simple_rnn_51/while/simple_rnn_cell_51/MatMul/ReadVariableOp2ю
Lsequential_25/simple_rnn_51/while/simple_rnn_cell_51/MatMul_1/ReadVariableOpLsequential_25/simple_rnn_51/while/simple_rnn_cell_51/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         Я:

_output_shapes
: :

_output_shapes
: 
Й@
к
I__inference_simple_rnn_51_layer_call_and_return_conditional_losses_191815

inputsD
1simple_rnn_cell_51_matmul_readvariableop_resource:	@ЯA
2simple_rnn_cell_51_biasadd_readvariableop_resource:	ЯG
3simple_rnn_cell_51_matmul_1_readvariableop_resource:
ЯЯ
identityѕб)simple_rnn_cell_51/BiasAdd/ReadVariableOpб(simple_rnn_cell_51/MatMul/ReadVariableOpб*simple_rnn_cell_51/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskN
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Я_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :УY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: Q
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Яs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         Яc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         @D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maskЏ
(simple_rnn_cell_51/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_51_matmul_readvariableop_resource*
_output_shapes
:	@Я*
dtype0б
simple_rnn_cell_51/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ЯЎ
)simple_rnn_cell_51/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_51_biasadd_readvariableop_resource*
_output_shapes	
:Я*
dtype0░
simple_rnn_cell_51/BiasAddBiasAdd#simple_rnn_cell_51/MatMul:product:01simple_rnn_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Яа
*simple_rnn_cell_51/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_51_matmul_1_readvariableop_resource* 
_output_shapes
:
ЯЯ*
dtype0ю
simple_rnn_cell_51/MatMul_1MatMulzeros:output:02simple_rnn_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Яъ
simple_rnn_cell_51/addAddV2#simple_rnn_cell_51/BiasAdd:output:0%simple_rnn_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:         Яn
simple_rnn_cell_51/TanhTanhsimple_rnn_cell_51/add:z:0*
T0*(
_output_shapes
:         Яn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Я   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : П
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_51_matmul_readvariableop_resource2simple_rnn_cell_51_biasadd_readvariableop_resource3simple_rnn_cell_51_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         Я: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_191749*
condR
while_cond_191748*9
output_shapes(
&: : : : :         Я: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Я   ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         Я*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Я*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         Яh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         Ям
NoOpNoOp*^simple_rnn_cell_51/BiasAdd/ReadVariableOp)^simple_rnn_cell_51/MatMul/ReadVariableOp+^simple_rnn_cell_51/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         @: : : 2V
)simple_rnn_cell_51/BiasAdd/ReadVariableOp)simple_rnn_cell_51/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_51/MatMul/ReadVariableOp(simple_rnn_cell_51/MatMul/ReadVariableOp2X
*simple_rnn_cell_51/MatMul_1/ReadVariableOp*simple_rnn_cell_51/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
П
d
F__inference_dropout_29_layer_call_and_return_conditional_losses_189872

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         Я\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         Я"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         Я:P L
(
_output_shapes
:         Я
 
_user_specified_nameinputs
Ћ
№
N__inference_simple_rnn_cell_51_layer_call_and_return_conditional_losses_192081

inputs
states_01
matmul_readvariableop_resource:	@Я.
biasadd_readvariableop_resource:	Я4
 matmul_1_readvariableop_resource:
ЯЯ
identity

identity_1ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@Я*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Яs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Я*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Яz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
ЯЯ*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Яe
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:         ЯH
TanhTanhadd:z:0*
T0*(
_output_shapes
:         ЯX
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:         ЯZ

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:         ЯЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         @:         Я: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs:RN
(
_output_shapes
:         Я
"
_user_specified_name
states/0
е
G
+__inference_dropout_29_layer_call_fn_191932

inputs
identityх
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Я* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_189872a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         Я"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         Я:P L
(
_output_shapes
:         Я
 
_user_specified_nameinputs
Б@
┬
I__inference_simple_rnn_50_layer_call_and_return_conditional_losses_191296

inputsC
1simple_rnn_cell_50_matmul_readvariableop_resource:@@
2simple_rnn_cell_50_biasadd_readvariableop_resource:@E
3simple_rnn_cell_50_matmul_1_readvariableop_resource:@@
identityѕб)simple_rnn_cell_50/BiasAdd/ReadVariableOpб(simple_rnn_cell_50/MatMul/ReadVariableOpб*simple_rnn_cell_50/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :УY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskџ
(simple_rnn_cell_50/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_50_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0А
simple_rnn_cell_50/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ў
)simple_rnn_cell_50/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_50_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0»
simple_rnn_cell_50/BiasAddBiasAdd#simple_rnn_cell_50/MatMul:product:01simple_rnn_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ъ
*simple_rnn_cell_50/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_50_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Џ
simple_rnn_cell_50/MatMul_1MatMulzeros:output:02simple_rnn_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Ю
simple_rnn_cell_50/addAddV2#simple_rnn_cell_50/BiasAdd:output:0%simple_rnn_cell_50/MatMul_1:product:0*
T0*'
_output_shapes
:         @m
simple_rnn_cell_50/TanhTanhsimple_rnn_cell_50/add:z:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : █
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_50_matmul_readvariableop_resource2simple_rnn_cell_50_biasadd_readvariableop_resource3simple_rnn_cell_50_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_191230*
condR
while_cond_191229*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         @b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         @м
NoOpNoOp*^simple_rnn_cell_50/BiasAdd/ReadVariableOp)^simple_rnn_cell_50/MatMul/ReadVariableOp+^simple_rnn_cell_50/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2V
)simple_rnn_cell_50/BiasAdd/ReadVariableOp)simple_rnn_cell_50/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_50/MatMul/ReadVariableOp(simple_rnn_cell_50/MatMul/ReadVariableOp2X
*simple_rnn_cell_50/MatMul_1/ReadVariableOp*simple_rnn_cell_50/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ћ

e
F__inference_dropout_28_layer_call_and_return_conditional_losses_190098

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *б╝є?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:         @C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:љ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:         @*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L=ф
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:         @s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:         @m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:         @]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
■
ж
N__inference_simple_rnn_cell_50_layer_call_and_return_conditional_losses_189067

inputs

states0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:         @G
TanhTanhadd:z:0*
T0*'
_output_shapes
:         @W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         @Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         @Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         :         @: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         @
 
_user_specified_namestates
љ!
п
while_body_189080
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_03
!while_simple_rnn_cell_50_189102_0:@/
!while_simple_rnn_cell_50_189104_0:@3
!while_simple_rnn_cell_50_189106_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor1
while_simple_rnn_cell_50_189102:@-
while_simple_rnn_cell_50_189104:@1
while_simple_rnn_cell_50_189106:@@ѕб0while/simple_rnn_cell_50/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ф
0while/simple_rnn_cell_50/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2!while_simple_rnn_cell_50_189102_0!while_simple_rnn_cell_50_189104_0!while_simple_rnn_cell_50_189106_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         @:         @*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *W
fRRP
N__inference_simple_rnn_cell_50_layer_call_and_return_conditional_losses_189067Р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder9while/simple_rnn_cell_50/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ќ
while/Identity_4Identity9while/simple_rnn_cell_50/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         @

while/NoOpNoOp1^while/simple_rnn_cell_50/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_simple_rnn_cell_50_189102!while_simple_rnn_cell_50_189102_0"D
while_simple_rnn_cell_50_189104!while_simple_rnn_cell_50_189104_0"D
while_simple_rnn_cell_50_189106!while_simple_rnn_cell_50_189106_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2d
0while/simple_rnn_cell_50/StatefulPartitionedCall0while/simple_rnn_cell_50/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
Ј
ь
N__inference_simple_rnn_cell_51_layer_call_and_return_conditional_losses_189487

inputs

states1
matmul_readvariableop_resource:	@Я.
biasadd_readvariableop_resource:	Я4
 matmul_1_readvariableop_resource:
ЯЯ
identity

identity_1ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@Я*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Яs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Я*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Яz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
ЯЯ*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Яe
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:         ЯH
TanhTanhadd:z:0*
T0*(
_output_shapes
:         ЯX
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:         ЯZ

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:         ЯЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         @:         Я: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Я
 
_user_specified_namestates
▄
ф
while_cond_189542
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_189542___redundant_placeholder04
0while_while_cond_189542___redundant_placeholder14
0while_while_cond_189542___redundant_placeholder24
0while_while_cond_189542___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         Я: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         Я:

_output_shapes
: :

_output_shapes
:
о,
Л
while_body_191118
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_50_matmul_readvariableop_resource_0:@H
:while_simple_rnn_cell_50_biasadd_readvariableop_resource_0:@M
;while_simple_rnn_cell_50_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_50_matmul_readvariableop_resource:@F
8while_simple_rnn_cell_50_biasadd_readvariableop_resource:@K
9while_simple_rnn_cell_50_matmul_1_readvariableop_resource:@@ѕб/while/simple_rnn_cell_50/BiasAdd/ReadVariableOpб.while/simple_rnn_cell_50/MatMul/ReadVariableOpб0while/simple_rnn_cell_50/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0е
.while/simple_rnn_cell_50/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_50_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0┼
while/simple_rnn_cell_50/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
/while/simple_rnn_cell_50/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_50_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0┴
 while/simple_rnn_cell_50/BiasAddBiasAdd)while/simple_rnn_cell_50/MatMul:product:07while/simple_rnn_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @г
0while/simple_rnn_cell_50/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_50_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0г
!while/simple_rnn_cell_50/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @»
while/simple_rnn_cell_50/addAddV2)while/simple_rnn_cell_50/BiasAdd:output:0+while/simple_rnn_cell_50/MatMul_1:product:0*
T0*'
_output_shapes
:         @y
while/simple_rnn_cell_50/TanhTanh while/simple_rnn_cell_50/add:z:0*
T0*'
_output_shapes
:         @╩
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_50/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ~
while/Identity_4Identity!while/simple_rnn_cell_50/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         @Р

while/NoOpNoOp0^while/simple_rnn_cell_50/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_50/MatMul/ReadVariableOp1^while/simple_rnn_cell_50/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_50_biasadd_readvariableop_resource:while_simple_rnn_cell_50_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_50_matmul_1_readvariableop_resource;while_simple_rnn_cell_50_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_50_matmul_readvariableop_resource9while_simple_rnn_cell_50_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2b
/while/simple_rnn_cell_50/BiasAdd/ReadVariableOp/while/simple_rnn_cell_50/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_50/MatMul/ReadVariableOp.while/simple_rnn_cell_50/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_50/MatMul_1/ReadVariableOp0while/simple_rnn_cell_50/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
Ч6
а
I__inference_simple_rnn_50_layer_call_and_return_conditional_losses_189143

inputs+
simple_rnn_cell_50_189068:@'
simple_rnn_cell_50_189070:@+
simple_rnn_cell_50_189072:@@
identityѕб*simple_rnn_cell_50/StatefulPartitionedCallбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :УY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask№
*simple_rnn_cell_50/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_50_189068simple_rnn_cell_50_189070simple_rnn_cell_50_189072*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         @:         @*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *W
fRRP
N__inference_simple_rnn_cell_50_layer_call_and_return_conditional_losses_189067n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : љ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_50_189068simple_rnn_cell_50_189070simple_rnn_cell_50_189072*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_189080*
condR
while_cond_189079*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  @{
NoOpNoOp+^simple_rnn_cell_50/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2X
*simple_rnn_cell_50/StatefulPartitionedCall*simple_rnn_cell_50/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
▄
ф
while_cond_189792
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_189792___redundant_placeholder04
0while_while_cond_189792___redundant_placeholder14
0while_while_cond_189792___redundant_placeholder24
0while_while_cond_189792___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         Я: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         Я:

_output_shapes
: :

_output_shapes
:
▄	
к
.__inference_sequential_25_layer_call_fn_190444

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:	@Я
	unknown_3:	Я
	unknown_4:
ЯЯ
	unknown_5:	Я
	unknown_6:
identityѕбStatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_25_layer_call_and_return_conditional_losses_190283o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
▄
ф
while_cond_189379
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_189379___redundant_placeholder04
0while_while_cond_189379___redundant_placeholder14
0while_while_cond_189379___redundant_placeholder24
0while_while_cond_189379___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         Я: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         Я:

_output_shapes
: :

_output_shapes
:
Ѓ

М
.__inference_sequential_25_layer_call_fn_190323
simple_rnn_50_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:	@Я
	unknown_3:	Я
	unknown_4:
ЯЯ
	unknown_5:	Я
	unknown_6:
identityѕбStatefulPartitionedCall╝
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_50_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_25_layer_call_and_return_conditional_losses_190283o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:         
-
_user_specified_namesimple_rnn_50_input
э9
§
simple_rnn_51_while_body_1905998
4simple_rnn_51_while_simple_rnn_51_while_loop_counter>
:simple_rnn_51_while_simple_rnn_51_while_maximum_iterations#
simple_rnn_51_while_placeholder%
!simple_rnn_51_while_placeholder_1%
!simple_rnn_51_while_placeholder_27
3simple_rnn_51_while_simple_rnn_51_strided_slice_1_0s
osimple_rnn_51_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_51_tensorarrayunstack_tensorlistfromtensor_0Z
Gsimple_rnn_51_while_simple_rnn_cell_51_matmul_readvariableop_resource_0:	@ЯW
Hsimple_rnn_51_while_simple_rnn_cell_51_biasadd_readvariableop_resource_0:	Я]
Isimple_rnn_51_while_simple_rnn_cell_51_matmul_1_readvariableop_resource_0:
ЯЯ 
simple_rnn_51_while_identity"
simple_rnn_51_while_identity_1"
simple_rnn_51_while_identity_2"
simple_rnn_51_while_identity_3"
simple_rnn_51_while_identity_45
1simple_rnn_51_while_simple_rnn_51_strided_slice_1q
msimple_rnn_51_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_51_tensorarrayunstack_tensorlistfromtensorX
Esimple_rnn_51_while_simple_rnn_cell_51_matmul_readvariableop_resource:	@ЯU
Fsimple_rnn_51_while_simple_rnn_cell_51_biasadd_readvariableop_resource:	Я[
Gsimple_rnn_51_while_simple_rnn_cell_51_matmul_1_readvariableop_resource:
ЯЯѕб=simple_rnn_51/while/simple_rnn_cell_51/BiasAdd/ReadVariableOpб<simple_rnn_51/while/simple_rnn_cell_51/MatMul/ReadVariableOpб>simple_rnn_51/while/simple_rnn_cell_51/MatMul_1/ReadVariableOpќ
Esimple_rnn_51/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   В
7simple_rnn_51/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_51_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_51_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_51_while_placeholderNsimple_rnn_51/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype0┼
<simple_rnn_51/while/simple_rnn_cell_51/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_51_while_simple_rnn_cell_51_matmul_readvariableop_resource_0*
_output_shapes
:	@Я*
dtype0­
-simple_rnn_51/while/simple_rnn_cell_51/MatMulMatMul>simple_rnn_51/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_51/while/simple_rnn_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Я├
=simple_rnn_51/while/simple_rnn_cell_51/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_51_while_simple_rnn_cell_51_biasadd_readvariableop_resource_0*
_output_shapes	
:Я*
dtype0В
.simple_rnn_51/while/simple_rnn_cell_51/BiasAddBiasAdd7simple_rnn_51/while/simple_rnn_cell_51/MatMul:product:0Esimple_rnn_51/while/simple_rnn_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Я╩
>simple_rnn_51/while/simple_rnn_cell_51/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_51_while_simple_rnn_cell_51_matmul_1_readvariableop_resource_0* 
_output_shapes
:
ЯЯ*
dtype0О
/simple_rnn_51/while/simple_rnn_cell_51/MatMul_1MatMul!simple_rnn_51_while_placeholder_2Fsimple_rnn_51/while/simple_rnn_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Я┌
*simple_rnn_51/while/simple_rnn_cell_51/addAddV27simple_rnn_51/while/simple_rnn_cell_51/BiasAdd:output:09simple_rnn_51/while/simple_rnn_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:         Яќ
+simple_rnn_51/while/simple_rnn_cell_51/TanhTanh.simple_rnn_51/while/simple_rnn_cell_51/add:z:0*
T0*(
_output_shapes
:         Яѓ
8simple_rnn_51/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_51_while_placeholder_1simple_rnn_51_while_placeholder/simple_rnn_51/while/simple_rnn_cell_51/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУм[
simple_rnn_51/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :є
simple_rnn_51/while/addAddV2simple_rnn_51_while_placeholder"simple_rnn_51/while/add/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_51/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ъ
simple_rnn_51/while/add_1AddV24simple_rnn_51_while_simple_rnn_51_while_loop_counter$simple_rnn_51/while/add_1/y:output:0*
T0*
_output_shapes
: Ѓ
simple_rnn_51/while/IdentityIdentitysimple_rnn_51/while/add_1:z:0^simple_rnn_51/while/NoOp*
T0*
_output_shapes
: б
simple_rnn_51/while/Identity_1Identity:simple_rnn_51_while_simple_rnn_51_while_maximum_iterations^simple_rnn_51/while/NoOp*
T0*
_output_shapes
: Ѓ
simple_rnn_51/while/Identity_2Identitysimple_rnn_51/while/add:z:0^simple_rnn_51/while/NoOp*
T0*
_output_shapes
: ░
simple_rnn_51/while/Identity_3IdentityHsimple_rnn_51/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_51/while/NoOp*
T0*
_output_shapes
: Е
simple_rnn_51/while/Identity_4Identity/simple_rnn_51/while/simple_rnn_cell_51/Tanh:y:0^simple_rnn_51/while/NoOp*
T0*(
_output_shapes
:         Яџ
simple_rnn_51/while/NoOpNoOp>^simple_rnn_51/while/simple_rnn_cell_51/BiasAdd/ReadVariableOp=^simple_rnn_51/while/simple_rnn_cell_51/MatMul/ReadVariableOp?^simple_rnn_51/while/simple_rnn_cell_51/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
simple_rnn_51_while_identity%simple_rnn_51/while/Identity:output:0"I
simple_rnn_51_while_identity_1'simple_rnn_51/while/Identity_1:output:0"I
simple_rnn_51_while_identity_2'simple_rnn_51/while/Identity_2:output:0"I
simple_rnn_51_while_identity_3'simple_rnn_51/while/Identity_3:output:0"I
simple_rnn_51_while_identity_4'simple_rnn_51/while/Identity_4:output:0"h
1simple_rnn_51_while_simple_rnn_51_strided_slice_13simple_rnn_51_while_simple_rnn_51_strided_slice_1_0"њ
Fsimple_rnn_51_while_simple_rnn_cell_51_biasadd_readvariableop_resourceHsimple_rnn_51_while_simple_rnn_cell_51_biasadd_readvariableop_resource_0"ћ
Gsimple_rnn_51_while_simple_rnn_cell_51_matmul_1_readvariableop_resourceIsimple_rnn_51_while_simple_rnn_cell_51_matmul_1_readvariableop_resource_0"љ
Esimple_rnn_51_while_simple_rnn_cell_51_matmul_readvariableop_resourceGsimple_rnn_51_while_simple_rnn_cell_51_matmul_readvariableop_resource_0"Я
msimple_rnn_51_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_51_tensorarrayunstack_tensorlistfromtensorosimple_rnn_51_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_51_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         Я: : : : : 2~
=simple_rnn_51/while/simple_rnn_cell_51/BiasAdd/ReadVariableOp=simple_rnn_51/while/simple_rnn_cell_51/BiasAdd/ReadVariableOp2|
<simple_rnn_51/while/simple_rnn_cell_51/MatMul/ReadVariableOp<simple_rnn_51/while/simple_rnn_cell_51/MatMul/ReadVariableOp2ђ
>simple_rnn_51/while/simple_rnn_cell_51/MatMul_1/ReadVariableOp>simple_rnn_51/while/simple_rnn_cell_51/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         Я:

_output_shapes
: :

_output_shapes
: 
Н

┤
simple_rnn_50_while_cond_1904898
4simple_rnn_50_while_simple_rnn_50_while_loop_counter>
:simple_rnn_50_while_simple_rnn_50_while_maximum_iterations#
simple_rnn_50_while_placeholder%
!simple_rnn_50_while_placeholder_1%
!simple_rnn_50_while_placeholder_2:
6simple_rnn_50_while_less_simple_rnn_50_strided_slice_1P
Lsimple_rnn_50_while_simple_rnn_50_while_cond_190489___redundant_placeholder0P
Lsimple_rnn_50_while_simple_rnn_50_while_cond_190489___redundant_placeholder1P
Lsimple_rnn_50_while_simple_rnn_50_while_cond_190489___redundant_placeholder2P
Lsimple_rnn_50_while_simple_rnn_50_while_cond_190489___redundant_placeholder3 
simple_rnn_50_while_identity
џ
simple_rnn_50/while/LessLesssimple_rnn_50_while_placeholder6simple_rnn_50_while_less_simple_rnn_50_strided_slice_1*
T0*
_output_shapes
: g
simple_rnn_50/while/IdentityIdentitysimple_rnn_50/while/Less:z:0*
T0
*
_output_shapes
: "E
simple_rnn_50_while_identity%simple_rnn_50/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
Й@
к
I__inference_simple_rnn_51_layer_call_and_return_conditional_losses_191927

inputsD
1simple_rnn_cell_51_matmul_readvariableop_resource:	@ЯA
2simple_rnn_cell_51_biasadd_readvariableop_resource:	ЯG
3simple_rnn_cell_51_matmul_1_readvariableop_resource:
ЯЯ
identityѕб)simple_rnn_cell_51/BiasAdd/ReadVariableOpб(simple_rnn_cell_51/MatMul/ReadVariableOpб*simple_rnn_cell_51/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskN
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Я_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :УY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: Q
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Яs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         Яc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         @D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maskЏ
(simple_rnn_cell_51/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_51_matmul_readvariableop_resource*
_output_shapes
:	@Я*
dtype0б
simple_rnn_cell_51/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ЯЎ
)simple_rnn_cell_51/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_51_biasadd_readvariableop_resource*
_output_shapes	
:Я*
dtype0░
simple_rnn_cell_51/BiasAddBiasAdd#simple_rnn_cell_51/MatMul:product:01simple_rnn_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Яа
*simple_rnn_cell_51/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_51_matmul_1_readvariableop_resource* 
_output_shapes
:
ЯЯ*
dtype0ю
simple_rnn_cell_51/MatMul_1MatMulzeros:output:02simple_rnn_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Яъ
simple_rnn_cell_51/addAddV2#simple_rnn_cell_51/BiasAdd:output:0%simple_rnn_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:         Яn
simple_rnn_cell_51/TanhTanhsimple_rnn_cell_51/add:z:0*
T0*(
_output_shapes
:         Яn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Я   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : П
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_51_matmul_readvariableop_resource2simple_rnn_cell_51_biasadd_readvariableop_resource3simple_rnn_cell_51_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         Я: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_191861*
condR
while_cond_191860*9
output_shapes(
&: : : : :         Я: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Я   ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         Я*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Я*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         Яh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         Ям
NoOpNoOp*^simple_rnn_cell_51/BiasAdd/ReadVariableOp)^simple_rnn_cell_51/MatMul/ReadVariableOp+^simple_rnn_cell_51/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         @: : : 2V
)simple_rnn_cell_51/BiasAdd/ReadVariableOp)simple_rnn_cell_51/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_51/MatMul/ReadVariableOp(simple_rnn_cell_51/MatMul/ReadVariableOp2X
*simple_rnn_cell_51/MatMul_1/ReadVariableOp*simple_rnn_cell_51/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
є
d
+__inference_dropout_28_layer_call_fn_191418

inputs
identityѕбStatefulPartitionedCall╚
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_190098s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
Є7
ц
I__inference_simple_rnn_51_layer_call_and_return_conditional_losses_189606

inputs,
simple_rnn_cell_51_189531:	@Я(
simple_rnn_cell_51_189533:	Я-
simple_rnn_cell_51_189535:
ЯЯ
identityѕб*simple_rnn_cell_51/StatefulPartitionedCallбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskN
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Я_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :УY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: Q
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Яs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         Яc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  @D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maskы
*simple_rnn_cell_51/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_51_189531simple_rnn_cell_51_189533simple_rnn_cell_51_189535*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:         Я:         Я*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *W
fRRP
N__inference_simple_rnn_cell_51_layer_call_and_return_conditional_losses_189487n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Я   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : њ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_51_189531simple_rnn_cell_51_189533simple_rnn_cell_51_189535*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         Я: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_189543*
condR
while_cond_189542*9
output_shapes(
&: : : : :         Я: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Я   ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  Я*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Я*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  Яh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         Я{
NoOpNoOp+^simple_rnn_cell_51/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  @: : : 2X
*simple_rnn_cell_51/StatefulPartitionedCall*simple_rnn_cell_51/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
Й@
к
I__inference_simple_rnn_51_layer_call_and_return_conditional_losses_190069

inputsD
1simple_rnn_cell_51_matmul_readvariableop_resource:	@ЯA
2simple_rnn_cell_51_biasadd_readvariableop_resource:	ЯG
3simple_rnn_cell_51_matmul_1_readvariableop_resource:
ЯЯ
identityѕб)simple_rnn_cell_51/BiasAdd/ReadVariableOpб(simple_rnn_cell_51/MatMul/ReadVariableOpб*simple_rnn_cell_51/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskN
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Я_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :УY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: Q
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Яs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         Яc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         @D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maskЏ
(simple_rnn_cell_51/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_51_matmul_readvariableop_resource*
_output_shapes
:	@Я*
dtype0б
simple_rnn_cell_51/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ЯЎ
)simple_rnn_cell_51/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_51_biasadd_readvariableop_resource*
_output_shapes	
:Я*
dtype0░
simple_rnn_cell_51/BiasAddBiasAdd#simple_rnn_cell_51/MatMul:product:01simple_rnn_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Яа
*simple_rnn_cell_51/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_51_matmul_1_readvariableop_resource* 
_output_shapes
:
ЯЯ*
dtype0ю
simple_rnn_cell_51/MatMul_1MatMulzeros:output:02simple_rnn_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Яъ
simple_rnn_cell_51/addAddV2#simple_rnn_cell_51/BiasAdd:output:0%simple_rnn_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:         Яn
simple_rnn_cell_51/TanhTanhsimple_rnn_cell_51/add:z:0*
T0*(
_output_shapes
:         Яn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Я   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : П
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_51_matmul_readvariableop_resource2simple_rnn_cell_51_biasadd_readvariableop_resource3simple_rnn_cell_51_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         Я: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_190003*
condR
while_cond_190002*9
output_shapes(
&: : : : :         Я: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Я   ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         Я*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Я*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         Яh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         Ям
NoOpNoOp*^simple_rnn_cell_51/BiasAdd/ReadVariableOp)^simple_rnn_cell_51/MatMul/ReadVariableOp+^simple_rnn_cell_51/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         @: : : 2V
)simple_rnn_cell_51/BiasAdd/ReadVariableOp)simple_rnn_cell_51/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_51/MatMul/ReadVariableOp(simple_rnn_cell_51/MatMul/ReadVariableOp2X
*simple_rnn_cell_51/MatMul_1/ReadVariableOp*simple_rnn_cell_51/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
р@
─
I__inference_simple_rnn_50_layer_call_and_return_conditional_losses_191184
inputs_0C
1simple_rnn_cell_50_matmul_readvariableop_resource:@@
2simple_rnn_cell_50_biasadd_readvariableop_resource:@E
3simple_rnn_cell_50_matmul_1_readvariableop_resource:@@
identityѕб)simple_rnn_cell_50/BiasAdd/ReadVariableOpб(simple_rnn_cell_50/MatMul/ReadVariableOpб*simple_rnn_cell_50/MatMul_1/ReadVariableOpбwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :УY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskџ
(simple_rnn_cell_50/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_50_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0А
simple_rnn_cell_50/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ў
)simple_rnn_cell_50/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_50_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0»
simple_rnn_cell_50/BiasAddBiasAdd#simple_rnn_cell_50/MatMul:product:01simple_rnn_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ъ
*simple_rnn_cell_50/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_50_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Џ
simple_rnn_cell_50/MatMul_1MatMulzeros:output:02simple_rnn_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Ю
simple_rnn_cell_50/addAddV2#simple_rnn_cell_50/BiasAdd:output:0%simple_rnn_cell_50/MatMul_1:product:0*
T0*'
_output_shapes
:         @m
simple_rnn_cell_50/TanhTanhsimple_rnn_cell_50/add:z:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : █
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_50_matmul_readvariableop_resource2simple_rnn_cell_50_biasadd_readvariableop_resource3simple_rnn_cell_50_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_191118*
condR
while_cond_191117*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  @м
NoOpNoOp*^simple_rnn_cell_50/BiasAdd/ReadVariableOp)^simple_rnn_cell_50/MatMul/ReadVariableOp+^simple_rnn_cell_50/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2V
)simple_rnn_cell_50/BiasAdd/ReadVariableOp)simple_rnn_cell_50/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_50/MatMul/ReadVariableOp(simple_rnn_cell_50/MatMul/ReadVariableOp2X
*simple_rnn_cell_50/MatMul_1/ReadVariableOp*simple_rnn_cell_50/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
Є7
ц
I__inference_simple_rnn_51_layer_call_and_return_conditional_losses_189443

inputs,
simple_rnn_cell_51_189368:	@Я(
simple_rnn_cell_51_189370:	Я-
simple_rnn_cell_51_189372:
ЯЯ
identityѕб*simple_rnn_cell_51/StatefulPartitionedCallбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskN
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Я_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :УY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: Q
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Яs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         Яc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  @D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maskы
*simple_rnn_cell_51/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_51_189368simple_rnn_cell_51_189370simple_rnn_cell_51_189372*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:         Я:         Я*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *W
fRRP
N__inference_simple_rnn_cell_51_layer_call_and_return_conditional_losses_189367n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Я   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : њ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_51_189368simple_rnn_cell_51_189370simple_rnn_cell_51_189372*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         Я: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_189380*
condR
while_cond_189379*9
output_shapes(
&: : : : :         Я: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Я   ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  Я*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Я*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  Яh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         Я{
NoOpNoOp+^simple_rnn_cell_51/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  @: : : 2X
*simple_rnn_cell_51/StatefulPartitionedCall*simple_rnn_cell_51/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
╝├
Ч

!__inference__wrapped_model_189015
simple_rnn_50_input_
Msequential_25_simple_rnn_50_simple_rnn_cell_50_matmul_readvariableop_resource:@\
Nsequential_25_simple_rnn_50_simple_rnn_cell_50_biasadd_readvariableop_resource:@a
Osequential_25_simple_rnn_50_simple_rnn_cell_50_matmul_1_readvariableop_resource:@@`
Msequential_25_simple_rnn_51_simple_rnn_cell_51_matmul_readvariableop_resource:	@Я]
Nsequential_25_simple_rnn_51_simple_rnn_cell_51_biasadd_readvariableop_resource:	Яc
Osequential_25_simple_rnn_51_simple_rnn_cell_51_matmul_1_readvariableop_resource:
ЯЯH
5sequential_25_dense_25_matmul_readvariableop_resource:	ЯD
6sequential_25_dense_25_biasadd_readvariableop_resource:
identityѕб-sequential_25/dense_25/BiasAdd/ReadVariableOpб,sequential_25/dense_25/MatMul/ReadVariableOpбEsequential_25/simple_rnn_50/simple_rnn_cell_50/BiasAdd/ReadVariableOpбDsequential_25/simple_rnn_50/simple_rnn_cell_50/MatMul/ReadVariableOpбFsequential_25/simple_rnn_50/simple_rnn_cell_50/MatMul_1/ReadVariableOpб!sequential_25/simple_rnn_50/whileбEsequential_25/simple_rnn_51/simple_rnn_cell_51/BiasAdd/ReadVariableOpбDsequential_25/simple_rnn_51/simple_rnn_cell_51/MatMul/ReadVariableOpбFsequential_25/simple_rnn_51/simple_rnn_cell_51/MatMul_1/ReadVariableOpб!sequential_25/simple_rnn_51/whiled
!sequential_25/simple_rnn_50/ShapeShapesimple_rnn_50_input*
T0*
_output_shapes
:y
/sequential_25/simple_rnn_50/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_25/simple_rnn_50/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_25/simple_rnn_50/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
)sequential_25/simple_rnn_50/strided_sliceStridedSlice*sequential_25/simple_rnn_50/Shape:output:08sequential_25/simple_rnn_50/strided_slice/stack:output:0:sequential_25/simple_rnn_50/strided_slice/stack_1:output:0:sequential_25/simple_rnn_50/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'sequential_25/simple_rnn_50/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@│
%sequential_25/simple_rnn_50/zeros/mulMul2sequential_25/simple_rnn_50/strided_slice:output:00sequential_25/simple_rnn_50/zeros/mul/y:output:0*
T0*
_output_shapes
: k
(sequential_25/simple_rnn_50/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :УГ
&sequential_25/simple_rnn_50/zeros/LessLess)sequential_25/simple_rnn_50/zeros/mul:z:01sequential_25/simple_rnn_50/zeros/Less/y:output:0*
T0*
_output_shapes
: l
*sequential_25/simple_rnn_50/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@К
(sequential_25/simple_rnn_50/zeros/packedPack2sequential_25/simple_rnn_50/strided_slice:output:03sequential_25/simple_rnn_50/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:l
'sequential_25/simple_rnn_50/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    └
!sequential_25/simple_rnn_50/zerosFill1sequential_25/simple_rnn_50/zeros/packed:output:00sequential_25/simple_rnn_50/zeros/Const:output:0*
T0*'
_output_shapes
:         @
*sequential_25/simple_rnn_50/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▓
%sequential_25/simple_rnn_50/transpose	Transposesimple_rnn_50_input3sequential_25/simple_rnn_50/transpose/perm:output:0*
T0*+
_output_shapes
:         |
#sequential_25/simple_rnn_50/Shape_1Shape)sequential_25/simple_rnn_50/transpose:y:0*
T0*
_output_shapes
:{
1sequential_25/simple_rnn_50/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_25/simple_rnn_50/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_25/simple_rnn_50/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:у
+sequential_25/simple_rnn_50/strided_slice_1StridedSlice,sequential_25/simple_rnn_50/Shape_1:output:0:sequential_25/simple_rnn_50/strided_slice_1/stack:output:0<sequential_25/simple_rnn_50/strided_slice_1/stack_1:output:0<sequential_25/simple_rnn_50/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskѓ
7sequential_25/simple_rnn_50/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ѕ
)sequential_25/simple_rnn_50/TensorArrayV2TensorListReserve@sequential_25/simple_rnn_50/TensorArrayV2/element_shape:output:04sequential_25/simple_rnn_50/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмб
Qsequential_25/simple_rnn_50/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┤
Csequential_25/simple_rnn_50/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor)sequential_25/simple_rnn_50/transpose:y:0Zsequential_25/simple_rnn_50/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм{
1sequential_25/simple_rnn_50/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_25/simple_rnn_50/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_25/simple_rnn_50/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ш
+sequential_25/simple_rnn_50/strided_slice_2StridedSlice)sequential_25/simple_rnn_50/transpose:y:0:sequential_25/simple_rnn_50/strided_slice_2/stack:output:0<sequential_25/simple_rnn_50/strided_slice_2/stack_1:output:0<sequential_25/simple_rnn_50/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskм
Dsequential_25/simple_rnn_50/simple_rnn_cell_50/MatMul/ReadVariableOpReadVariableOpMsequential_25_simple_rnn_50_simple_rnn_cell_50_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0ш
5sequential_25/simple_rnn_50/simple_rnn_cell_50/MatMulMatMul4sequential_25/simple_rnn_50/strided_slice_2:output:0Lsequential_25/simple_rnn_50/simple_rnn_cell_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @л
Esequential_25/simple_rnn_50/simple_rnn_cell_50/BiasAdd/ReadVariableOpReadVariableOpNsequential_25_simple_rnn_50_simple_rnn_cell_50_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ѓ
6sequential_25/simple_rnn_50/simple_rnn_cell_50/BiasAddBiasAdd?sequential_25/simple_rnn_50/simple_rnn_cell_50/MatMul:product:0Msequential_25/simple_rnn_50/simple_rnn_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @о
Fsequential_25/simple_rnn_50/simple_rnn_cell_50/MatMul_1/ReadVariableOpReadVariableOpOsequential_25_simple_rnn_50_simple_rnn_cell_50_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0№
7sequential_25/simple_rnn_50/simple_rnn_cell_50/MatMul_1MatMul*sequential_25/simple_rnn_50/zeros:output:0Nsequential_25/simple_rnn_50/simple_rnn_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ы
2sequential_25/simple_rnn_50/simple_rnn_cell_50/addAddV2?sequential_25/simple_rnn_50/simple_rnn_cell_50/BiasAdd:output:0Asequential_25/simple_rnn_50/simple_rnn_cell_50/MatMul_1:product:0*
T0*'
_output_shapes
:         @Ц
3sequential_25/simple_rnn_50/simple_rnn_cell_50/TanhTanh6sequential_25/simple_rnn_50/simple_rnn_cell_50/add:z:0*
T0*'
_output_shapes
:         @і
9sequential_25/simple_rnn_50/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ї
+sequential_25/simple_rnn_50/TensorArrayV2_1TensorListReserveBsequential_25/simple_rnn_50/TensorArrayV2_1/element_shape:output:04sequential_25/simple_rnn_50/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмb
 sequential_25/simple_rnn_50/timeConst*
_output_shapes
: *
dtype0*
value	B : 
4sequential_25/simple_rnn_50/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         p
.sequential_25/simple_rnn_50/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : К
!sequential_25/simple_rnn_50/whileWhile7sequential_25/simple_rnn_50/while/loop_counter:output:0=sequential_25/simple_rnn_50/while/maximum_iterations:output:0)sequential_25/simple_rnn_50/time:output:04sequential_25/simple_rnn_50/TensorArrayV2_1:handle:0*sequential_25/simple_rnn_50/zeros:output:04sequential_25/simple_rnn_50/strided_slice_1:output:0Ssequential_25/simple_rnn_50/TensorArrayUnstack/TensorListFromTensor:output_handle:0Msequential_25_simple_rnn_50_simple_rnn_cell_50_matmul_readvariableop_resourceNsequential_25_simple_rnn_50_simple_rnn_cell_50_biasadd_readvariableop_resourceOsequential_25_simple_rnn_50_simple_rnn_cell_50_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *9
body1R/
-sequential_25_simple_rnn_50_while_body_188832*9
cond1R/
-sequential_25_simple_rnn_50_while_cond_188831*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations Ю
Lsequential_25/simple_rnn_50/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ќ
>sequential_25/simple_rnn_50/TensorArrayV2Stack/TensorListStackTensorListStack*sequential_25/simple_rnn_50/while:output:3Usequential_25/simple_rnn_50/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype0ё
1sequential_25/simple_rnn_50/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         }
3sequential_25/simple_rnn_50/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: }
3sequential_25/simple_rnn_50/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Њ
+sequential_25/simple_rnn_50/strided_slice_3StridedSliceGsequential_25/simple_rnn_50/TensorArrayV2Stack/TensorListStack:tensor:0:sequential_25/simple_rnn_50/strided_slice_3/stack:output:0<sequential_25/simple_rnn_50/strided_slice_3/stack_1:output:0<sequential_25/simple_rnn_50/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maskЂ
,sequential_25/simple_rnn_50/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ж
'sequential_25/simple_rnn_50/transpose_1	TransposeGsequential_25/simple_rnn_50/TensorArrayV2Stack/TensorListStack:tensor:05sequential_25/simple_rnn_50/transpose_1/perm:output:0*
T0*+
_output_shapes
:         @љ
!sequential_25/dropout_28/IdentityIdentity+sequential_25/simple_rnn_50/transpose_1:y:0*
T0*+
_output_shapes
:         @{
!sequential_25/simple_rnn_51/ShapeShape*sequential_25/dropout_28/Identity:output:0*
T0*
_output_shapes
:y
/sequential_25/simple_rnn_51/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_25/simple_rnn_51/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_25/simple_rnn_51/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
)sequential_25/simple_rnn_51/strided_sliceStridedSlice*sequential_25/simple_rnn_51/Shape:output:08sequential_25/simple_rnn_51/strided_slice/stack:output:0:sequential_25/simple_rnn_51/strided_slice/stack_1:output:0:sequential_25/simple_rnn_51/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
'sequential_25/simple_rnn_51/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Я│
%sequential_25/simple_rnn_51/zeros/mulMul2sequential_25/simple_rnn_51/strided_slice:output:00sequential_25/simple_rnn_51/zeros/mul/y:output:0*
T0*
_output_shapes
: k
(sequential_25/simple_rnn_51/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :УГ
&sequential_25/simple_rnn_51/zeros/LessLess)sequential_25/simple_rnn_51/zeros/mul:z:01sequential_25/simple_rnn_51/zeros/Less/y:output:0*
T0*
_output_shapes
: m
*sequential_25/simple_rnn_51/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ЯК
(sequential_25/simple_rnn_51/zeros/packedPack2sequential_25/simple_rnn_51/strided_slice:output:03sequential_25/simple_rnn_51/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:l
'sequential_25/simple_rnn_51/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ┴
!sequential_25/simple_rnn_51/zerosFill1sequential_25/simple_rnn_51/zeros/packed:output:00sequential_25/simple_rnn_51/zeros/Const:output:0*
T0*(
_output_shapes
:         Я
*sequential_25/simple_rnn_51/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╔
%sequential_25/simple_rnn_51/transpose	Transpose*sequential_25/dropout_28/Identity:output:03sequential_25/simple_rnn_51/transpose/perm:output:0*
T0*+
_output_shapes
:         @|
#sequential_25/simple_rnn_51/Shape_1Shape)sequential_25/simple_rnn_51/transpose:y:0*
T0*
_output_shapes
:{
1sequential_25/simple_rnn_51/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_25/simple_rnn_51/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_25/simple_rnn_51/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:у
+sequential_25/simple_rnn_51/strided_slice_1StridedSlice,sequential_25/simple_rnn_51/Shape_1:output:0:sequential_25/simple_rnn_51/strided_slice_1/stack:output:0<sequential_25/simple_rnn_51/strided_slice_1/stack_1:output:0<sequential_25/simple_rnn_51/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskѓ
7sequential_25/simple_rnn_51/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ѕ
)sequential_25/simple_rnn_51/TensorArrayV2TensorListReserve@sequential_25/simple_rnn_51/TensorArrayV2/element_shape:output:04sequential_25/simple_rnn_51/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмб
Qsequential_25/simple_rnn_51/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ┤
Csequential_25/simple_rnn_51/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor)sequential_25/simple_rnn_51/transpose:y:0Zsequential_25/simple_rnn_51/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм{
1sequential_25/simple_rnn_51/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_25/simple_rnn_51/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_25/simple_rnn_51/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ш
+sequential_25/simple_rnn_51/strided_slice_2StridedSlice)sequential_25/simple_rnn_51/transpose:y:0:sequential_25/simple_rnn_51/strided_slice_2/stack:output:0<sequential_25/simple_rnn_51/strided_slice_2/stack_1:output:0<sequential_25/simple_rnn_51/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maskМ
Dsequential_25/simple_rnn_51/simple_rnn_cell_51/MatMul/ReadVariableOpReadVariableOpMsequential_25_simple_rnn_51_simple_rnn_cell_51_matmul_readvariableop_resource*
_output_shapes
:	@Я*
dtype0Ш
5sequential_25/simple_rnn_51/simple_rnn_cell_51/MatMulMatMul4sequential_25/simple_rnn_51/strided_slice_2:output:0Lsequential_25/simple_rnn_51/simple_rnn_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ЯЛ
Esequential_25/simple_rnn_51/simple_rnn_cell_51/BiasAdd/ReadVariableOpReadVariableOpNsequential_25_simple_rnn_51_simple_rnn_cell_51_biasadd_readvariableop_resource*
_output_shapes	
:Я*
dtype0ё
6sequential_25/simple_rnn_51/simple_rnn_cell_51/BiasAddBiasAdd?sequential_25/simple_rnn_51/simple_rnn_cell_51/MatMul:product:0Msequential_25/simple_rnn_51/simple_rnn_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Яп
Fsequential_25/simple_rnn_51/simple_rnn_cell_51/MatMul_1/ReadVariableOpReadVariableOpOsequential_25_simple_rnn_51_simple_rnn_cell_51_matmul_1_readvariableop_resource* 
_output_shapes
:
ЯЯ*
dtype0­
7sequential_25/simple_rnn_51/simple_rnn_cell_51/MatMul_1MatMul*sequential_25/simple_rnn_51/zeros:output:0Nsequential_25/simple_rnn_51/simple_rnn_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ЯЫ
2sequential_25/simple_rnn_51/simple_rnn_cell_51/addAddV2?sequential_25/simple_rnn_51/simple_rnn_cell_51/BiasAdd:output:0Asequential_25/simple_rnn_51/simple_rnn_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:         Яд
3sequential_25/simple_rnn_51/simple_rnn_cell_51/TanhTanh6sequential_25/simple_rnn_51/simple_rnn_cell_51/add:z:0*
T0*(
_output_shapes
:         Яі
9sequential_25/simple_rnn_51/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Я   ї
+sequential_25/simple_rnn_51/TensorArrayV2_1TensorListReserveBsequential_25/simple_rnn_51/TensorArrayV2_1/element_shape:output:04sequential_25/simple_rnn_51/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмb
 sequential_25/simple_rnn_51/timeConst*
_output_shapes
: *
dtype0*
value	B : 
4sequential_25/simple_rnn_51/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         p
.sequential_25/simple_rnn_51/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╔
!sequential_25/simple_rnn_51/whileWhile7sequential_25/simple_rnn_51/while/loop_counter:output:0=sequential_25/simple_rnn_51/while/maximum_iterations:output:0)sequential_25/simple_rnn_51/time:output:04sequential_25/simple_rnn_51/TensorArrayV2_1:handle:0*sequential_25/simple_rnn_51/zeros:output:04sequential_25/simple_rnn_51/strided_slice_1:output:0Ssequential_25/simple_rnn_51/TensorArrayUnstack/TensorListFromTensor:output_handle:0Msequential_25_simple_rnn_51_simple_rnn_cell_51_matmul_readvariableop_resourceNsequential_25_simple_rnn_51_simple_rnn_cell_51_biasadd_readvariableop_resourceOsequential_25_simple_rnn_51_simple_rnn_cell_51_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         Я: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *9
body1R/
-sequential_25_simple_rnn_51_while_body_188941*9
cond1R/
-sequential_25_simple_rnn_51_while_cond_188940*9
output_shapes(
&: : : : :         Я: : : : : *
parallel_iterations Ю
Lsequential_25/simple_rnn_51/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Я   Ќ
>sequential_25/simple_rnn_51/TensorArrayV2Stack/TensorListStackTensorListStack*sequential_25/simple_rnn_51/while:output:3Usequential_25/simple_rnn_51/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         Я*
element_dtype0ё
1sequential_25/simple_rnn_51/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         }
3sequential_25/simple_rnn_51/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: }
3sequential_25/simple_rnn_51/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ћ
+sequential_25/simple_rnn_51/strided_slice_3StridedSliceGsequential_25/simple_rnn_51/TensorArrayV2Stack/TensorListStack:tensor:0:sequential_25/simple_rnn_51/strided_slice_3/stack:output:0<sequential_25/simple_rnn_51/strided_slice_3/stack_1:output:0<sequential_25/simple_rnn_51/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Я*
shrink_axis_maskЂ
,sequential_25/simple_rnn_51/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          в
'sequential_25/simple_rnn_51/transpose_1	TransposeGsequential_25/simple_rnn_51/TensorArrayV2Stack/TensorListStack:tensor:05sequential_25/simple_rnn_51/transpose_1/perm:output:0*
T0*,
_output_shapes
:         Яќ
!sequential_25/dropout_29/IdentityIdentity4sequential_25/simple_rnn_51/strided_slice_3:output:0*
T0*(
_output_shapes
:         ЯБ
,sequential_25/dense_25/MatMul/ReadVariableOpReadVariableOp5sequential_25_dense_25_matmul_readvariableop_resource*
_output_shapes
:	Я*
dtype0╗
sequential_25/dense_25/MatMulMatMul*sequential_25/dropout_29/Identity:output:04sequential_25/dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-sequential_25/dense_25/BiasAdd/ReadVariableOpReadVariableOp6sequential_25_dense_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
sequential_25/dense_25/BiasAddBiasAdd'sequential_25/dense_25/MatMul:product:05sequential_25/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
sequential_25/dense_25/SoftmaxSoftmax'sequential_25/dense_25/BiasAdd:output:0*
T0*'
_output_shapes
:         w
IdentityIdentity(sequential_25/dense_25/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         Ю
NoOpNoOp.^sequential_25/dense_25/BiasAdd/ReadVariableOp-^sequential_25/dense_25/MatMul/ReadVariableOpF^sequential_25/simple_rnn_50/simple_rnn_cell_50/BiasAdd/ReadVariableOpE^sequential_25/simple_rnn_50/simple_rnn_cell_50/MatMul/ReadVariableOpG^sequential_25/simple_rnn_50/simple_rnn_cell_50/MatMul_1/ReadVariableOp"^sequential_25/simple_rnn_50/whileF^sequential_25/simple_rnn_51/simple_rnn_cell_51/BiasAdd/ReadVariableOpE^sequential_25/simple_rnn_51/simple_rnn_cell_51/MatMul/ReadVariableOpG^sequential_25/simple_rnn_51/simple_rnn_cell_51/MatMul_1/ReadVariableOp"^sequential_25/simple_rnn_51/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : : : : : 2^
-sequential_25/dense_25/BiasAdd/ReadVariableOp-sequential_25/dense_25/BiasAdd/ReadVariableOp2\
,sequential_25/dense_25/MatMul/ReadVariableOp,sequential_25/dense_25/MatMul/ReadVariableOp2ј
Esequential_25/simple_rnn_50/simple_rnn_cell_50/BiasAdd/ReadVariableOpEsequential_25/simple_rnn_50/simple_rnn_cell_50/BiasAdd/ReadVariableOp2ї
Dsequential_25/simple_rnn_50/simple_rnn_cell_50/MatMul/ReadVariableOpDsequential_25/simple_rnn_50/simple_rnn_cell_50/MatMul/ReadVariableOp2љ
Fsequential_25/simple_rnn_50/simple_rnn_cell_50/MatMul_1/ReadVariableOpFsequential_25/simple_rnn_50/simple_rnn_cell_50/MatMul_1/ReadVariableOp2F
!sequential_25/simple_rnn_50/while!sequential_25/simple_rnn_50/while2ј
Esequential_25/simple_rnn_51/simple_rnn_cell_51/BiasAdd/ReadVariableOpEsequential_25/simple_rnn_51/simple_rnn_cell_51/BiasAdd/ReadVariableOp2ї
Dsequential_25/simple_rnn_51/simple_rnn_cell_51/MatMul/ReadVariableOpDsequential_25/simple_rnn_51/simple_rnn_cell_51/MatMul/ReadVariableOp2љ
Fsequential_25/simple_rnn_51/simple_rnn_cell_51/MatMul_1/ReadVariableOpFsequential_25/simple_rnn_51/simple_rnn_cell_51/MatMul_1/ReadVariableOp2F
!sequential_25/simple_rnn_51/while!sequential_25/simple_rnn_51/while:` \
+
_output_shapes
:         
-
_user_specified_namesimple_rnn_50_input
▄
ф
while_cond_191524
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_191524___redundant_placeholder04
0while_while_cond_191524___redundant_placeholder14
0while_while_cond_191524___redundant_placeholder24
0while_while_cond_191524___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         Я: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         Я:

_output_shapes
: :

_output_shapes
:
з@
╚
I__inference_simple_rnn_51_layer_call_and_return_conditional_losses_191591
inputs_0D
1simple_rnn_cell_51_matmul_readvariableop_resource:	@ЯA
2simple_rnn_cell_51_biasadd_readvariableop_resource:	ЯG
3simple_rnn_cell_51_matmul_1_readvariableop_resource:
ЯЯ
identityѕб)simple_rnn_cell_51/BiasAdd/ReadVariableOpб(simple_rnn_cell_51/MatMul/ReadVariableOpб*simple_rnn_cell_51/MatMul_1/ReadVariableOpбwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskN
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Я_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :УY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: Q
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Яs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         Яc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  @D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maskЏ
(simple_rnn_cell_51/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_51_matmul_readvariableop_resource*
_output_shapes
:	@Я*
dtype0б
simple_rnn_cell_51/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ЯЎ
)simple_rnn_cell_51/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_51_biasadd_readvariableop_resource*
_output_shapes	
:Я*
dtype0░
simple_rnn_cell_51/BiasAddBiasAdd#simple_rnn_cell_51/MatMul:product:01simple_rnn_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Яа
*simple_rnn_cell_51/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_51_matmul_1_readvariableop_resource* 
_output_shapes
:
ЯЯ*
dtype0ю
simple_rnn_cell_51/MatMul_1MatMulzeros:output:02simple_rnn_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Яъ
simple_rnn_cell_51/addAddV2#simple_rnn_cell_51/BiasAdd:output:0%simple_rnn_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:         Яn
simple_rnn_cell_51/TanhTanhsimple_rnn_cell_51/add:z:0*
T0*(
_output_shapes
:         Яn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Я   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : П
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_51_matmul_readvariableop_resource2simple_rnn_cell_51_biasadd_readvariableop_resource3simple_rnn_cell_51_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         Я: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_191525*
condR
while_cond_191524*9
output_shapes(
&: : : : :         Я: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Я   ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  Я*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Я*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  Яh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         Ям
NoOpNoOp*^simple_rnn_cell_51/BiasAdd/ReadVariableOp)^simple_rnn_cell_51/MatMul/ReadVariableOp+^simple_rnn_cell_51/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  @: : : 2V
)simple_rnn_cell_51/BiasAdd/ReadVariableOp)simple_rnn_cell_51/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_51/MatMul/ReadVariableOp(simple_rnn_cell_51/MatMul/ReadVariableOp2X
*simple_rnn_cell_51/MatMul_1/ReadVariableOp*simple_rnn_cell_51/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  @
"
_user_specified_name
inputs/0
І
И
.__inference_simple_rnn_50_layer_call_fn_190949

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
identityѕбStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_simple_rnn_50_layer_call_and_return_conditional_losses_189733s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
з@
╚
I__inference_simple_rnn_51_layer_call_and_return_conditional_losses_191703
inputs_0D
1simple_rnn_cell_51_matmul_readvariableop_resource:	@ЯA
2simple_rnn_cell_51_biasadd_readvariableop_resource:	ЯG
3simple_rnn_cell_51_matmul_1_readvariableop_resource:
ЯЯ
identityѕб)simple_rnn_cell_51/BiasAdd/ReadVariableOpб(simple_rnn_cell_51/MatMul/ReadVariableOpб*simple_rnn_cell_51/MatMul_1/ReadVariableOpбwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskN
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Я_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :УY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: Q
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Яs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         Яc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  @D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maskЏ
(simple_rnn_cell_51/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_51_matmul_readvariableop_resource*
_output_shapes
:	@Я*
dtype0б
simple_rnn_cell_51/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ЯЎ
)simple_rnn_cell_51/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_51_biasadd_readvariableop_resource*
_output_shapes	
:Я*
dtype0░
simple_rnn_cell_51/BiasAddBiasAdd#simple_rnn_cell_51/MatMul:product:01simple_rnn_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Яа
*simple_rnn_cell_51/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_51_matmul_1_readvariableop_resource* 
_output_shapes
:
ЯЯ*
dtype0ю
simple_rnn_cell_51/MatMul_1MatMulzeros:output:02simple_rnn_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Яъ
simple_rnn_cell_51/addAddV2#simple_rnn_cell_51/BiasAdd:output:0%simple_rnn_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:         Яn
simple_rnn_cell_51/TanhTanhsimple_rnn_cell_51/add:z:0*
T0*(
_output_shapes
:         Яn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Я   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : П
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_51_matmul_readvariableop_resource2simple_rnn_cell_51_biasadd_readvariableop_resource3simple_rnn_cell_51_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         Я: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_191637*
condR
while_cond_191636*9
output_shapes(
&: : : : :         Я: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Я   ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  Я*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Я*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  Яh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         Ям
NoOpNoOp*^simple_rnn_cell_51/BiasAdd/ReadVariableOp)^simple_rnn_cell_51/MatMul/ReadVariableOp+^simple_rnn_cell_51/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  @: : : 2V
)simple_rnn_cell_51/BiasAdd/ReadVariableOp)simple_rnn_cell_51/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_51/MatMul/ReadVariableOp(simple_rnn_cell_51/MatMul/ReadVariableOp2X
*simple_rnn_cell_51/MatMul_1/ReadVariableOp*simple_rnn_cell_51/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  @
"
_user_specified_name
inputs/0
Й

█
3__inference_simple_rnn_cell_50_layer_call_fn_191988

inputs
states_0
unknown:@
	unknown_0:@
	unknown_1:@@
identity

identity_1ѕбStatefulPartitionedCallњ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         @:         @*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *W
fRRP
N__inference_simple_rnn_cell_50_layer_call_and_return_conditional_losses_189067o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         :         @: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         @
"
_user_specified_name
states/0
Ж,
┘
while_body_191525
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
9while_simple_rnn_cell_51_matmul_readvariableop_resource_0:	@ЯI
:while_simple_rnn_cell_51_biasadd_readvariableop_resource_0:	ЯO
;while_simple_rnn_cell_51_matmul_1_readvariableop_resource_0:
ЯЯ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
7while_simple_rnn_cell_51_matmul_readvariableop_resource:	@ЯG
8while_simple_rnn_cell_51_biasadd_readvariableop_resource:	ЯM
9while_simple_rnn_cell_51_matmul_1_readvariableop_resource:
ЯЯѕб/while/simple_rnn_cell_51/BiasAdd/ReadVariableOpб.while/simple_rnn_cell_51/MatMul/ReadVariableOpб0while/simple_rnn_cell_51/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype0Е
.while/simple_rnn_cell_51/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_51_matmul_readvariableop_resource_0*
_output_shapes
:	@Я*
dtype0к
while/simple_rnn_cell_51/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ЯД
/while/simple_rnn_cell_51/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_51_biasadd_readvariableop_resource_0*
_output_shapes	
:Я*
dtype0┬
 while/simple_rnn_cell_51/BiasAddBiasAdd)while/simple_rnn_cell_51/MatMul:product:07while/simple_rnn_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Я«
0while/simple_rnn_cell_51/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_51_matmul_1_readvariableop_resource_0* 
_output_shapes
:
ЯЯ*
dtype0Г
!while/simple_rnn_cell_51/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Я░
while/simple_rnn_cell_51/addAddV2)while/simple_rnn_cell_51/BiasAdd:output:0+while/simple_rnn_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:         Яz
while/simple_rnn_cell_51/TanhTanh while/simple_rnn_cell_51/add:z:0*
T0*(
_output_shapes
:         Я╩
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_51/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity!while/simple_rnn_cell_51/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:         ЯР

while/NoOpNoOp0^while/simple_rnn_cell_51/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_51/MatMul/ReadVariableOp1^while/simple_rnn_cell_51/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_51_biasadd_readvariableop_resource:while_simple_rnn_cell_51_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_51_matmul_1_readvariableop_resource;while_simple_rnn_cell_51_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_51_matmul_readvariableop_resource9while_simple_rnn_cell_51_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         Я: : : : : 2b
/while/simple_rnn_cell_51/BiasAdd/ReadVariableOp/while/simple_rnn_cell_51/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_51/MatMul/ReadVariableOp.while/simple_rnn_cell_51/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_51/MatMul_1/ReadVariableOp0while/simple_rnn_cell_51/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         Я:

_output_shapes
: :

_output_shapes
: 
э9
§
simple_rnn_51_while_body_1908358
4simple_rnn_51_while_simple_rnn_51_while_loop_counter>
:simple_rnn_51_while_simple_rnn_51_while_maximum_iterations#
simple_rnn_51_while_placeholder%
!simple_rnn_51_while_placeholder_1%
!simple_rnn_51_while_placeholder_27
3simple_rnn_51_while_simple_rnn_51_strided_slice_1_0s
osimple_rnn_51_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_51_tensorarrayunstack_tensorlistfromtensor_0Z
Gsimple_rnn_51_while_simple_rnn_cell_51_matmul_readvariableop_resource_0:	@ЯW
Hsimple_rnn_51_while_simple_rnn_cell_51_biasadd_readvariableop_resource_0:	Я]
Isimple_rnn_51_while_simple_rnn_cell_51_matmul_1_readvariableop_resource_0:
ЯЯ 
simple_rnn_51_while_identity"
simple_rnn_51_while_identity_1"
simple_rnn_51_while_identity_2"
simple_rnn_51_while_identity_3"
simple_rnn_51_while_identity_45
1simple_rnn_51_while_simple_rnn_51_strided_slice_1q
msimple_rnn_51_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_51_tensorarrayunstack_tensorlistfromtensorX
Esimple_rnn_51_while_simple_rnn_cell_51_matmul_readvariableop_resource:	@ЯU
Fsimple_rnn_51_while_simple_rnn_cell_51_biasadd_readvariableop_resource:	Я[
Gsimple_rnn_51_while_simple_rnn_cell_51_matmul_1_readvariableop_resource:
ЯЯѕб=simple_rnn_51/while/simple_rnn_cell_51/BiasAdd/ReadVariableOpб<simple_rnn_51/while/simple_rnn_cell_51/MatMul/ReadVariableOpб>simple_rnn_51/while/simple_rnn_cell_51/MatMul_1/ReadVariableOpќ
Esimple_rnn_51/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   В
7simple_rnn_51/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_51_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_51_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_51_while_placeholderNsimple_rnn_51/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype0┼
<simple_rnn_51/while/simple_rnn_cell_51/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_51_while_simple_rnn_cell_51_matmul_readvariableop_resource_0*
_output_shapes
:	@Я*
dtype0­
-simple_rnn_51/while/simple_rnn_cell_51/MatMulMatMul>simple_rnn_51/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_51/while/simple_rnn_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Я├
=simple_rnn_51/while/simple_rnn_cell_51/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_51_while_simple_rnn_cell_51_biasadd_readvariableop_resource_0*
_output_shapes	
:Я*
dtype0В
.simple_rnn_51/while/simple_rnn_cell_51/BiasAddBiasAdd7simple_rnn_51/while/simple_rnn_cell_51/MatMul:product:0Esimple_rnn_51/while/simple_rnn_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Я╩
>simple_rnn_51/while/simple_rnn_cell_51/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_51_while_simple_rnn_cell_51_matmul_1_readvariableop_resource_0* 
_output_shapes
:
ЯЯ*
dtype0О
/simple_rnn_51/while/simple_rnn_cell_51/MatMul_1MatMul!simple_rnn_51_while_placeholder_2Fsimple_rnn_51/while/simple_rnn_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Я┌
*simple_rnn_51/while/simple_rnn_cell_51/addAddV27simple_rnn_51/while/simple_rnn_cell_51/BiasAdd:output:09simple_rnn_51/while/simple_rnn_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:         Яќ
+simple_rnn_51/while/simple_rnn_cell_51/TanhTanh.simple_rnn_51/while/simple_rnn_cell_51/add:z:0*
T0*(
_output_shapes
:         Яѓ
8simple_rnn_51/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_51_while_placeholder_1simple_rnn_51_while_placeholder/simple_rnn_51/while/simple_rnn_cell_51/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУм[
simple_rnn_51/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :є
simple_rnn_51/while/addAddV2simple_rnn_51_while_placeholder"simple_rnn_51/while/add/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_51/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ъ
simple_rnn_51/while/add_1AddV24simple_rnn_51_while_simple_rnn_51_while_loop_counter$simple_rnn_51/while/add_1/y:output:0*
T0*
_output_shapes
: Ѓ
simple_rnn_51/while/IdentityIdentitysimple_rnn_51/while/add_1:z:0^simple_rnn_51/while/NoOp*
T0*
_output_shapes
: б
simple_rnn_51/while/Identity_1Identity:simple_rnn_51_while_simple_rnn_51_while_maximum_iterations^simple_rnn_51/while/NoOp*
T0*
_output_shapes
: Ѓ
simple_rnn_51/while/Identity_2Identitysimple_rnn_51/while/add:z:0^simple_rnn_51/while/NoOp*
T0*
_output_shapes
: ░
simple_rnn_51/while/Identity_3IdentityHsimple_rnn_51/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_51/while/NoOp*
T0*
_output_shapes
: Е
simple_rnn_51/while/Identity_4Identity/simple_rnn_51/while/simple_rnn_cell_51/Tanh:y:0^simple_rnn_51/while/NoOp*
T0*(
_output_shapes
:         Яџ
simple_rnn_51/while/NoOpNoOp>^simple_rnn_51/while/simple_rnn_cell_51/BiasAdd/ReadVariableOp=^simple_rnn_51/while/simple_rnn_cell_51/MatMul/ReadVariableOp?^simple_rnn_51/while/simple_rnn_cell_51/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
simple_rnn_51_while_identity%simple_rnn_51/while/Identity:output:0"I
simple_rnn_51_while_identity_1'simple_rnn_51/while/Identity_1:output:0"I
simple_rnn_51_while_identity_2'simple_rnn_51/while/Identity_2:output:0"I
simple_rnn_51_while_identity_3'simple_rnn_51/while/Identity_3:output:0"I
simple_rnn_51_while_identity_4'simple_rnn_51/while/Identity_4:output:0"h
1simple_rnn_51_while_simple_rnn_51_strided_slice_13simple_rnn_51_while_simple_rnn_51_strided_slice_1_0"њ
Fsimple_rnn_51_while_simple_rnn_cell_51_biasadd_readvariableop_resourceHsimple_rnn_51_while_simple_rnn_cell_51_biasadd_readvariableop_resource_0"ћ
Gsimple_rnn_51_while_simple_rnn_cell_51_matmul_1_readvariableop_resourceIsimple_rnn_51_while_simple_rnn_cell_51_matmul_1_readvariableop_resource_0"љ
Esimple_rnn_51_while_simple_rnn_cell_51_matmul_readvariableop_resourceGsimple_rnn_51_while_simple_rnn_cell_51_matmul_readvariableop_resource_0"Я
msimple_rnn_51_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_51_tensorarrayunstack_tensorlistfromtensorosimple_rnn_51_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_51_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         Я: : : : : 2~
=simple_rnn_51/while/simple_rnn_cell_51/BiasAdd/ReadVariableOp=simple_rnn_51/while/simple_rnn_cell_51/BiasAdd/ReadVariableOp2|
<simple_rnn_51/while/simple_rnn_cell_51/MatMul/ReadVariableOp<simple_rnn_51/while/simple_rnn_cell_51/MatMul/ReadVariableOp2ђ
>simple_rnn_51/while/simple_rnn_cell_51/MatMul_1/ReadVariableOp>simple_rnn_51/while/simple_rnn_cell_51/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         Я:

_output_shapes
: :

_output_shapes
: 
ћ

e
F__inference_dropout_28_layer_call_and_return_conditional_losses_191435

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *б╝є?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:         @C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:љ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:         @*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L=ф
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:         @s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:         @m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:         @]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
╚
Ќ
)__inference_dense_25_layer_call_fn_191963

inputs
unknown:	Я
	unknown_0:
identityѕбStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_189885o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         Я: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         Я
 
_user_specified_nameinputs
ё
в
N__inference_simple_rnn_cell_50_layer_call_and_return_conditional_losses_192036

inputs
states_00
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:         @G
TanhTanhadd:z:0*
T0*'
_output_shapes
:         @W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         @Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         @Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         :         @: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         @
"
_user_specified_name
states/0
о,
Л
while_body_190160
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_50_matmul_readvariableop_resource_0:@H
:while_simple_rnn_cell_50_biasadd_readvariableop_resource_0:@M
;while_simple_rnn_cell_50_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_50_matmul_readvariableop_resource:@F
8while_simple_rnn_cell_50_biasadd_readvariableop_resource:@K
9while_simple_rnn_cell_50_matmul_1_readvariableop_resource:@@ѕб/while/simple_rnn_cell_50/BiasAdd/ReadVariableOpб.while/simple_rnn_cell_50/MatMul/ReadVariableOpб0while/simple_rnn_cell_50/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0е
.while/simple_rnn_cell_50/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_50_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0┼
while/simple_rnn_cell_50/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
/while/simple_rnn_cell_50/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_50_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0┴
 while/simple_rnn_cell_50/BiasAddBiasAdd)while/simple_rnn_cell_50/MatMul:product:07while/simple_rnn_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @г
0while/simple_rnn_cell_50/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_50_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0г
!while/simple_rnn_cell_50/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @»
while/simple_rnn_cell_50/addAddV2)while/simple_rnn_cell_50/BiasAdd:output:0+while/simple_rnn_cell_50/MatMul_1:product:0*
T0*'
_output_shapes
:         @y
while/simple_rnn_cell_50/TanhTanh while/simple_rnn_cell_50/add:z:0*
T0*'
_output_shapes
:         @╩
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_50/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ~
while/Identity_4Identity!while/simple_rnn_cell_50/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         @Р

while/NoOpNoOp0^while/simple_rnn_cell_50/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_50/MatMul/ReadVariableOp1^while/simple_rnn_cell_50/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_50_biasadd_readvariableop_resource:while_simple_rnn_cell_50_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_50_matmul_1_readvariableop_resource;while_simple_rnn_cell_50_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_50_matmul_readvariableop_resource9while_simple_rnn_cell_50_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2b
/while/simple_rnn_cell_50/BiasAdd/ReadVariableOp/while/simple_rnn_cell_50/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_50/MatMul/ReadVariableOp.while/simple_rnn_cell_50/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_50/MatMul_1/ReadVariableOp0while/simple_rnn_cell_50/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
Щ
d
+__inference_dropout_29_layer_call_fn_191937

inputs
identityѕбStatefulPartitionedCall┼
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Я* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_189941p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         Я`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         Я22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         Я
 
_user_specified_nameinputs
щ
р
I__inference_sequential_25_layer_call_and_return_conditional_losses_190373
simple_rnn_50_input&
simple_rnn_50_190351:@"
simple_rnn_50_190353:@&
simple_rnn_50_190355:@@'
simple_rnn_51_190359:	@Я#
simple_rnn_51_190361:	Я(
simple_rnn_51_190363:
ЯЯ"
dense_25_190367:	Я
dense_25_190369:
identityѕб dense_25/StatefulPartitionedCallб"dropout_28/StatefulPartitionedCallб"dropout_29/StatefulPartitionedCallб%simple_rnn_50/StatefulPartitionedCallб%simple_rnn_51/StatefulPartitionedCall░
%simple_rnn_50/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_50_inputsimple_rnn_50_190351simple_rnn_50_190353simple_rnn_50_190355*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_simple_rnn_50_layer_call_and_return_conditional_losses_190226ч
"dropout_28/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_50/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_190098┼
%simple_rnn_51/StatefulPartitionedCallStatefulPartitionedCall+dropout_28/StatefulPartitionedCall:output:0simple_rnn_51_190359simple_rnn_51_190361simple_rnn_51_190363*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Я*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_simple_rnn_51_layer_call_and_return_conditional_losses_190069Ю
"dropout_29/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_51/StatefulPartitionedCall:output:0#^dropout_28/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Я* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_189941ў
 dense_25/StatefulPartitionedCallStatefulPartitionedCall+dropout_29/StatefulPartitionedCall:output:0dense_25_190367dense_25_190369*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_189885x
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Ѓ
NoOpNoOp!^dense_25/StatefulPartitionedCall#^dropout_28/StatefulPartitionedCall#^dropout_29/StatefulPartitionedCall&^simple_rnn_50/StatefulPartitionedCall&^simple_rnn_51/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : : : : : 2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2H
"dropout_28/StatefulPartitionedCall"dropout_28/StatefulPartitionedCall2H
"dropout_29/StatefulPartitionedCall"dropout_29/StatefulPartitionedCall2N
%simple_rnn_50/StatefulPartitionedCall%simple_rnn_50/StatefulPartitionedCall2N
%simple_rnn_51/StatefulPartitionedCall%simple_rnn_51/StatefulPartitionedCall:` \
+
_output_shapes
:         
-
_user_specified_namesimple_rnn_50_input"ѓL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*К
serving_default│
W
simple_rnn_50_input@
%serving_default_simple_rnn_50_input:0         <
dense_250
StatefulPartitionedCall:0         tensorflow/serving/predict:ГИ
Ш
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
~__call__
*&call_and_return_all_conditional_losses
ђ_default_save_signature"
_tf_keras_sequential
┼
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
Ђ__call__
+ѓ&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
Д
	variables
trainable_variables
regularization_losses
	keras_api
Ѓ__call__
+ё&call_and_return_all_conditional_losses"
_tf_keras_layer
┼
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
Ё__call__
+є&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
Д
	variables
trainable_variables
regularization_losses
	keras_api
Є__call__
+ѕ&call_and_return_all_conditional_losses"
_tf_keras_layer
й

 kernel
!bias
"	variables
#trainable_variables
$regularization_losses
%	keras_api
Ѕ__call__
+і&call_and_return_all_conditional_losses"
_tf_keras_layer
с
&iter

'beta_1

(beta_2
	)decay
*learning_rate mn!mo+mp,mq-mr.ms/mt0mu vv!vw+vx,vy-vz.v{/v|0v}"
	optimizer
X
+0
,1
-2
.3
/4
05
 6
!7"
trackable_list_wrapper
X
+0
,1
-2
.3
/4
05
 6
!7"
trackable_list_wrapper
 "
trackable_list_wrapper
╦
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
	regularization_losses
~__call__
ђ_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
-
Іserving_default"
signature_map
М

+kernel
,recurrent_kernel
-bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
ї__call__
+Ї&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
 "
trackable_list_wrapper
╝

:states
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
Ђ__call__
+ѓ&call_and_return_all_conditional_losses
'ѓ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
regularization_losses
Ѓ__call__
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses"
_generic_user_object
М

.kernel
/recurrent_kernel
0bias
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
ј__call__
+Ј&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
 "
trackable_list_wrapper
╝

Istates
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
regularization_losses
Ё__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
regularization_losses
Є__call__
+ѕ&call_and_return_all_conditional_losses
'ѕ"call_and_return_conditional_losses"
_generic_user_object
": 	Я2dense_25/kernel
:2dense_25/bias
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
"	variables
#trainable_variables
$regularization_losses
Ѕ__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
9:7@2'simple_rnn_50/simple_rnn_cell_50/kernel
C:A@@21simple_rnn_50/simple_rnn_cell_50/recurrent_kernel
3:1@2%simple_rnn_50/simple_rnn_cell_50/bias
::8	@Я2'simple_rnn_51/simple_rnn_cell_51/kernel
E:C
ЯЯ21simple_rnn_51/simple_rnn_cell_51/recurrent_kernel
4:2Я2%simple_rnn_51/simple_rnn_cell_51/bias
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
+0
,1
-2"
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
 "
trackable_list_wrapper
░
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
6	variables
7trainable_variables
8regularization_losses
ї__call__
+Ї&call_and_return_all_conditional_losses
'Ї"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
.0
/1
02"
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
 "
trackable_list_wrapper
░
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
ј__call__
+Ј&call_and_return_all_conditional_losses
'Ј"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	etotal
	fcount
g	variables
h	keras_api"
_tf_keras_metric
^
	itotal
	jcount
k
_fn_kwargs
l	variables
m	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
e0
f1"
trackable_list_wrapper
-
g	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
i0
j1"
trackable_list_wrapper
-
l	variables"
_generic_user_object
':%	Я2Adam/dense_25/kernel/m
 :2Adam/dense_25/bias/m
>:<@2.Adam/simple_rnn_50/simple_rnn_cell_50/kernel/m
H:F@@28Adam/simple_rnn_50/simple_rnn_cell_50/recurrent_kernel/m
8:6@2,Adam/simple_rnn_50/simple_rnn_cell_50/bias/m
?:=	@Я2.Adam/simple_rnn_51/simple_rnn_cell_51/kernel/m
J:H
ЯЯ28Adam/simple_rnn_51/simple_rnn_cell_51/recurrent_kernel/m
9:7Я2,Adam/simple_rnn_51/simple_rnn_cell_51/bias/m
':%	Я2Adam/dense_25/kernel/v
 :2Adam/dense_25/bias/v
>:<@2.Adam/simple_rnn_50/simple_rnn_cell_50/kernel/v
H:F@@28Adam/simple_rnn_50/simple_rnn_cell_50/recurrent_kernel/v
8:6@2,Adam/simple_rnn_50/simple_rnn_cell_50/bias/v
?:=	@Я2.Adam/simple_rnn_51/simple_rnn_cell_51/kernel/v
J:H
ЯЯ28Adam/simple_rnn_51/simple_rnn_cell_51/recurrent_kernel/v
9:7Я2,Adam/simple_rnn_51/simple_rnn_cell_51/bias/v
є2Ѓ
.__inference_sequential_25_layer_call_fn_189911
.__inference_sequential_25_layer_call_fn_190423
.__inference_sequential_25_layer_call_fn_190444
.__inference_sequential_25_layer_call_fn_190323└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Ы2№
I__inference_sequential_25_layer_call_and_return_conditional_losses_190673
I__inference_sequential_25_layer_call_and_return_conditional_losses_190916
I__inference_sequential_25_layer_call_and_return_conditional_losses_190348
I__inference_sequential_25_layer_call_and_return_conditional_losses_190373└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
пBН
!__inference__wrapped_model_189015simple_rnn_50_input"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Џ2ў
.__inference_simple_rnn_50_layer_call_fn_190927
.__inference_simple_rnn_50_layer_call_fn_190938
.__inference_simple_rnn_50_layer_call_fn_190949
.__inference_simple_rnn_50_layer_call_fn_190960Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Є2ё
I__inference_simple_rnn_50_layer_call_and_return_conditional_losses_191072
I__inference_simple_rnn_50_layer_call_and_return_conditional_losses_191184
I__inference_simple_rnn_50_layer_call_and_return_conditional_losses_191296
I__inference_simple_rnn_50_layer_call_and_return_conditional_losses_191408Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ћ2Љ
+__inference_dropout_28_layer_call_fn_191413
+__inference_dropout_28_layer_call_fn_191418┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
╩2К
F__inference_dropout_28_layer_call_and_return_conditional_losses_191423
F__inference_dropout_28_layer_call_and_return_conditional_losses_191435┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Џ2ў
.__inference_simple_rnn_51_layer_call_fn_191446
.__inference_simple_rnn_51_layer_call_fn_191457
.__inference_simple_rnn_51_layer_call_fn_191468
.__inference_simple_rnn_51_layer_call_fn_191479Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Є2ё
I__inference_simple_rnn_51_layer_call_and_return_conditional_losses_191591
I__inference_simple_rnn_51_layer_call_and_return_conditional_losses_191703
I__inference_simple_rnn_51_layer_call_and_return_conditional_losses_191815
I__inference_simple_rnn_51_layer_call_and_return_conditional_losses_191927Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ћ2Љ
+__inference_dropout_29_layer_call_fn_191932
+__inference_dropout_29_layer_call_fn_191937┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
╩2К
F__inference_dropout_29_layer_call_and_return_conditional_losses_191942
F__inference_dropout_29_layer_call_and_return_conditional_losses_191954┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
М2л
)__inference_dense_25_layer_call_fn_191963б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_dense_25_layer_call_and_return_conditional_losses_191974б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ОBн
$__inference_signature_wrapper_190402simple_rnn_50_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
«2Ф
3__inference_simple_rnn_cell_50_layer_call_fn_191988
3__inference_simple_rnn_cell_50_layer_call_fn_192002Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
С2р
N__inference_simple_rnn_cell_50_layer_call_and_return_conditional_losses_192019
N__inference_simple_rnn_cell_50_layer_call_and_return_conditional_losses_192036Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
«2Ф
3__inference_simple_rnn_cell_51_layer_call_fn_192050
3__inference_simple_rnn_cell_51_layer_call_fn_192064Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
С2р
N__inference_simple_rnn_cell_51_layer_call_and_return_conditional_losses_192081
N__inference_simple_rnn_cell_51_layer_call_and_return_conditional_losses_192098Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 Д
!__inference__wrapped_model_189015Ђ+-,.0/ !@б=
6б3
1і.
simple_rnn_50_input         
ф "3ф0
.
dense_25"і
dense_25         Ц
D__inference_dense_25_layer_call_and_return_conditional_losses_191974] !0б-
&б#
!і
inputs         Я
ф "%б"
і
0         
џ }
)__inference_dense_25_layer_call_fn_191963P !0б-
&б#
!і
inputs         Я
ф "і         «
F__inference_dropout_28_layer_call_and_return_conditional_losses_191423d7б4
-б*
$і!
inputs         @
p 
ф ")б&
і
0         @
џ «
F__inference_dropout_28_layer_call_and_return_conditional_losses_191435d7б4
-б*
$і!
inputs         @
p
ф ")б&
і
0         @
џ є
+__inference_dropout_28_layer_call_fn_191413W7б4
-б*
$і!
inputs         @
p 
ф "і         @є
+__inference_dropout_28_layer_call_fn_191418W7б4
-б*
$і!
inputs         @
p
ф "і         @е
F__inference_dropout_29_layer_call_and_return_conditional_losses_191942^4б1
*б'
!і
inputs         Я
p 
ф "&б#
і
0         Я
џ е
F__inference_dropout_29_layer_call_and_return_conditional_losses_191954^4б1
*б'
!і
inputs         Я
p
ф "&б#
і
0         Я
џ ђ
+__inference_dropout_29_layer_call_fn_191932Q4б1
*б'
!і
inputs         Я
p 
ф "і         Яђ
+__inference_dropout_29_layer_call_fn_191937Q4б1
*б'
!і
inputs         Я
p
ф "і         Я╚
I__inference_sequential_25_layer_call_and_return_conditional_losses_190348{+-,.0/ !HбE
>б;
1і.
simple_rnn_50_input         
p 

 
ф "%б"
і
0         
џ ╚
I__inference_sequential_25_layer_call_and_return_conditional_losses_190373{+-,.0/ !HбE
>б;
1і.
simple_rnn_50_input         
p

 
ф "%б"
і
0         
џ ╗
I__inference_sequential_25_layer_call_and_return_conditional_losses_190673n+-,.0/ !;б8
1б.
$і!
inputs         
p 

 
ф "%б"
і
0         
џ ╗
I__inference_sequential_25_layer_call_and_return_conditional_losses_190916n+-,.0/ !;б8
1б.
$і!
inputs         
p

 
ф "%б"
і
0         
џ а
.__inference_sequential_25_layer_call_fn_189911n+-,.0/ !HбE
>б;
1і.
simple_rnn_50_input         
p 

 
ф "і         а
.__inference_sequential_25_layer_call_fn_190323n+-,.0/ !HбE
>б;
1і.
simple_rnn_50_input         
p

 
ф "і         Њ
.__inference_sequential_25_layer_call_fn_190423a+-,.0/ !;б8
1б.
$і!
inputs         
p 

 
ф "і         Њ
.__inference_sequential_25_layer_call_fn_190444a+-,.0/ !;б8
1б.
$і!
inputs         
p

 
ф "і         ┴
$__inference_signature_wrapper_190402ў+-,.0/ !WбT
б 
MфJ
H
simple_rnn_50_input1і.
simple_rnn_50_input         "3ф0
.
dense_25"і
dense_25         п
I__inference_simple_rnn_50_layer_call_and_return_conditional_losses_191072і+-,OбL
EбB
4џ1
/і,
inputs/0                  

 
p 

 
ф "2б/
(і%
0                  @
џ п
I__inference_simple_rnn_50_layer_call_and_return_conditional_losses_191184і+-,OбL
EбB
4џ1
/і,
inputs/0                  

 
p

 
ф "2б/
(і%
0                  @
џ Й
I__inference_simple_rnn_50_layer_call_and_return_conditional_losses_191296q+-,?б<
5б2
$і!
inputs         

 
p 

 
ф ")б&
і
0         @
џ Й
I__inference_simple_rnn_50_layer_call_and_return_conditional_losses_191408q+-,?б<
5б2
$і!
inputs         

 
p

 
ф ")б&
і
0         @
џ »
.__inference_simple_rnn_50_layer_call_fn_190927}+-,OбL
EбB
4џ1
/і,
inputs/0                  

 
p 

 
ф "%і"                  @»
.__inference_simple_rnn_50_layer_call_fn_190938}+-,OбL
EбB
4џ1
/і,
inputs/0                  

 
p

 
ф "%і"                  @ќ
.__inference_simple_rnn_50_layer_call_fn_190949d+-,?б<
5б2
$і!
inputs         

 
p 

 
ф "і         @ќ
.__inference_simple_rnn_50_layer_call_fn_190960d+-,?б<
5б2
$і!
inputs         

 
p

 
ф "і         @╦
I__inference_simple_rnn_51_layer_call_and_return_conditional_losses_191591~.0/OбL
EбB
4џ1
/і,
inputs/0                  @

 
p 

 
ф "&б#
і
0         Я
џ ╦
I__inference_simple_rnn_51_layer_call_and_return_conditional_losses_191703~.0/OбL
EбB
4џ1
/і,
inputs/0                  @

 
p

 
ф "&б#
і
0         Я
џ ╗
I__inference_simple_rnn_51_layer_call_and_return_conditional_losses_191815n.0/?б<
5б2
$і!
inputs         @

 
p 

 
ф "&б#
і
0         Я
џ ╗
I__inference_simple_rnn_51_layer_call_and_return_conditional_losses_191927n.0/?б<
5б2
$і!
inputs         @

 
p

 
ф "&б#
і
0         Я
џ Б
.__inference_simple_rnn_51_layer_call_fn_191446q.0/OбL
EбB
4џ1
/і,
inputs/0                  @

 
p 

 
ф "і         ЯБ
.__inference_simple_rnn_51_layer_call_fn_191457q.0/OбL
EбB
4џ1
/і,
inputs/0                  @

 
p

 
ф "і         ЯЊ
.__inference_simple_rnn_51_layer_call_fn_191468a.0/?б<
5б2
$і!
inputs         @

 
p 

 
ф "і         ЯЊ
.__inference_simple_rnn_51_layer_call_fn_191479a.0/?б<
5б2
$і!
inputs         @

 
p

 
ф "і         Яі
N__inference_simple_rnn_cell_50_layer_call_and_return_conditional_losses_192019и+-,\бY
RбO
 і
inputs         
'б$
"і
states/0         @
p 
ф "RбO
HбE
і
0/0         @
$џ!
і
0/1/0         @
џ і
N__inference_simple_rnn_cell_50_layer_call_and_return_conditional_losses_192036и+-,\бY
RбO
 і
inputs         
'б$
"і
states/0         @
p
ф "RбO
HбE
і
0/0         @
$џ!
і
0/1/0         @
џ р
3__inference_simple_rnn_cell_50_layer_call_fn_191988Е+-,\бY
RбO
 і
inputs         
'б$
"і
states/0         @
p 
ф "DбA
і
0         @
"џ
і
1/0         @р
3__inference_simple_rnn_cell_50_layer_call_fn_192002Е+-,\бY
RбO
 і
inputs         
'б$
"і
states/0         @
p
ф "DбA
і
0         @
"џ
і
1/0         @Ї
N__inference_simple_rnn_cell_51_layer_call_and_return_conditional_losses_192081║.0/]бZ
SбP
 і
inputs         @
(б%
#і 
states/0         Я
p 
ф "TбQ
JбG
і
0/0         Я
%џ"
 і
0/1/0         Я
џ Ї
N__inference_simple_rnn_cell_51_layer_call_and_return_conditional_losses_192098║.0/]бZ
SбP
 і
inputs         @
(б%
#і 
states/0         Я
p
ф "TбQ
JбG
і
0/0         Я
%џ"
 і
0/1/0         Я
џ С
3__inference_simple_rnn_cell_51_layer_call_fn_192050г.0/]бZ
SбP
 і
inputs         @
(б%
#і 
states/0         Я
p 
ф "FбC
і
0         Я
#џ 
і
1/0         ЯС
3__inference_simple_rnn_cell_51_layer_call_fn_192064г.0/]бZ
SбP
 і
inputs         @
(б%
#і 
states/0         Я
p
ф "FбC
і
0         Я
#џ 
і
1/0         Я