ò
©ÿ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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
delete_old_dirsbool(
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
dtypetype
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
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
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

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
"serve*2.8.02v2.8.0-0-g3f878cff5b68ßé
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	à!*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	à!*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:!*
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
¦
%simple_rnn_6/simple_rnn_cell_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*6
shared_name'%simple_rnn_6/simple_rnn_cell_6/kernel

9simple_rnn_6/simple_rnn_cell_6/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_6/simple_rnn_cell_6/kernel*
_output_shapes

:@*
dtype0
º
/simple_rnn_6/simple_rnn_cell_6/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*@
shared_name1/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel
³
Csimple_rnn_6/simple_rnn_cell_6/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel*
_output_shapes

:@@*
dtype0

#simple_rnn_6/simple_rnn_cell_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#simple_rnn_6/simple_rnn_cell_6/bias

7simple_rnn_6/simple_rnn_cell_6/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_6/simple_rnn_cell_6/bias*
_output_shapes
:@*
dtype0
§
%simple_rnn_7/simple_rnn_cell_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@à*6
shared_name'%simple_rnn_7/simple_rnn_cell_7/kernel
 
9simple_rnn_7/simple_rnn_cell_7/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_7/simple_rnn_cell_7/kernel*
_output_shapes
:	@à*
dtype0
¼
/simple_rnn_7/simple_rnn_cell_7/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
àà*@
shared_name1/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel
µ
Csimple_rnn_7/simple_rnn_cell_7/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel* 
_output_shapes
:
àà*
dtype0

#simple_rnn_7/simple_rnn_cell_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:à*4
shared_name%#simple_rnn_7/simple_rnn_cell_7/bias

7simple_rnn_7/simple_rnn_cell_7/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_7/simple_rnn_cell_7/bias*
_output_shapes	
:à*
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

Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	à!*&
shared_nameAdam/dense_3/kernel/m

)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes
:	à!*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:!*
dtype0
´
,Adam/simple_rnn_6/simple_rnn_cell_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*=
shared_name.,Adam/simple_rnn_6/simple_rnn_cell_6/kernel/m
­
@Adam/simple_rnn_6/simple_rnn_cell_6/kernel/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_6/simple_rnn_cell_6/kernel/m*
_output_shapes

:@*
dtype0
È
6Adam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*G
shared_name86Adam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/m
Á
JAdam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/m*
_output_shapes

:@@*
dtype0
¬
*Adam/simple_rnn_6/simple_rnn_cell_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/simple_rnn_6/simple_rnn_cell_6/bias/m
¥
>Adam/simple_rnn_6/simple_rnn_cell_6/bias/m/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_6/simple_rnn_cell_6/bias/m*
_output_shapes
:@*
dtype0
µ
,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@à*=
shared_name.,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/m
®
@Adam/simple_rnn_7/simple_rnn_cell_7/kernel/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/m*
_output_shapes
:	@à*
dtype0
Ê
6Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
àà*G
shared_name86Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/m
Ã
JAdam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/m* 
_output_shapes
:
àà*
dtype0
­
*Adam/simple_rnn_7/simple_rnn_cell_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:à*;
shared_name,*Adam/simple_rnn_7/simple_rnn_cell_7/bias/m
¦
>Adam/simple_rnn_7/simple_rnn_cell_7/bias/m/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_7/simple_rnn_cell_7/bias/m*
_output_shapes	
:à*
dtype0

Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	à!*&
shared_nameAdam/dense_3/kernel/v

)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes
:	à!*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:!*
dtype0
´
,Adam/simple_rnn_6/simple_rnn_cell_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*=
shared_name.,Adam/simple_rnn_6/simple_rnn_cell_6/kernel/v
­
@Adam/simple_rnn_6/simple_rnn_cell_6/kernel/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_6/simple_rnn_cell_6/kernel/v*
_output_shapes

:@*
dtype0
È
6Adam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*G
shared_name86Adam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/v
Á
JAdam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/v*
_output_shapes

:@@*
dtype0
¬
*Adam/simple_rnn_6/simple_rnn_cell_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/simple_rnn_6/simple_rnn_cell_6/bias/v
¥
>Adam/simple_rnn_6/simple_rnn_cell_6/bias/v/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_6/simple_rnn_cell_6/bias/v*
_output_shapes
:@*
dtype0
µ
,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@à*=
shared_name.,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/v
®
@Adam/simple_rnn_7/simple_rnn_cell_7/kernel/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/v*
_output_shapes
:	@à*
dtype0
Ê
6Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
àà*G
shared_name86Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/v
Ã
JAdam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/v* 
_output_shapes
:
àà*
dtype0
­
*Adam/simple_rnn_7/simple_rnn_cell_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:à*;
shared_name,*Adam/simple_rnn_7/simple_rnn_cell_7/bias/v
¦
>Adam/simple_rnn_7/simple_rnn_cell_7/bias/v/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_7/simple_rnn_cell_7/bias/v*
_output_shapes	
:à*
dtype0

NoOpNoOp
Ê>
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*>
valueû=Bø= Bñ=
Á
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures*
ª
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
ª
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses*
Ô
%iter

&beta_1

'beta_2
	(decay
)learning_ratemjmk*ml+mm,mn-mo.mp/mqvrvs*vt+vu,vv-vw.vx/vy*
<
*0
+1
,2
-3
.4
/5
6
7*
<
*0
+1
,2
-3
.4
/5
6
7*
* 
°
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
* 
* 
* 

5serving_default* 
Ó

*kernel
+recurrent_kernel
,bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:_random_generator
;__call__
*<&call_and_return_all_conditional_losses*
* 

*0
+1
,2*

*0
+1
,2*
* 


=states
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
Ó

-kernel
.recurrent_kernel
/bias
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G_random_generator
H__call__
*I&call_and_return_all_conditional_losses*
* 

-0
.1
/2*

-0
.1
/2*
* 


Jstates
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%simple_rnn_6/simple_rnn_cell_6/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#simple_rnn_6/simple_rnn_cell_6/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%simple_rnn_7/simple_rnn_cell_7/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#simple_rnn_7/simple_rnn_cell_7/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

U0
V1*
* 
* 
* 

*0
+1
,2*

*0
+1
,2*
* 

Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
6	variables
7trainable_variables
8regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
* 
* 
* 

-0
.1
/2*

-0
.1
/2*
* 

\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
8
	atotal
	bcount
c	variables
d	keras_api*
H
	etotal
	fcount
g
_fn_kwargs
h	variables
i	keras_api*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

a0
b1*

c	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

e0
f1*

h	variables*
{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/simple_rnn_6/simple_rnn_cell_6/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE6Adam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE*Adam/simple_rnn_6/simple_rnn_cell_6/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE6Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE*Adam/simple_rnn_7/simple_rnn_cell_7/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/simple_rnn_6/simple_rnn_cell_6/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE6Adam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE*Adam/simple_rnn_6/simple_rnn_cell_6/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE6Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE*Adam/simple_rnn_7/simple_rnn_cell_7/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

"serving_default_simple_rnn_6_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
å
StatefulPartitionedCallStatefulPartitionedCall"serving_default_simple_rnn_6_input%simple_rnn_6/simple_rnn_cell_6/kernel#simple_rnn_6/simple_rnn_cell_6/bias/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel%simple_rnn_7/simple_rnn_cell_7/kernel#simple_rnn_7/simple_rnn_cell_7/bias/simple_rnn_7/simple_rnn_cell_7/recurrent_kerneldense_3/kerneldense_3/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_110008
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
í
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp9simple_rnn_6/simple_rnn_cell_6/kernel/Read/ReadVariableOpCsimple_rnn_6/simple_rnn_cell_6/recurrent_kernel/Read/ReadVariableOp7simple_rnn_6/simple_rnn_cell_6/bias/Read/ReadVariableOp9simple_rnn_7/simple_rnn_cell_7/kernel/Read/ReadVariableOpCsimple_rnn_7/simple_rnn_cell_7/recurrent_kernel/Read/ReadVariableOp7simple_rnn_7/simple_rnn_cell_7/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp@Adam/simple_rnn_6/simple_rnn_cell_6/kernel/m/Read/ReadVariableOpJAdam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/m/Read/ReadVariableOp>Adam/simple_rnn_6/simple_rnn_cell_6/bias/m/Read/ReadVariableOp@Adam/simple_rnn_7/simple_rnn_cell_7/kernel/m/Read/ReadVariableOpJAdam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/m/Read/ReadVariableOp>Adam/simple_rnn_7/simple_rnn_cell_7/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOp@Adam/simple_rnn_6/simple_rnn_cell_6/kernel/v/Read/ReadVariableOpJAdam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/v/Read/ReadVariableOp>Adam/simple_rnn_6/simple_rnn_cell_6/bias/v/Read/ReadVariableOp@Adam/simple_rnn_7/simple_rnn_cell_7/kernel/v/Read/ReadVariableOpJAdam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/v/Read/ReadVariableOp>Adam/simple_rnn_7/simple_rnn_cell_7/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_save_111226
Ô

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_3/kerneldense_3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate%simple_rnn_6/simple_rnn_cell_6/kernel/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel#simple_rnn_6/simple_rnn_cell_6/bias%simple_rnn_7/simple_rnn_cell_7/kernel/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel#simple_rnn_7/simple_rnn_cell_7/biastotalcounttotal_1count_1Adam/dense_3/kernel/mAdam/dense_3/bias/m,Adam/simple_rnn_6/simple_rnn_cell_6/kernel/m6Adam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/m*Adam/simple_rnn_6/simple_rnn_cell_6/bias/m,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/m6Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/m*Adam/simple_rnn_7/simple_rnn_cell_7/bias/mAdam/dense_3/kernel/vAdam/dense_3/bias/v,Adam/simple_rnn_6/simple_rnn_cell_6/kernel/v6Adam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/v*Adam/simple_rnn_6/simple_rnn_cell_6/bias/v,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/v6Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/v*Adam/simple_rnn_7/simple_rnn_cell_7/bias/v*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_111335º½
½,
È
while_body_108871
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_6_matmul_readvariableop_resource_0:@G
9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_6_matmul_readvariableop_resource:@E
7while_simple_rnn_cell_6_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_6_matmul_1_readvariableop_resource:@@¢.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_6/MatMul/ReadVariableOp¢/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¦
-while/simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_6_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0Ã
while/simple_rnn_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¾
while/simple_rnn_cell_6/BiasAddBiasAdd(while/simple_rnn_cell_6/MatMul:product:06while/simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ª
 while/simple_rnn_cell_6/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/simple_rnn_cell_6/addAddV2(while/simple_rnn_cell_6/BiasAdd:output:0*while/simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/simple_rnn_cell_6/TanhTanhwhile/simple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@É
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_6/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ}
while/Identity_4Identity while/simple_rnn_cell_6/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ß

while/NoOpNoOp/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_6_biasadd_readvariableop_resource9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_6_matmul_1_readvariableop_resource:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_6_matmul_readvariableop_resource8while_simple_rnn_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2`
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_6/MatMul/ReadVariableOp-while/simple_rnn_cell_6/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
Ú
ª
while_cond_110093
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_110093___redundant_placeholder04
0while_while_cond_110093___redundant_placeholder14
0while_while_cond_110093___redundant_placeholder24
0while_while_cond_110093___redundant_placeholder3
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
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
¼=
¿
H__inference_simple_rnn_7_layer_call_and_return_conditional_losses_109228

inputsC
0simple_rnn_cell_7_matmul_readvariableop_resource:	@à@
1simple_rnn_cell_7_biasadd_readvariableop_resource:	àF
2simple_rnn_cell_7_matmul_1_readvariableop_resource:
àà
identity¢(simple_rnn_cell_7/BiasAdd/ReadVariableOp¢'simple_rnn_cell_7/MatMul/ReadVariableOp¢)simple_rnn_cell_7/MatMul_1/ReadVariableOp¢while;
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :às
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
:ÿÿÿÿÿÿÿÿÿàc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@D
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
'simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_7_matmul_readvariableop_resource*
_output_shapes
:	@à*
dtype0 
simple_rnn_cell_7/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
(simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:à*
dtype0­
simple_rnn_cell_7/BiasAddBiasAdd"simple_rnn_cell_7/MatMul:product:00simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
)simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_7_matmul_1_readvariableop_resource* 
_output_shapes
:
àà*
dtype0
simple_rnn_cell_7/MatMul_1MatMulzeros:output:01simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
simple_rnn_cell_7/addAddV2"simple_rnn_cell_7/BiasAdd:output:0$simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàl
simple_rnn_cell_7/TanhTanhsimple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿà   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ú
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_7_matmul_readvariableop_resource1simple_rnn_cell_7_biasadd_readvariableop_resource2simple_rnn_cell_7_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_109162*
condR
while_cond_109161*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿà   Ã
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿàh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàÏ
NoOpNoOp)^simple_rnn_cell_7/BiasAdd/ReadVariableOp(^simple_rnn_cell_7/MatMul/ReadVariableOp*^simple_rnn_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 2T
(simple_rnn_cell_7/BiasAdd/ReadVariableOp(simple_rnn_cell_7/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_7/MatMul/ReadVariableOp'simple_rnn_cell_7/MatMul/ReadVariableOp2V
)simple_rnn_cell_7/MatMul_1/ReadVariableOp)simple_rnn_cell_7/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
½,
È
while_body_109292
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_6_matmul_readvariableop_resource_0:@G
9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_6_matmul_readvariableop_resource:@E
7while_simple_rnn_cell_6_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_6_matmul_1_readvariableop_resource:@@¢.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_6/MatMul/ReadVariableOp¢/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¦
-while/simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_6_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0Ã
while/simple_rnn_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¾
while/simple_rnn_cell_6/BiasAddBiasAdd(while/simple_rnn_cell_6/MatMul:product:06while/simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ª
 while/simple_rnn_cell_6/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/simple_rnn_cell_6/addAddV2(while/simple_rnn_cell_6/BiasAdd:output:0*while/simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/simple_rnn_cell_6/TanhTanhwhile/simple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@É
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_6/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ}
while/Identity_4Identity while/simple_rnn_cell_6/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ß

while/NoOpNoOp/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_6_biasadd_readvariableop_resource9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_6_matmul_1_readvariableop_resource:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_6_matmul_readvariableop_resource8while_simple_rnn_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2`
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_6/MatMul/ReadVariableOp-while/simple_rnn_cell_6/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 

î
M__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_111087

inputs
states_01
matmul_readvariableop_resource:	@à.
biasadd_readvariableop_resource:	à4
 matmul_1_readvariableop_resource:
àà
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@à*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:à*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
àà*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàe
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàH
TanhTanhadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàX
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàZ

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿà: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
"
_user_specified_name
states/0
°
¹
-__inference_simple_rnn_6_layer_call_fn_110030
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@@
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_6_layer_call_and_return_conditional_losses_108522|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
º

¡
simple_rnn_6_while_cond_1095886
2simple_rnn_6_while_simple_rnn_6_while_loop_counter<
8simple_rnn_6_while_simple_rnn_6_while_maximum_iterations"
simple_rnn_6_while_placeholder$
 simple_rnn_6_while_placeholder_1$
 simple_rnn_6_while_placeholder_28
4simple_rnn_6_while_less_simple_rnn_6_strided_slice_1N
Jsimple_rnn_6_while_simple_rnn_6_while_cond_109588___redundant_placeholder0N
Jsimple_rnn_6_while_simple_rnn_6_while_cond_109588___redundant_placeholder1N
Jsimple_rnn_6_while_simple_rnn_6_while_cond_109588___redundant_placeholder2N
Jsimple_rnn_6_while_simple_rnn_6_while_cond_109588___redundant_placeholder3
simple_rnn_6_while_identity

simple_rnn_6/while/LessLesssimple_rnn_6_while_placeholder4simple_rnn_6_while_less_simple_rnn_6_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_6/while/IdentityIdentitysimple_rnn_6/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_6_while_identity$simple_rnn_6/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
¦
­
"__inference__traced_restore_111335
file_prefix2
assignvariableop_dense_3_kernel:	à!-
assignvariableop_1_dense_3_bias:!&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: J
8assignvariableop_7_simple_rnn_6_simple_rnn_cell_6_kernel:@T
Bassignvariableop_8_simple_rnn_6_simple_rnn_cell_6_recurrent_kernel:@@D
6assignvariableop_9_simple_rnn_6_simple_rnn_cell_6_bias:@L
9assignvariableop_10_simple_rnn_7_simple_rnn_cell_7_kernel:	@àW
Cassignvariableop_11_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel:
ààF
7assignvariableop_12_simple_rnn_7_simple_rnn_cell_7_bias:	à#
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: <
)assignvariableop_17_adam_dense_3_kernel_m:	à!5
'assignvariableop_18_adam_dense_3_bias_m:!R
@assignvariableop_19_adam_simple_rnn_6_simple_rnn_cell_6_kernel_m:@\
Jassignvariableop_20_adam_simple_rnn_6_simple_rnn_cell_6_recurrent_kernel_m:@@L
>assignvariableop_21_adam_simple_rnn_6_simple_rnn_cell_6_bias_m:@S
@assignvariableop_22_adam_simple_rnn_7_simple_rnn_cell_7_kernel_m:	@à^
Jassignvariableop_23_adam_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_m:
ààM
>assignvariableop_24_adam_simple_rnn_7_simple_rnn_cell_7_bias_m:	à<
)assignvariableop_25_adam_dense_3_kernel_v:	à!5
'assignvariableop_26_adam_dense_3_bias_v:!R
@assignvariableop_27_adam_simple_rnn_6_simple_rnn_cell_6_kernel_v:@\
Jassignvariableop_28_adam_simple_rnn_6_simple_rnn_cell_6_recurrent_kernel_v:@@L
>assignvariableop_29_adam_simple_rnn_6_simple_rnn_cell_6_bias_v:@S
@assignvariableop_30_adam_simple_rnn_7_simple_rnn_cell_7_kernel_v:	@à^
Jassignvariableop_31_adam_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_v:
ààM
>assignvariableop_32_adam_simple_rnn_7_simple_rnn_cell_7_bias_v:	à
identity_34¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9¤
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*Ê
valueÀB½"B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH´
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ë
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_dense_3_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_3_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_7AssignVariableOp8assignvariableop_7_simple_rnn_6_simple_rnn_cell_6_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_8AssignVariableOpBassignvariableop_8_simple_rnn_6_simple_rnn_cell_6_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_9AssignVariableOp6assignvariableop_9_simple_rnn_6_simple_rnn_cell_6_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_10AssignVariableOp9assignvariableop_10_simple_rnn_7_simple_rnn_cell_7_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:´
AssignVariableOp_11AssignVariableOpCassignvariableop_11_simple_rnn_7_simple_rnn_cell_7_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_12AssignVariableOp7assignvariableop_12_simple_rnn_7_simple_rnn_cell_7_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_3_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp'assignvariableop_18_adam_dense_3_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_19AssignVariableOp@assignvariableop_19_adam_simple_rnn_6_simple_rnn_cell_6_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_20AssignVariableOpJassignvariableop_20_adam_simple_rnn_6_simple_rnn_cell_6_recurrent_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_21AssignVariableOp>assignvariableop_21_adam_simple_rnn_6_simple_rnn_cell_6_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_22AssignVariableOp@assignvariableop_22_adam_simple_rnn_7_simple_rnn_cell_7_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_23AssignVariableOpJassignvariableop_23_adam_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_24AssignVariableOp>assignvariableop_24_adam_simple_rnn_7_simple_rnn_cell_7_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_3_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_3_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_simple_rnn_6_simple_rnn_cell_6_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_28AssignVariableOpJassignvariableop_28_adam_simple_rnn_6_simple_rnn_cell_6_recurrent_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_29AssignVariableOp>assignvariableop_29_adam_simple_rnn_6_simple_rnn_cell_6_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_30AssignVariableOp@assignvariableop_30_adam_simple_rnn_7_simple_rnn_cell_7_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_31AssignVariableOpJassignvariableop_31_adam_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_32AssignVariableOp>assignvariableop_32_adam_simple_rnn_7_simple_rnn_cell_7_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ¥
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: 
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
4

H__inference_simple_rnn_6_layer_call_and_return_conditional_losses_108522

inputs*
simple_rnn_cell_6_108447:@&
simple_rnn_cell_6_108449:@*
simple_rnn_cell_6_108451:@@
identity¢)simple_rnn_cell_6/StatefulPartitionedCall¢while;
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
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
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskç
)simple_rnn_cell_6/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_6_108447simple_rnn_cell_6_108449simple_rnn_cell_6_108451*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_6_layer_call_and_return_conditional_losses_108407n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_6_108447simple_rnn_cell_6_108449simple_rnn_cell_6_108451*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_108459*
condR
while_cond_108458*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@z
NoOpNoOp*^simple_rnn_cell_6/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2V
)simple_rnn_cell_6/StatefulPartitionedCall)simple_rnn_cell_6/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
û	
Ñ
-__inference_sequential_3_layer_call_fn_109097
simple_rnn_6_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:	@à
	unknown_3:	à
	unknown_4:
àà
	unknown_5:	à!
	unknown_6:!
identity¢StatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_109078o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namesimple_rnn_6_input
Ë	
È
$__inference_signature_wrapper_110008
simple_rnn_6_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:	@à
	unknown_3:	à
	unknown_4:
àà
	unknown_5:	à!
	unknown_6:!
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_108239o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namesimple_rnn_6_input
»³
Ë

!__inference__wrapped_model_108239
simple_rnn_6_input\
Jsequential_3_simple_rnn_6_simple_rnn_cell_6_matmul_readvariableop_resource:@Y
Ksequential_3_simple_rnn_6_simple_rnn_cell_6_biasadd_readvariableop_resource:@^
Lsequential_3_simple_rnn_6_simple_rnn_cell_6_matmul_1_readvariableop_resource:@@]
Jsequential_3_simple_rnn_7_simple_rnn_cell_7_matmul_readvariableop_resource:	@àZ
Ksequential_3_simple_rnn_7_simple_rnn_cell_7_biasadd_readvariableop_resource:	à`
Lsequential_3_simple_rnn_7_simple_rnn_cell_7_matmul_1_readvariableop_resource:
ààF
3sequential_3_dense_3_matmul_readvariableop_resource:	à!B
4sequential_3_dense_3_biasadd_readvariableop_resource:!
identity¢+sequential_3/dense_3/BiasAdd/ReadVariableOp¢*sequential_3/dense_3/MatMul/ReadVariableOp¢Bsequential_3/simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOp¢Asequential_3/simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOp¢Csequential_3/simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOp¢sequential_3/simple_rnn_6/while¢Bsequential_3/simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp¢Asequential_3/simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp¢Csequential_3/simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp¢sequential_3/simple_rnn_7/whilea
sequential_3/simple_rnn_6/ShapeShapesimple_rnn_6_input*
T0*
_output_shapes
:w
-sequential_3/simple_rnn_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_3/simple_rnn_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_3/simple_rnn_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'sequential_3/simple_rnn_6/strided_sliceStridedSlice(sequential_3/simple_rnn_6/Shape:output:06sequential_3/simple_rnn_6/strided_slice/stack:output:08sequential_3/simple_rnn_6/strided_slice/stack_1:output:08sequential_3/simple_rnn_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(sequential_3/simple_rnn_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@Á
&sequential_3/simple_rnn_6/zeros/packedPack0sequential_3/simple_rnn_6/strided_slice:output:01sequential_3/simple_rnn_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_3/simple_rnn_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    º
sequential_3/simple_rnn_6/zerosFill/sequential_3/simple_rnn_6/zeros/packed:output:0.sequential_3/simple_rnn_6/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
(sequential_3/simple_rnn_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ­
#sequential_3/simple_rnn_6/transpose	Transposesimple_rnn_6_input1sequential_3/simple_rnn_6/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
!sequential_3/simple_rnn_6/Shape_1Shape'sequential_3/simple_rnn_6/transpose:y:0*
T0*
_output_shapes
:y
/sequential_3/simple_rnn_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_3/simple_rnn_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_3/simple_rnn_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ý
)sequential_3/simple_rnn_6/strided_slice_1StridedSlice*sequential_3/simple_rnn_6/Shape_1:output:08sequential_3/simple_rnn_6/strided_slice_1/stack:output:0:sequential_3/simple_rnn_6/strided_slice_1/stack_1:output:0:sequential_3/simple_rnn_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
5sequential_3/simple_rnn_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
'sequential_3/simple_rnn_6/TensorArrayV2TensorListReserve>sequential_3/simple_rnn_6/TensorArrayV2/element_shape:output:02sequential_3/simple_rnn_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ 
Osequential_3/simple_rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ®
Asequential_3/simple_rnn_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor'sequential_3/simple_rnn_6/transpose:y:0Xsequential_3/simple_rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒy
/sequential_3/simple_rnn_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_3/simple_rnn_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_3/simple_rnn_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ë
)sequential_3/simple_rnn_6/strided_slice_2StridedSlice'sequential_3/simple_rnn_6/transpose:y:08sequential_3/simple_rnn_6/strided_slice_2/stack:output:0:sequential_3/simple_rnn_6/strided_slice_2/stack_1:output:0:sequential_3/simple_rnn_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskÌ
Asequential_3/simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOpJsequential_3_simple_rnn_6_simple_rnn_cell_6_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0í
2sequential_3/simple_rnn_6/simple_rnn_cell_6/MatMulMatMul2sequential_3/simple_rnn_6/strided_slice_2:output:0Isequential_3/simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ê
Bsequential_3/simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOpKsequential_3_simple_rnn_6_simple_rnn_cell_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ú
3sequential_3/simple_rnn_6/simple_rnn_cell_6/BiasAddBiasAdd<sequential_3/simple_rnn_6/simple_rnn_cell_6/MatMul:product:0Jsequential_3/simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ð
Csequential_3/simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOpLsequential_3_simple_rnn_6_simple_rnn_cell_6_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0ç
4sequential_3/simple_rnn_6/simple_rnn_cell_6/MatMul_1MatMul(sequential_3/simple_rnn_6/zeros:output:0Ksequential_3/simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@è
/sequential_3/simple_rnn_6/simple_rnn_cell_6/addAddV2<sequential_3/simple_rnn_6/simple_rnn_cell_6/BiasAdd:output:0>sequential_3/simple_rnn_6/simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
0sequential_3/simple_rnn_6/simple_rnn_cell_6/TanhTanh3sequential_3/simple_rnn_6/simple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
7sequential_3/simple_rnn_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
)sequential_3/simple_rnn_6/TensorArrayV2_1TensorListReserve@sequential_3/simple_rnn_6/TensorArrayV2_1/element_shape:output:02sequential_3/simple_rnn_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ`
sequential_3/simple_rnn_6/timeConst*
_output_shapes
: *
dtype0*
value	B : }
2sequential_3/simple_rnn_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿn
,sequential_3/simple_rnn_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ª
sequential_3/simple_rnn_6/whileWhile5sequential_3/simple_rnn_6/while/loop_counter:output:0;sequential_3/simple_rnn_6/while/maximum_iterations:output:0'sequential_3/simple_rnn_6/time:output:02sequential_3/simple_rnn_6/TensorArrayV2_1:handle:0(sequential_3/simple_rnn_6/zeros:output:02sequential_3/simple_rnn_6/strided_slice_1:output:0Qsequential_3/simple_rnn_6/TensorArrayUnstack/TensorListFromTensor:output_handle:0Jsequential_3_simple_rnn_6_simple_rnn_cell_6_matmul_readvariableop_resourceKsequential_3_simple_rnn_6_simple_rnn_cell_6_biasadd_readvariableop_resourceLsequential_3_simple_rnn_6_simple_rnn_cell_6_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *7
body/R-
+sequential_3_simple_rnn_6_while_body_108062*7
cond/R-
+sequential_3_simple_rnn_6_while_cond_108061*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
Jsequential_3/simple_rnn_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
<sequential_3/simple_rnn_6/TensorArrayV2Stack/TensorListStackTensorListStack(sequential_3/simple_rnn_6/while:output:3Ssequential_3/simple_rnn_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0
/sequential_3/simple_rnn_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1sequential_3/simple_rnn_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: {
1sequential_3/simple_rnn_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
)sequential_3/simple_rnn_6/strided_slice_3StridedSliceEsequential_3/simple_rnn_6/TensorArrayV2Stack/TensorListStack:tensor:08sequential_3/simple_rnn_6/strided_slice_3/stack:output:0:sequential_3/simple_rnn_6/strided_slice_3/stack_1:output:0:sequential_3/simple_rnn_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
*sequential_3/simple_rnn_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ä
%sequential_3/simple_rnn_6/transpose_1	TransposeEsequential_3/simple_rnn_6/TensorArrayV2Stack/TensorListStack:tensor:03sequential_3/simple_rnn_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
sequential_3/simple_rnn_7/ShapeShape)sequential_3/simple_rnn_6/transpose_1:y:0*
T0*
_output_shapes
:w
-sequential_3/simple_rnn_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_3/simple_rnn_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_3/simple_rnn_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'sequential_3/simple_rnn_7/strided_sliceStridedSlice(sequential_3/simple_rnn_7/Shape:output:06sequential_3/simple_rnn_7/strided_slice/stack:output:08sequential_3/simple_rnn_7/strided_slice/stack_1:output:08sequential_3/simple_rnn_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
(sequential_3/simple_rnn_7/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :àÁ
&sequential_3/simple_rnn_7/zeros/packedPack0sequential_3/simple_rnn_7/strided_slice:output:01sequential_3/simple_rnn_7/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_3/simple_rnn_7/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    »
sequential_3/simple_rnn_7/zerosFill/sequential_3/simple_rnn_7/zeros/packed:output:0.sequential_3/simple_rnn_7/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà}
(sequential_3/simple_rnn_7/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ä
#sequential_3/simple_rnn_7/transpose	Transpose)sequential_3/simple_rnn_6/transpose_1:y:01sequential_3/simple_rnn_7/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
!sequential_3/simple_rnn_7/Shape_1Shape'sequential_3/simple_rnn_7/transpose:y:0*
T0*
_output_shapes
:y
/sequential_3/simple_rnn_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_3/simple_rnn_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_3/simple_rnn_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ý
)sequential_3/simple_rnn_7/strided_slice_1StridedSlice*sequential_3/simple_rnn_7/Shape_1:output:08sequential_3/simple_rnn_7/strided_slice_1/stack:output:0:sequential_3/simple_rnn_7/strided_slice_1/stack_1:output:0:sequential_3/simple_rnn_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
5sequential_3/simple_rnn_7/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
'sequential_3/simple_rnn_7/TensorArrayV2TensorListReserve>sequential_3/simple_rnn_7/TensorArrayV2/element_shape:output:02sequential_3/simple_rnn_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ 
Osequential_3/simple_rnn_7/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ®
Asequential_3/simple_rnn_7/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor'sequential_3/simple_rnn_7/transpose:y:0Xsequential_3/simple_rnn_7/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒy
/sequential_3/simple_rnn_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_3/simple_rnn_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_3/simple_rnn_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ë
)sequential_3/simple_rnn_7/strided_slice_2StridedSlice'sequential_3/simple_rnn_7/transpose:y:08sequential_3/simple_rnn_7/strided_slice_2/stack:output:0:sequential_3/simple_rnn_7/strided_slice_2/stack_1:output:0:sequential_3/simple_rnn_7/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskÍ
Asequential_3/simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOpJsequential_3_simple_rnn_7_simple_rnn_cell_7_matmul_readvariableop_resource*
_output_shapes
:	@à*
dtype0î
2sequential_3/simple_rnn_7/simple_rnn_cell_7/MatMulMatMul2sequential_3/simple_rnn_7/strided_slice_2:output:0Isequential_3/simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàË
Bsequential_3/simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOpKsequential_3_simple_rnn_7_simple_rnn_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:à*
dtype0û
3sequential_3/simple_rnn_7/simple_rnn_cell_7/BiasAddBiasAdd<sequential_3/simple_rnn_7/simple_rnn_cell_7/MatMul:product:0Jsequential_3/simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàÒ
Csequential_3/simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOpLsequential_3_simple_rnn_7_simple_rnn_cell_7_matmul_1_readvariableop_resource* 
_output_shapes
:
àà*
dtype0è
4sequential_3/simple_rnn_7/simple_rnn_cell_7/MatMul_1MatMul(sequential_3/simple_rnn_7/zeros:output:0Ksequential_3/simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàé
/sequential_3/simple_rnn_7/simple_rnn_cell_7/addAddV2<sequential_3/simple_rnn_7/simple_rnn_cell_7/BiasAdd:output:0>sequential_3/simple_rnn_7/simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà 
0sequential_3/simple_rnn_7/simple_rnn_cell_7/TanhTanh3sequential_3/simple_rnn_7/simple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
7sequential_3/simple_rnn_7/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿà   
)sequential_3/simple_rnn_7/TensorArrayV2_1TensorListReserve@sequential_3/simple_rnn_7/TensorArrayV2_1/element_shape:output:02sequential_3/simple_rnn_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ`
sequential_3/simple_rnn_7/timeConst*
_output_shapes
: *
dtype0*
value	B : }
2sequential_3/simple_rnn_7/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿn
,sequential_3/simple_rnn_7/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¬
sequential_3/simple_rnn_7/whileWhile5sequential_3/simple_rnn_7/while/loop_counter:output:0;sequential_3/simple_rnn_7/while/maximum_iterations:output:0'sequential_3/simple_rnn_7/time:output:02sequential_3/simple_rnn_7/TensorArrayV2_1:handle:0(sequential_3/simple_rnn_7/zeros:output:02sequential_3/simple_rnn_7/strided_slice_1:output:0Qsequential_3/simple_rnn_7/TensorArrayUnstack/TensorListFromTensor:output_handle:0Jsequential_3_simple_rnn_7_simple_rnn_cell_7_matmul_readvariableop_resourceKsequential_3_simple_rnn_7_simple_rnn_cell_7_biasadd_readvariableop_resourceLsequential_3_simple_rnn_7_simple_rnn_cell_7_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *7
body/R-
+sequential_3_simple_rnn_7_while_body_108166*7
cond/R-
+sequential_3_simple_rnn_7_while_cond_108165*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : *
parallel_iterations 
Jsequential_3/simple_rnn_7/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿà   
<sequential_3/simple_rnn_7/TensorArrayV2Stack/TensorListStackTensorListStack(sequential_3/simple_rnn_7/while:output:3Ssequential_3/simple_rnn_7/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*
element_dtype0
/sequential_3/simple_rnn_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1sequential_3/simple_rnn_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: {
1sequential_3/simple_rnn_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
)sequential_3/simple_rnn_7/strided_slice_3StridedSliceEsequential_3/simple_rnn_7/TensorArrayV2Stack/TensorListStack:tensor:08sequential_3/simple_rnn_7/strided_slice_3/stack:output:0:sequential_3/simple_rnn_7/strided_slice_3/stack_1:output:0:sequential_3/simple_rnn_7/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*
shrink_axis_mask
*sequential_3/simple_rnn_7/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          å
%sequential_3/simple_rnn_7/transpose_1	TransposeEsequential_3/simple_rnn_7/TensorArrayV2Stack/TensorListStack:tensor:03sequential_3/simple_rnn_7/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
*sequential_3/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_3_matmul_readvariableop_resource*
_output_shapes
:	à!*
dtype0¿
sequential_3/dense_3/MatMulMatMul2sequential_3/simple_rnn_7/strided_slice_3:output:02sequential_3/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
+sequential_3/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_3_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype0µ
sequential_3/dense_3/BiasAddBiasAdd%sequential_3/dense_3/MatMul:product:03sequential_3/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
sequential_3/dense_3/SoftmaxSoftmax%sequential_3/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!u
IdentityIdentity&sequential_3/dense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
NoOpNoOp,^sequential_3/dense_3/BiasAdd/ReadVariableOp+^sequential_3/dense_3/MatMul/ReadVariableOpC^sequential_3/simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOpB^sequential_3/simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOpD^sequential_3/simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOp ^sequential_3/simple_rnn_6/whileC^sequential_3/simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOpB^sequential_3/simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOpD^sequential_3/simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp ^sequential_3/simple_rnn_7/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2Z
+sequential_3/dense_3/BiasAdd/ReadVariableOp+sequential_3/dense_3/BiasAdd/ReadVariableOp2X
*sequential_3/dense_3/MatMul/ReadVariableOp*sequential_3/dense_3/MatMul/ReadVariableOp2
Bsequential_3/simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOpBsequential_3/simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOp2
Asequential_3/simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOpAsequential_3/simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOp2
Csequential_3/simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOpCsequential_3/simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOp2B
sequential_3/simple_rnn_6/whilesequential_3/simple_rnn_6/while2
Bsequential_3/simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOpBsequential_3/simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp2
Asequential_3/simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOpAsequential_3/simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp2
Csequential_3/simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOpCsequential_3/simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp2B
sequential_3/simple_rnn_7/whilesequential_3/simple_rnn_7/while:_ [
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namesimple_rnn_6_input
ñ=
Á
H__inference_simple_rnn_7_layer_call_and_return_conditional_losses_110636
inputs_0C
0simple_rnn_cell_7_matmul_readvariableop_resource:	@à@
1simple_rnn_cell_7_biasadd_readvariableop_resource:	àF
2simple_rnn_cell_7_matmul_1_readvariableop_resource:
àà
identity¢(simple_rnn_cell_7/BiasAdd/ReadVariableOp¢'simple_rnn_cell_7/MatMul/ReadVariableOp¢)simple_rnn_cell_7/MatMul_1/ReadVariableOp¢while=
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :às
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
:ÿÿÿÿÿÿÿÿÿàc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@D
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
'simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_7_matmul_readvariableop_resource*
_output_shapes
:	@à*
dtype0 
simple_rnn_cell_7/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
(simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:à*
dtype0­
simple_rnn_cell_7/BiasAddBiasAdd"simple_rnn_cell_7/MatMul:product:00simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
)simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_7_matmul_1_readvariableop_resource* 
_output_shapes
:
àà*
dtype0
simple_rnn_cell_7/MatMul_1MatMulzeros:output:01simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
simple_rnn_cell_7/addAddV2"simple_rnn_cell_7/BiasAdd:output:0$simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàl
simple_rnn_cell_7/TanhTanhsimple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿà   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ú
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_7_matmul_readvariableop_resource1simple_rnn_cell_7_biasadd_readvariableop_resource2simple_rnn_cell_7_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_110570*
condR
while_cond_110569*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿà   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿàh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàÏ
NoOpNoOp)^simple_rnn_cell_7/BiasAdd/ReadVariableOp(^simple_rnn_cell_7/MatMul/ReadVariableOp*^simple_rnn_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2T
(simple_rnn_cell_7/BiasAdd/ReadVariableOp(simple_rnn_cell_7/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_7/MatMul/ReadVariableOp'simple_rnn_cell_7/MatMul/ReadVariableOp2V
)simple_rnn_cell_7/MatMul_1/ReadVariableOp)simple_rnn_cell_7/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
¼

¡
simple_rnn_7_while_cond_1096926
2simple_rnn_7_while_simple_rnn_7_while_loop_counter<
8simple_rnn_7_while_simple_rnn_7_while_maximum_iterations"
simple_rnn_7_while_placeholder$
 simple_rnn_7_while_placeholder_1$
 simple_rnn_7_while_placeholder_28
4simple_rnn_7_while_less_simple_rnn_7_strided_slice_1N
Jsimple_rnn_7_while_simple_rnn_7_while_cond_109692___redundant_placeholder0N
Jsimple_rnn_7_while_simple_rnn_7_while_cond_109692___redundant_placeholder1N
Jsimple_rnn_7_while_simple_rnn_7_while_cond_109692___redundant_placeholder2N
Jsimple_rnn_7_while_simple_rnn_7_while_cond_109692___redundant_placeholder3
simple_rnn_7_while_identity

simple_rnn_7/while/LessLesssimple_rnn_7_while_placeholder4simple_rnn_7_while_less_simple_rnn_7_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_7/while/IdentityIdentitysimple_rnn_7/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_7_while_identity$simple_rnn_7/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿà: ::::: 
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
:ÿÿÿÿÿÿÿÿÿà:

_output_shapes
: :

_output_shapes
:
×	
Å
-__inference_sequential_3_layer_call_fn_109526

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:	@à
	unknown_3:	à
	unknown_4:
àà
	unknown_5:	à!
	unknown_6:!
identity¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_109078o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ,
Ð
while_body_110894
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
8while_simple_rnn_cell_7_matmul_readvariableop_resource_0:	@àH
9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0:	àN
:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0:
àà
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
6while_simple_rnn_cell_7_matmul_readvariableop_resource:	@àF
7while_simple_rnn_cell_7_biasadd_readvariableop_resource:	àL
8while_simple_rnn_cell_7_matmul_1_readvariableop_resource:
àà¢.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_7/MatMul/ReadVariableOp¢/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0§
-while/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_7_matmul_readvariableop_resource_0*
_output_shapes
:	@à*
dtype0Ä
while/simple_rnn_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà¥
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:à*
dtype0¿
while/simple_rnn_cell_7/BiasAddBiasAdd(while/simple_rnn_cell_7/MatMul:product:06while/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà¬
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0* 
_output_shapes
:
àà*
dtype0«
 while/simple_rnn_cell_7/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà­
while/simple_rnn_cell_7/addAddV2(while/simple_rnn_cell_7/BiasAdd:output:0*while/simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàx
while/simple_rnn_cell_7/TanhTanhwhile/simple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàÉ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_7/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ~
while/Identity_4Identity while/simple_rnn_cell_7/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàß

while/NoOpNoOp/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_7_biasadd_readvariableop_resource9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_7_matmul_1_readvariableop_resource:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_7_matmul_readvariableop_resource8while_simple_rnn_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : 2`
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_7/MatMul/ReadVariableOp-while/simple_rnn_cell_7/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿà:

_output_shapes
: :

_output_shapes
: 
æ8
Ö
simple_rnn_7_while_body_1099126
2simple_rnn_7_while_simple_rnn_7_while_loop_counter<
8simple_rnn_7_while_simple_rnn_7_while_maximum_iterations"
simple_rnn_7_while_placeholder$
 simple_rnn_7_while_placeholder_1$
 simple_rnn_7_while_placeholder_25
1simple_rnn_7_while_simple_rnn_7_strided_slice_1_0q
msimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensor_0X
Esimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource_0:	@àU
Fsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource_0:	à[
Gsimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0:
àà
simple_rnn_7_while_identity!
simple_rnn_7_while_identity_1!
simple_rnn_7_while_identity_2!
simple_rnn_7_while_identity_3!
simple_rnn_7_while_identity_43
/simple_rnn_7_while_simple_rnn_7_strided_slice_1o
ksimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensorV
Csimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource:	@àS
Dsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource:	àY
Esimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource:
àà¢;simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp¢:simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp¢<simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp
Dsimple_rnn_7/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ç
6simple_rnn_7/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_7_while_placeholderMsimple_rnn_7/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0Á
:simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource_0*
_output_shapes
:	@à*
dtype0ë
+simple_rnn_7/while/simple_rnn_cell_7/MatMulMatMul=simple_rnn_7/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà¿
;simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:à*
dtype0æ
,simple_rnn_7/while/simple_rnn_cell_7/BiasAddBiasAdd5simple_rnn_7/while/simple_rnn_cell_7/MatMul:product:0Csimple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàÆ
<simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0* 
_output_shapes
:
àà*
dtype0Ò
-simple_rnn_7/while/simple_rnn_cell_7/MatMul_1MatMul simple_rnn_7_while_placeholder_2Dsimple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàÔ
(simple_rnn_7/while/simple_rnn_cell_7/addAddV25simple_rnn_7/while/simple_rnn_cell_7/BiasAdd:output:07simple_rnn_7/while/simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
)simple_rnn_7/while/simple_rnn_cell_7/TanhTanh,simple_rnn_7/while/simple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàý
7simple_rnn_7/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_7_while_placeholder_1simple_rnn_7_while_placeholder-simple_rnn_7/while/simple_rnn_cell_7/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒZ
simple_rnn_7/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_7/while/addAddV2simple_rnn_7_while_placeholder!simple_rnn_7/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_7/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_7/while/add_1AddV22simple_rnn_7_while_simple_rnn_7_while_loop_counter#simple_rnn_7/while/add_1/y:output:0*
T0*
_output_shapes
: 
simple_rnn_7/while/IdentityIdentitysimple_rnn_7/while/add_1:z:0^simple_rnn_7/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_7/while/Identity_1Identity8simple_rnn_7_while_simple_rnn_7_while_maximum_iterations^simple_rnn_7/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_7/while/Identity_2Identitysimple_rnn_7/while/add:z:0^simple_rnn_7/while/NoOp*
T0*
_output_shapes
: À
simple_rnn_7/while/Identity_3IdentityGsimple_rnn_7/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_7/while/NoOp*
T0*
_output_shapes
: :éèÒ¥
simple_rnn_7/while/Identity_4Identity-simple_rnn_7/while/simple_rnn_cell_7/Tanh:y:0^simple_rnn_7/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
simple_rnn_7/while/NoOpNoOp<^simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp;^simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp=^simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_7_while_identity$simple_rnn_7/while/Identity:output:0"G
simple_rnn_7_while_identity_1&simple_rnn_7/while/Identity_1:output:0"G
simple_rnn_7_while_identity_2&simple_rnn_7/while/Identity_2:output:0"G
simple_rnn_7_while_identity_3&simple_rnn_7/while/Identity_3:output:0"G
simple_rnn_7_while_identity_4&simple_rnn_7/while/Identity_4:output:0"d
/simple_rnn_7_while_simple_rnn_7_strided_slice_11simple_rnn_7_while_simple_rnn_7_strided_slice_1_0"
Dsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resourceFsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource_0"
Esimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resourceGsimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0"
Csimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resourceEsimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource_0"Ü
ksimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensormsimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : 2z
;simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp;simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp2x
:simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp:simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp2|
<simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp<simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿà:

_output_shapes
: :

_output_shapes
: 
Ã

Þ
2__inference_simple_rnn_cell_7_layer_call_fn_111070

inputs
states_0
unknown:	@à
	unknown_0:	à
	unknown_1:
àà
identity

identity_1¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿà:ÿÿÿÿÿÿÿÿÿà*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_108699p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿà: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
"
_user_specified_name
states/0
¢=
»
H__inference_simple_rnn_6_layer_call_and_return_conditional_losses_108937

inputsB
0simple_rnn_cell_6_matmul_readvariableop_resource:@?
1simple_rnn_cell_6_biasadd_readvariableop_resource:@D
2simple_rnn_cell_6_matmul_1_readvariableop_resource:@@
identity¢(simple_rnn_cell_6/BiasAdd/ReadVariableOp¢'simple_rnn_cell_6/MatMul/ReadVariableOp¢)simple_rnn_cell_6/MatMul_1/ReadVariableOp¢while;
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
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
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
'simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_6_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
simple_rnn_cell_6/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¬
simple_rnn_cell_6/BiasAddBiasAdd"simple_rnn_cell_6/MatMul:product:00simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_6_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_6/MatMul_1MatMulzeros:output:01simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
simple_rnn_cell_6/addAddV2"simple_rnn_cell_6/BiasAdd:output:0$simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
simple_rnn_cell_6/TanhTanhsimple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ø
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_6_matmul_readvariableop_resource1simple_rnn_cell_6_biasadd_readvariableop_resource2simple_rnn_cell_6_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_108871*
condR
while_cond_108870*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ï
NoOpNoOp)^simple_rnn_cell_6/BiasAdd/ReadVariableOp(^simple_rnn_cell_6/MatMul/ReadVariableOp*^simple_rnn_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_6/BiasAdd/ReadVariableOp(simple_rnn_cell_6/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_6/MatMul/ReadVariableOp'simple_rnn_cell_6/MatMul/ReadVariableOp2V
)simple_rnn_cell_6/MatMul_1/ReadVariableOp)simple_rnn_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ü
H__inference_sequential_3_layer_call_and_return_conditional_losses_109985

inputsO
=simple_rnn_6_simple_rnn_cell_6_matmul_readvariableop_resource:@L
>simple_rnn_6_simple_rnn_cell_6_biasadd_readvariableop_resource:@Q
?simple_rnn_6_simple_rnn_cell_6_matmul_1_readvariableop_resource:@@P
=simple_rnn_7_simple_rnn_cell_7_matmul_readvariableop_resource:	@àM
>simple_rnn_7_simple_rnn_cell_7_biasadd_readvariableop_resource:	àS
?simple_rnn_7_simple_rnn_cell_7_matmul_1_readvariableop_resource:
àà9
&dense_3_matmul_readvariableop_resource:	à!5
'dense_3_biasadd_readvariableop_resource:!
identity¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp¢5simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOp¢4simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOp¢6simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOp¢simple_rnn_6/while¢5simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp¢4simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp¢6simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp¢simple_rnn_7/whileH
simple_rnn_6/ShapeShapeinputs*
T0*
_output_shapes
:j
 simple_rnn_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_6/strided_sliceStridedSlicesimple_rnn_6/Shape:output:0)simple_rnn_6/strided_slice/stack:output:0+simple_rnn_6/strided_slice/stack_1:output:0+simple_rnn_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
simple_rnn_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
simple_rnn_6/zeros/packedPack#simple_rnn_6/strided_slice:output:0$simple_rnn_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
simple_rnn_6/zerosFill"simple_rnn_6/zeros/packed:output:0!simple_rnn_6/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@p
simple_rnn_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
simple_rnn_6/transpose	Transposeinputs$simple_rnn_6/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
simple_rnn_6/Shape_1Shapesimple_rnn_6/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_6/strided_slice_1StridedSlicesimple_rnn_6/Shape_1:output:0+simple_rnn_6/strided_slice_1/stack:output:0-simple_rnn_6/strided_slice_1/stack_1:output:0-simple_rnn_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÛ
simple_rnn_6/TensorArrayV2TensorListReserve1simple_rnn_6/TensorArrayV2/element_shape:output:0%simple_rnn_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Bsimple_rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
4simple_rnn_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_6/transpose:y:0Ksimple_rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒl
"simple_rnn_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ª
simple_rnn_6/strided_slice_2StridedSlicesimple_rnn_6/transpose:y:0+simple_rnn_6/strided_slice_2/stack:output:0-simple_rnn_6/strided_slice_2/stack_1:output:0-simple_rnn_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask²
4simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOp=simple_rnn_6_simple_rnn_cell_6_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Æ
%simple_rnn_6/simple_rnn_cell_6/MatMulMatMul%simple_rnn_6/strided_slice_2:output:0<simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@°
5simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_6_simple_rnn_cell_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ó
&simple_rnn_6/simple_rnn_cell_6/BiasAddBiasAdd/simple_rnn_6/simple_rnn_cell_6/MatMul:product:0=simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¶
6simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_6_simple_rnn_cell_6_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0À
'simple_rnn_6/simple_rnn_cell_6/MatMul_1MatMulsimple_rnn_6/zeros:output:0>simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Á
"simple_rnn_6/simple_rnn_cell_6/addAddV2/simple_rnn_6/simple_rnn_cell_6/BiasAdd:output:01simple_rnn_6/simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#simple_rnn_6/simple_rnn_cell_6/TanhTanh&simple_rnn_6/simple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@{
*simple_rnn_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ß
simple_rnn_6/TensorArrayV2_1TensorListReserve3simple_rnn_6/TensorArrayV2_1/element_shape:output:0%simple_rnn_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒS
simple_rnn_6/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿa
simple_rnn_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
simple_rnn_6/whileWhile(simple_rnn_6/while/loop_counter:output:0.simple_rnn_6/while/maximum_iterations:output:0simple_rnn_6/time:output:0%simple_rnn_6/TensorArrayV2_1:handle:0simple_rnn_6/zeros:output:0%simple_rnn_6/strided_slice_1:output:0Dsimple_rnn_6/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_6_simple_rnn_cell_6_matmul_readvariableop_resource>simple_rnn_6_simple_rnn_cell_6_biasadd_readvariableop_resource?simple_rnn_6_simple_rnn_cell_6_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( **
body"R 
simple_rnn_6_while_body_109808**
cond"R 
simple_rnn_6_while_cond_109807*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
=simple_rnn_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   é
/simple_rnn_6/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_6/while:output:3Fsimple_rnn_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0u
"simple_rnn_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿn
$simple_rnn_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:È
simple_rnn_6/strided_slice_3StridedSlice8simple_rnn_6/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_6/strided_slice_3/stack:output:0-simple_rnn_6/strided_slice_3/stack_1:output:0-simple_rnn_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskr
simple_rnn_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ½
simple_rnn_6/transpose_1	Transpose8simple_rnn_6/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
simple_rnn_7/ShapeShapesimple_rnn_6/transpose_1:y:0*
T0*
_output_shapes
:j
 simple_rnn_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_7/strided_sliceStridedSlicesimple_rnn_7/Shape:output:0)simple_rnn_7/strided_slice/stack:output:0+simple_rnn_7/strided_slice/stack_1:output:0+simple_rnn_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_7/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :à
simple_rnn_7/zeros/packedPack#simple_rnn_7/strided_slice:output:0$simple_rnn_7/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_7/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
simple_rnn_7/zerosFill"simple_rnn_7/zeros/packed:output:0!simple_rnn_7/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàp
simple_rnn_7/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
simple_rnn_7/transpose	Transposesimple_rnn_6/transpose_1:y:0$simple_rnn_7/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
simple_rnn_7/Shape_1Shapesimple_rnn_7/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_7/strided_slice_1StridedSlicesimple_rnn_7/Shape_1:output:0+simple_rnn_7/strided_slice_1/stack:output:0-simple_rnn_7/strided_slice_1/stack_1:output:0-simple_rnn_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_7/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÛ
simple_rnn_7/TensorArrayV2TensorListReserve1simple_rnn_7/TensorArrayV2/element_shape:output:0%simple_rnn_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Bsimple_rnn_7/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
4simple_rnn_7/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_7/transpose:y:0Ksimple_rnn_7/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒl
"simple_rnn_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ª
simple_rnn_7/strided_slice_2StridedSlicesimple_rnn_7/transpose:y:0+simple_rnn_7/strided_slice_2/stack:output:0-simple_rnn_7/strided_slice_2/stack_1:output:0-simple_rnn_7/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask³
4simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp=simple_rnn_7_simple_rnn_cell_7_matmul_readvariableop_resource*
_output_shapes
:	@à*
dtype0Ç
%simple_rnn_7/simple_rnn_cell_7/MatMulMatMul%simple_rnn_7/strided_slice_2:output:0<simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà±
5simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_7_simple_rnn_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:à*
dtype0Ô
&simple_rnn_7/simple_rnn_cell_7/BiasAddBiasAdd/simple_rnn_7/simple_rnn_cell_7/MatMul:product:0=simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà¸
6simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_7_simple_rnn_cell_7_matmul_1_readvariableop_resource* 
_output_shapes
:
àà*
dtype0Á
'simple_rnn_7/simple_rnn_cell_7/MatMul_1MatMulsimple_rnn_7/zeros:output:0>simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàÂ
"simple_rnn_7/simple_rnn_cell_7/addAddV2/simple_rnn_7/simple_rnn_cell_7/BiasAdd:output:01simple_rnn_7/simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
#simple_rnn_7/simple_rnn_cell_7/TanhTanh&simple_rnn_7/simple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà{
*simple_rnn_7/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿà   ß
simple_rnn_7/TensorArrayV2_1TensorListReserve3simple_rnn_7/TensorArrayV2_1/element_shape:output:0%simple_rnn_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒS
simple_rnn_7/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_7/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿa
simple_rnn_7/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
simple_rnn_7/whileWhile(simple_rnn_7/while/loop_counter:output:0.simple_rnn_7/while/maximum_iterations:output:0simple_rnn_7/time:output:0%simple_rnn_7/TensorArrayV2_1:handle:0simple_rnn_7/zeros:output:0%simple_rnn_7/strided_slice_1:output:0Dsimple_rnn_7/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_7_simple_rnn_cell_7_matmul_readvariableop_resource>simple_rnn_7_simple_rnn_cell_7_biasadd_readvariableop_resource?simple_rnn_7_simple_rnn_cell_7_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( **
body"R 
simple_rnn_7_while_body_109912**
cond"R 
simple_rnn_7_while_cond_109911*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : *
parallel_iterations 
=simple_rnn_7/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿà   ê
/simple_rnn_7/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_7/while:output:3Fsimple_rnn_7/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*
element_dtype0u
"simple_rnn_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿn
$simple_rnn_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
simple_rnn_7/strided_slice_3StridedSlice8simple_rnn_7/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_7/strided_slice_3/stack:output:0-simple_rnn_7/strided_slice_3/stack_1:output:0-simple_rnn_7/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*
shrink_axis_maskr
simple_rnn_7/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¾
simple_rnn_7/transpose_1	Transpose8simple_rnn_7/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_7/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	à!*
dtype0
dense_3/MatMulMatMul%simple_rnn_7/strided_slice_3:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!f
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!h
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp6^simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOp5^simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOp7^simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOp^simple_rnn_6/while6^simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp5^simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp7^simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp^simple_rnn_7/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2n
5simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOp5simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOp2l
4simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOp4simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOp2p
6simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOp6simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOp2(
simple_rnn_6/whilesimple_rnn_6/while2n
5simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp5simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp2l
4simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp4simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp2p
6simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp6simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp2(
simple_rnn_7/whilesimple_rnn_7/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

·
-__inference_simple_rnn_6_layer_call_fn_110052

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
identity¢StatefulPartitionedCallî
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_6_layer_call_and_return_conditional_losses_109358s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ü
ª
while_cond_108750
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_108750___redundant_placeholder04
0while_while_cond_108750___redundant_placeholder14
0while_while_cond_108750___redundant_placeholder24
0while_while_cond_108750___redundant_placeholder3
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
.: : : : :ÿÿÿÿÿÿÿÿÿà: ::::: 
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
:ÿÿÿÿÿÿÿÿÿà:

_output_shapes
: :

_output_shapes
:
Ü
ª
while_cond_110893
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_110893___redundant_placeholder04
0while_while_cond_110893___redundant_placeholder14
0while_while_cond_110893___redundant_placeholder24
0while_while_cond_110893___redundant_placeholder3
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
.: : : : :ÿÿÿÿÿÿÿÿÿà: ::::: 
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
:ÿÿÿÿÿÿÿÿÿà:

_output_shapes
: :

_output_shapes
:
¢=
»
H__inference_simple_rnn_6_layer_call_and_return_conditional_losses_109358

inputsB
0simple_rnn_cell_6_matmul_readvariableop_resource:@?
1simple_rnn_cell_6_biasadd_readvariableop_resource:@D
2simple_rnn_cell_6_matmul_1_readvariableop_resource:@@
identity¢(simple_rnn_cell_6/BiasAdd/ReadVariableOp¢'simple_rnn_cell_6/MatMul/ReadVariableOp¢)simple_rnn_cell_6/MatMul_1/ReadVariableOp¢while;
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
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
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
'simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_6_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
simple_rnn_cell_6/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¬
simple_rnn_cell_6/BiasAddBiasAdd"simple_rnn_cell_6/MatMul:product:00simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_6_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_6/MatMul_1MatMulzeros:output:01simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
simple_rnn_cell_6/addAddV2"simple_rnn_cell_6/BiasAdd:output:0$simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
simple_rnn_cell_6/TanhTanhsimple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ø
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_6_matmul_readvariableop_resource1simple_rnn_cell_6_biasadd_readvariableop_resource2simple_rnn_cell_6_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_109292*
condR
while_cond_109291*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ï
NoOpNoOp)^simple_rnn_cell_6/BiasAdd/ReadVariableOp(^simple_rnn_cell_6/MatMul/ReadVariableOp*^simple_rnn_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_6/BiasAdd/ReadVariableOp(simple_rnn_cell_6/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_6/MatMul/ReadVariableOp'simple_rnn_cell_6/MatMul/ReadVariableOp2V
)simple_rnn_cell_6/MatMul_1/ReadVariableOp)simple_rnn_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

»
-__inference_simple_rnn_7_layer_call_fn_110517

inputs
unknown:	@à
	unknown_0:	à
	unknown_1:
àà
identity¢StatefulPartitionedCallë
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_7_layer_call_and_return_conditional_losses_109052p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ñ,
Ð
while_body_110786
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
8while_simple_rnn_cell_7_matmul_readvariableop_resource_0:	@àH
9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0:	àN
:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0:
àà
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
6while_simple_rnn_cell_7_matmul_readvariableop_resource:	@àF
7while_simple_rnn_cell_7_biasadd_readvariableop_resource:	àL
8while_simple_rnn_cell_7_matmul_1_readvariableop_resource:
àà¢.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_7/MatMul/ReadVariableOp¢/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0§
-while/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_7_matmul_readvariableop_resource_0*
_output_shapes
:	@à*
dtype0Ä
while/simple_rnn_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà¥
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:à*
dtype0¿
while/simple_rnn_cell_7/BiasAddBiasAdd(while/simple_rnn_cell_7/MatMul:product:06while/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà¬
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0* 
_output_shapes
:
àà*
dtype0«
 while/simple_rnn_cell_7/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà­
while/simple_rnn_cell_7/addAddV2(while/simple_rnn_cell_7/BiasAdd:output:0*while/simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàx
while/simple_rnn_cell_7/TanhTanhwhile/simple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàÉ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_7/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ~
while/Identity_4Identity while/simple_rnn_cell_7/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàß

while/NoOpNoOp/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_7_biasadd_readvariableop_resource9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_7_matmul_1_readvariableop_resource:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_7_matmul_readvariableop_resource8while_simple_rnn_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : 2`
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_7/MatMul/ReadVariableOp-while/simple_rnn_cell_7/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿà:

_output_shapes
: :

_output_shapes
: 
üD
à
+sequential_3_simple_rnn_7_while_body_108166P
Lsequential_3_simple_rnn_7_while_sequential_3_simple_rnn_7_while_loop_counterV
Rsequential_3_simple_rnn_7_while_sequential_3_simple_rnn_7_while_maximum_iterations/
+sequential_3_simple_rnn_7_while_placeholder1
-sequential_3_simple_rnn_7_while_placeholder_11
-sequential_3_simple_rnn_7_while_placeholder_2O
Ksequential_3_simple_rnn_7_while_sequential_3_simple_rnn_7_strided_slice_1_0
sequential_3_simple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_sequential_3_simple_rnn_7_tensorarrayunstack_tensorlistfromtensor_0e
Rsequential_3_simple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource_0:	@àb
Ssequential_3_simple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource_0:	àh
Tsequential_3_simple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0:
àà,
(sequential_3_simple_rnn_7_while_identity.
*sequential_3_simple_rnn_7_while_identity_1.
*sequential_3_simple_rnn_7_while_identity_2.
*sequential_3_simple_rnn_7_while_identity_3.
*sequential_3_simple_rnn_7_while_identity_4M
Isequential_3_simple_rnn_7_while_sequential_3_simple_rnn_7_strided_slice_1
sequential_3_simple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_sequential_3_simple_rnn_7_tensorarrayunstack_tensorlistfromtensorc
Psequential_3_simple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource:	@à`
Qsequential_3_simple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource:	àf
Rsequential_3_simple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource:
àà¢Hsequential_3/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp¢Gsequential_3/simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp¢Isequential_3/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp¢
Qsequential_3/simple_rnn_7/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ©
Csequential_3/simple_rnn_7/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_3_simple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_sequential_3_simple_rnn_7_tensorarrayunstack_tensorlistfromtensor_0+sequential_3_simple_rnn_7_while_placeholderZsequential_3/simple_rnn_7/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0Û
Gsequential_3/simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOpRsequential_3_simple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource_0*
_output_shapes
:	@à*
dtype0
8sequential_3/simple_rnn_7/while/simple_rnn_cell_7/MatMulMatMulJsequential_3/simple_rnn_7/while/TensorArrayV2Read/TensorListGetItem:item:0Osequential_3/simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàÙ
Hsequential_3/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOpSsequential_3_simple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:à*
dtype0
9sequential_3/simple_rnn_7/while/simple_rnn_cell_7/BiasAddBiasAddBsequential_3/simple_rnn_7/while/simple_rnn_cell_7/MatMul:product:0Psequential_3/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
Isequential_3/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOpTsequential_3_simple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0* 
_output_shapes
:
àà*
dtype0ù
:sequential_3/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1MatMul-sequential_3_simple_rnn_7_while_placeholder_2Qsequential_3/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàû
5sequential_3/simple_rnn_7/while/simple_rnn_cell_7/addAddV2Bsequential_3/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd:output:0Dsequential_3/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà¬
6sequential_3/simple_rnn_7/while/simple_rnn_cell_7/TanhTanh9sequential_3/simple_rnn_7/while/simple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà±
Dsequential_3/simple_rnn_7/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem-sequential_3_simple_rnn_7_while_placeholder_1+sequential_3_simple_rnn_7_while_placeholder:sequential_3/simple_rnn_7/while/simple_rnn_cell_7/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒg
%sequential_3/simple_rnn_7/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ª
#sequential_3/simple_rnn_7/while/addAddV2+sequential_3_simple_rnn_7_while_placeholder.sequential_3/simple_rnn_7/while/add/y:output:0*
T0*
_output_shapes
: i
'sequential_3/simple_rnn_7/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ï
%sequential_3/simple_rnn_7/while/add_1AddV2Lsequential_3_simple_rnn_7_while_sequential_3_simple_rnn_7_while_loop_counter0sequential_3/simple_rnn_7/while/add_1/y:output:0*
T0*
_output_shapes
: §
(sequential_3/simple_rnn_7/while/IdentityIdentity)sequential_3/simple_rnn_7/while/add_1:z:0%^sequential_3/simple_rnn_7/while/NoOp*
T0*
_output_shapes
: Ò
*sequential_3/simple_rnn_7/while/Identity_1IdentityRsequential_3_simple_rnn_7_while_sequential_3_simple_rnn_7_while_maximum_iterations%^sequential_3/simple_rnn_7/while/NoOp*
T0*
_output_shapes
: §
*sequential_3/simple_rnn_7/while/Identity_2Identity'sequential_3/simple_rnn_7/while/add:z:0%^sequential_3/simple_rnn_7/while/NoOp*
T0*
_output_shapes
: ç
*sequential_3/simple_rnn_7/while/Identity_3IdentityTsequential_3/simple_rnn_7/while/TensorArrayV2Write/TensorListSetItem:output_handle:0%^sequential_3/simple_rnn_7/while/NoOp*
T0*
_output_shapes
: :éèÒÌ
*sequential_3/simple_rnn_7/while/Identity_4Identity:sequential_3/simple_rnn_7/while/simple_rnn_cell_7/Tanh:y:0%^sequential_3/simple_rnn_7/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàÇ
$sequential_3/simple_rnn_7/while/NoOpNoOpI^sequential_3/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpH^sequential_3/simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpJ^sequential_3/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "]
(sequential_3_simple_rnn_7_while_identity1sequential_3/simple_rnn_7/while/Identity:output:0"a
*sequential_3_simple_rnn_7_while_identity_13sequential_3/simple_rnn_7/while/Identity_1:output:0"a
*sequential_3_simple_rnn_7_while_identity_23sequential_3/simple_rnn_7/while/Identity_2:output:0"a
*sequential_3_simple_rnn_7_while_identity_33sequential_3/simple_rnn_7/while/Identity_3:output:0"a
*sequential_3_simple_rnn_7_while_identity_43sequential_3/simple_rnn_7/while/Identity_4:output:0"
Isequential_3_simple_rnn_7_while_sequential_3_simple_rnn_7_strided_slice_1Ksequential_3_simple_rnn_7_while_sequential_3_simple_rnn_7_strided_slice_1_0"¨
Qsequential_3_simple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resourceSsequential_3_simple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource_0"ª
Rsequential_3_simple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resourceTsequential_3_simple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0"¦
Psequential_3_simple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resourceRsequential_3_simple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource_0"
sequential_3_simple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_sequential_3_simple_rnn_7_tensorarrayunstack_tensorlistfromtensorsequential_3_simple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_sequential_3_simple_rnn_7_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : 2
Hsequential_3/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpHsequential_3/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp2
Gsequential_3/simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpGsequential_3/simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp2
Isequential_3/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpIsequential_3/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿà:

_output_shapes
: :

_output_shapes
: 
4

H__inference_simple_rnn_6_layer_call_and_return_conditional_losses_108363

inputs*
simple_rnn_cell_6_108288:@&
simple_rnn_cell_6_108290:@*
simple_rnn_cell_6_108292:@@
identity¢)simple_rnn_cell_6/StatefulPartitionedCall¢while;
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
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
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskç
)simple_rnn_cell_6/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_6_108288simple_rnn_cell_6_108290simple_rnn_cell_6_108292*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_6_layer_call_and_return_conditional_losses_108287n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_6_108288simple_rnn_cell_6_108290simple_rnn_cell_6_108292*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_108300*
condR
while_cond_108299*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@z
NoOpNoOp*^simple_rnn_cell_6/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2V
)simple_rnn_cell_6/StatefulPartitionedCall)simple_rnn_cell_6/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½,
È
while_body_110418
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_6_matmul_readvariableop_resource_0:@G
9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_6_matmul_readvariableop_resource:@E
7while_simple_rnn_cell_6_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_6_matmul_1_readvariableop_resource:@@¢.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_6/MatMul/ReadVariableOp¢/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¦
-while/simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_6_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0Ã
while/simple_rnn_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¾
while/simple_rnn_cell_6/BiasAddBiasAdd(while/simple_rnn_cell_6/MatMul:product:06while/simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ª
 while/simple_rnn_cell_6/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/simple_rnn_cell_6/addAddV2(while/simple_rnn_cell_6/BiasAdd:output:0*while/simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/simple_rnn_cell_6/TanhTanhwhile/simple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@É
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_6/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ}
while/Identity_4Identity while/simple_rnn_cell_6/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ß

while/NoOpNoOp/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_6_biasadd_readvariableop_resource9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_6_matmul_1_readvariableop_resource:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_6_matmul_readvariableop_resource8while_simple_rnn_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2`
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_6/MatMul/ReadVariableOp-while/simple_rnn_cell_6/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
Ü
ª
while_cond_108591
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_108591___redundant_placeholder04
0while_while_cond_108591___redundant_placeholder14
0while_while_cond_108591___redundant_placeholder24
0while_while_cond_108591___redundant_placeholder3
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
.: : : : :ÿÿÿÿÿÿÿÿÿà: ::::: 
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
:ÿÿÿÿÿÿÿÿÿà:

_output_shapes
: :

_output_shapes
:
Ñ,
Ð
while_body_110570
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
8while_simple_rnn_cell_7_matmul_readvariableop_resource_0:	@àH
9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0:	àN
:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0:
àà
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
6while_simple_rnn_cell_7_matmul_readvariableop_resource:	@àF
7while_simple_rnn_cell_7_biasadd_readvariableop_resource:	àL
8while_simple_rnn_cell_7_matmul_1_readvariableop_resource:
àà¢.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_7/MatMul/ReadVariableOp¢/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0§
-while/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_7_matmul_readvariableop_resource_0*
_output_shapes
:	@à*
dtype0Ä
while/simple_rnn_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà¥
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:à*
dtype0¿
while/simple_rnn_cell_7/BiasAddBiasAdd(while/simple_rnn_cell_7/MatMul:product:06while/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà¬
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0* 
_output_shapes
:
àà*
dtype0«
 while/simple_rnn_cell_7/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà­
while/simple_rnn_cell_7/addAddV2(while/simple_rnn_cell_7/BiasAdd:output:0*while/simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàx
while/simple_rnn_cell_7/TanhTanhwhile/simple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàÉ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_7/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ~
while/Identity_4Identity while/simple_rnn_cell_7/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàß

while/NoOpNoOp/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_7_biasadd_readvariableop_resource9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_7_matmul_1_readvariableop_resource:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_7_matmul_readvariableop_resource8while_simple_rnn_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : 2`
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_7/MatMul/ReadVariableOp-while/simple_rnn_cell_7/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿà:

_output_shapes
: :

_output_shapes
: 
Ü
ª
while_cond_108985
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_108985___redundant_placeholder04
0while_while_cond_108985___redundant_placeholder14
0while_while_cond_108985___redundant_placeholder24
0while_while_cond_108985___redundant_placeholder3
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
.: : : : :ÿÿÿÿÿÿÿÿÿà: ::::: 
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
:ÿÿÿÿÿÿÿÿÿà:

_output_shapes
: :

_output_shapes
:


+sequential_3_simple_rnn_6_while_cond_108061P
Lsequential_3_simple_rnn_6_while_sequential_3_simple_rnn_6_while_loop_counterV
Rsequential_3_simple_rnn_6_while_sequential_3_simple_rnn_6_while_maximum_iterations/
+sequential_3_simple_rnn_6_while_placeholder1
-sequential_3_simple_rnn_6_while_placeholder_11
-sequential_3_simple_rnn_6_while_placeholder_2R
Nsequential_3_simple_rnn_6_while_less_sequential_3_simple_rnn_6_strided_slice_1h
dsequential_3_simple_rnn_6_while_sequential_3_simple_rnn_6_while_cond_108061___redundant_placeholder0h
dsequential_3_simple_rnn_6_while_sequential_3_simple_rnn_6_while_cond_108061___redundant_placeholder1h
dsequential_3_simple_rnn_6_while_sequential_3_simple_rnn_6_while_cond_108061___redundant_placeholder2h
dsequential_3_simple_rnn_6_while_sequential_3_simple_rnn_6_while_cond_108061___redundant_placeholder3,
(sequential_3_simple_rnn_6_while_identity
Ê
$sequential_3/simple_rnn_6/while/LessLess+sequential_3_simple_rnn_6_while_placeholderNsequential_3_simple_rnn_6_while_less_sequential_3_simple_rnn_6_strided_slice_1*
T0*
_output_shapes
: 
(sequential_3/simple_rnn_6/while/IdentityIdentity(sequential_3/simple_rnn_6/while/Less:z:0*
T0
*
_output_shapes
: "]
(sequential_3_simple_rnn_6_while_identity1sequential_3/simple_rnn_6/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:

î
M__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_111104

inputs
states_01
matmul_readvariableop_resource:	@à.
biasadd_readvariableop_resource:	à4
 matmul_1_readvariableop_resource:
àà
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@à*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:à*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
àà*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàe
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàH
TanhTanhadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàX
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàZ

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿà: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
"
_user_specified_name
states/0
ñ=
Á
H__inference_simple_rnn_7_layer_call_and_return_conditional_losses_110744
inputs_0C
0simple_rnn_cell_7_matmul_readvariableop_resource:	@à@
1simple_rnn_cell_7_biasadd_readvariableop_resource:	àF
2simple_rnn_cell_7_matmul_1_readvariableop_resource:
àà
identity¢(simple_rnn_cell_7/BiasAdd/ReadVariableOp¢'simple_rnn_cell_7/MatMul/ReadVariableOp¢)simple_rnn_cell_7/MatMul_1/ReadVariableOp¢while=
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :às
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
:ÿÿÿÿÿÿÿÿÿàc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@D
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
'simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_7_matmul_readvariableop_resource*
_output_shapes
:	@à*
dtype0 
simple_rnn_cell_7/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
(simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:à*
dtype0­
simple_rnn_cell_7/BiasAddBiasAdd"simple_rnn_cell_7/MatMul:product:00simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
)simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_7_matmul_1_readvariableop_resource* 
_output_shapes
:
àà*
dtype0
simple_rnn_cell_7/MatMul_1MatMulzeros:output:01simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
simple_rnn_cell_7/addAddV2"simple_rnn_cell_7/BiasAdd:output:0$simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàl
simple_rnn_cell_7/TanhTanhsimple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿà   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ú
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_7_matmul_readvariableop_resource1simple_rnn_cell_7_biasadd_readvariableop_resource2simple_rnn_cell_7_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_110678*
condR
while_cond_110677*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿà   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿàh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàÏ
NoOpNoOp)^simple_rnn_cell_7/BiasAdd/ReadVariableOp(^simple_rnn_cell_7/MatMul/ReadVariableOp*^simple_rnn_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2T
(simple_rnn_cell_7/BiasAdd/ReadVariableOp(simple_rnn_cell_7/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_7/MatMul/ReadVariableOp'simple_rnn_cell_7/MatMul/ReadVariableOp2V
)simple_rnn_cell_7/MatMul_1/ReadVariableOp)simple_rnn_cell_7/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
Ñ,
Ð
while_body_110678
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
8while_simple_rnn_cell_7_matmul_readvariableop_resource_0:	@àH
9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0:	àN
:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0:
àà
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
6while_simple_rnn_cell_7_matmul_readvariableop_resource:	@àF
7while_simple_rnn_cell_7_biasadd_readvariableop_resource:	àL
8while_simple_rnn_cell_7_matmul_1_readvariableop_resource:
àà¢.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_7/MatMul/ReadVariableOp¢/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0§
-while/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_7_matmul_readvariableop_resource_0*
_output_shapes
:	@à*
dtype0Ä
while/simple_rnn_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà¥
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:à*
dtype0¿
while/simple_rnn_cell_7/BiasAddBiasAdd(while/simple_rnn_cell_7/MatMul:product:06while/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà¬
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0* 
_output_shapes
:
àà*
dtype0«
 while/simple_rnn_cell_7/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà­
while/simple_rnn_cell_7/addAddV2(while/simple_rnn_cell_7/BiasAdd:output:0*while/simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàx
while/simple_rnn_cell_7/TanhTanhwhile/simple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàÉ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_7/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ~
while/Identity_4Identity while/simple_rnn_cell_7/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàß

while/NoOpNoOp/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_7_biasadd_readvariableop_resource9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_7_matmul_1_readvariableop_resource:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_7_matmul_readvariableop_resource8while_simple_rnn_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : 2`
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_7/MatMul/ReadVariableOp-while/simple_rnn_cell_7/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿà:

_output_shapes
: :

_output_shapes
: 
!
Ñ
while_body_108300
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_02
 while_simple_rnn_cell_6_108322_0:@.
 while_simple_rnn_cell_6_108324_0:@2
 while_simple_rnn_cell_6_108326_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor0
while_simple_rnn_cell_6_108322:@,
while_simple_rnn_cell_6_108324:@0
while_simple_rnn_cell_6_108326:@@¢/while/simple_rnn_cell_6/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¢
/while/simple_rnn_cell_6/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_6_108322_0 while_simple_rnn_cell_6_108324_0 while_simple_rnn_cell_6_108326_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_6_layer_call_and_return_conditional_losses_108287á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_6/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity8while/simple_rnn_cell_6/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@~

while/NoOpNoOp0^while/simple_rnn_cell_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_6_108322 while_simple_rnn_cell_6_108322_0"B
while_simple_rnn_cell_6_108324 while_simple_rnn_cell_6_108324_0"B
while_simple_rnn_cell_6_108326 while_simple_rnn_cell_6_108326_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2b
/while/simple_rnn_cell_6/StatefulPartitionedCall/while/simple_rnn_cell_6/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
Ú
ª
while_cond_108458
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_108458___redundant_placeholder04
0while_while_cond_108458___redundant_placeholder14
0while_while_cond_108458___redundant_placeholder24
0while_while_cond_108458___redundant_placeholder3
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
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:


+sequential_3_simple_rnn_7_while_cond_108165P
Lsequential_3_simple_rnn_7_while_sequential_3_simple_rnn_7_while_loop_counterV
Rsequential_3_simple_rnn_7_while_sequential_3_simple_rnn_7_while_maximum_iterations/
+sequential_3_simple_rnn_7_while_placeholder1
-sequential_3_simple_rnn_7_while_placeholder_11
-sequential_3_simple_rnn_7_while_placeholder_2R
Nsequential_3_simple_rnn_7_while_less_sequential_3_simple_rnn_7_strided_slice_1h
dsequential_3_simple_rnn_7_while_sequential_3_simple_rnn_7_while_cond_108165___redundant_placeholder0h
dsequential_3_simple_rnn_7_while_sequential_3_simple_rnn_7_while_cond_108165___redundant_placeholder1h
dsequential_3_simple_rnn_7_while_sequential_3_simple_rnn_7_while_cond_108165___redundant_placeholder2h
dsequential_3_simple_rnn_7_while_sequential_3_simple_rnn_7_while_cond_108165___redundant_placeholder3,
(sequential_3_simple_rnn_7_while_identity
Ê
$sequential_3/simple_rnn_7/while/LessLess+sequential_3_simple_rnn_7_while_placeholderNsequential_3_simple_rnn_7_while_less_sequential_3_simple_rnn_7_strided_slice_1*
T0*
_output_shapes
: 
(sequential_3/simple_rnn_7/while/IdentityIdentity(sequential_3/simple_rnn_7/while/Less:z:0*
T0
*
_output_shapes
: "]
(sequential_3_simple_rnn_7_while_identity1sequential_3/simple_rnn_7/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿà: ::::: 
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
:ÿÿÿÿÿÿÿÿÿà:

_output_shapes
: :

_output_shapes
:

½
-__inference_simple_rnn_7_layer_call_fn_110495
inputs_0
unknown:	@à
	unknown_0:	à
	unknown_1:
àà
identity¢StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_7_layer_call_and_return_conditional_losses_108655p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
Ò8
Î
simple_rnn_6_while_body_1095896
2simple_rnn_6_while_simple_rnn_6_while_loop_counter<
8simple_rnn_6_while_simple_rnn_6_while_maximum_iterations"
simple_rnn_6_while_placeholder$
 simple_rnn_6_while_placeholder_1$
 simple_rnn_6_while_placeholder_25
1simple_rnn_6_while_simple_rnn_6_strided_slice_1_0q
msimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensor_0W
Esimple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resource_0:@T
Fsimple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resource_0:@Y
Gsimple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0:@@
simple_rnn_6_while_identity!
simple_rnn_6_while_identity_1!
simple_rnn_6_while_identity_2!
simple_rnn_6_while_identity_3!
simple_rnn_6_while_identity_43
/simple_rnn_6_while_simple_rnn_6_strided_slice_1o
ksimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensorU
Csimple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resource:@R
Dsimple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resource:@W
Esimple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resource:@@¢;simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp¢:simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp¢<simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp
Dsimple_rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ç
6simple_rnn_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_6_while_placeholderMsimple_rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0À
:simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0ê
+simple_rnn_6/while/simple_rnn_cell_6/MatMulMatMul=simple_rnn_6/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¾
;simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0å
,simple_rnn_6/while/simple_rnn_cell_6/BiasAddBiasAdd5simple_rnn_6/while/simple_rnn_cell_6/MatMul:product:0Csimple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ä
<simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Ñ
-simple_rnn_6/while/simple_rnn_cell_6/MatMul_1MatMul simple_rnn_6_while_placeholder_2Dsimple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ó
(simple_rnn_6/while/simple_rnn_cell_6/addAddV25simple_rnn_6/while/simple_rnn_cell_6/BiasAdd:output:07simple_rnn_6/while/simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)simple_rnn_6/while/simple_rnn_cell_6/TanhTanh,simple_rnn_6/while/simple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ý
7simple_rnn_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_6_while_placeholder_1simple_rnn_6_while_placeholder-simple_rnn_6/while/simple_rnn_cell_6/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒZ
simple_rnn_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_6/while/addAddV2simple_rnn_6_while_placeholder!simple_rnn_6/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_6/while/add_1AddV22simple_rnn_6_while_simple_rnn_6_while_loop_counter#simple_rnn_6/while/add_1/y:output:0*
T0*
_output_shapes
: 
simple_rnn_6/while/IdentityIdentitysimple_rnn_6/while/add_1:z:0^simple_rnn_6/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_6/while/Identity_1Identity8simple_rnn_6_while_simple_rnn_6_while_maximum_iterations^simple_rnn_6/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_6/while/Identity_2Identitysimple_rnn_6/while/add:z:0^simple_rnn_6/while/NoOp*
T0*
_output_shapes
: À
simple_rnn_6/while/Identity_3IdentityGsimple_rnn_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_6/while/NoOp*
T0*
_output_shapes
: :éèÒ¤
simple_rnn_6/while/Identity_4Identity-simple_rnn_6/while/simple_rnn_cell_6/Tanh:y:0^simple_rnn_6/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
simple_rnn_6/while/NoOpNoOp<^simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp;^simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp=^simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_6_while_identity$simple_rnn_6/while/Identity:output:0"G
simple_rnn_6_while_identity_1&simple_rnn_6/while/Identity_1:output:0"G
simple_rnn_6_while_identity_2&simple_rnn_6/while/Identity_2:output:0"G
simple_rnn_6_while_identity_3&simple_rnn_6/while/Identity_3:output:0"G
simple_rnn_6_while_identity_4&simple_rnn_6/while/Identity_4:output:0"d
/simple_rnn_6_while_simple_rnn_6_strided_slice_11simple_rnn_6_while_simple_rnn_6_strided_slice_1_0"
Dsimple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resourceFsimple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resource_0"
Esimple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resourceGsimple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0"
Csimple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resourceEsimple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resource_0"Ü
ksimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensormsimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2z
;simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp;simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp2x
:simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp:simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp2|
<simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp<simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
ý
è
M__inference_simple_rnn_cell_6_layer_call_and_return_conditional_losses_108287

inputs

states0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates
ý
è
M__inference_simple_rnn_cell_6_layer_call_and_return_conditional_losses_108407

inputs

states0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates

ì
M__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_108579

inputs

states1
matmul_readvariableop_resource:	@à.
biasadd_readvariableop_resource:	à4
 matmul_1_readvariableop_resource:
àà
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@à*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:à*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
àà*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàe
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàH
TanhTanhadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàX
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàZ

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿà: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
 
_user_specified_namestates
¢=
»
H__inference_simple_rnn_6_layer_call_and_return_conditional_losses_110376

inputsB
0simple_rnn_cell_6_matmul_readvariableop_resource:@?
1simple_rnn_cell_6_biasadd_readvariableop_resource:@D
2simple_rnn_cell_6_matmul_1_readvariableop_resource:@@
identity¢(simple_rnn_cell_6/BiasAdd/ReadVariableOp¢'simple_rnn_cell_6/MatMul/ReadVariableOp¢)simple_rnn_cell_6/MatMul_1/ReadVariableOp¢while;
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
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
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
'simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_6_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
simple_rnn_cell_6/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¬
simple_rnn_cell_6/BiasAddBiasAdd"simple_rnn_cell_6/MatMul:product:00simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_6_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_6/MatMul_1MatMulzeros:output:01simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
simple_rnn_cell_6/addAddV2"simple_rnn_cell_6/BiasAdd:output:0$simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
simple_rnn_cell_6/TanhTanhsimple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ø
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_6_matmul_readvariableop_resource1simple_rnn_cell_6_biasadd_readvariableop_resource2simple_rnn_cell_6_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_110310*
condR
while_cond_110309*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ï
NoOpNoOp)^simple_rnn_cell_6/BiasAdd/ReadVariableOp(^simple_rnn_cell_6/MatMul/ReadVariableOp*^simple_rnn_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_6/BiasAdd/ReadVariableOp(simple_rnn_cell_6/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_6/MatMul/ReadVariableOp'simple_rnn_cell_6/MatMul/ReadVariableOp2V
)simple_rnn_cell_6/MatMul_1/ReadVariableOp)simple_rnn_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ü
ª
while_cond_110785
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_110785___redundant_placeholder04
0while_while_cond_110785___redundant_placeholder14
0while_while_cond_110785___redundant_placeholder24
0while_while_cond_110785___redundant_placeholder3
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
.: : : : :ÿÿÿÿÿÿÿÿÿà: ::::: 
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
:ÿÿÿÿÿÿÿÿÿà:

_output_shapes
: :

_output_shapes
:
½,
È
while_body_110094
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_6_matmul_readvariableop_resource_0:@G
9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_6_matmul_readvariableop_resource:@E
7while_simple_rnn_cell_6_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_6_matmul_1_readvariableop_resource:@@¢.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_6/MatMul/ReadVariableOp¢/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¦
-while/simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_6_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0Ã
while/simple_rnn_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¾
while/simple_rnn_cell_6/BiasAddBiasAdd(while/simple_rnn_cell_6/MatMul:product:06while/simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ª
 while/simple_rnn_cell_6/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/simple_rnn_cell_6/addAddV2(while/simple_rnn_cell_6/BiasAdd:output:0*while/simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/simple_rnn_cell_6/TanhTanhwhile/simple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@É
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_6/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ}
while/Identity_4Identity while/simple_rnn_cell_6/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ß

while/NoOpNoOp/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_6_biasadd_readvariableop_resource9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_6_matmul_1_readvariableop_resource:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_6_matmul_readvariableop_resource8while_simple_rnn_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2`
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_6/MatMul/ReadVariableOp-while/simple_rnn_cell_6/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 

»
-__inference_simple_rnn_7_layer_call_fn_110528

inputs
unknown:	@à
	unknown_0:	à
	unknown_1:
àà
identity¢StatefulPartitionedCallë
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_7_layer_call_and_return_conditional_losses_109228p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ã

(__inference_dense_3_layer_call_fn_110969

inputs
unknown:	à!
	unknown_0:!
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_109071o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿà: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
 
_user_specified_nameinputs
Ú
ª
while_cond_108870
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_108870___redundant_placeholder04
0while_while_cond_108870___redundant_placeholder14
0while_while_cond_108870___redundant_placeholder24
0while_while_cond_108870___redundant_placeholder3
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
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
Ã

Þ
2__inference_simple_rnn_cell_7_layer_call_fn_111056

inputs
states_0
unknown:	@à
	unknown_0:	à
	unknown_1:
àà
identity

identity_1¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿà:ÿÿÿÿÿÿÿÿÿà*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_108579p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿà: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
"
_user_specified_name
states/0


H__inference_sequential_3_layer_call_and_return_conditional_losses_109476
simple_rnn_6_input%
simple_rnn_6_109456:@!
simple_rnn_6_109458:@%
simple_rnn_6_109460:@@&
simple_rnn_7_109463:	@à"
simple_rnn_7_109465:	à'
simple_rnn_7_109467:
àà!
dense_3_109470:	à!
dense_3_109472:!
identity¢dense_3/StatefulPartitionedCall¢$simple_rnn_6/StatefulPartitionedCall¢$simple_rnn_7/StatefulPartitionedCall§
$simple_rnn_6/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_6_inputsimple_rnn_6_109456simple_rnn_6_109458simple_rnn_6_109460*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_6_layer_call_and_return_conditional_losses_108937¿
$simple_rnn_7/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_6/StatefulPartitionedCall:output:0simple_rnn_7_109463simple_rnn_7_109465simple_rnn_7_109467*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_7_layer_call_and_return_conditional_losses_109052
dense_3/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_7/StatefulPartitionedCall:output:0dense_3_109470dense_3_109472*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_109071w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¶
NoOpNoOp ^dense_3/StatefulPartitionedCall%^simple_rnn_6/StatefulPartitionedCall%^simple_rnn_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2L
$simple_rnn_6/StatefulPartitionedCall$simple_rnn_6/StatefulPartitionedCall2L
$simple_rnn_7/StatefulPartitionedCall$simple_rnn_7/StatefulPartitionedCall:_ [
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namesimple_rnn_6_input
Ú
ª
while_cond_109291
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_109291___redundant_placeholder04
0while_while_cond_109291___redundant_placeholder14
0while_while_cond_109291___redundant_placeholder24
0while_while_cond_109291___redundant_placeholder3
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
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
èD
Ø
+sequential_3_simple_rnn_6_while_body_108062P
Lsequential_3_simple_rnn_6_while_sequential_3_simple_rnn_6_while_loop_counterV
Rsequential_3_simple_rnn_6_while_sequential_3_simple_rnn_6_while_maximum_iterations/
+sequential_3_simple_rnn_6_while_placeholder1
-sequential_3_simple_rnn_6_while_placeholder_11
-sequential_3_simple_rnn_6_while_placeholder_2O
Ksequential_3_simple_rnn_6_while_sequential_3_simple_rnn_6_strided_slice_1_0
sequential_3_simple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_sequential_3_simple_rnn_6_tensorarrayunstack_tensorlistfromtensor_0d
Rsequential_3_simple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resource_0:@a
Ssequential_3_simple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resource_0:@f
Tsequential_3_simple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0:@@,
(sequential_3_simple_rnn_6_while_identity.
*sequential_3_simple_rnn_6_while_identity_1.
*sequential_3_simple_rnn_6_while_identity_2.
*sequential_3_simple_rnn_6_while_identity_3.
*sequential_3_simple_rnn_6_while_identity_4M
Isequential_3_simple_rnn_6_while_sequential_3_simple_rnn_6_strided_slice_1
sequential_3_simple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_sequential_3_simple_rnn_6_tensorarrayunstack_tensorlistfromtensorb
Psequential_3_simple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resource:@_
Qsequential_3_simple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resource:@d
Rsequential_3_simple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resource:@@¢Hsequential_3/simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp¢Gsequential_3/simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp¢Isequential_3/simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp¢
Qsequential_3/simple_rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ©
Csequential_3/simple_rnn_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_3_simple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_sequential_3_simple_rnn_6_tensorarrayunstack_tensorlistfromtensor_0+sequential_3_simple_rnn_6_while_placeholderZsequential_3/simple_rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0Ú
Gsequential_3/simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOpRsequential_3_simple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0
8sequential_3/simple_rnn_6/while/simple_rnn_cell_6/MatMulMatMulJsequential_3/simple_rnn_6/while/TensorArrayV2Read/TensorListGetItem:item:0Osequential_3/simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ø
Hsequential_3/simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOpSsequential_3_simple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0
9sequential_3/simple_rnn_6/while/simple_rnn_cell_6/BiasAddBiasAddBsequential_3/simple_rnn_6/while/simple_rnn_cell_6/MatMul:product:0Psequential_3/simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Þ
Isequential_3/simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOpTsequential_3_simple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ø
:sequential_3/simple_rnn_6/while/simple_rnn_cell_6/MatMul_1MatMul-sequential_3_simple_rnn_6_while_placeholder_2Qsequential_3/simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ú
5sequential_3/simple_rnn_6/while/simple_rnn_cell_6/addAddV2Bsequential_3/simple_rnn_6/while/simple_rnn_cell_6/BiasAdd:output:0Dsequential_3/simple_rnn_6/while/simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@«
6sequential_3/simple_rnn_6/while/simple_rnn_cell_6/TanhTanh9sequential_3/simple_rnn_6/while/simple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@±
Dsequential_3/simple_rnn_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem-sequential_3_simple_rnn_6_while_placeholder_1+sequential_3_simple_rnn_6_while_placeholder:sequential_3/simple_rnn_6/while/simple_rnn_cell_6/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒg
%sequential_3/simple_rnn_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ª
#sequential_3/simple_rnn_6/while/addAddV2+sequential_3_simple_rnn_6_while_placeholder.sequential_3/simple_rnn_6/while/add/y:output:0*
T0*
_output_shapes
: i
'sequential_3/simple_rnn_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ï
%sequential_3/simple_rnn_6/while/add_1AddV2Lsequential_3_simple_rnn_6_while_sequential_3_simple_rnn_6_while_loop_counter0sequential_3/simple_rnn_6/while/add_1/y:output:0*
T0*
_output_shapes
: §
(sequential_3/simple_rnn_6/while/IdentityIdentity)sequential_3/simple_rnn_6/while/add_1:z:0%^sequential_3/simple_rnn_6/while/NoOp*
T0*
_output_shapes
: Ò
*sequential_3/simple_rnn_6/while/Identity_1IdentityRsequential_3_simple_rnn_6_while_sequential_3_simple_rnn_6_while_maximum_iterations%^sequential_3/simple_rnn_6/while/NoOp*
T0*
_output_shapes
: §
*sequential_3/simple_rnn_6/while/Identity_2Identity'sequential_3/simple_rnn_6/while/add:z:0%^sequential_3/simple_rnn_6/while/NoOp*
T0*
_output_shapes
: ç
*sequential_3/simple_rnn_6/while/Identity_3IdentityTsequential_3/simple_rnn_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0%^sequential_3/simple_rnn_6/while/NoOp*
T0*
_output_shapes
: :éèÒË
*sequential_3/simple_rnn_6/while/Identity_4Identity:sequential_3/simple_rnn_6/while/simple_rnn_cell_6/Tanh:y:0%^sequential_3/simple_rnn_6/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ç
$sequential_3/simple_rnn_6/while/NoOpNoOpI^sequential_3/simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOpH^sequential_3/simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOpJ^sequential_3/simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "]
(sequential_3_simple_rnn_6_while_identity1sequential_3/simple_rnn_6/while/Identity:output:0"a
*sequential_3_simple_rnn_6_while_identity_13sequential_3/simple_rnn_6/while/Identity_1:output:0"a
*sequential_3_simple_rnn_6_while_identity_23sequential_3/simple_rnn_6/while/Identity_2:output:0"a
*sequential_3_simple_rnn_6_while_identity_33sequential_3/simple_rnn_6/while/Identity_3:output:0"a
*sequential_3_simple_rnn_6_while_identity_43sequential_3/simple_rnn_6/while/Identity_4:output:0"
Isequential_3_simple_rnn_6_while_sequential_3_simple_rnn_6_strided_slice_1Ksequential_3_simple_rnn_6_while_sequential_3_simple_rnn_6_strided_slice_1_0"¨
Qsequential_3_simple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resourceSsequential_3_simple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resource_0"ª
Rsequential_3_simple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resourceTsequential_3_simple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0"¦
Psequential_3_simple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resourceRsequential_3_simple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resource_0"
sequential_3_simple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_sequential_3_simple_rnn_6_tensorarrayunstack_tensorlistfromtensorsequential_3_simple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_sequential_3_simple_rnn_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2
Hsequential_3/simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOpHsequential_3/simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp2
Gsequential_3/simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOpGsequential_3/simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp2
Isequential_3/simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpIsequential_3/simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
!
Ñ
while_body_108459
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_02
 while_simple_rnn_cell_6_108481_0:@.
 while_simple_rnn_cell_6_108483_0:@2
 while_simple_rnn_cell_6_108485_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor0
while_simple_rnn_cell_6_108481:@,
while_simple_rnn_cell_6_108483:@0
while_simple_rnn_cell_6_108485:@@¢/while/simple_rnn_cell_6/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¢
/while/simple_rnn_cell_6/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_6_108481_0 while_simple_rnn_cell_6_108483_0 while_simple_rnn_cell_6_108485_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_6_layer_call_and_return_conditional_losses_108407á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_6/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity8while/simple_rnn_cell_6/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@~

while/NoOpNoOp0^while/simple_rnn_cell_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_6_108481 while_simple_rnn_cell_6_108481_0"B
while_simple_rnn_cell_6_108483 while_simple_rnn_cell_6_108483_0"B
while_simple_rnn_cell_6_108485 while_simple_rnn_cell_6_108485_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2b
/while/simple_rnn_cell_6/StatefulPartitionedCall/while/simple_rnn_cell_6/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
½,
È
while_body_110202
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_6_matmul_readvariableop_resource_0:@G
9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_6_matmul_readvariableop_resource:@E
7while_simple_rnn_cell_6_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_6_matmul_1_readvariableop_resource:@@¢.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_6/MatMul/ReadVariableOp¢/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¦
-while/simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_6_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0Ã
while/simple_rnn_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¾
while/simple_rnn_cell_6/BiasAddBiasAdd(while/simple_rnn_cell_6/MatMul:product:06while/simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ª
 while/simple_rnn_cell_6/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/simple_rnn_cell_6/addAddV2(while/simple_rnn_cell_6/BiasAdd:output:0*while/simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/simple_rnn_cell_6/TanhTanhwhile/simple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@É
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_6/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ}
while/Identity_4Identity while/simple_rnn_cell_6/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ß

while/NoOpNoOp/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_6_biasadd_readvariableop_resource9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_6_matmul_1_readvariableop_resource:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_6_matmul_readvariableop_resource8while_simple_rnn_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2`
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_6/MatMul/ReadVariableOp-while/simple_rnn_cell_6/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
°
¹
-__inference_simple_rnn_6_layer_call_fn_110019
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@@
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_6_layer_call_and_return_conditional_losses_108363|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
4

H__inference_simple_rnn_7_layer_call_and_return_conditional_losses_108655

inputs+
simple_rnn_cell_7_108580:	@à'
simple_rnn_cell_7_108582:	à,
simple_rnn_cell_7_108584:
àà
identity¢)simple_rnn_cell_7/StatefulPartitionedCall¢while;
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :às
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
:ÿÿÿÿÿÿÿÿÿàc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@D
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maské
)simple_rnn_cell_7/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_7_108580simple_rnn_cell_7_108582simple_rnn_cell_7_108584*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿà:ÿÿÿÿÿÿÿÿÿà*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_108579n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿà   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_7_108580simple_rnn_cell_7_108582simple_rnn_cell_7_108584*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_108592*
condR
while_cond_108591*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿà   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿàh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàz
NoOpNoOp*^simple_rnn_cell_7/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2V
)simple_rnn_cell_7/StatefulPartitionedCall)simple_rnn_cell_7/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ü
ª
while_cond_110569
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_110569___redundant_placeholder04
0while_while_cond_110569___redundant_placeholder14
0while_while_cond_110569___redundant_placeholder24
0while_while_cond_110569___redundant_placeholder3
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
.: : : : :ÿÿÿÿÿÿÿÿÿà: ::::: 
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
:ÿÿÿÿÿÿÿÿÿà:

_output_shapes
: :

_output_shapes
:
¼=
¿
H__inference_simple_rnn_7_layer_call_and_return_conditional_losses_109052

inputsC
0simple_rnn_cell_7_matmul_readvariableop_resource:	@à@
1simple_rnn_cell_7_biasadd_readvariableop_resource:	àF
2simple_rnn_cell_7_matmul_1_readvariableop_resource:
àà
identity¢(simple_rnn_cell_7/BiasAdd/ReadVariableOp¢'simple_rnn_cell_7/MatMul/ReadVariableOp¢)simple_rnn_cell_7/MatMul_1/ReadVariableOp¢while;
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :às
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
:ÿÿÿÿÿÿÿÿÿàc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@D
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
'simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_7_matmul_readvariableop_resource*
_output_shapes
:	@à*
dtype0 
simple_rnn_cell_7/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
(simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:à*
dtype0­
simple_rnn_cell_7/BiasAddBiasAdd"simple_rnn_cell_7/MatMul:product:00simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
)simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_7_matmul_1_readvariableop_resource* 
_output_shapes
:
àà*
dtype0
simple_rnn_cell_7/MatMul_1MatMulzeros:output:01simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
simple_rnn_cell_7/addAddV2"simple_rnn_cell_7/BiasAdd:output:0$simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàl
simple_rnn_cell_7/TanhTanhsimple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿà   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ú
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_7_matmul_readvariableop_resource1simple_rnn_cell_7_biasadd_readvariableop_resource2simple_rnn_cell_7_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_108986*
condR
while_cond_108985*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿà   Ã
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿàh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàÏ
NoOpNoOp)^simple_rnn_cell_7/BiasAdd/ReadVariableOp(^simple_rnn_cell_7/MatMul/ReadVariableOp*^simple_rnn_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 2T
(simple_rnn_cell_7/BiasAdd/ReadVariableOp(simple_rnn_cell_7/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_7/MatMul/ReadVariableOp'simple_rnn_cell_7/MatMul/ReadVariableOp2V
)simple_rnn_cell_7/MatMul_1/ReadVariableOp)simple_rnn_cell_7/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ò8
Î
simple_rnn_6_while_body_1098086
2simple_rnn_6_while_simple_rnn_6_while_loop_counter<
8simple_rnn_6_while_simple_rnn_6_while_maximum_iterations"
simple_rnn_6_while_placeholder$
 simple_rnn_6_while_placeholder_1$
 simple_rnn_6_while_placeholder_25
1simple_rnn_6_while_simple_rnn_6_strided_slice_1_0q
msimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensor_0W
Esimple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resource_0:@T
Fsimple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resource_0:@Y
Gsimple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0:@@
simple_rnn_6_while_identity!
simple_rnn_6_while_identity_1!
simple_rnn_6_while_identity_2!
simple_rnn_6_while_identity_3!
simple_rnn_6_while_identity_43
/simple_rnn_6_while_simple_rnn_6_strided_slice_1o
ksimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensorU
Csimple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resource:@R
Dsimple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resource:@W
Esimple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resource:@@¢;simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp¢:simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp¢<simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp
Dsimple_rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ç
6simple_rnn_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_6_while_placeholderMsimple_rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0À
:simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0ê
+simple_rnn_6/while/simple_rnn_cell_6/MatMulMatMul=simple_rnn_6/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¾
;simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0å
,simple_rnn_6/while/simple_rnn_cell_6/BiasAddBiasAdd5simple_rnn_6/while/simple_rnn_cell_6/MatMul:product:0Csimple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ä
<simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Ñ
-simple_rnn_6/while/simple_rnn_cell_6/MatMul_1MatMul simple_rnn_6_while_placeholder_2Dsimple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ó
(simple_rnn_6/while/simple_rnn_cell_6/addAddV25simple_rnn_6/while/simple_rnn_cell_6/BiasAdd:output:07simple_rnn_6/while/simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)simple_rnn_6/while/simple_rnn_cell_6/TanhTanh,simple_rnn_6/while/simple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ý
7simple_rnn_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_6_while_placeholder_1simple_rnn_6_while_placeholder-simple_rnn_6/while/simple_rnn_cell_6/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒZ
simple_rnn_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_6/while/addAddV2simple_rnn_6_while_placeholder!simple_rnn_6/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_6/while/add_1AddV22simple_rnn_6_while_simple_rnn_6_while_loop_counter#simple_rnn_6/while/add_1/y:output:0*
T0*
_output_shapes
: 
simple_rnn_6/while/IdentityIdentitysimple_rnn_6/while/add_1:z:0^simple_rnn_6/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_6/while/Identity_1Identity8simple_rnn_6_while_simple_rnn_6_while_maximum_iterations^simple_rnn_6/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_6/while/Identity_2Identitysimple_rnn_6/while/add:z:0^simple_rnn_6/while/NoOp*
T0*
_output_shapes
: À
simple_rnn_6/while/Identity_3IdentityGsimple_rnn_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_6/while/NoOp*
T0*
_output_shapes
: :éèÒ¤
simple_rnn_6/while/Identity_4Identity-simple_rnn_6/while/simple_rnn_cell_6/Tanh:y:0^simple_rnn_6/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
simple_rnn_6/while/NoOpNoOp<^simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp;^simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp=^simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_6_while_identity$simple_rnn_6/while/Identity:output:0"G
simple_rnn_6_while_identity_1&simple_rnn_6/while/Identity_1:output:0"G
simple_rnn_6_while_identity_2&simple_rnn_6/while/Identity_2:output:0"G
simple_rnn_6_while_identity_3&simple_rnn_6/while/Identity_3:output:0"G
simple_rnn_6_while_identity_4&simple_rnn_6/while/Identity_4:output:0"d
/simple_rnn_6_while_simple_rnn_6_strided_slice_11simple_rnn_6_while_simple_rnn_6_strided_slice_1_0"
Dsimple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resourceFsimple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resource_0"
Esimple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resourceGsimple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0"
Csimple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resourceEsimple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resource_0"Ü
ksimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensormsimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2z
;simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp;simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp2x
:simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp:simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp2|
<simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp<simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
£

õ
C__inference_dense_3_layer_call_and_return_conditional_losses_109071

inputs1
matmul_readvariableop_resource:	à!-
biasadd_readvariableop_resource:!
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	à!*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:!*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿà: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
 
_user_specified_nameinputs
Ú
ª
while_cond_110309
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_110309___redundant_placeholder04
0while_while_cond_110309___redundant_placeholder14
0while_while_cond_110309___redundant_placeholder24
0while_while_cond_110309___redundant_placeholder3
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
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
Ü
ª
while_cond_110677
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_110677___redundant_placeholder04
0while_while_cond_110677___redundant_placeholder14
0while_while_cond_110677___redundant_placeholder24
0while_while_cond_110677___redundant_placeholder3
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
.: : : : :ÿÿÿÿÿÿÿÿÿà: ::::: 
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
:ÿÿÿÿÿÿÿÿÿà:

_output_shapes
: :

_output_shapes
:


H__inference_sequential_3_layer_call_and_return_conditional_losses_109499
simple_rnn_6_input%
simple_rnn_6_109479:@!
simple_rnn_6_109481:@%
simple_rnn_6_109483:@@&
simple_rnn_7_109486:	@à"
simple_rnn_7_109488:	à'
simple_rnn_7_109490:
àà!
dense_3_109493:	à!
dense_3_109495:!
identity¢dense_3/StatefulPartitionedCall¢$simple_rnn_6/StatefulPartitionedCall¢$simple_rnn_7/StatefulPartitionedCall§
$simple_rnn_6/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_6_inputsimple_rnn_6_109479simple_rnn_6_109481simple_rnn_6_109483*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_6_layer_call_and_return_conditional_losses_109358¿
$simple_rnn_7/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_6/StatefulPartitionedCall:output:0simple_rnn_7_109486simple_rnn_7_109488simple_rnn_7_109490*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_7_layer_call_and_return_conditional_losses_109228
dense_3/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_7/StatefulPartitionedCall:output:0dense_3_109493dense_3_109495*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_109071w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¶
NoOpNoOp ^dense_3/StatefulPartitionedCall%^simple_rnn_6/StatefulPartitionedCall%^simple_rnn_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2L
$simple_rnn_6/StatefulPartitionedCall$simple_rnn_6/StatefulPartitionedCall2L
$simple_rnn_7/StatefulPartitionedCall$simple_rnn_7/StatefulPartitionedCall:_ [
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namesimple_rnn_6_input
4

H__inference_simple_rnn_7_layer_call_and_return_conditional_losses_108814

inputs+
simple_rnn_cell_7_108739:	@à'
simple_rnn_cell_7_108741:	à,
simple_rnn_cell_7_108743:
àà
identity¢)simple_rnn_cell_7/StatefulPartitionedCall¢while;
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :às
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
:ÿÿÿÿÿÿÿÿÿàc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@D
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maské
)simple_rnn_cell_7/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_7_108739simple_rnn_cell_7_108741simple_rnn_cell_7_108743*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿà:ÿÿÿÿÿÿÿÿÿà*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_108699n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿà   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_7_108739simple_rnn_cell_7_108741simple_rnn_cell_7_108743*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_108751*
condR
while_cond_108750*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿà   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿàh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàz
NoOpNoOp*^simple_rnn_cell_7/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2V
)simple_rnn_cell_7/StatefulPartitionedCall)simple_rnn_cell_7/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ú
ª
while_cond_110417
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_110417___redundant_placeholder04
0while_while_cond_110417___redundant_placeholder14
0while_while_cond_110417___redundant_placeholder24
0while_while_cond_110417___redundant_placeholder3
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
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
!
Ù
while_body_108592
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_03
 while_simple_rnn_cell_7_108614_0:	@à/
 while_simple_rnn_cell_7_108616_0:	à4
 while_simple_rnn_cell_7_108618_0:
àà
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor1
while_simple_rnn_cell_7_108614:	@à-
while_simple_rnn_cell_7_108616:	à2
while_simple_rnn_cell_7_108618:
àà¢/while/simple_rnn_cell_7/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0¤
/while/simple_rnn_cell_7/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_7_108614_0 while_simple_rnn_cell_7_108616_0 while_simple_rnn_cell_7_108618_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿà:ÿÿÿÿÿÿÿÿÿà*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_108579á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_7/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity8while/simple_rnn_cell_7/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà~

while/NoOpNoOp0^while/simple_rnn_cell_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_7_108614 while_simple_rnn_cell_7_108614_0"B
while_simple_rnn_cell_7_108616 while_simple_rnn_cell_7_108616_0"B
while_simple_rnn_cell_7_108618 while_simple_rnn_cell_7_108618_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : 2b
/while/simple_rnn_cell_7/StatefulPartitionedCall/while/simple_rnn_cell_7/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿà:

_output_shapes
: :

_output_shapes
: 
¼

¡
simple_rnn_7_while_cond_1099116
2simple_rnn_7_while_simple_rnn_7_while_loop_counter<
8simple_rnn_7_while_simple_rnn_7_while_maximum_iterations"
simple_rnn_7_while_placeholder$
 simple_rnn_7_while_placeholder_1$
 simple_rnn_7_while_placeholder_28
4simple_rnn_7_while_less_simple_rnn_7_strided_slice_1N
Jsimple_rnn_7_while_simple_rnn_7_while_cond_109911___redundant_placeholder0N
Jsimple_rnn_7_while_simple_rnn_7_while_cond_109911___redundant_placeholder1N
Jsimple_rnn_7_while_simple_rnn_7_while_cond_109911___redundant_placeholder2N
Jsimple_rnn_7_while_simple_rnn_7_while_cond_109911___redundant_placeholder3
simple_rnn_7_while_identity

simple_rnn_7/while/LessLesssimple_rnn_7_while_placeholder4simple_rnn_7_while_less_simple_rnn_7_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_7/while/IdentityIdentitysimple_rnn_7/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_7_while_identity$simple_rnn_7/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿà: ::::: 
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
:ÿÿÿÿÿÿÿÿÿà:

_output_shapes
: :

_output_shapes
:

ê
M__inference_simple_rnn_cell_6_layer_call_and_return_conditional_losses_111042

inputs
states_00
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0

·
-__inference_simple_rnn_6_layer_call_fn_110041

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
identity¢StatefulPartitionedCallî
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_6_layer_call_and_return_conditional_losses_108937s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
à=
½
H__inference_simple_rnn_6_layer_call_and_return_conditional_losses_110268
inputs_0B
0simple_rnn_cell_6_matmul_readvariableop_resource:@?
1simple_rnn_cell_6_biasadd_readvariableop_resource:@D
2simple_rnn_cell_6_matmul_1_readvariableop_resource:@@
identity¢(simple_rnn_cell_6/BiasAdd/ReadVariableOp¢'simple_rnn_cell_6/MatMul/ReadVariableOp¢)simple_rnn_cell_6/MatMul_1/ReadVariableOp¢while=
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
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
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
'simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_6_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
simple_rnn_cell_6/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¬
simple_rnn_cell_6/BiasAddBiasAdd"simple_rnn_cell_6/MatMul:product:00simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_6_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_6/MatMul_1MatMulzeros:output:01simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
simple_rnn_cell_6/addAddV2"simple_rnn_cell_6/BiasAdd:output:0$simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
simple_rnn_cell_6/TanhTanhsimple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ø
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_6_matmul_readvariableop_resource1simple_rnn_cell_6_biasadd_readvariableop_resource2simple_rnn_cell_6_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_110202*
condR
while_cond_110201*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Ï
NoOpNoOp)^simple_rnn_cell_6/BiasAdd/ReadVariableOp(^simple_rnn_cell_6/MatMul/ReadVariableOp*^simple_rnn_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_6/BiasAdd/ReadVariableOp(simple_rnn_cell_6/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_6/MatMul/ReadVariableOp'simple_rnn_cell_6/MatMul/ReadVariableOp2V
)simple_rnn_cell_6/MatMul_1/ReadVariableOp)simple_rnn_cell_6/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ºK

__inference__traced_save_111226
file_prefix-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopD
@savev2_simple_rnn_6_simple_rnn_cell_6_kernel_read_readvariableopN
Jsavev2_simple_rnn_6_simple_rnn_cell_6_recurrent_kernel_read_readvariableopB
>savev2_simple_rnn_6_simple_rnn_cell_6_bias_read_readvariableopD
@savev2_simple_rnn_7_simple_rnn_cell_7_kernel_read_readvariableopN
Jsavev2_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_read_readvariableopB
>savev2_simple_rnn_7_simple_rnn_cell_7_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableopK
Gsavev2_adam_simple_rnn_6_simple_rnn_cell_6_kernel_m_read_readvariableopU
Qsavev2_adam_simple_rnn_6_simple_rnn_cell_6_recurrent_kernel_m_read_readvariableopI
Esavev2_adam_simple_rnn_6_simple_rnn_cell_6_bias_m_read_readvariableopK
Gsavev2_adam_simple_rnn_7_simple_rnn_cell_7_kernel_m_read_readvariableopU
Qsavev2_adam_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_m_read_readvariableopI
Esavev2_adam_simple_rnn_7_simple_rnn_cell_7_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableopK
Gsavev2_adam_simple_rnn_6_simple_rnn_cell_6_kernel_v_read_readvariableopU
Qsavev2_adam_simple_rnn_6_simple_rnn_cell_6_recurrent_kernel_v_read_readvariableopI
Esavev2_adam_simple_rnn_6_simple_rnn_cell_6_bias_v_read_readvariableopK
Gsavev2_adam_simple_rnn_7_simple_rnn_cell_7_kernel_v_read_readvariableopU
Qsavev2_adam_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_v_read_readvariableopI
Esavev2_adam_simple_rnn_7_simple_rnn_cell_7_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ¡
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*Ê
valueÀB½"B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH±
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B é
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop@savev2_simple_rnn_6_simple_rnn_cell_6_kernel_read_readvariableopJsavev2_simple_rnn_6_simple_rnn_cell_6_recurrent_kernel_read_readvariableop>savev2_simple_rnn_6_simple_rnn_cell_6_bias_read_readvariableop@savev2_simple_rnn_7_simple_rnn_cell_7_kernel_read_readvariableopJsavev2_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_read_readvariableop>savev2_simple_rnn_7_simple_rnn_cell_7_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableopGsavev2_adam_simple_rnn_6_simple_rnn_cell_6_kernel_m_read_readvariableopQsavev2_adam_simple_rnn_6_simple_rnn_cell_6_recurrent_kernel_m_read_readvariableopEsavev2_adam_simple_rnn_6_simple_rnn_cell_6_bias_m_read_readvariableopGsavev2_adam_simple_rnn_7_simple_rnn_cell_7_kernel_m_read_readvariableopQsavev2_adam_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_m_read_readvariableopEsavev2_adam_simple_rnn_7_simple_rnn_cell_7_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableopGsavev2_adam_simple_rnn_6_simple_rnn_cell_6_kernel_v_read_readvariableopQsavev2_adam_simple_rnn_6_simple_rnn_cell_6_recurrent_kernel_v_read_readvariableopEsavev2_adam_simple_rnn_6_simple_rnn_cell_6_bias_v_read_readvariableopGsavev2_adam_simple_rnn_7_simple_rnn_cell_7_kernel_v_read_readvariableopQsavev2_adam_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_v_read_readvariableopEsavev2_adam_simple_rnn_7_simple_rnn_cell_7_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*
_input_shapesô
ñ: :	à!:!: : : : : :@:@@:@:	@à:
àà:à: : : : :	à!:!:@:@@:@:	@à:
àà:à:	à!:!:@:@@:@:	@à:
àà:à: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	à!: 

_output_shapes
:!:
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
:	@à:&"
 
_output_shapes
:
àà:!

_output_shapes	
:à:
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
:	à!: 

_output_shapes
:!:$ 

_output_shapes

:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:%!

_output_shapes
:	@à:&"
 
_output_shapes
:
àà:!

_output_shapes	
:à:%!

_output_shapes
:	à!: 

_output_shapes
:!:$ 

_output_shapes

:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:%!

_output_shapes
:	@à:& "
 
_output_shapes
:
àà:!!

_output_shapes	
:à:"

_output_shapes
: 
ã
þ
H__inference_sequential_3_layer_call_and_return_conditional_losses_109078

inputs%
simple_rnn_6_108938:@!
simple_rnn_6_108940:@%
simple_rnn_6_108942:@@&
simple_rnn_7_109053:	@à"
simple_rnn_7_109055:	à'
simple_rnn_7_109057:
àà!
dense_3_109072:	à!
dense_3_109074:!
identity¢dense_3/StatefulPartitionedCall¢$simple_rnn_6/StatefulPartitionedCall¢$simple_rnn_7/StatefulPartitionedCall
$simple_rnn_6/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_6_108938simple_rnn_6_108940simple_rnn_6_108942*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_6_layer_call_and_return_conditional_losses_108937¿
$simple_rnn_7/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_6/StatefulPartitionedCall:output:0simple_rnn_7_109053simple_rnn_7_109055simple_rnn_7_109057*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_7_layer_call_and_return_conditional_losses_109052
dense_3/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_7/StatefulPartitionedCall:output:0dense_3_109072dense_3_109074*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_109071w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¶
NoOpNoOp ^dense_3/StatefulPartitionedCall%^simple_rnn_6/StatefulPartitionedCall%^simple_rnn_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2L
$simple_rnn_6/StatefulPartitionedCall$simple_rnn_6/StatefulPartitionedCall2L
$simple_rnn_7/StatefulPartitionedCall$simple_rnn_7/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½,
È
while_body_110310
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_6_matmul_readvariableop_resource_0:@G
9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_6_matmul_readvariableop_resource:@E
7while_simple_rnn_cell_6_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_6_matmul_1_readvariableop_resource:@@¢.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_6/MatMul/ReadVariableOp¢/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¦
-while/simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_6_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0Ã
while/simple_rnn_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¾
while/simple_rnn_cell_6/BiasAddBiasAdd(while/simple_rnn_cell_6/MatMul:product:06while/simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ª
 while/simple_rnn_cell_6/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/simple_rnn_cell_6/addAddV2(while/simple_rnn_cell_6/BiasAdd:output:0*while/simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/simple_rnn_cell_6/TanhTanhwhile/simple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@É
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_6/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ}
while/Identity_4Identity while/simple_rnn_cell_6/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ß

while/NoOpNoOp/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_6_biasadd_readvariableop_resource9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_6_matmul_1_readvariableop_resource:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_6_matmul_readvariableop_resource8while_simple_rnn_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2`
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_6/MatMul/ReadVariableOp-while/simple_rnn_cell_6/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
¢=
»
H__inference_simple_rnn_6_layer_call_and_return_conditional_losses_110484

inputsB
0simple_rnn_cell_6_matmul_readvariableop_resource:@?
1simple_rnn_cell_6_biasadd_readvariableop_resource:@D
2simple_rnn_cell_6_matmul_1_readvariableop_resource:@@
identity¢(simple_rnn_cell_6/BiasAdd/ReadVariableOp¢'simple_rnn_cell_6/MatMul/ReadVariableOp¢)simple_rnn_cell_6/MatMul_1/ReadVariableOp¢while;
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
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
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
'simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_6_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
simple_rnn_cell_6/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¬
simple_rnn_cell_6/BiasAddBiasAdd"simple_rnn_cell_6/MatMul:product:00simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_6_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_6/MatMul_1MatMulzeros:output:01simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
simple_rnn_cell_6/addAddV2"simple_rnn_cell_6/BiasAdd:output:0$simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
simple_rnn_cell_6/TanhTanhsimple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ø
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_6_matmul_readvariableop_resource1simple_rnn_cell_6_biasadd_readvariableop_resource2simple_rnn_cell_6_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_110418*
condR
while_cond_110417*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ï
NoOpNoOp)^simple_rnn_cell_6/BiasAdd/ReadVariableOp(^simple_rnn_cell_6/MatMul/ReadVariableOp*^simple_rnn_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_6/BiasAdd/ReadVariableOp(simple_rnn_cell_6/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_6/MatMul/ReadVariableOp'simple_rnn_cell_6/MatMul/ReadVariableOp2V
)simple_rnn_cell_6/MatMul_1/ReadVariableOp)simple_rnn_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×	
Å
-__inference_sequential_3_layer_call_fn_109547

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:	@à
	unknown_3:	à
	unknown_4:
àà
	unknown_5:	à!
	unknown_6:!
identity¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_109413o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ü
H__inference_sequential_3_layer_call_and_return_conditional_losses_109766

inputsO
=simple_rnn_6_simple_rnn_cell_6_matmul_readvariableop_resource:@L
>simple_rnn_6_simple_rnn_cell_6_biasadd_readvariableop_resource:@Q
?simple_rnn_6_simple_rnn_cell_6_matmul_1_readvariableop_resource:@@P
=simple_rnn_7_simple_rnn_cell_7_matmul_readvariableop_resource:	@àM
>simple_rnn_7_simple_rnn_cell_7_biasadd_readvariableop_resource:	àS
?simple_rnn_7_simple_rnn_cell_7_matmul_1_readvariableop_resource:
àà9
&dense_3_matmul_readvariableop_resource:	à!5
'dense_3_biasadd_readvariableop_resource:!
identity¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp¢5simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOp¢4simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOp¢6simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOp¢simple_rnn_6/while¢5simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp¢4simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp¢6simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp¢simple_rnn_7/whileH
simple_rnn_6/ShapeShapeinputs*
T0*
_output_shapes
:j
 simple_rnn_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_6/strided_sliceStridedSlicesimple_rnn_6/Shape:output:0)simple_rnn_6/strided_slice/stack:output:0+simple_rnn_6/strided_slice/stack_1:output:0+simple_rnn_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
simple_rnn_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
simple_rnn_6/zeros/packedPack#simple_rnn_6/strided_slice:output:0$simple_rnn_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
simple_rnn_6/zerosFill"simple_rnn_6/zeros/packed:output:0!simple_rnn_6/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@p
simple_rnn_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
simple_rnn_6/transpose	Transposeinputs$simple_rnn_6/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
simple_rnn_6/Shape_1Shapesimple_rnn_6/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_6/strided_slice_1StridedSlicesimple_rnn_6/Shape_1:output:0+simple_rnn_6/strided_slice_1/stack:output:0-simple_rnn_6/strided_slice_1/stack_1:output:0-simple_rnn_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÛ
simple_rnn_6/TensorArrayV2TensorListReserve1simple_rnn_6/TensorArrayV2/element_shape:output:0%simple_rnn_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Bsimple_rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
4simple_rnn_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_6/transpose:y:0Ksimple_rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒl
"simple_rnn_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ª
simple_rnn_6/strided_slice_2StridedSlicesimple_rnn_6/transpose:y:0+simple_rnn_6/strided_slice_2/stack:output:0-simple_rnn_6/strided_slice_2/stack_1:output:0-simple_rnn_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask²
4simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOp=simple_rnn_6_simple_rnn_cell_6_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Æ
%simple_rnn_6/simple_rnn_cell_6/MatMulMatMul%simple_rnn_6/strided_slice_2:output:0<simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@°
5simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_6_simple_rnn_cell_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ó
&simple_rnn_6/simple_rnn_cell_6/BiasAddBiasAdd/simple_rnn_6/simple_rnn_cell_6/MatMul:product:0=simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¶
6simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_6_simple_rnn_cell_6_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0À
'simple_rnn_6/simple_rnn_cell_6/MatMul_1MatMulsimple_rnn_6/zeros:output:0>simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Á
"simple_rnn_6/simple_rnn_cell_6/addAddV2/simple_rnn_6/simple_rnn_cell_6/BiasAdd:output:01simple_rnn_6/simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#simple_rnn_6/simple_rnn_cell_6/TanhTanh&simple_rnn_6/simple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@{
*simple_rnn_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ß
simple_rnn_6/TensorArrayV2_1TensorListReserve3simple_rnn_6/TensorArrayV2_1/element_shape:output:0%simple_rnn_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒS
simple_rnn_6/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿa
simple_rnn_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
simple_rnn_6/whileWhile(simple_rnn_6/while/loop_counter:output:0.simple_rnn_6/while/maximum_iterations:output:0simple_rnn_6/time:output:0%simple_rnn_6/TensorArrayV2_1:handle:0simple_rnn_6/zeros:output:0%simple_rnn_6/strided_slice_1:output:0Dsimple_rnn_6/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_6_simple_rnn_cell_6_matmul_readvariableop_resource>simple_rnn_6_simple_rnn_cell_6_biasadd_readvariableop_resource?simple_rnn_6_simple_rnn_cell_6_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( **
body"R 
simple_rnn_6_while_body_109589**
cond"R 
simple_rnn_6_while_cond_109588*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
=simple_rnn_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   é
/simple_rnn_6/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_6/while:output:3Fsimple_rnn_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0u
"simple_rnn_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿn
$simple_rnn_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:È
simple_rnn_6/strided_slice_3StridedSlice8simple_rnn_6/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_6/strided_slice_3/stack:output:0-simple_rnn_6/strided_slice_3/stack_1:output:0-simple_rnn_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskr
simple_rnn_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ½
simple_rnn_6/transpose_1	Transpose8simple_rnn_6/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
simple_rnn_7/ShapeShapesimple_rnn_6/transpose_1:y:0*
T0*
_output_shapes
:j
 simple_rnn_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_7/strided_sliceStridedSlicesimple_rnn_7/Shape:output:0)simple_rnn_7/strided_slice/stack:output:0+simple_rnn_7/strided_slice/stack_1:output:0+simple_rnn_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_7/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :à
simple_rnn_7/zeros/packedPack#simple_rnn_7/strided_slice:output:0$simple_rnn_7/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_7/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
simple_rnn_7/zerosFill"simple_rnn_7/zeros/packed:output:0!simple_rnn_7/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàp
simple_rnn_7/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
simple_rnn_7/transpose	Transposesimple_rnn_6/transpose_1:y:0$simple_rnn_7/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
simple_rnn_7/Shape_1Shapesimple_rnn_7/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_7/strided_slice_1StridedSlicesimple_rnn_7/Shape_1:output:0+simple_rnn_7/strided_slice_1/stack:output:0-simple_rnn_7/strided_slice_1/stack_1:output:0-simple_rnn_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_7/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÛ
simple_rnn_7/TensorArrayV2TensorListReserve1simple_rnn_7/TensorArrayV2/element_shape:output:0%simple_rnn_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Bsimple_rnn_7/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
4simple_rnn_7/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_7/transpose:y:0Ksimple_rnn_7/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒl
"simple_rnn_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ª
simple_rnn_7/strided_slice_2StridedSlicesimple_rnn_7/transpose:y:0+simple_rnn_7/strided_slice_2/stack:output:0-simple_rnn_7/strided_slice_2/stack_1:output:0-simple_rnn_7/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask³
4simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp=simple_rnn_7_simple_rnn_cell_7_matmul_readvariableop_resource*
_output_shapes
:	@à*
dtype0Ç
%simple_rnn_7/simple_rnn_cell_7/MatMulMatMul%simple_rnn_7/strided_slice_2:output:0<simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà±
5simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_7_simple_rnn_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:à*
dtype0Ô
&simple_rnn_7/simple_rnn_cell_7/BiasAddBiasAdd/simple_rnn_7/simple_rnn_cell_7/MatMul:product:0=simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà¸
6simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_7_simple_rnn_cell_7_matmul_1_readvariableop_resource* 
_output_shapes
:
àà*
dtype0Á
'simple_rnn_7/simple_rnn_cell_7/MatMul_1MatMulsimple_rnn_7/zeros:output:0>simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàÂ
"simple_rnn_7/simple_rnn_cell_7/addAddV2/simple_rnn_7/simple_rnn_cell_7/BiasAdd:output:01simple_rnn_7/simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
#simple_rnn_7/simple_rnn_cell_7/TanhTanh&simple_rnn_7/simple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà{
*simple_rnn_7/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿà   ß
simple_rnn_7/TensorArrayV2_1TensorListReserve3simple_rnn_7/TensorArrayV2_1/element_shape:output:0%simple_rnn_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒS
simple_rnn_7/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_7/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿa
simple_rnn_7/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
simple_rnn_7/whileWhile(simple_rnn_7/while/loop_counter:output:0.simple_rnn_7/while/maximum_iterations:output:0simple_rnn_7/time:output:0%simple_rnn_7/TensorArrayV2_1:handle:0simple_rnn_7/zeros:output:0%simple_rnn_7/strided_slice_1:output:0Dsimple_rnn_7/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_7_simple_rnn_cell_7_matmul_readvariableop_resource>simple_rnn_7_simple_rnn_cell_7_biasadd_readvariableop_resource?simple_rnn_7_simple_rnn_cell_7_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( **
body"R 
simple_rnn_7_while_body_109693**
cond"R 
simple_rnn_7_while_cond_109692*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : *
parallel_iterations 
=simple_rnn_7/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿà   ê
/simple_rnn_7/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_7/while:output:3Fsimple_rnn_7/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*
element_dtype0u
"simple_rnn_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿn
$simple_rnn_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
simple_rnn_7/strided_slice_3StridedSlice8simple_rnn_7/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_7/strided_slice_3/stack:output:0-simple_rnn_7/strided_slice_3/stack_1:output:0-simple_rnn_7/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*
shrink_axis_maskr
simple_rnn_7/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¾
simple_rnn_7/transpose_1	Transpose8simple_rnn_7/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_7/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	à!*
dtype0
dense_3/MatMulMatMul%simple_rnn_7/strided_slice_3:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!f
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!h
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp6^simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOp5^simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOp7^simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOp^simple_rnn_6/while6^simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp5^simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp7^simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp^simple_rnn_7/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2n
5simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOp5simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOp2l
4simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOp4simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOp2p
6simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOp6simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOp2(
simple_rnn_6/whilesimple_rnn_6/while2n
5simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp5simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp2l
4simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp4simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp2p
6simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp6simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp2(
simple_rnn_7/whilesimple_rnn_7/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ,
Ð
while_body_108986
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
8while_simple_rnn_cell_7_matmul_readvariableop_resource_0:	@àH
9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0:	àN
:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0:
àà
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
6while_simple_rnn_cell_7_matmul_readvariableop_resource:	@àF
7while_simple_rnn_cell_7_biasadd_readvariableop_resource:	àL
8while_simple_rnn_cell_7_matmul_1_readvariableop_resource:
àà¢.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_7/MatMul/ReadVariableOp¢/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0§
-while/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_7_matmul_readvariableop_resource_0*
_output_shapes
:	@à*
dtype0Ä
while/simple_rnn_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà¥
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:à*
dtype0¿
while/simple_rnn_cell_7/BiasAddBiasAdd(while/simple_rnn_cell_7/MatMul:product:06while/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà¬
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0* 
_output_shapes
:
àà*
dtype0«
 while/simple_rnn_cell_7/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà­
while/simple_rnn_cell_7/addAddV2(while/simple_rnn_cell_7/BiasAdd:output:0*while/simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàx
while/simple_rnn_cell_7/TanhTanhwhile/simple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàÉ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_7/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ~
while/Identity_4Identity while/simple_rnn_cell_7/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàß

while/NoOpNoOp/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_7_biasadd_readvariableop_resource9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_7_matmul_1_readvariableop_resource:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_7_matmul_readvariableop_resource8while_simple_rnn_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : 2`
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_7/MatMul/ReadVariableOp-while/simple_rnn_cell_7/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿà:

_output_shapes
: :

_output_shapes
: 
¼=
¿
H__inference_simple_rnn_7_layer_call_and_return_conditional_losses_110852

inputsC
0simple_rnn_cell_7_matmul_readvariableop_resource:	@à@
1simple_rnn_cell_7_biasadd_readvariableop_resource:	àF
2simple_rnn_cell_7_matmul_1_readvariableop_resource:
àà
identity¢(simple_rnn_cell_7/BiasAdd/ReadVariableOp¢'simple_rnn_cell_7/MatMul/ReadVariableOp¢)simple_rnn_cell_7/MatMul_1/ReadVariableOp¢while;
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :às
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
:ÿÿÿÿÿÿÿÿÿàc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@D
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
'simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_7_matmul_readvariableop_resource*
_output_shapes
:	@à*
dtype0 
simple_rnn_cell_7/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
(simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:à*
dtype0­
simple_rnn_cell_7/BiasAddBiasAdd"simple_rnn_cell_7/MatMul:product:00simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
)simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_7_matmul_1_readvariableop_resource* 
_output_shapes
:
àà*
dtype0
simple_rnn_cell_7/MatMul_1MatMulzeros:output:01simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
simple_rnn_cell_7/addAddV2"simple_rnn_cell_7/BiasAdd:output:0$simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàl
simple_rnn_cell_7/TanhTanhsimple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿà   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ú
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_7_matmul_readvariableop_resource1simple_rnn_cell_7_biasadd_readvariableop_resource2simple_rnn_cell_7_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_110786*
condR
while_cond_110785*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿà   Ã
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿàh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàÏ
NoOpNoOp)^simple_rnn_cell_7/BiasAdd/ReadVariableOp(^simple_rnn_cell_7/MatMul/ReadVariableOp*^simple_rnn_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 2T
(simple_rnn_cell_7/BiasAdd/ReadVariableOp(simple_rnn_cell_7/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_7/MatMul/ReadVariableOp'simple_rnn_cell_7/MatMul/ReadVariableOp2V
)simple_rnn_cell_7/MatMul_1/ReadVariableOp)simple_rnn_cell_7/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¹

Ú
2__inference_simple_rnn_cell_6_layer_call_fn_111008

inputs
states_0
unknown:@
	unknown_0:@
	unknown_1:@@
identity

identity_1¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_6_layer_call_and_return_conditional_losses_108407o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0
¼=
¿
H__inference_simple_rnn_7_layer_call_and_return_conditional_losses_110960

inputsC
0simple_rnn_cell_7_matmul_readvariableop_resource:	@à@
1simple_rnn_cell_7_biasadd_readvariableop_resource:	àF
2simple_rnn_cell_7_matmul_1_readvariableop_resource:
àà
identity¢(simple_rnn_cell_7/BiasAdd/ReadVariableOp¢'simple_rnn_cell_7/MatMul/ReadVariableOp¢)simple_rnn_cell_7/MatMul_1/ReadVariableOp¢while;
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :às
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
:ÿÿÿÿÿÿÿÿÿàc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@D
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
'simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_7_matmul_readvariableop_resource*
_output_shapes
:	@à*
dtype0 
simple_rnn_cell_7/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
(simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:à*
dtype0­
simple_rnn_cell_7/BiasAddBiasAdd"simple_rnn_cell_7/MatMul:product:00simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
)simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_7_matmul_1_readvariableop_resource* 
_output_shapes
:
àà*
dtype0
simple_rnn_cell_7/MatMul_1MatMulzeros:output:01simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
simple_rnn_cell_7/addAddV2"simple_rnn_cell_7/BiasAdd:output:0$simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàl
simple_rnn_cell_7/TanhTanhsimple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿà   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ú
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_7_matmul_readvariableop_resource1simple_rnn_cell_7_biasadd_readvariableop_resource2simple_rnn_cell_7_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_110894*
condR
while_cond_110893*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿà   Ã
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿàh
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàÏ
NoOpNoOp)^simple_rnn_cell_7/BiasAdd/ReadVariableOp(^simple_rnn_cell_7/MatMul/ReadVariableOp*^simple_rnn_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 2T
(simple_rnn_cell_7/BiasAdd/ReadVariableOp(simple_rnn_cell_7/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_7/MatMul/ReadVariableOp'simple_rnn_cell_7/MatMul/ReadVariableOp2V
)simple_rnn_cell_7/MatMul_1/ReadVariableOp)simple_rnn_cell_7/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ú
ª
while_cond_110201
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_110201___redundant_placeholder04
0while_while_cond_110201___redundant_placeholder14
0while_while_cond_110201___redundant_placeholder24
0while_while_cond_110201___redundant_placeholder3
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
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
ã
þ
H__inference_sequential_3_layer_call_and_return_conditional_losses_109413

inputs%
simple_rnn_6_109393:@!
simple_rnn_6_109395:@%
simple_rnn_6_109397:@@&
simple_rnn_7_109400:	@à"
simple_rnn_7_109402:	à'
simple_rnn_7_109404:
àà!
dense_3_109407:	à!
dense_3_109409:!
identity¢dense_3/StatefulPartitionedCall¢$simple_rnn_6/StatefulPartitionedCall¢$simple_rnn_7/StatefulPartitionedCall
$simple_rnn_6/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_6_109393simple_rnn_6_109395simple_rnn_6_109397*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_6_layer_call_and_return_conditional_losses_109358¿
$simple_rnn_7/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_6/StatefulPartitionedCall:output:0simple_rnn_7_109400simple_rnn_7_109402simple_rnn_7_109404*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_7_layer_call_and_return_conditional_losses_109228
dense_3/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_7/StatefulPartitionedCall:output:0dense_3_109407dense_3_109409*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_109071w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¶
NoOpNoOp ^dense_3/StatefulPartitionedCall%^simple_rnn_6/StatefulPartitionedCall%^simple_rnn_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2L
$simple_rnn_6/StatefulPartitionedCall$simple_rnn_6/StatefulPartitionedCall2L
$simple_rnn_7/StatefulPartitionedCall$simple_rnn_7/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

½
-__inference_simple_rnn_7_layer_call_fn_110506
inputs_0
unknown:	@à
	unknown_0:	à
	unknown_1:
àà
identity¢StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_7_layer_call_and_return_conditional_losses_108814p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
º

¡
simple_rnn_6_while_cond_1098076
2simple_rnn_6_while_simple_rnn_6_while_loop_counter<
8simple_rnn_6_while_simple_rnn_6_while_maximum_iterations"
simple_rnn_6_while_placeholder$
 simple_rnn_6_while_placeholder_1$
 simple_rnn_6_while_placeholder_28
4simple_rnn_6_while_less_simple_rnn_6_strided_slice_1N
Jsimple_rnn_6_while_simple_rnn_6_while_cond_109807___redundant_placeholder0N
Jsimple_rnn_6_while_simple_rnn_6_while_cond_109807___redundant_placeholder1N
Jsimple_rnn_6_while_simple_rnn_6_while_cond_109807___redundant_placeholder2N
Jsimple_rnn_6_while_simple_rnn_6_while_cond_109807___redundant_placeholder3
simple_rnn_6_while_identity

simple_rnn_6/while/LessLesssimple_rnn_6_while_placeholder4simple_rnn_6_while_less_simple_rnn_6_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_6/while/IdentityIdentitysimple_rnn_6/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_6_while_identity$simple_rnn_6/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:

ì
M__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_108699

inputs

states1
matmul_readvariableop_resource:	@à.
biasadd_readvariableop_resource:	à4
 matmul_1_readvariableop_resource:
àà
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@à*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:à*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
àà*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàe
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàH
TanhTanhadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàX
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàZ

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿà: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
 
_user_specified_namestates
¹

Ú
2__inference_simple_rnn_cell_6_layer_call_fn_110994

inputs
states_0
unknown:@
	unknown_0:@
	unknown_1:@@
identity

identity_1¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_6_layer_call_and_return_conditional_losses_108287o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0

ê
M__inference_simple_rnn_cell_6_layer_call_and_return_conditional_losses_111025

inputs
states_00
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0
à=
½
H__inference_simple_rnn_6_layer_call_and_return_conditional_losses_110160
inputs_0B
0simple_rnn_cell_6_matmul_readvariableop_resource:@?
1simple_rnn_cell_6_biasadd_readvariableop_resource:@D
2simple_rnn_cell_6_matmul_1_readvariableop_resource:@@
identity¢(simple_rnn_cell_6/BiasAdd/ReadVariableOp¢'simple_rnn_cell_6/MatMul/ReadVariableOp¢)simple_rnn_cell_6/MatMul_1/ReadVariableOp¢while=
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
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
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
'simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_6_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
simple_rnn_cell_6/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¬
simple_rnn_cell_6/BiasAddBiasAdd"simple_rnn_cell_6/MatMul:product:00simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_6_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_6/MatMul_1MatMulzeros:output:01simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
simple_rnn_cell_6/addAddV2"simple_rnn_cell_6/BiasAdd:output:0$simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
simple_rnn_cell_6/TanhTanhsimple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ø
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_6_matmul_readvariableop_resource1simple_rnn_cell_6_biasadd_readvariableop_resource2simple_rnn_cell_6_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_110094*
condR
while_cond_110093*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Ï
NoOpNoOp)^simple_rnn_cell_6/BiasAdd/ReadVariableOp(^simple_rnn_cell_6/MatMul/ReadVariableOp*^simple_rnn_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_6/BiasAdd/ReadVariableOp(simple_rnn_cell_6/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_6/MatMul/ReadVariableOp'simple_rnn_cell_6/MatMul/ReadVariableOp2V
)simple_rnn_cell_6/MatMul_1/ReadVariableOp)simple_rnn_cell_6/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ñ,
Ð
while_body_109162
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
8while_simple_rnn_cell_7_matmul_readvariableop_resource_0:	@àH
9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0:	àN
:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0:
àà
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
6while_simple_rnn_cell_7_matmul_readvariableop_resource:	@àF
7while_simple_rnn_cell_7_biasadd_readvariableop_resource:	àL
8while_simple_rnn_cell_7_matmul_1_readvariableop_resource:
àà¢.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_7/MatMul/ReadVariableOp¢/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0§
-while/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_7_matmul_readvariableop_resource_0*
_output_shapes
:	@à*
dtype0Ä
while/simple_rnn_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà¥
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:à*
dtype0¿
while/simple_rnn_cell_7/BiasAddBiasAdd(while/simple_rnn_cell_7/MatMul:product:06while/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà¬
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0* 
_output_shapes
:
àà*
dtype0«
 while/simple_rnn_cell_7/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà­
while/simple_rnn_cell_7/addAddV2(while/simple_rnn_cell_7/BiasAdd:output:0*while/simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàx
while/simple_rnn_cell_7/TanhTanhwhile/simple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàÉ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_7/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ~
while/Identity_4Identity while/simple_rnn_cell_7/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàß

while/NoOpNoOp/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_7_biasadd_readvariableop_resource9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_7_matmul_1_readvariableop_resource:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_7_matmul_readvariableop_resource8while_simple_rnn_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : 2`
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_7/MatMul/ReadVariableOp-while/simple_rnn_cell_7/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿà:

_output_shapes
: :

_output_shapes
: 
û	
Ñ
-__inference_sequential_3_layer_call_fn_109453
simple_rnn_6_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:	@à
	unknown_3:	à
	unknown_4:
àà
	unknown_5:	à!
	unknown_6:!
identity¢StatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_109413o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namesimple_rnn_6_input
!
Ù
while_body_108751
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_03
 while_simple_rnn_cell_7_108773_0:	@à/
 while_simple_rnn_cell_7_108775_0:	à4
 while_simple_rnn_cell_7_108777_0:
àà
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor1
while_simple_rnn_cell_7_108773:	@à-
while_simple_rnn_cell_7_108775:	à2
while_simple_rnn_cell_7_108777:
àà¢/while/simple_rnn_cell_7/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0¤
/while/simple_rnn_cell_7/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_7_108773_0 while_simple_rnn_cell_7_108775_0 while_simple_rnn_cell_7_108777_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿà:ÿÿÿÿÿÿÿÿÿà*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_108699á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_7/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity8while/simple_rnn_cell_7/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà~

while/NoOpNoOp0^while/simple_rnn_cell_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_7_108773 while_simple_rnn_cell_7_108773_0"B
while_simple_rnn_cell_7_108775 while_simple_rnn_cell_7_108775_0"B
while_simple_rnn_cell_7_108777 while_simple_rnn_cell_7_108777_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : 2b
/while/simple_rnn_cell_7/StatefulPartitionedCall/while/simple_rnn_cell_7/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿà:

_output_shapes
: :

_output_shapes
: 
£

õ
C__inference_dense_3_layer_call_and_return_conditional_losses_110980

inputs1
matmul_readvariableop_resource:	à!-
biasadd_readvariableop_resource:!
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	à!*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:!*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿà: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
 
_user_specified_nameinputs
æ8
Ö
simple_rnn_7_while_body_1096936
2simple_rnn_7_while_simple_rnn_7_while_loop_counter<
8simple_rnn_7_while_simple_rnn_7_while_maximum_iterations"
simple_rnn_7_while_placeholder$
 simple_rnn_7_while_placeholder_1$
 simple_rnn_7_while_placeholder_25
1simple_rnn_7_while_simple_rnn_7_strided_slice_1_0q
msimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensor_0X
Esimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource_0:	@àU
Fsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource_0:	à[
Gsimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0:
àà
simple_rnn_7_while_identity!
simple_rnn_7_while_identity_1!
simple_rnn_7_while_identity_2!
simple_rnn_7_while_identity_3!
simple_rnn_7_while_identity_43
/simple_rnn_7_while_simple_rnn_7_strided_slice_1o
ksimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensorV
Csimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource:	@àS
Dsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource:	àY
Esimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource:
àà¢;simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp¢:simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp¢<simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp
Dsimple_rnn_7/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ç
6simple_rnn_7/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_7_while_placeholderMsimple_rnn_7/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0Á
:simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource_0*
_output_shapes
:	@à*
dtype0ë
+simple_rnn_7/while/simple_rnn_cell_7/MatMulMatMul=simple_rnn_7/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà¿
;simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:à*
dtype0æ
,simple_rnn_7/while/simple_rnn_cell_7/BiasAddBiasAdd5simple_rnn_7/while/simple_rnn_cell_7/MatMul:product:0Csimple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàÆ
<simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0* 
_output_shapes
:
àà*
dtype0Ò
-simple_rnn_7/while/simple_rnn_cell_7/MatMul_1MatMul simple_rnn_7_while_placeholder_2Dsimple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàÔ
(simple_rnn_7/while/simple_rnn_cell_7/addAddV25simple_rnn_7/while/simple_rnn_cell_7/BiasAdd:output:07simple_rnn_7/while/simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
)simple_rnn_7/while/simple_rnn_cell_7/TanhTanh,simple_rnn_7/while/simple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿàý
7simple_rnn_7/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_7_while_placeholder_1simple_rnn_7_while_placeholder-simple_rnn_7/while/simple_rnn_cell_7/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒZ
simple_rnn_7/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_7/while/addAddV2simple_rnn_7_while_placeholder!simple_rnn_7/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_7/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_7/while/add_1AddV22simple_rnn_7_while_simple_rnn_7_while_loop_counter#simple_rnn_7/while/add_1/y:output:0*
T0*
_output_shapes
: 
simple_rnn_7/while/IdentityIdentitysimple_rnn_7/while/add_1:z:0^simple_rnn_7/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_7/while/Identity_1Identity8simple_rnn_7_while_simple_rnn_7_while_maximum_iterations^simple_rnn_7/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_7/while/Identity_2Identitysimple_rnn_7/while/add:z:0^simple_rnn_7/while/NoOp*
T0*
_output_shapes
: À
simple_rnn_7/while/Identity_3IdentityGsimple_rnn_7/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_7/while/NoOp*
T0*
_output_shapes
: :éèÒ¥
simple_rnn_7/while/Identity_4Identity-simple_rnn_7/while/simple_rnn_cell_7/Tanh:y:0^simple_rnn_7/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
simple_rnn_7/while/NoOpNoOp<^simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp;^simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp=^simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_7_while_identity$simple_rnn_7/while/Identity:output:0"G
simple_rnn_7_while_identity_1&simple_rnn_7/while/Identity_1:output:0"G
simple_rnn_7_while_identity_2&simple_rnn_7/while/Identity_2:output:0"G
simple_rnn_7_while_identity_3&simple_rnn_7/while/Identity_3:output:0"G
simple_rnn_7_while_identity_4&simple_rnn_7/while/Identity_4:output:0"d
/simple_rnn_7_while_simple_rnn_7_strided_slice_11simple_rnn_7_while_simple_rnn_7_strided_slice_1_0"
Dsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resourceFsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource_0"
Esimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resourceGsimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0"
Csimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resourceEsimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource_0"Ü
ksimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensormsimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿà: : : : : 2z
;simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp;simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp2x
:simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp:simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp2|
<simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp<simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿà:

_output_shapes
: :

_output_shapes
: 
Ú
ª
while_cond_108299
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_108299___redundant_placeholder04
0while_while_cond_108299___redundant_placeholder14
0while_while_cond_108299___redundant_placeholder24
0while_while_cond_108299___redundant_placeholder3
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
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
Ü
ª
while_cond_109161
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_109161___redundant_placeholder04
0while_while_cond_109161___redundant_placeholder14
0while_while_cond_109161___redundant_placeholder24
0while_while_cond_109161___redundant_placeholder3
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
.: : : : :ÿÿÿÿÿÿÿÿÿà: ::::: 
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
:ÿÿÿÿÿÿÿÿÿà:

_output_shapes
: :

_output_shapes
:"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ä
serving_default°
U
simple_rnn_6_input?
$serving_default_simple_rnn_6_input:0ÿÿÿÿÿÿÿÿÿ;
dense_30
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ!tensorflow/serving/predict:é
Û
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
Ã
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
Ã
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
»

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses"
_tf_keras_layer
ã
%iter

&beta_1

'beta_2
	(decay
)learning_ratemjmk*ml+mm,mn-mo.mp/mqvrvs*vt+vu,vv-vw.vx/vy"
	optimizer
X
*0
+1
,2
-3
.4
/5
6
7"
trackable_list_wrapper
X
*0
+1
,2
-3
.4
/5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
2ÿ
-__inference_sequential_3_layer_call_fn_109097
-__inference_sequential_3_layer_call_fn_109526
-__inference_sequential_3_layer_call_fn_109547
-__inference_sequential_3_layer_call_fn_109453À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
î2ë
H__inference_sequential_3_layer_call_and_return_conditional_losses_109766
H__inference_sequential_3_layer_call_and_return_conditional_losses_109985
H__inference_sequential_3_layer_call_and_return_conditional_losses_109476
H__inference_sequential_3_layer_call_and_return_conditional_losses_109499À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
×BÔ
!__inference__wrapped_model_108239simple_rnn_6_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
5serving_default"
signature_map
è

*kernel
+recurrent_kernel
,bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:_random_generator
;__call__
*<&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

=states
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2
-__inference_simple_rnn_6_layer_call_fn_110019
-__inference_simple_rnn_6_layer_call_fn_110030
-__inference_simple_rnn_6_layer_call_fn_110041
-__inference_simple_rnn_6_layer_call_fn_110052Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
H__inference_simple_rnn_6_layer_call_and_return_conditional_losses_110160
H__inference_simple_rnn_6_layer_call_and_return_conditional_losses_110268
H__inference_simple_rnn_6_layer_call_and_return_conditional_losses_110376
H__inference_simple_rnn_6_layer_call_and_return_conditional_losses_110484Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
è

-kernel
.recurrent_kernel
/bias
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G_random_generator
H__call__
*I&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

Jstates
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2
-__inference_simple_rnn_7_layer_call_fn_110495
-__inference_simple_rnn_7_layer_call_fn_110506
-__inference_simple_rnn_7_layer_call_fn_110517
-__inference_simple_rnn_7_layer_call_fn_110528Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
H__inference_simple_rnn_7_layer_call_and_return_conditional_losses_110636
H__inference_simple_rnn_7_layer_call_and_return_conditional_losses_110744
H__inference_simple_rnn_7_layer_call_and_return_conditional_losses_110852
H__inference_simple_rnn_7_layer_call_and_return_conditional_losses_110960Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
!:	à!2dense_3/kernel
:!2dense_3/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
Ò2Ï
(__inference_dense_3_layer_call_fn_110969¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_dense_3_layer_call_and_return_conditional_losses_110980¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
7:5@2%simple_rnn_6/simple_rnn_cell_6/kernel
A:?@@2/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel
1:/@2#simple_rnn_6/simple_rnn_cell_6/bias
8:6	@à2%simple_rnn_7/simple_rnn_cell_7/kernel
C:A
àà2/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel
2:0à2#simple_rnn_7/simple_rnn_cell_7/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÖBÓ
$__inference_signature_wrapper_110008simple_rnn_6_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
5
*0
+1
,2"
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
6	variables
7trainable_variables
8regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
¬2©
2__inference_simple_rnn_cell_6_layer_call_fn_110994
2__inference_simple_rnn_cell_6_layer_call_fn_111008¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
â2ß
M__inference_simple_rnn_cell_6_layer_call_and_return_conditional_losses_111025
M__inference_simple_rnn_cell_6_layer_call_and_return_conditional_losses_111042¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
¬2©
2__inference_simple_rnn_cell_7_layer_call_fn_111056
2__inference_simple_rnn_cell_7_layer_call_fn_111070¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
â2ß
M__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_111087
M__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_111104¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
	atotal
	bcount
c	variables
d	keras_api"
_tf_keras_metric
^
	etotal
	fcount
g
_fn_kwargs
h	variables
i	keras_api"
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
a0
b1"
trackable_list_wrapper
-
c	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
e0
f1"
trackable_list_wrapper
-
h	variables"
_generic_user_object
&:$	à!2Adam/dense_3/kernel/m
:!2Adam/dense_3/bias/m
<::@2,Adam/simple_rnn_6/simple_rnn_cell_6/kernel/m
F:D@@26Adam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/m
6:4@2*Adam/simple_rnn_6/simple_rnn_cell_6/bias/m
=:;	@à2,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/m
H:F
àà26Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/m
7:5à2*Adam/simple_rnn_7/simple_rnn_cell_7/bias/m
&:$	à!2Adam/dense_3/kernel/v
:!2Adam/dense_3/bias/v
<::@2,Adam/simple_rnn_6/simple_rnn_cell_6/kernel/v
F:D@@26Adam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/v
6:4@2*Adam/simple_rnn_6/simple_rnn_cell_6/bias/v
=:;	@à2,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/v
H:F
àà26Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/v
7:5à2*Adam/simple_rnn_7/simple_rnn_cell_7/bias/v£
!__inference__wrapped_model_108239~*,+-/.?¢<
5¢2
0-
simple_rnn_6_inputÿÿÿÿÿÿÿÿÿ
ª "1ª.
,
dense_3!
dense_3ÿÿÿÿÿÿÿÿÿ!¤
C__inference_dense_3_layer_call_and_return_conditional_losses_110980]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿà
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ!
 |
(__inference_dense_3_layer_call_fn_110969P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿà
ª "ÿÿÿÿÿÿÿÿÿ!Æ
H__inference_sequential_3_layer_call_and_return_conditional_losses_109476z*,+-/.G¢D
=¢:
0-
simple_rnn_6_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ!
 Æ
H__inference_sequential_3_layer_call_and_return_conditional_losses_109499z*,+-/.G¢D
=¢:
0-
simple_rnn_6_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ!
 º
H__inference_sequential_3_layer_call_and_return_conditional_losses_109766n*,+-/.;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ!
 º
H__inference_sequential_3_layer_call_and_return_conditional_losses_109985n*,+-/.;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ!
 
-__inference_sequential_3_layer_call_fn_109097m*,+-/.G¢D
=¢:
0-
simple_rnn_6_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ!
-__inference_sequential_3_layer_call_fn_109453m*,+-/.G¢D
=¢:
0-
simple_rnn_6_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ!
-__inference_sequential_3_layer_call_fn_109526a*,+-/.;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ!
-__inference_sequential_3_layer_call_fn_109547a*,+-/.;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ!½
$__inference_signature_wrapper_110008*,+-/.U¢R
¢ 
KªH
F
simple_rnn_6_input0-
simple_rnn_6_inputÿÿÿÿÿÿÿÿÿ"1ª.
,
dense_3!
dense_3ÿÿÿÿÿÿÿÿÿ!×
H__inference_simple_rnn_6_layer_call_and_return_conditional_losses_110160*,+O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ×
H__inference_simple_rnn_6_layer_call_and_return_conditional_losses_110268*,+O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ½
H__inference_simple_rnn_6_layer_call_and_return_conditional_losses_110376q*,+?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 ½
H__inference_simple_rnn_6_layer_call_and_return_conditional_losses_110484q*,+?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 ®
-__inference_simple_rnn_6_layer_call_fn_110019}*,+O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@®
-__inference_simple_rnn_6_layer_call_fn_110030}*,+O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
-__inference_simple_rnn_6_layer_call_fn_110041d*,+?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ@
-__inference_simple_rnn_6_layer_call_fn_110052d*,+?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ@Ê
H__inference_simple_rnn_7_layer_call_and_return_conditional_losses_110636~-/.O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿà
 Ê
H__inference_simple_rnn_7_layer_call_and_return_conditional_losses_110744~-/.O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿà
 º
H__inference_simple_rnn_7_layer_call_and_return_conditional_losses_110852n-/.?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ@

 
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿà
 º
H__inference_simple_rnn_7_layer_call_and_return_conditional_losses_110960n-/.?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ@

 
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿà
 ¢
-__inference_simple_rnn_7_layer_call_fn_110495q-/.O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿà¢
-__inference_simple_rnn_7_layer_call_fn_110506q-/.O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p

 
ª "ÿÿÿÿÿÿÿÿÿà
-__inference_simple_rnn_7_layer_call_fn_110517a-/.?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ@

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿà
-__inference_simple_rnn_7_layer_call_fn_110528a-/.?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ@

 
p

 
ª "ÿÿÿÿÿÿÿÿÿà
M__inference_simple_rnn_cell_6_layer_call_and_return_conditional_losses_111025·*,+\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ@
p 
ª "R¢O
H¢E

0/0ÿÿÿÿÿÿÿÿÿ@
$!

0/1/0ÿÿÿÿÿÿÿÿÿ@
 
M__inference_simple_rnn_cell_6_layer_call_and_return_conditional_losses_111042·*,+\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ@
p
ª "R¢O
H¢E

0/0ÿÿÿÿÿÿÿÿÿ@
$!

0/1/0ÿÿÿÿÿÿÿÿÿ@
 à
2__inference_simple_rnn_cell_6_layer_call_fn_110994©*,+\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ@
p 
ª "D¢A

0ÿÿÿÿÿÿÿÿÿ@
"

1/0ÿÿÿÿÿÿÿÿÿ@à
2__inference_simple_rnn_cell_6_layer_call_fn_111008©*,+\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ@
p
ª "D¢A

0ÿÿÿÿÿÿÿÿÿ@
"

1/0ÿÿÿÿÿÿÿÿÿ@
M__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_111087º-/.]¢Z
S¢P
 
inputsÿÿÿÿÿÿÿÿÿ@
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿà
p 
ª "T¢Q
J¢G

0/0ÿÿÿÿÿÿÿÿÿà
%"
 
0/1/0ÿÿÿÿÿÿÿÿÿà
 
M__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_111104º-/.]¢Z
S¢P
 
inputsÿÿÿÿÿÿÿÿÿ@
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿà
p
ª "T¢Q
J¢G

0/0ÿÿÿÿÿÿÿÿÿà
%"
 
0/1/0ÿÿÿÿÿÿÿÿÿà
 ã
2__inference_simple_rnn_cell_7_layer_call_fn_111056¬-/.]¢Z
S¢P
 
inputsÿÿÿÿÿÿÿÿÿ@
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿà
p 
ª "F¢C

0ÿÿÿÿÿÿÿÿÿà
# 

1/0ÿÿÿÿÿÿÿÿÿàã
2__inference_simple_rnn_cell_7_layer_call_fn_111070¬-/.]¢Z
S¢P
 
inputsÿÿÿÿÿÿÿÿÿ@
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿà
p
ª "F¢C

0ÿÿÿÿÿÿÿÿÿà
# 

1/0ÿÿÿÿÿÿÿÿÿà