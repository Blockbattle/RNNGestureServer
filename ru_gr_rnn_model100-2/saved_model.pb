??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
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
delete_old_dirsbool(?
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
dtypetype?
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
?
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
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
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
-
Tanh
x"T
y"T"
Ttype:

2
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handle???element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements(
handle???element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
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
?"serve*2.8.02v2.8.0-0-g3f878cff5b68??
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?!*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	?!*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
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
?
%simple_rnn_4/simple_rnn_cell_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*6
shared_name'%simple_rnn_4/simple_rnn_cell_4/kernel
?
9simple_rnn_4/simple_rnn_cell_4/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_4/simple_rnn_cell_4/kernel*
_output_shapes

:@*
dtype0
?
/simple_rnn_4/simple_rnn_cell_4/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*@
shared_name1/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel
?
Csimple_rnn_4/simple_rnn_cell_4/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel*
_output_shapes

:@@*
dtype0
?
#simple_rnn_4/simple_rnn_cell_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#simple_rnn_4/simple_rnn_cell_4/bias
?
7simple_rnn_4/simple_rnn_cell_4/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_4/simple_rnn_cell_4/bias*
_output_shapes
:@*
dtype0
?
%simple_rnn_5/simple_rnn_cell_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*6
shared_name'%simple_rnn_5/simple_rnn_cell_5/kernel
?
9simple_rnn_5/simple_rnn_cell_5/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_5/simple_rnn_cell_5/kernel*
_output_shapes
:	@?*
dtype0
?
/simple_rnn_5/simple_rnn_cell_5/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*@
shared_name1/simple_rnn_5/simple_rnn_cell_5/recurrent_kernel
?
Csimple_rnn_5/simple_rnn_cell_5/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_5/simple_rnn_cell_5/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
#simple_rnn_5/simple_rnn_cell_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#simple_rnn_5/simple_rnn_cell_5/bias
?
7simple_rnn_5/simple_rnn_cell_5/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_5/simple_rnn_cell_5/bias*
_output_shapes	
:?*
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
?
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?!*&
shared_nameAdam/dense_2/kernel/m
?
)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes
:	?!*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:!*
dtype0
?
,Adam/simple_rnn_4/simple_rnn_cell_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*=
shared_name.,Adam/simple_rnn_4/simple_rnn_cell_4/kernel/m
?
@Adam/simple_rnn_4/simple_rnn_cell_4/kernel/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_4/simple_rnn_cell_4/kernel/m*
_output_shapes

:@*
dtype0
?
6Adam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*G
shared_name86Adam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/m
?
JAdam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/m*
_output_shapes

:@@*
dtype0
?
*Adam/simple_rnn_4/simple_rnn_cell_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/simple_rnn_4/simple_rnn_cell_4/bias/m
?
>Adam/simple_rnn_4/simple_rnn_cell_4/bias/m/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_4/simple_rnn_cell_4/bias/m*
_output_shapes
:@*
dtype0
?
,Adam/simple_rnn_5/simple_rnn_cell_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*=
shared_name.,Adam/simple_rnn_5/simple_rnn_cell_5/kernel/m
?
@Adam/simple_rnn_5/simple_rnn_cell_5/kernel/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_5/simple_rnn_cell_5/kernel/m*
_output_shapes
:	@?*
dtype0
?
6Adam/simple_rnn_5/simple_rnn_cell_5/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*G
shared_name86Adam/simple_rnn_5/simple_rnn_cell_5/recurrent_kernel/m
?
JAdam/simple_rnn_5/simple_rnn_cell_5/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_5/simple_rnn_cell_5/recurrent_kernel/m* 
_output_shapes
:
??*
dtype0
?
*Adam/simple_rnn_5/simple_rnn_cell_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*;
shared_name,*Adam/simple_rnn_5/simple_rnn_cell_5/bias/m
?
>Adam/simple_rnn_5/simple_rnn_cell_5/bias/m/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_5/simple_rnn_cell_5/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?!*&
shared_nameAdam/dense_2/kernel/v
?
)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes
:	?!*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:!*
dtype0
?
,Adam/simple_rnn_4/simple_rnn_cell_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*=
shared_name.,Adam/simple_rnn_4/simple_rnn_cell_4/kernel/v
?
@Adam/simple_rnn_4/simple_rnn_cell_4/kernel/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_4/simple_rnn_cell_4/kernel/v*
_output_shapes

:@*
dtype0
?
6Adam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*G
shared_name86Adam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/v
?
JAdam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/v*
_output_shapes

:@@*
dtype0
?
*Adam/simple_rnn_4/simple_rnn_cell_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/simple_rnn_4/simple_rnn_cell_4/bias/v
?
>Adam/simple_rnn_4/simple_rnn_cell_4/bias/v/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_4/simple_rnn_cell_4/bias/v*
_output_shapes
:@*
dtype0
?
,Adam/simple_rnn_5/simple_rnn_cell_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*=
shared_name.,Adam/simple_rnn_5/simple_rnn_cell_5/kernel/v
?
@Adam/simple_rnn_5/simple_rnn_cell_5/kernel/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_5/simple_rnn_cell_5/kernel/v*
_output_shapes
:	@?*
dtype0
?
6Adam/simple_rnn_5/simple_rnn_cell_5/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*G
shared_name86Adam/simple_rnn_5/simple_rnn_cell_5/recurrent_kernel/v
?
JAdam/simple_rnn_5/simple_rnn_cell_5/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_5/simple_rnn_cell_5/recurrent_kernel/v* 
_output_shapes
:
??*
dtype0
?
*Adam/simple_rnn_5/simple_rnn_cell_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*;
shared_name,*Adam/simple_rnn_5/simple_rnn_cell_5/bias/v
?
>Adam/simple_rnn_5/simple_rnn_cell_5/bias/v/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_5/simple_rnn_cell_5/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?F
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?F
value?FB?F B?E
?
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
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses* 
?
cell

state_spec
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses*
?
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*_random_generator
+__call__
*,&call_and_return_all_conditional_losses* 
?

-kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses*
?
5iter

6beta_1

7beta_2
	8decay
9learning_rate-m?.m?:m?;m?<m?=m?>m??m?-v?.v?:v?;v?<v?=v?>v??v?*
<
:0
;1
<2
=3
>4
?5
-6
.7*
<
:0
;1
<2
=3
>4
?5
-6
.7*
* 
?
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Eserving_default* 
?

:kernel
;recurrent_kernel
<bias
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J_random_generator
K__call__
*L&call_and_return_all_conditional_losses*
* 

:0
;1
<2*

:0
;1
<2*
* 
?

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
* 
?

=kernel
>recurrent_kernel
?bias
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\_random_generator
]__call__
*^&call_and_return_all_conditional_losses*
* 

=0
>1
?2*

=0
>1
?2*
* 
?

_states
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
&	variables
'trainable_variables
(regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses* 
* 
* 
* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

-0
.1*

-0
.1*
* 
?
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*
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
VARIABLE_VALUE%simple_rnn_4/simple_rnn_cell_4/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#simple_rnn_4/simple_rnn_cell_4/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%simple_rnn_5/simple_rnn_cell_5/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE/simple_rnn_5/simple_rnn_cell_5/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#simple_rnn_5/simple_rnn_cell_5/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
0
1
2
3
4*

o0
p1*
* 
* 
* 

:0
;1
<2*

:0
;1
<2*
* 
?
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 

=0
>1
?2*

=0
>1
?2*
* 
?
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
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
* 
* 
* 
8
	{total
	|count
}	variables
~	keras_api*
L
	total

?count
?
_fn_kwargs
?	variables
?	keras_api*
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
{0
|1*

}	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
?1*

?	variables*
?{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE,Adam/simple_rnn_4/simple_rnn_cell_4/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE6Adam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE*Adam/simple_rnn_4/simple_rnn_cell_4/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE,Adam/simple_rnn_5/simple_rnn_cell_5/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE6Adam/simple_rnn_5/simple_rnn_cell_5/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE*Adam/simple_rnn_5/simple_rnn_cell_5/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE,Adam/simple_rnn_4/simple_rnn_cell_4/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE6Adam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE*Adam/simple_rnn_4/simple_rnn_cell_4/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE,Adam/simple_rnn_5/simple_rnn_cell_5/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE6Adam/simple_rnn_5/simple_rnn_cell_5/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE*Adam/simple_rnn_5/simple_rnn_cell_5/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
"serving_default_simple_rnn_4_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCall"serving_default_simple_rnn_4_input%simple_rnn_4/simple_rnn_cell_4/kernel#simple_rnn_4/simple_rnn_cell_4/bias/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel%simple_rnn_5/simple_rnn_cell_5/kernel#simple_rnn_5/simple_rnn_cell_5/bias/simple_rnn_5/simple_rnn_cell_5/recurrent_kerneldense_2/kerneldense_2/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????!**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_55680
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp9simple_rnn_4/simple_rnn_cell_4/kernel/Read/ReadVariableOpCsimple_rnn_4/simple_rnn_cell_4/recurrent_kernel/Read/ReadVariableOp7simple_rnn_4/simple_rnn_cell_4/bias/Read/ReadVariableOp9simple_rnn_5/simple_rnn_cell_5/kernel/Read/ReadVariableOpCsimple_rnn_5/simple_rnn_cell_5/recurrent_kernel/Read/ReadVariableOp7simple_rnn_5/simple_rnn_cell_5/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp@Adam/simple_rnn_4/simple_rnn_cell_4/kernel/m/Read/ReadVariableOpJAdam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/m/Read/ReadVariableOp>Adam/simple_rnn_4/simple_rnn_cell_4/bias/m/Read/ReadVariableOp@Adam/simple_rnn_5/simple_rnn_cell_5/kernel/m/Read/ReadVariableOpJAdam/simple_rnn_5/simple_rnn_cell_5/recurrent_kernel/m/Read/ReadVariableOp>Adam/simple_rnn_5/simple_rnn_cell_5/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp@Adam/simple_rnn_4/simple_rnn_cell_4/kernel/v/Read/ReadVariableOpJAdam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/v/Read/ReadVariableOp>Adam/simple_rnn_4/simple_rnn_cell_4/bias/v/Read/ReadVariableOp@Adam/simple_rnn_5/simple_rnn_cell_5/kernel/v/Read/ReadVariableOpJAdam/simple_rnn_5/simple_rnn_cell_5/recurrent_kernel/v/Read/ReadVariableOp>Adam/simple_rnn_5/simple_rnn_cell_5/bias/v/Read/ReadVariableOpConst*.
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
GPU 2J 8? *'
f"R 
__inference__traced_save_56952
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_2/kerneldense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate%simple_rnn_4/simple_rnn_cell_4/kernel/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel#simple_rnn_4/simple_rnn_cell_4/bias%simple_rnn_5/simple_rnn_cell_5/kernel/simple_rnn_5/simple_rnn_cell_5/recurrent_kernel#simple_rnn_5/simple_rnn_cell_5/biastotalcounttotal_1count_1Adam/dense_2/kernel/mAdam/dense_2/bias/m,Adam/simple_rnn_4/simple_rnn_cell_4/kernel/m6Adam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/m*Adam/simple_rnn_4/simple_rnn_cell_4/bias/m,Adam/simple_rnn_5/simple_rnn_cell_5/kernel/m6Adam/simple_rnn_5/simple_rnn_cell_5/recurrent_kernel/m*Adam/simple_rnn_5/simple_rnn_cell_5/bias/mAdam/dense_2/kernel/vAdam/dense_2/bias/v,Adam/simple_rnn_4/simple_rnn_cell_4/kernel/v6Adam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/v*Adam/simple_rnn_4/simple_rnn_cell_4/bias/v,Adam/simple_rnn_5/simple_rnn_cell_5/kernel/v6Adam/simple_rnn_5/simple_rnn_cell_5/recurrent_kernel/v*Adam/simple_rnn_5/simple_rnn_cell_5/bias/v*-
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
GPU 2J 8? **
f%R#
!__inference__traced_restore_57061κ
?
?
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_54167

inputs

states1
matmul_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????H
TanhTanhadd:z:0*
T0*(
_output_shapes
:??????????X
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:??????????Z

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????@:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?,
?
while_body_54459
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@G
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_4_matmul_readvariableop_resource:@E
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@??.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_4/MatMul/ReadVariableOp?/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0?
while/simple_rnn_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0?
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0?
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@w
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:?????????@?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???}
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:?????????@?

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 
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
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
G__inference_sequential_2_layer_call_and_return_conditional_losses_55128
simple_rnn_4_input$
simple_rnn_4_55106:@ 
simple_rnn_4_55108:@$
simple_rnn_4_55110:@@%
simple_rnn_5_55114:	@?!
simple_rnn_5_55116:	?&
simple_rnn_5_55118:
?? 
dense_2_55122:	?!
dense_2_55124:!
identity??dense_2/StatefulPartitionedCall?$simple_rnn_4/StatefulPartitionedCall?$simple_rnn_5/StatefulPartitionedCall?
$simple_rnn_4/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_4_inputsimple_rnn_4_55106simple_rnn_4_55108simple_rnn_4_55110*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_54525?
dropout_4/PartitionedCallPartitionedCall-simple_rnn_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_54538?
$simple_rnn_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0simple_rnn_5_55114simple_rnn_5_55116simple_rnn_5_55118*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_simple_rnn_5_layer_call_and_return_conditional_losses_54647?
dropout_5/PartitionedCallPartitionedCall-simple_rnn_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_54660?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0dense_2_55122dense_2_55124*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????!*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_54673w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????!?
NoOpNoOp ^dense_2/StatefulPartitionedCall%^simple_rnn_4/StatefulPartitionedCall%^simple_rnn_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2L
$simple_rnn_4/StatefulPartitionedCall$simple_rnn_4/StatefulPartitionedCall2L
$simple_rnn_5/StatefulPartitionedCall$simple_rnn_5/StatefulPartitionedCall:_ [
+
_output_shapes
:?????????
,
_user_specified_namesimple_rnn_4_input
?
?
while_cond_55765
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_55765___redundant_placeholder03
/while_while_cond_55765___redundant_placeholder13
/while_while_cond_55765___redundant_placeholder23
/while_while_cond_55765___redundant_placeholder3
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
-: : : : :?????????@: ::::: 
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
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
G__inference_sequential_2_layer_call_and_return_conditional_losses_55153
simple_rnn_4_input$
simple_rnn_4_55131:@ 
simple_rnn_4_55133:@$
simple_rnn_4_55135:@@%
simple_rnn_5_55139:	@?!
simple_rnn_5_55141:	?&
simple_rnn_5_55143:
?? 
dense_2_55147:	?!
dense_2_55149:!
identity??dense_2/StatefulPartitionedCall?!dropout_4/StatefulPartitionedCall?!dropout_5/StatefulPartitionedCall?$simple_rnn_4/StatefulPartitionedCall?$simple_rnn_5/StatefulPartitionedCall?
$simple_rnn_4/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_4_inputsimple_rnn_4_55131simple_rnn_4_55133simple_rnn_4_55135*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_55006?
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_54882?
$simple_rnn_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0simple_rnn_5_55139simple_rnn_5_55141simple_rnn_5_55143*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_simple_rnn_5_layer_call_and_return_conditional_losses_54853?
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_5/StatefulPartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_54729?
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0dense_2_55147dense_2_55149*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????!*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_54673w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????!?
NoOpNoOp ^dense_2/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall%^simple_rnn_4/StatefulPartitionedCall%^simple_rnn_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall2L
$simple_rnn_4/StatefulPartitionedCall$simple_rnn_4/StatefulPartitionedCall2L
$simple_rnn_5/StatefulPartitionedCall$simple_rnn_5/StatefulPartitionedCall:_ [
+
_output_shapes
:?????????
,
_user_specified_namesimple_rnn_4_input
?
?
while_cond_56376
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_56376___redundant_placeholder03
/while_while_cond_56376___redundant_placeholder13
/while_while_cond_56376___redundant_placeholder23
/while_while_cond_56376___redundant_placeholder3
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
.: : : : :??????????: ::::: 
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
:??????????:

_output_shapes
: :

_output_shapes
:
??
?
G__inference_sequential_2_layer_call_and_return_conditional_losses_55657

inputsO
=simple_rnn_4_simple_rnn_cell_4_matmul_readvariableop_resource:@L
>simple_rnn_4_simple_rnn_cell_4_biasadd_readvariableop_resource:@Q
?simple_rnn_4_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@P
=simple_rnn_5_simple_rnn_cell_5_matmul_readvariableop_resource:	@?M
>simple_rnn_5_simple_rnn_cell_5_biasadd_readvariableop_resource:	?S
?simple_rnn_5_simple_rnn_cell_5_matmul_1_readvariableop_resource:
??9
&dense_2_matmul_readvariableop_resource:	?!5
'dense_2_biasadd_readvariableop_resource:!
identity??dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?5simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOp?4simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOp?6simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOp?simple_rnn_4/while?5simple_rnn_5/simple_rnn_cell_5/BiasAdd/ReadVariableOp?4simple_rnn_5/simple_rnn_cell_5/MatMul/ReadVariableOp?6simple_rnn_5/simple_rnn_cell_5/MatMul_1/ReadVariableOp?simple_rnn_5/whileH
simple_rnn_4/ShapeShapeinputs*
T0*
_output_shapes
:j
 simple_rnn_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_4/strided_sliceStridedSlicesimple_rnn_4/Shape:output:0)simple_rnn_4/strided_slice/stack:output:0+simple_rnn_4/strided_slice/stack_1:output:0+simple_rnn_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
simple_rnn_4/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@?
simple_rnn_4/zeros/packedPack#simple_rnn_4/strided_slice:output:0$simple_rnn_4/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
simple_rnn_4/zerosFill"simple_rnn_4/zeros/packed:output:0!simple_rnn_4/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@p
simple_rnn_4/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_4/transpose	Transposeinputs$simple_rnn_4/transpose/perm:output:0*
T0*+
_output_shapes
:?????????^
simple_rnn_4/Shape_1Shapesimple_rnn_4/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_4/strided_slice_1StridedSlicesimple_rnn_4/Shape_1:output:0+simple_rnn_4/strided_slice_1/stack:output:0-simple_rnn_4/strided_slice_1/stack_1:output:0-simple_rnn_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_4/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
simple_rnn_4/TensorArrayV2TensorListReserve1simple_rnn_4/TensorArrayV2/element_shape:output:0%simple_rnn_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Bsimple_rnn_4/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
4simple_rnn_4/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_4/transpose:y:0Ksimple_rnn_4/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???l
"simple_rnn_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_4/strided_slice_2StridedSlicesimple_rnn_4/transpose:y:0+simple_rnn_4/strided_slice_2/stack:output:0-simple_rnn_4/strided_slice_2/stack_1:output:0-simple_rnn_4/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
4simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp=simple_rnn_4_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
%simple_rnn_4/simple_rnn_cell_4/MatMulMatMul%simple_rnn_4/strided_slice_2:output:0<simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
5simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_4_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
&simple_rnn_4/simple_rnn_cell_4/BiasAddBiasAdd/simple_rnn_4/simple_rnn_cell_4/MatMul:product:0=simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
6simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_4_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0?
'simple_rnn_4/simple_rnn_cell_4/MatMul_1MatMulsimple_rnn_4/zeros:output:0>simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
"simple_rnn_4/simple_rnn_cell_4/addAddV2/simple_rnn_4/simple_rnn_cell_4/BiasAdd:output:01simple_rnn_4/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@?
#simple_rnn_4/simple_rnn_cell_4/TanhTanh&simple_rnn_4/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:?????????@{
*simple_rnn_4/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
simple_rnn_4/TensorArrayV2_1TensorListReserve3simple_rnn_4/TensorArrayV2_1/element_shape:output:0%simple_rnn_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???S
simple_rnn_4/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_4/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????a
simple_rnn_4/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
simple_rnn_4/whileWhile(simple_rnn_4/while/loop_counter:output:0.simple_rnn_4/while/maximum_iterations:output:0simple_rnn_4/time:output:0%simple_rnn_4/TensorArrayV2_1:handle:0simple_rnn_4/zeros:output:0%simple_rnn_4/strided_slice_1:output:0Dsimple_rnn_4/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_4_simple_rnn_cell_4_matmul_readvariableop_resource>simple_rnn_4_simple_rnn_cell_4_biasadd_readvariableop_resource?simple_rnn_4_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *)
body!R
simple_rnn_4_while_body_55464*)
cond!R
simple_rnn_4_while_cond_55463*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations ?
=simple_rnn_4/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
/simple_rnn_4/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_4/while:output:3Fsimple_rnn_4/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype0u
"simple_rnn_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????n
$simple_rnn_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_4/strided_slice_3StridedSlice8simple_rnn_4/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_4/strided_slice_3/stack:output:0-simple_rnn_4/strided_slice_3/stack_1:output:0-simple_rnn_4/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maskr
simple_rnn_4/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_4/transpose_1	Transpose8simple_rnn_4/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_4/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@\
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?????
dropout_4/dropout/MulMulsimple_rnn_4/transpose_1:y:0 dropout_4/dropout/Const:output:0*
T0*+
_output_shapes
:?????????@c
dropout_4/dropout/ShapeShapesimple_rnn_4/transpose_1:y:0*
T0*
_output_shapes
:?
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*+
_output_shapes
:?????????@*
dtype0e
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=?
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????@?
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????@?
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*+
_output_shapes
:?????????@]
simple_rnn_5/ShapeShapedropout_4/dropout/Mul_1:z:0*
T0*
_output_shapes
:j
 simple_rnn_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_5/strided_sliceStridedSlicesimple_rnn_5/Shape:output:0)simple_rnn_5/strided_slice/stack:output:0+simple_rnn_5/strided_slice/stack_1:output:0+simple_rnn_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
simple_rnn_5/zeros/packedPack#simple_rnn_5/strided_slice:output:0$simple_rnn_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
simple_rnn_5/zerosFill"simple_rnn_5/zeros/packed:output:0!simple_rnn_5/zeros/Const:output:0*
T0*(
_output_shapes
:??????????p
simple_rnn_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_5/transpose	Transposedropout_4/dropout/Mul_1:z:0$simple_rnn_5/transpose/perm:output:0*
T0*+
_output_shapes
:?????????@^
simple_rnn_5/Shape_1Shapesimple_rnn_5/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_5/strided_slice_1StridedSlicesimple_rnn_5/Shape_1:output:0+simple_rnn_5/strided_slice_1/stack:output:0-simple_rnn_5/strided_slice_1/stack_1:output:0-simple_rnn_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
simple_rnn_5/TensorArrayV2TensorListReserve1simple_rnn_5/TensorArrayV2/element_shape:output:0%simple_rnn_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Bsimple_rnn_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
4simple_rnn_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_5/transpose:y:0Ksimple_rnn_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???l
"simple_rnn_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_5/strided_slice_2StridedSlicesimple_rnn_5/transpose:y:0+simple_rnn_5/strided_slice_2/stack:output:0-simple_rnn_5/strided_slice_2/stack_1:output:0-simple_rnn_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask?
4simple_rnn_5/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp=simple_rnn_5_simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
%simple_rnn_5/simple_rnn_cell_5/MatMulMatMul%simple_rnn_5/strided_slice_2:output:0<simple_rnn_5/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
5simple_rnn_5/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_5_simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&simple_rnn_5/simple_rnn_cell_5/BiasAddBiasAdd/simple_rnn_5/simple_rnn_cell_5/MatMul:product:0=simple_rnn_5/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
6simple_rnn_5/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_5_simple_rnn_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
'simple_rnn_5/simple_rnn_cell_5/MatMul_1MatMulsimple_rnn_5/zeros:output:0>simple_rnn_5/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"simple_rnn_5/simple_rnn_cell_5/addAddV2/simple_rnn_5/simple_rnn_cell_5/BiasAdd:output:01simple_rnn_5/simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#simple_rnn_5/simple_rnn_cell_5/TanhTanh&simple_rnn_5/simple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:??????????{
*simple_rnn_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
simple_rnn_5/TensorArrayV2_1TensorListReserve3simple_rnn_5/TensorArrayV2_1/element_shape:output:0%simple_rnn_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???S
simple_rnn_5/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????a
simple_rnn_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
simple_rnn_5/whileWhile(simple_rnn_5/while/loop_counter:output:0.simple_rnn_5/while/maximum_iterations:output:0simple_rnn_5/time:output:0%simple_rnn_5/TensorArrayV2_1:handle:0simple_rnn_5/zeros:output:0%simple_rnn_5/strided_slice_1:output:0Dsimple_rnn_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_5_simple_rnn_cell_5_matmul_readvariableop_resource>simple_rnn_5_simple_rnn_cell_5_biasadd_readvariableop_resource?simple_rnn_5_simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *)
body!R
simple_rnn_5_while_body_55576*)
cond!R
simple_rnn_5_while_cond_55575*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
=simple_rnn_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
/simple_rnn_5/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_5/while:output:3Fsimple_rnn_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0u
"simple_rnn_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????n
$simple_rnn_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_5/strided_slice_3StridedSlice8simple_rnn_5/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_5/strided_slice_3/stack:output:0-simple_rnn_5/strided_slice_3/stack_1:output:0-simple_rnn_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maskr
simple_rnn_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_5/transpose_1	Transpose8simple_rnn_5/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????\
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?????
dropout_5/dropout/MulMul%simple_rnn_5/strided_slice_3:output:0 dropout_5/dropout/Const:output:0*
T0*(
_output_shapes
:??????????l
dropout_5/dropout/ShapeShape%simple_rnn_5/strided_slice_3:output:0*
T0*
_output_shapes
:?
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0e
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=?
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?!*
dtype0?
dense_2/MatMulMatMuldropout_5/dropout/Mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype0?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!f
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????!h
IdentityIdentitydense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????!?
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp6^simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOp5^simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOp7^simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOp^simple_rnn_4/while6^simple_rnn_5/simple_rnn_cell_5/BiasAdd/ReadVariableOp5^simple_rnn_5/simple_rnn_cell_5/MatMul/ReadVariableOp7^simple_rnn_5/simple_rnn_cell_5/MatMul_1/ReadVariableOp^simple_rnn_5/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2n
5simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOp5simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOp2l
4simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOp4simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOp2p
6simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOp6simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOp2(
simple_rnn_4/whilesimple_rnn_4/while2n
5simple_rnn_5/simple_rnn_cell_5/BiasAdd/ReadVariableOp5simple_rnn_5/simple_rnn_cell_5/BiasAdd/ReadVariableOp2l
4simple_rnn_5/simple_rnn_cell_5/MatMul/ReadVariableOp4simple_rnn_5/simple_rnn_cell_5/MatMul/ReadVariableOp2p
6simple_rnn_5/simple_rnn_cell_5/MatMul_1/ReadVariableOp6simple_rnn_5/simple_rnn_cell_5/MatMul_1/ReadVariableOp2(
simple_rnn_5/whilesimple_rnn_5/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?,
?
while_body_56269
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:	@?H
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:	?N
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
6while_simple_rnn_cell_5_matmul_readvariableop_resource:	@?F
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:	?L
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:
????.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_5/MatMul/ReadVariableOp?/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype0?
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	@?*
dtype0?
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????x
while/simple_rnn_cell_5/TanhTanhwhile/simple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???~
while/Identity_4Identity while/simple_rnn_cell_5/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?,
?
while_body_56090
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@G
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_4_matmul_readvariableop_resource:@E
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@??.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_4/MatMul/ReadVariableOp?/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0?
while/simple_rnn_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0?
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0?
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@w
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:?????????@?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???}
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:?????????@?

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 
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
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
'__inference_dense_2_layer_call_fn_56695

inputs
unknown:	?!
	unknown_0:!
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????!*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_54673o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?=
?
G__inference_simple_rnn_5_layer_call_and_return_conditional_losses_56443
inputs_0C
0simple_rnn_cell_5_matmul_readvariableop_resource:	@?@
1simple_rnn_cell_5_biasadd_readvariableop_resource:	?F
2simple_rnn_cell_5_matmul_1_readvariableop_resource:
??
identity??(simple_rnn_cell_5/BiasAdd/ReadVariableOp?'simple_rnn_cell_5/MatMul/ReadVariableOp?)simple_rnn_cell_5/MatMul_1/ReadVariableOp?while=
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
valueB:?
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
B :?s
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
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask?
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????l
simple_rnn_cell_5/TanhTanhsimple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_56377*
condR
while_cond_56376*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????@: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????@
"
_user_specified_name
inputs/0
?
?
,__inference_simple_rnn_5_layer_call_fn_56194
inputs_0
unknown:	@?
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_simple_rnn_5_layer_call_and_return_conditional_losses_54243p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????@
"
_user_specified_name
inputs/0
?

?
1__inference_simple_rnn_cell_4_layer_call_fn_56734

inputs
states_0
unknown:@
	unknown_0:@
	unknown_1:@@
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_53995o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????:?????????@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0
?=
?
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_55832
inputs_0B
0simple_rnn_cell_4_matmul_readvariableop_resource:@?
1simple_rnn_cell_4_biasadd_readvariableop_resource:@D
2simple_rnn_cell_4_matmul_1_readvariableop_resource:@@
identity??(simple_rnn_cell_4/BiasAdd/ReadVariableOp?'simple_rnn_cell_4/MatMul/ReadVariableOp?)simple_rnn_cell_4/MatMul_1/ReadVariableOp?while=
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
valueB:?
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
:?????????@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
simple_rnn_cell_4/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0?
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@k
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:?????????@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_55766*
condR
while_cond_55765*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????@?
NoOpNoOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

c
D__inference_dropout_4_layer_call_and_return_conditional_losses_54882

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:?????????@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????@s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????@m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????@]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
,__inference_sequential_2_layer_call_fn_55201

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:	@?
	unknown_3:	?
	unknown_4:
??
	unknown_5:	?!
	unknown_6:!
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????!**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_55063o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
G__inference_sequential_2_layer_call_and_return_conditional_losses_55422

inputsO
=simple_rnn_4_simple_rnn_cell_4_matmul_readvariableop_resource:@L
>simple_rnn_4_simple_rnn_cell_4_biasadd_readvariableop_resource:@Q
?simple_rnn_4_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@P
=simple_rnn_5_simple_rnn_cell_5_matmul_readvariableop_resource:	@?M
>simple_rnn_5_simple_rnn_cell_5_biasadd_readvariableop_resource:	?S
?simple_rnn_5_simple_rnn_cell_5_matmul_1_readvariableop_resource:
??9
&dense_2_matmul_readvariableop_resource:	?!5
'dense_2_biasadd_readvariableop_resource:!
identity??dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?5simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOp?4simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOp?6simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOp?simple_rnn_4/while?5simple_rnn_5/simple_rnn_cell_5/BiasAdd/ReadVariableOp?4simple_rnn_5/simple_rnn_cell_5/MatMul/ReadVariableOp?6simple_rnn_5/simple_rnn_cell_5/MatMul_1/ReadVariableOp?simple_rnn_5/whileH
simple_rnn_4/ShapeShapeinputs*
T0*
_output_shapes
:j
 simple_rnn_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_4/strided_sliceStridedSlicesimple_rnn_4/Shape:output:0)simple_rnn_4/strided_slice/stack:output:0+simple_rnn_4/strided_slice/stack_1:output:0+simple_rnn_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
simple_rnn_4/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@?
simple_rnn_4/zeros/packedPack#simple_rnn_4/strided_slice:output:0$simple_rnn_4/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
simple_rnn_4/zerosFill"simple_rnn_4/zeros/packed:output:0!simple_rnn_4/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@p
simple_rnn_4/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_4/transpose	Transposeinputs$simple_rnn_4/transpose/perm:output:0*
T0*+
_output_shapes
:?????????^
simple_rnn_4/Shape_1Shapesimple_rnn_4/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_4/strided_slice_1StridedSlicesimple_rnn_4/Shape_1:output:0+simple_rnn_4/strided_slice_1/stack:output:0-simple_rnn_4/strided_slice_1/stack_1:output:0-simple_rnn_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_4/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
simple_rnn_4/TensorArrayV2TensorListReserve1simple_rnn_4/TensorArrayV2/element_shape:output:0%simple_rnn_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Bsimple_rnn_4/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
4simple_rnn_4/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_4/transpose:y:0Ksimple_rnn_4/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???l
"simple_rnn_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_4/strided_slice_2StridedSlicesimple_rnn_4/transpose:y:0+simple_rnn_4/strided_slice_2/stack:output:0-simple_rnn_4/strided_slice_2/stack_1:output:0-simple_rnn_4/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
4simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp=simple_rnn_4_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
%simple_rnn_4/simple_rnn_cell_4/MatMulMatMul%simple_rnn_4/strided_slice_2:output:0<simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
5simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_4_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
&simple_rnn_4/simple_rnn_cell_4/BiasAddBiasAdd/simple_rnn_4/simple_rnn_cell_4/MatMul:product:0=simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
6simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_4_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0?
'simple_rnn_4/simple_rnn_cell_4/MatMul_1MatMulsimple_rnn_4/zeros:output:0>simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
"simple_rnn_4/simple_rnn_cell_4/addAddV2/simple_rnn_4/simple_rnn_cell_4/BiasAdd:output:01simple_rnn_4/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@?
#simple_rnn_4/simple_rnn_cell_4/TanhTanh&simple_rnn_4/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:?????????@{
*simple_rnn_4/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
simple_rnn_4/TensorArrayV2_1TensorListReserve3simple_rnn_4/TensorArrayV2_1/element_shape:output:0%simple_rnn_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???S
simple_rnn_4/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_4/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????a
simple_rnn_4/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
simple_rnn_4/whileWhile(simple_rnn_4/while/loop_counter:output:0.simple_rnn_4/while/maximum_iterations:output:0simple_rnn_4/time:output:0%simple_rnn_4/TensorArrayV2_1:handle:0simple_rnn_4/zeros:output:0%simple_rnn_4/strided_slice_1:output:0Dsimple_rnn_4/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_4_simple_rnn_cell_4_matmul_readvariableop_resource>simple_rnn_4_simple_rnn_cell_4_biasadd_readvariableop_resource?simple_rnn_4_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *)
body!R
simple_rnn_4_while_body_55243*)
cond!R
simple_rnn_4_while_cond_55242*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations ?
=simple_rnn_4/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
/simple_rnn_4/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_4/while:output:3Fsimple_rnn_4/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype0u
"simple_rnn_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????n
$simple_rnn_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_4/strided_slice_3StridedSlice8simple_rnn_4/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_4/strided_slice_3/stack:output:0-simple_rnn_4/strided_slice_3/stack_1:output:0-simple_rnn_4/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maskr
simple_rnn_4/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_4/transpose_1	Transpose8simple_rnn_4/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_4/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@r
dropout_4/IdentityIdentitysimple_rnn_4/transpose_1:y:0*
T0*+
_output_shapes
:?????????@]
simple_rnn_5/ShapeShapedropout_4/Identity:output:0*
T0*
_output_shapes
:j
 simple_rnn_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_5/strided_sliceStridedSlicesimple_rnn_5/Shape:output:0)simple_rnn_5/strided_slice/stack:output:0+simple_rnn_5/strided_slice/stack_1:output:0+simple_rnn_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
simple_rnn_5/zeros/packedPack#simple_rnn_5/strided_slice:output:0$simple_rnn_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
simple_rnn_5/zerosFill"simple_rnn_5/zeros/packed:output:0!simple_rnn_5/zeros/Const:output:0*
T0*(
_output_shapes
:??????????p
simple_rnn_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_5/transpose	Transposedropout_4/Identity:output:0$simple_rnn_5/transpose/perm:output:0*
T0*+
_output_shapes
:?????????@^
simple_rnn_5/Shape_1Shapesimple_rnn_5/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_5/strided_slice_1StridedSlicesimple_rnn_5/Shape_1:output:0+simple_rnn_5/strided_slice_1/stack:output:0-simple_rnn_5/strided_slice_1/stack_1:output:0-simple_rnn_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
simple_rnn_5/TensorArrayV2TensorListReserve1simple_rnn_5/TensorArrayV2/element_shape:output:0%simple_rnn_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Bsimple_rnn_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
4simple_rnn_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_5/transpose:y:0Ksimple_rnn_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???l
"simple_rnn_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_5/strided_slice_2StridedSlicesimple_rnn_5/transpose:y:0+simple_rnn_5/strided_slice_2/stack:output:0-simple_rnn_5/strided_slice_2/stack_1:output:0-simple_rnn_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask?
4simple_rnn_5/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp=simple_rnn_5_simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
%simple_rnn_5/simple_rnn_cell_5/MatMulMatMul%simple_rnn_5/strided_slice_2:output:0<simple_rnn_5/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
5simple_rnn_5/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_5_simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&simple_rnn_5/simple_rnn_cell_5/BiasAddBiasAdd/simple_rnn_5/simple_rnn_cell_5/MatMul:product:0=simple_rnn_5/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
6simple_rnn_5/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_5_simple_rnn_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
'simple_rnn_5/simple_rnn_cell_5/MatMul_1MatMulsimple_rnn_5/zeros:output:0>simple_rnn_5/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"simple_rnn_5/simple_rnn_cell_5/addAddV2/simple_rnn_5/simple_rnn_cell_5/BiasAdd:output:01simple_rnn_5/simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#simple_rnn_5/simple_rnn_cell_5/TanhTanh&simple_rnn_5/simple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:??????????{
*simple_rnn_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
simple_rnn_5/TensorArrayV2_1TensorListReserve3simple_rnn_5/TensorArrayV2_1/element_shape:output:0%simple_rnn_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???S
simple_rnn_5/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????a
simple_rnn_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
simple_rnn_5/whileWhile(simple_rnn_5/while/loop_counter:output:0.simple_rnn_5/while/maximum_iterations:output:0simple_rnn_5/time:output:0%simple_rnn_5/TensorArrayV2_1:handle:0simple_rnn_5/zeros:output:0%simple_rnn_5/strided_slice_1:output:0Dsimple_rnn_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_5_simple_rnn_cell_5_matmul_readvariableop_resource>simple_rnn_5_simple_rnn_cell_5_biasadd_readvariableop_resource?simple_rnn_5_simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *)
body!R
simple_rnn_5_while_body_55348*)
cond!R
simple_rnn_5_while_cond_55347*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
=simple_rnn_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
/simple_rnn_5/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_5/while:output:3Fsimple_rnn_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0u
"simple_rnn_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????n
$simple_rnn_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_5/strided_slice_3StridedSlice8simple_rnn_5/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_5/strided_slice_3/stack:output:0-simple_rnn_5/strided_slice_3/stack_1:output:0-simple_rnn_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maskr
simple_rnn_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_5/transpose_1	Transpose8simple_rnn_5/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????x
dropout_5/IdentityIdentity%simple_rnn_5/strided_slice_3:output:0*
T0*(
_output_shapes
:???????????
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?!*
dtype0?
dense_2/MatMulMatMuldropout_5/Identity:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype0?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!f
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????!h
IdentityIdentitydense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????!?
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp6^simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOp5^simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOp7^simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOp^simple_rnn_4/while6^simple_rnn_5/simple_rnn_cell_5/BiasAdd/ReadVariableOp5^simple_rnn_5/simple_rnn_cell_5/MatMul/ReadVariableOp7^simple_rnn_5/simple_rnn_cell_5/MatMul_1/ReadVariableOp^simple_rnn_5/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2n
5simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOp5simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOp2l
4simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOp4simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOp2p
6simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOp6simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOp2(
simple_rnn_4/whilesimple_rnn_4/while2n
5simple_rnn_5/simple_rnn_cell_5/BiasAdd/ReadVariableOp5simple_rnn_5/simple_rnn_cell_5/BiasAdd/ReadVariableOp2l
4simple_rnn_5/simple_rnn_cell_5/MatMul/ReadVariableOp4simple_rnn_5/simple_rnn_cell_5/MatMul/ReadVariableOp2p
6simple_rnn_5/simple_rnn_cell_5/MatMul_1/ReadVariableOp6simple_rnn_5/simple_rnn_cell_5/MatMul_1/ReadVariableOp2(
simple_rnn_5/whilesimple_rnn_5/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
simple_rnn_4_while_cond_554636
2simple_rnn_4_while_simple_rnn_4_while_loop_counter<
8simple_rnn_4_while_simple_rnn_4_while_maximum_iterations"
simple_rnn_4_while_placeholder$
 simple_rnn_4_while_placeholder_1$
 simple_rnn_4_while_placeholder_28
4simple_rnn_4_while_less_simple_rnn_4_strided_slice_1M
Isimple_rnn_4_while_simple_rnn_4_while_cond_55463___redundant_placeholder0M
Isimple_rnn_4_while_simple_rnn_4_while_cond_55463___redundant_placeholder1M
Isimple_rnn_4_while_simple_rnn_4_while_cond_55463___redundant_placeholder2M
Isimple_rnn_4_while_simple_rnn_4_while_cond_55463___redundant_placeholder3
simple_rnn_4_while_identity
?
simple_rnn_4/while/LessLesssimple_rnn_4_while_placeholder4simple_rnn_4_while_less_simple_rnn_4_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_4/while/IdentityIdentitysimple_rnn_4/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_4_while_identity$simple_rnn_4/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????@: ::::: 
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
:?????????@:

_output_shapes
: :

_output_shapes
:
?8
?
simple_rnn_5_while_body_553486
2simple_rnn_5_while_simple_rnn_5_while_loop_counter<
8simple_rnn_5_while_simple_rnn_5_while_maximum_iterations"
simple_rnn_5_while_placeholder$
 simple_rnn_5_while_placeholder_1$
 simple_rnn_5_while_placeholder_25
1simple_rnn_5_while_simple_rnn_5_strided_slice_1_0q
msimple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_5_tensorarrayunstack_tensorlistfromtensor_0X
Esimple_rnn_5_while_simple_rnn_cell_5_matmul_readvariableop_resource_0:	@?U
Fsimple_rnn_5_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:	?[
Gsimple_rnn_5_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:
??
simple_rnn_5_while_identity!
simple_rnn_5_while_identity_1!
simple_rnn_5_while_identity_2!
simple_rnn_5_while_identity_3!
simple_rnn_5_while_identity_43
/simple_rnn_5_while_simple_rnn_5_strided_slice_1o
ksimple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_5_tensorarrayunstack_tensorlistfromtensorV
Csimple_rnn_5_while_simple_rnn_cell_5_matmul_readvariableop_resource:	@?S
Dsimple_rnn_5_while_simple_rnn_cell_5_biasadd_readvariableop_resource:	?Y
Esimple_rnn_5_while_simple_rnn_cell_5_matmul_1_readvariableop_resource:
????;simple_rnn_5/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?:simple_rnn_5/while/simple_rnn_cell_5/MatMul/ReadVariableOp?<simple_rnn_5/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
Dsimple_rnn_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
6simple_rnn_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_5_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_5_while_placeholderMsimple_rnn_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype0?
:simple_rnn_5/while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_5_while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	@?*
dtype0?
+simple_rnn_5/while/simple_rnn_cell_5/MatMulMatMul=simple_rnn_5/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_5/while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;simple_rnn_5/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_5_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
,simple_rnn_5/while/simple_rnn_cell_5/BiasAddBiasAdd5simple_rnn_5/while/simple_rnn_cell_5/MatMul:product:0Csimple_rnn_5/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<simple_rnn_5/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_5_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
-simple_rnn_5/while/simple_rnn_cell_5/MatMul_1MatMul simple_rnn_5_while_placeholder_2Dsimple_rnn_5/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_5/while/simple_rnn_cell_5/addAddV25simple_rnn_5/while/simple_rnn_cell_5/BiasAdd:output:07simple_rnn_5/while/simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)simple_rnn_5/while/simple_rnn_cell_5/TanhTanh,simple_rnn_5/while/simple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:???????????
7simple_rnn_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_5_while_placeholder_1simple_rnn_5_while_placeholder-simple_rnn_5/while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype0:???Z
simple_rnn_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_5/while/addAddV2simple_rnn_5_while_placeholder!simple_rnn_5/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_5/while/add_1AddV22simple_rnn_5_while_simple_rnn_5_while_loop_counter#simple_rnn_5/while/add_1/y:output:0*
T0*
_output_shapes
: ?
simple_rnn_5/while/IdentityIdentitysimple_rnn_5/while/add_1:z:0^simple_rnn_5/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_5/while/Identity_1Identity8simple_rnn_5_while_simple_rnn_5_while_maximum_iterations^simple_rnn_5/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_5/while/Identity_2Identitysimple_rnn_5/while/add:z:0^simple_rnn_5/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_5/while/Identity_3IdentityGsimple_rnn_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_5/while/NoOp*
T0*
_output_shapes
: :????
simple_rnn_5/while/Identity_4Identity-simple_rnn_5/while/simple_rnn_cell_5/Tanh:y:0^simple_rnn_5/while/NoOp*
T0*(
_output_shapes
:???????????
simple_rnn_5/while/NoOpNoOp<^simple_rnn_5/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp;^simple_rnn_5/while/simple_rnn_cell_5/MatMul/ReadVariableOp=^simple_rnn_5/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_5_while_identity$simple_rnn_5/while/Identity:output:0"G
simple_rnn_5_while_identity_1&simple_rnn_5/while/Identity_1:output:0"G
simple_rnn_5_while_identity_2&simple_rnn_5/while/Identity_2:output:0"G
simple_rnn_5_while_identity_3&simple_rnn_5/while/Identity_3:output:0"G
simple_rnn_5_while_identity_4&simple_rnn_5/while/Identity_4:output:0"d
/simple_rnn_5_while_simple_rnn_5_strided_slice_11simple_rnn_5_while_simple_rnn_5_strided_slice_1_0"?
Dsimple_rnn_5_while_simple_rnn_cell_5_biasadd_readvariableop_resourceFsimple_rnn_5_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"?
Esimple_rnn_5_while_simple_rnn_cell_5_matmul_1_readvariableop_resourceGsimple_rnn_5_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"?
Csimple_rnn_5_while_simple_rnn_cell_5_matmul_readvariableop_resourceEsimple_rnn_5_while_simple_rnn_cell_5_matmul_readvariableop_resource_0"?
ksimple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_5_tensorarrayunstack_tensorlistfromtensormsimple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2z
;simple_rnn_5/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp;simple_rnn_5/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2x
:simple_rnn_5/while/simple_rnn_cell_5/MatMul/ReadVariableOp:simple_rnn_5/while/simple_rnn_cell_5/MatMul/ReadVariableOp2|
<simple_rnn_5/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp<simple_rnn_5/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?	
?
,__inference_sequential_2_layer_call_fn_55103
simple_rnn_4_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:	@?
	unknown_3:	?
	unknown_4:
??
	unknown_5:	?!
	unknown_6:!
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????!**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_55063o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
+
_output_shapes
:?????????
,
_user_specified_namesimple_rnn_4_input
?=
?
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_56048

inputsB
0simple_rnn_cell_4_matmul_readvariableop_resource:@?
1simple_rnn_cell_4_biasadd_readvariableop_resource:@D
2simple_rnn_cell_4_matmul_1_readvariableop_resource:@@
identity??(simple_rnn_cell_4/BiasAdd/ReadVariableOp?'simple_rnn_cell_4/MatMul/ReadVariableOp?)simple_rnn_cell_4/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
:?????????@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
simple_rnn_cell_4/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0?
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@k
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:?????????@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_55982*
condR
while_cond_55981*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????@?
NoOpNoOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_56768

inputs
states_00
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:?????????@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????:?????????@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0
?
?
,__inference_simple_rnn_4_layer_call_fn_55691
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_53951|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
ε
?

 __inference__wrapped_model_53827
simple_rnn_4_input\
Jsequential_2_simple_rnn_4_simple_rnn_cell_4_matmul_readvariableop_resource:@Y
Ksequential_2_simple_rnn_4_simple_rnn_cell_4_biasadd_readvariableop_resource:@^
Lsequential_2_simple_rnn_4_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@]
Jsequential_2_simple_rnn_5_simple_rnn_cell_5_matmul_readvariableop_resource:	@?Z
Ksequential_2_simple_rnn_5_simple_rnn_cell_5_biasadd_readvariableop_resource:	?`
Lsequential_2_simple_rnn_5_simple_rnn_cell_5_matmul_1_readvariableop_resource:
??F
3sequential_2_dense_2_matmul_readvariableop_resource:	?!B
4sequential_2_dense_2_biasadd_readvariableop_resource:!
identity??+sequential_2/dense_2/BiasAdd/ReadVariableOp?*sequential_2/dense_2/MatMul/ReadVariableOp?Bsequential_2/simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOp?Asequential_2/simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOp?Csequential_2/simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOp?sequential_2/simple_rnn_4/while?Bsequential_2/simple_rnn_5/simple_rnn_cell_5/BiasAdd/ReadVariableOp?Asequential_2/simple_rnn_5/simple_rnn_cell_5/MatMul/ReadVariableOp?Csequential_2/simple_rnn_5/simple_rnn_cell_5/MatMul_1/ReadVariableOp?sequential_2/simple_rnn_5/whilea
sequential_2/simple_rnn_4/ShapeShapesimple_rnn_4_input*
T0*
_output_shapes
:w
-sequential_2/simple_rnn_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_2/simple_rnn_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_2/simple_rnn_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_2/simple_rnn_4/strided_sliceStridedSlice(sequential_2/simple_rnn_4/Shape:output:06sequential_2/simple_rnn_4/strided_slice/stack:output:08sequential_2/simple_rnn_4/strided_slice/stack_1:output:08sequential_2/simple_rnn_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(sequential_2/simple_rnn_4/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@?
&sequential_2/simple_rnn_4/zeros/packedPack0sequential_2/simple_rnn_4/strided_slice:output:01sequential_2/simple_rnn_4/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_2/simple_rnn_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_2/simple_rnn_4/zerosFill/sequential_2/simple_rnn_4/zeros/packed:output:0.sequential_2/simple_rnn_4/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@}
(sequential_2/simple_rnn_4/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_2/simple_rnn_4/transpose	Transposesimple_rnn_4_input1sequential_2/simple_rnn_4/transpose/perm:output:0*
T0*+
_output_shapes
:?????????x
!sequential_2/simple_rnn_4/Shape_1Shape'sequential_2/simple_rnn_4/transpose:y:0*
T0*
_output_shapes
:y
/sequential_2/simple_rnn_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_2/simple_rnn_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_2/simple_rnn_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)sequential_2/simple_rnn_4/strided_slice_1StridedSlice*sequential_2/simple_rnn_4/Shape_1:output:08sequential_2/simple_rnn_4/strided_slice_1/stack:output:0:sequential_2/simple_rnn_4/strided_slice_1/stack_1:output:0:sequential_2/simple_rnn_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
5sequential_2/simple_rnn_4/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
'sequential_2/simple_rnn_4/TensorArrayV2TensorListReserve>sequential_2/simple_rnn_4/TensorArrayV2/element_shape:output:02sequential_2/simple_rnn_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Osequential_2/simple_rnn_4/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_2/simple_rnn_4/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor'sequential_2/simple_rnn_4/transpose:y:0Xsequential_2/simple_rnn_4/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???y
/sequential_2/simple_rnn_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_2/simple_rnn_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_2/simple_rnn_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)sequential_2/simple_rnn_4/strided_slice_2StridedSlice'sequential_2/simple_rnn_4/transpose:y:08sequential_2/simple_rnn_4/strided_slice_2/stack:output:0:sequential_2/simple_rnn_4/strided_slice_2/stack_1:output:0:sequential_2/simple_rnn_4/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
Asequential_2/simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpJsequential_2_simple_rnn_4_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
2sequential_2/simple_rnn_4/simple_rnn_cell_4/MatMulMatMul2sequential_2/simple_rnn_4/strided_slice_2:output:0Isequential_2/simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
Bsequential_2/simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpKsequential_2_simple_rnn_4_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
3sequential_2/simple_rnn_4/simple_rnn_cell_4/BiasAddBiasAdd<sequential_2/simple_rnn_4/simple_rnn_cell_4/MatMul:product:0Jsequential_2/simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
Csequential_2/simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpLsequential_2_simple_rnn_4_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0?
4sequential_2/simple_rnn_4/simple_rnn_cell_4/MatMul_1MatMul(sequential_2/simple_rnn_4/zeros:output:0Ksequential_2/simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
/sequential_2/simple_rnn_4/simple_rnn_cell_4/addAddV2<sequential_2/simple_rnn_4/simple_rnn_cell_4/BiasAdd:output:0>sequential_2/simple_rnn_4/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@?
0sequential_2/simple_rnn_4/simple_rnn_cell_4/TanhTanh3sequential_2/simple_rnn_4/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:?????????@?
7sequential_2/simple_rnn_4/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
)sequential_2/simple_rnn_4/TensorArrayV2_1TensorListReserve@sequential_2/simple_rnn_4/TensorArrayV2_1/element_shape:output:02sequential_2/simple_rnn_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???`
sequential_2/simple_rnn_4/timeConst*
_output_shapes
: *
dtype0*
value	B : }
2sequential_2/simple_rnn_4/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????n
,sequential_2/simple_rnn_4/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_2/simple_rnn_4/whileWhile5sequential_2/simple_rnn_4/while/loop_counter:output:0;sequential_2/simple_rnn_4/while/maximum_iterations:output:0'sequential_2/simple_rnn_4/time:output:02sequential_2/simple_rnn_4/TensorArrayV2_1:handle:0(sequential_2/simple_rnn_4/zeros:output:02sequential_2/simple_rnn_4/strided_slice_1:output:0Qsequential_2/simple_rnn_4/TensorArrayUnstack/TensorListFromTensor:output_handle:0Jsequential_2_simple_rnn_4_simple_rnn_cell_4_matmul_readvariableop_resourceKsequential_2_simple_rnn_4_simple_rnn_cell_4_biasadd_readvariableop_resourceLsequential_2_simple_rnn_4_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *6
body.R,
*sequential_2_simple_rnn_4_while_body_53648*6
cond.R,
*sequential_2_simple_rnn_4_while_cond_53647*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations ?
Jsequential_2/simple_rnn_4/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
<sequential_2/simple_rnn_4/TensorArrayV2Stack/TensorListStackTensorListStack(sequential_2/simple_rnn_4/while:output:3Ssequential_2/simple_rnn_4/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype0?
/sequential_2/simple_rnn_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1sequential_2/simple_rnn_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: {
1sequential_2/simple_rnn_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)sequential_2/simple_rnn_4/strided_slice_3StridedSliceEsequential_2/simple_rnn_4/TensorArrayV2Stack/TensorListStack:tensor:08sequential_2/simple_rnn_4/strided_slice_3/stack:output:0:sequential_2/simple_rnn_4/strided_slice_3/stack_1:output:0:sequential_2/simple_rnn_4/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask
*sequential_2/simple_rnn_4/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
%sequential_2/simple_rnn_4/transpose_1	TransposeEsequential_2/simple_rnn_4/TensorArrayV2Stack/TensorListStack:tensor:03sequential_2/simple_rnn_4/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@?
sequential_2/dropout_4/IdentityIdentity)sequential_2/simple_rnn_4/transpose_1:y:0*
T0*+
_output_shapes
:?????????@w
sequential_2/simple_rnn_5/ShapeShape(sequential_2/dropout_4/Identity:output:0*
T0*
_output_shapes
:w
-sequential_2/simple_rnn_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_2/simple_rnn_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_2/simple_rnn_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_2/simple_rnn_5/strided_sliceStridedSlice(sequential_2/simple_rnn_5/Shape:output:06sequential_2/simple_rnn_5/strided_slice/stack:output:08sequential_2/simple_rnn_5/strided_slice/stack_1:output:08sequential_2/simple_rnn_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
(sequential_2/simple_rnn_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
&sequential_2/simple_rnn_5/zeros/packedPack0sequential_2/simple_rnn_5/strided_slice:output:01sequential_2/simple_rnn_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_2/simple_rnn_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_2/simple_rnn_5/zerosFill/sequential_2/simple_rnn_5/zeros/packed:output:0.sequential_2/simple_rnn_5/zeros/Const:output:0*
T0*(
_output_shapes
:??????????}
(sequential_2/simple_rnn_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_2/simple_rnn_5/transpose	Transpose(sequential_2/dropout_4/Identity:output:01sequential_2/simple_rnn_5/transpose/perm:output:0*
T0*+
_output_shapes
:?????????@x
!sequential_2/simple_rnn_5/Shape_1Shape'sequential_2/simple_rnn_5/transpose:y:0*
T0*
_output_shapes
:y
/sequential_2/simple_rnn_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_2/simple_rnn_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_2/simple_rnn_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)sequential_2/simple_rnn_5/strided_slice_1StridedSlice*sequential_2/simple_rnn_5/Shape_1:output:08sequential_2/simple_rnn_5/strided_slice_1/stack:output:0:sequential_2/simple_rnn_5/strided_slice_1/stack_1:output:0:sequential_2/simple_rnn_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
5sequential_2/simple_rnn_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
'sequential_2/simple_rnn_5/TensorArrayV2TensorListReserve>sequential_2/simple_rnn_5/TensorArrayV2/element_shape:output:02sequential_2/simple_rnn_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Osequential_2/simple_rnn_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
Asequential_2/simple_rnn_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor'sequential_2/simple_rnn_5/transpose:y:0Xsequential_2/simple_rnn_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???y
/sequential_2/simple_rnn_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_2/simple_rnn_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_2/simple_rnn_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)sequential_2/simple_rnn_5/strided_slice_2StridedSlice'sequential_2/simple_rnn_5/transpose:y:08sequential_2/simple_rnn_5/strided_slice_2/stack:output:0:sequential_2/simple_rnn_5/strided_slice_2/stack_1:output:0:sequential_2/simple_rnn_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask?
Asequential_2/simple_rnn_5/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpJsequential_2_simple_rnn_5_simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
2sequential_2/simple_rnn_5/simple_rnn_cell_5/MatMulMatMul2sequential_2/simple_rnn_5/strided_slice_2:output:0Isequential_2/simple_rnn_5/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_2/simple_rnn_5/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpKsequential_2_simple_rnn_5_simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
3sequential_2/simple_rnn_5/simple_rnn_cell_5/BiasAddBiasAdd<sequential_2/simple_rnn_5/simple_rnn_cell_5/MatMul:product:0Jsequential_2/simple_rnn_5/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_2/simple_rnn_5/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpLsequential_2_simple_rnn_5_simple_rnn_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
4sequential_2/simple_rnn_5/simple_rnn_cell_5/MatMul_1MatMul(sequential_2/simple_rnn_5/zeros:output:0Ksequential_2/simple_rnn_5/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_2/simple_rnn_5/simple_rnn_cell_5/addAddV2<sequential_2/simple_rnn_5/simple_rnn_cell_5/BiasAdd:output:0>sequential_2/simple_rnn_5/simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
0sequential_2/simple_rnn_5/simple_rnn_cell_5/TanhTanh3sequential_2/simple_rnn_5/simple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:???????????
7sequential_2/simple_rnn_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
)sequential_2/simple_rnn_5/TensorArrayV2_1TensorListReserve@sequential_2/simple_rnn_5/TensorArrayV2_1/element_shape:output:02sequential_2/simple_rnn_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???`
sequential_2/simple_rnn_5/timeConst*
_output_shapes
: *
dtype0*
value	B : }
2sequential_2/simple_rnn_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????n
,sequential_2/simple_rnn_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_2/simple_rnn_5/whileWhile5sequential_2/simple_rnn_5/while/loop_counter:output:0;sequential_2/simple_rnn_5/while/maximum_iterations:output:0'sequential_2/simple_rnn_5/time:output:02sequential_2/simple_rnn_5/TensorArrayV2_1:handle:0(sequential_2/simple_rnn_5/zeros:output:02sequential_2/simple_rnn_5/strided_slice_1:output:0Qsequential_2/simple_rnn_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0Jsequential_2_simple_rnn_5_simple_rnn_cell_5_matmul_readvariableop_resourceKsequential_2_simple_rnn_5_simple_rnn_cell_5_biasadd_readvariableop_resourceLsequential_2_simple_rnn_5_simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *6
body.R,
*sequential_2_simple_rnn_5_while_body_53753*6
cond.R,
*sequential_2_simple_rnn_5_while_cond_53752*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
Jsequential_2/simple_rnn_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
<sequential_2/simple_rnn_5/TensorArrayV2Stack/TensorListStackTensorListStack(sequential_2/simple_rnn_5/while:output:3Ssequential_2/simple_rnn_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0?
/sequential_2/simple_rnn_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1sequential_2/simple_rnn_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: {
1sequential_2/simple_rnn_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)sequential_2/simple_rnn_5/strided_slice_3StridedSliceEsequential_2/simple_rnn_5/TensorArrayV2Stack/TensorListStack:tensor:08sequential_2/simple_rnn_5/strided_slice_3/stack:output:0:sequential_2/simple_rnn_5/strided_slice_3/stack_1:output:0:sequential_2/simple_rnn_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask
*sequential_2/simple_rnn_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
%sequential_2/simple_rnn_5/transpose_1	TransposeEsequential_2/simple_rnn_5/TensorArrayV2Stack/TensorListStack:tensor:03sequential_2/simple_rnn_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:???????????
sequential_2/dropout_5/IdentityIdentity2sequential_2/simple_rnn_5/strided_slice_3:output:0*
T0*(
_output_shapes
:???????????
*sequential_2/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_2_matmul_readvariableop_resource*
_output_shapes
:	?!*
dtype0?
sequential_2/dense_2/MatMulMatMul(sequential_2/dropout_5/Identity:output:02sequential_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!?
+sequential_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype0?
sequential_2/dense_2/BiasAddBiasAdd%sequential_2/dense_2/MatMul:product:03sequential_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!?
sequential_2/dense_2/SoftmaxSoftmax%sequential_2/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????!u
IdentityIdentity&sequential_2/dense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????!?
NoOpNoOp,^sequential_2/dense_2/BiasAdd/ReadVariableOp+^sequential_2/dense_2/MatMul/ReadVariableOpC^sequential_2/simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOpB^sequential_2/simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOpD^sequential_2/simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOp ^sequential_2/simple_rnn_4/whileC^sequential_2/simple_rnn_5/simple_rnn_cell_5/BiasAdd/ReadVariableOpB^sequential_2/simple_rnn_5/simple_rnn_cell_5/MatMul/ReadVariableOpD^sequential_2/simple_rnn_5/simple_rnn_cell_5/MatMul_1/ReadVariableOp ^sequential_2/simple_rnn_5/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : 2Z
+sequential_2/dense_2/BiasAdd/ReadVariableOp+sequential_2/dense_2/BiasAdd/ReadVariableOp2X
*sequential_2/dense_2/MatMul/ReadVariableOp*sequential_2/dense_2/MatMul/ReadVariableOp2?
Bsequential_2/simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOpBsequential_2/simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOp2?
Asequential_2/simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOpAsequential_2/simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOp2?
Csequential_2/simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOpCsequential_2/simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOp2B
sequential_2/simple_rnn_4/whilesequential_2/simple_rnn_4/while2?
Bsequential_2/simple_rnn_5/simple_rnn_cell_5/BiasAdd/ReadVariableOpBsequential_2/simple_rnn_5/simple_rnn_cell_5/BiasAdd/ReadVariableOp2?
Asequential_2/simple_rnn_5/simple_rnn_cell_5/MatMul/ReadVariableOpAsequential_2/simple_rnn_5/simple_rnn_cell_5/MatMul/ReadVariableOp2?
Csequential_2/simple_rnn_5/simple_rnn_cell_5/MatMul_1/ReadVariableOpCsequential_2/simple_rnn_5/simple_rnn_cell_5/MatMul_1/ReadVariableOp2B
sequential_2/simple_rnn_5/whilesequential_2/simple_rnn_5/while:_ [
+
_output_shapes
:?????????
,
_user_specified_namesimple_rnn_4_input
?

?
B__inference_dense_2_layer_call_and_return_conditional_losses_54673

inputs1
matmul_readvariableop_resource:	?!-
biasadd_readvariableop_resource:!
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?!*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:!*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????!`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????!w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
? 
?
while_body_53888
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_simple_rnn_cell_4_53910_0:@-
while_simple_rnn_cell_4_53912_0:@1
while_simple_rnn_cell_4_53914_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_simple_rnn_cell_4_53910:@+
while_simple_rnn_cell_4_53912:@/
while_simple_rnn_cell_4_53914:@@??/while/simple_rnn_cell_4/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
/while/simple_rnn_cell_4/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_4_53910_0while_simple_rnn_cell_4_53912_0while_simple_rnn_cell_4_53914_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_53875?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_4/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :????
while/Identity_4Identity8while/simple_rnn_cell_4/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????@~

while/NoOpNoOp0^while/simple_rnn_cell_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_4_53910while_simple_rnn_cell_4_53910_0"@
while_simple_rnn_cell_4_53912while_simple_rnn_cell_4_53912_0"@
while_simple_rnn_cell_4_53914while_simple_rnn_cell_4_53914_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2b
/while/simple_rnn_cell_4/StatefulPartitionedCall/while/simple_rnn_cell_4/StatefulPartitionedCall: 
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
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
*sequential_2_simple_rnn_5_while_cond_53752P
Lsequential_2_simple_rnn_5_while_sequential_2_simple_rnn_5_while_loop_counterV
Rsequential_2_simple_rnn_5_while_sequential_2_simple_rnn_5_while_maximum_iterations/
+sequential_2_simple_rnn_5_while_placeholder1
-sequential_2_simple_rnn_5_while_placeholder_11
-sequential_2_simple_rnn_5_while_placeholder_2R
Nsequential_2_simple_rnn_5_while_less_sequential_2_simple_rnn_5_strided_slice_1g
csequential_2_simple_rnn_5_while_sequential_2_simple_rnn_5_while_cond_53752___redundant_placeholder0g
csequential_2_simple_rnn_5_while_sequential_2_simple_rnn_5_while_cond_53752___redundant_placeholder1g
csequential_2_simple_rnn_5_while_sequential_2_simple_rnn_5_while_cond_53752___redundant_placeholder2g
csequential_2_simple_rnn_5_while_sequential_2_simple_rnn_5_while_cond_53752___redundant_placeholder3,
(sequential_2_simple_rnn_5_while_identity
?
$sequential_2/simple_rnn_5/while/LessLess+sequential_2_simple_rnn_5_while_placeholderNsequential_2_simple_rnn_5_while_less_sequential_2_simple_rnn_5_strided_slice_1*
T0*
_output_shapes
: 
(sequential_2/simple_rnn_5/while/IdentityIdentity(sequential_2/simple_rnn_5/while/Less:z:0*
T0
*
_output_shapes
: "]
(sequential_2_simple_rnn_5_while_identity1sequential_2/simple_rnn_5/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 
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
:??????????:

_output_shapes
: :

_output_shapes
:
?	
?
,__inference_sequential_2_layer_call_fn_55180

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:	@?
	unknown_3:	?
	unknown_4:
??
	unknown_5:	?!
	unknown_6:!
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????!**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_54680o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?,
?
while_body_55982
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@G
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_4_matmul_readvariableop_resource:@E
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@??.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_4/MatMul/ReadVariableOp?/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0?
while/simple_rnn_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0?
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0?
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@w
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:?????????@?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???}
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:?????????@?

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 
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
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_54338
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_54338___redundant_placeholder03
/while_while_cond_54338___redundant_placeholder13
/while_while_cond_54338___redundant_placeholder23
/while_while_cond_54338___redundant_placeholder3
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
.: : : : :??????????: ::::: 
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
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_56813

inputs
states_01
matmul_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????H
TanhTanhadd:z:0*
T0*(
_output_shapes
:??????????X
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:??????????Z

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????@:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?	
c
D__inference_dropout_5_layer_call_and_return_conditional_losses_56686

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_simple_rnn_4_layer_call_fn_55702
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_54110|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_56751

inputs
states_00
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:?????????@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????:?????????@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0
?8
?
simple_rnn_4_while_body_552436
2simple_rnn_4_while_simple_rnn_4_while_loop_counter<
8simple_rnn_4_while_simple_rnn_4_while_maximum_iterations"
simple_rnn_4_while_placeholder$
 simple_rnn_4_while_placeholder_1$
 simple_rnn_4_while_placeholder_25
1simple_rnn_4_while_simple_rnn_4_strided_slice_1_0q
msimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor_0W
Esimple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@T
Fsimple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@Y
Gsimple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@
simple_rnn_4_while_identity!
simple_rnn_4_while_identity_1!
simple_rnn_4_while_identity_2!
simple_rnn_4_while_identity_3!
simple_rnn_4_while_identity_43
/simple_rnn_4_while_simple_rnn_4_strided_slice_1o
ksimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensorU
Csimple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resource:@R
Dsimple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resource:@W
Esimple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@??;simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp?:simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOp?<simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp?
Dsimple_rnn_4/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
6simple_rnn_4/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_4_while_placeholderMsimple_rnn_4/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
:simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0?
+simple_rnn_4/while/simple_rnn_cell_4/MatMulMatMul=simple_rnn_4/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
;simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0?
,simple_rnn_4/while/simple_rnn_cell_4/BiasAddBiasAdd5simple_rnn_4/while/simple_rnn_cell_4/MatMul:product:0Csimple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
<simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0?
-simple_rnn_4/while/simple_rnn_cell_4/MatMul_1MatMul simple_rnn_4_while_placeholder_2Dsimple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
(simple_rnn_4/while/simple_rnn_cell_4/addAddV25simple_rnn_4/while/simple_rnn_cell_4/BiasAdd:output:07simple_rnn_4/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@?
)simple_rnn_4/while/simple_rnn_cell_4/TanhTanh,simple_rnn_4/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:?????????@?
7simple_rnn_4/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_4_while_placeholder_1simple_rnn_4_while_placeholder-simple_rnn_4/while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:???Z
simple_rnn_4/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_4/while/addAddV2simple_rnn_4_while_placeholder!simple_rnn_4/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_4/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_4/while/add_1AddV22simple_rnn_4_while_simple_rnn_4_while_loop_counter#simple_rnn_4/while/add_1/y:output:0*
T0*
_output_shapes
: ?
simple_rnn_4/while/IdentityIdentitysimple_rnn_4/while/add_1:z:0^simple_rnn_4/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_4/while/Identity_1Identity8simple_rnn_4_while_simple_rnn_4_while_maximum_iterations^simple_rnn_4/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_4/while/Identity_2Identitysimple_rnn_4/while/add:z:0^simple_rnn_4/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_4/while/Identity_3IdentityGsimple_rnn_4/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_4/while/NoOp*
T0*
_output_shapes
: :????
simple_rnn_4/while/Identity_4Identity-simple_rnn_4/while/simple_rnn_cell_4/Tanh:y:0^simple_rnn_4/while/NoOp*
T0*'
_output_shapes
:?????????@?
simple_rnn_4/while/NoOpNoOp<^simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp;^simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOp=^simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_4_while_identity$simple_rnn_4/while/Identity:output:0"G
simple_rnn_4_while_identity_1&simple_rnn_4/while/Identity_1:output:0"G
simple_rnn_4_while_identity_2&simple_rnn_4/while/Identity_2:output:0"G
simple_rnn_4_while_identity_3&simple_rnn_4/while/Identity_3:output:0"G
simple_rnn_4_while_identity_4&simple_rnn_4/while/Identity_4:output:0"d
/simple_rnn_4_while_simple_rnn_4_strided_slice_11simple_rnn_4_while_simple_rnn_4_strided_slice_1_0"?
Dsimple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resourceFsimple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"?
Esimple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resourceGsimple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"?
Csimple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resourceEsimple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"?
ksimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensormsimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2z
;simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp;simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2x
:simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOp:simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOp2|
<simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp<simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 
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
:?????????@:

_output_shapes
: :

_output_shapes
: 
? 
?
while_body_54047
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_simple_rnn_cell_4_54069_0:@-
while_simple_rnn_cell_4_54071_0:@1
while_simple_rnn_cell_4_54073_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_simple_rnn_cell_4_54069:@+
while_simple_rnn_cell_4_54071:@/
while_simple_rnn_cell_4_54073:@@??/while/simple_rnn_cell_4/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
/while/simple_rnn_cell_4/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_4_54069_0while_simple_rnn_cell_4_54071_0while_simple_rnn_cell_4_54073_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_53995?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_4/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :????
while/Identity_4Identity8while/simple_rnn_cell_4/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????@~

while/NoOpNoOp0^while/simple_rnn_cell_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_4_54069while_simple_rnn_cell_4_54069_0"@
while_simple_rnn_cell_4_54071while_simple_rnn_cell_4_54071_0"@
while_simple_rnn_cell_4_54073while_simple_rnn_cell_4_54073_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2b
/while/simple_rnn_cell_4/StatefulPartitionedCall/while/simple_rnn_cell_4/StatefulPartitionedCall: 
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
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
,__inference_simple_rnn_5_layer_call_fn_56216

inputs
unknown:	@?
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_simple_rnn_5_layer_call_and_return_conditional_losses_54647p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
simple_rnn_5_while_cond_553476
2simple_rnn_5_while_simple_rnn_5_while_loop_counter<
8simple_rnn_5_while_simple_rnn_5_while_maximum_iterations"
simple_rnn_5_while_placeholder$
 simple_rnn_5_while_placeholder_1$
 simple_rnn_5_while_placeholder_28
4simple_rnn_5_while_less_simple_rnn_5_strided_slice_1M
Isimple_rnn_5_while_simple_rnn_5_while_cond_55347___redundant_placeholder0M
Isimple_rnn_5_while_simple_rnn_5_while_cond_55347___redundant_placeholder1M
Isimple_rnn_5_while_simple_rnn_5_while_cond_55347___redundant_placeholder2M
Isimple_rnn_5_while_simple_rnn_5_while_cond_55347___redundant_placeholder3
simple_rnn_5_while_identity
?
simple_rnn_5/while/LessLesssimple_rnn_5_while_placeholder4simple_rnn_5_while_less_simple_rnn_5_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_5/while/IdentityIdentitysimple_rnn_5/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_5_while_identity$simple_rnn_5/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 
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
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_54458
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_54458___redundant_placeholder03
/while_while_cond_54458___redundant_placeholder13
/while_while_cond_54458___redundant_placeholder23
/while_while_cond_54458___redundant_placeholder3
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
-: : : : :?????????@: ::::: 
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
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_56592
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_56592___redundant_placeholder03
/while_while_cond_56592___redundant_placeholder13
/while_while_cond_56592___redundant_placeholder23
/while_while_cond_56592___redundant_placeholder3
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
.: : : : :??????????: ::::: 
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
:??????????:

_output_shapes
: :

_output_shapes
:
?	
?
,__inference_sequential_2_layer_call_fn_54699
simple_rnn_4_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:	@?
	unknown_3:	?
	unknown_4:
??
	unknown_5:	?!
	unknown_6:!
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????!**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_54680o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
+
_output_shapes
:?????????
,
_user_specified_namesimple_rnn_4_input
?=
?
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_55940
inputs_0B
0simple_rnn_cell_4_matmul_readvariableop_resource:@?
1simple_rnn_cell_4_biasadd_readvariableop_resource:@D
2simple_rnn_cell_4_matmul_1_readvariableop_resource:@@
identity??(simple_rnn_cell_4/BiasAdd/ReadVariableOp?'simple_rnn_cell_4/MatMul/ReadVariableOp?)simple_rnn_cell_4/MatMul_1/ReadVariableOp?while=
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
valueB:?
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
:?????????@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
simple_rnn_cell_4/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0?
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@k
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:?????????@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_55874*
condR
while_cond_55873*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????@?
NoOpNoOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
,__inference_simple_rnn_5_layer_call_fn_56205
inputs_0
unknown:	@?
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_simple_rnn_5_layer_call_and_return_conditional_losses_54402p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????@
"
_user_specified_name
inputs/0
?

?
simple_rnn_4_while_cond_552426
2simple_rnn_4_while_simple_rnn_4_while_loop_counter<
8simple_rnn_4_while_simple_rnn_4_while_maximum_iterations"
simple_rnn_4_while_placeholder$
 simple_rnn_4_while_placeholder_1$
 simple_rnn_4_while_placeholder_28
4simple_rnn_4_while_less_simple_rnn_4_strided_slice_1M
Isimple_rnn_4_while_simple_rnn_4_while_cond_55242___redundant_placeholder0M
Isimple_rnn_4_while_simple_rnn_4_while_cond_55242___redundant_placeholder1M
Isimple_rnn_4_while_simple_rnn_4_while_cond_55242___redundant_placeholder2M
Isimple_rnn_4_while_simple_rnn_4_while_cond_55242___redundant_placeholder3
simple_rnn_4_while_identity
?
simple_rnn_4/while/LessLesssimple_rnn_4_while_placeholder4simple_rnn_4_while_less_simple_rnn_4_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_4/while/IdentityIdentitysimple_rnn_4/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_4_while_identity$simple_rnn_4/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????@: ::::: 
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
:?????????@:

_output_shapes
: :

_output_shapes
:
?
b
D__inference_dropout_5_layer_call_and_return_conditional_losses_54660

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?4
?
G__inference_simple_rnn_5_layer_call_and_return_conditional_losses_54243

inputs*
simple_rnn_cell_5_54168:	@?&
simple_rnn_cell_5_54170:	?+
simple_rnn_cell_5_54172:
??
identity??)simple_rnn_cell_5/StatefulPartitionedCall?while;
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
valueB:?
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
B :?s
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
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask?
)simple_rnn_cell_5/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_5_54168simple_rnn_cell_5_54170simple_rnn_cell_5_54172*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_54167n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_5_54168simple_rnn_cell_5_54170simple_rnn_cell_5_54172*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_54180*
condR
while_cond_54179*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????z
NoOpNoOp*^simple_rnn_cell_5/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????@: : : 2V
)simple_rnn_cell_5/StatefulPartitionedCall)simple_rnn_cell_5/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?
?
,__inference_simple_rnn_4_layer_call_fn_55724

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_55006s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?=
?
G__inference_simple_rnn_5_layer_call_and_return_conditional_losses_56659

inputsC
0simple_rnn_cell_5_matmul_readvariableop_resource:	@?@
1simple_rnn_cell_5_biasadd_readvariableop_resource:	?F
2simple_rnn_cell_5_matmul_1_readvariableop_resource:
??
identity??(simple_rnn_cell_5/BiasAdd/ReadVariableOp?'simple_rnn_cell_5/MatMul/ReadVariableOp?)simple_rnn_cell_5/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
B :?s
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
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????@D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask?
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????l
simple_rnn_cell_5/TanhTanhsimple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_56593*
condR
while_cond_56592*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
simple_rnn_5_while_cond_555756
2simple_rnn_5_while_simple_rnn_5_while_loop_counter<
8simple_rnn_5_while_simple_rnn_5_while_maximum_iterations"
simple_rnn_5_while_placeholder$
 simple_rnn_5_while_placeholder_1$
 simple_rnn_5_while_placeholder_28
4simple_rnn_5_while_less_simple_rnn_5_strided_slice_1M
Isimple_rnn_5_while_simple_rnn_5_while_cond_55575___redundant_placeholder0M
Isimple_rnn_5_while_simple_rnn_5_while_cond_55575___redundant_placeholder1M
Isimple_rnn_5_while_simple_rnn_5_while_cond_55575___redundant_placeholder2M
Isimple_rnn_5_while_simple_rnn_5_while_cond_55575___redundant_placeholder3
simple_rnn_5_while_identity
?
simple_rnn_5/while/LessLesssimple_rnn_5_while_placeholder4simple_rnn_5_while_less_simple_rnn_5_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_5/while/IdentityIdentitysimple_rnn_5/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_5_while_identity$simple_rnn_5/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 
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
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_54287

inputs

states1
matmul_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????H
TanhTanhadd:z:0*
T0*(
_output_shapes
:??????????X
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:??????????Z

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????@:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?,
?
while_body_55766
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@G
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_4_matmul_readvariableop_resource:@E
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@??.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_4/MatMul/ReadVariableOp?/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0?
while/simple_rnn_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0?
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0?
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@w
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:?????????@?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???}
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:?????????@?

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 
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
:?????????@:

_output_shapes
: :

_output_shapes
: 
?,
?
while_body_54940
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@G
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_4_matmul_readvariableop_resource:@E
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@??.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_4/MatMul/ReadVariableOp?/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0?
while/simple_rnn_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0?
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0?
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@w
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:?????????@?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???}
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:?????????@?

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 
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
:?????????@:

_output_shapes
: :

_output_shapes
: 
?4
?
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_53951

inputs)
simple_rnn_cell_4_53876:@%
simple_rnn_cell_4_53878:@)
simple_rnn_cell_4_53880:@@
identity??)simple_rnn_cell_4/StatefulPartitionedCall?while;
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
valueB:?
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
:?????????@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
)simple_rnn_cell_4/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_4_53876simple_rnn_cell_4_53878simple_rnn_cell_4_53880*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_53875n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_4_53876simple_rnn_cell_4_53878simple_rnn_cell_4_53880*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_53888*
condR
while_cond_53887*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????@z
NoOpNoOp*^simple_rnn_cell_4/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2V
)simple_rnn_cell_4/StatefulPartitionedCall)simple_rnn_cell_4/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
G__inference_sequential_2_layer_call_and_return_conditional_losses_54680

inputs$
simple_rnn_4_54526:@ 
simple_rnn_4_54528:@$
simple_rnn_4_54530:@@%
simple_rnn_5_54648:	@?!
simple_rnn_5_54650:	?&
simple_rnn_5_54652:
?? 
dense_2_54674:	?!
dense_2_54676:!
identity??dense_2/StatefulPartitionedCall?$simple_rnn_4/StatefulPartitionedCall?$simple_rnn_5/StatefulPartitionedCall?
$simple_rnn_4/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_4_54526simple_rnn_4_54528simple_rnn_4_54530*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_54525?
dropout_4/PartitionedCallPartitionedCall-simple_rnn_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_54538?
$simple_rnn_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0simple_rnn_5_54648simple_rnn_5_54650simple_rnn_5_54652*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_simple_rnn_5_layer_call_and_return_conditional_losses_54647?
dropout_5/PartitionedCallPartitionedCall-simple_rnn_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_54660?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0dense_2_54674dense_2_54676*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????!*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_54673w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????!?
NoOpNoOp ^dense_2/StatefulPartitionedCall%^simple_rnn_4/StatefulPartitionedCall%^simple_rnn_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2L
$simple_rnn_4/StatefulPartitionedCall$simple_rnn_4/StatefulPartitionedCall2L
$simple_rnn_5/StatefulPartitionedCall$simple_rnn_5/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
E
)__inference_dropout_5_layer_call_fn_56664

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_54660a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
while_cond_54580
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_54580___redundant_placeholder03
/while_while_cond_54580___redundant_placeholder13
/while_while_cond_54580___redundant_placeholder23
/while_while_cond_54580___redundant_placeholder3
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
.: : : : :??????????: ::::: 
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
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_56830

inputs
states_01
matmul_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????H
TanhTanhadd:z:0*
T0*(
_output_shapes
:??????????X
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:??????????Z

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????@:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?,
?
while_body_56377
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:	@?H
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:	?N
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
6while_simple_rnn_cell_5_matmul_readvariableop_resource:	@?F
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:	?L
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:
????.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_5/MatMul/ReadVariableOp?/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype0?
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	@?*
dtype0?
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????x
while/simple_rnn_cell_5/TanhTanhwhile/simple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???~
while/Identity_4Identity while/simple_rnn_cell_5/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_53995

inputs

states0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:?????????@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????:?????????@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_namestates
?
?
,__inference_simple_rnn_5_layer_call_fn_56227

inputs
unknown:	@?
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_simple_rnn_5_layer_call_and_return_conditional_losses_54853p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?=
?
G__inference_simple_rnn_5_layer_call_and_return_conditional_losses_56335
inputs_0C
0simple_rnn_cell_5_matmul_readvariableop_resource:	@?@
1simple_rnn_cell_5_biasadd_readvariableop_resource:	?F
2simple_rnn_cell_5_matmul_1_readvariableop_resource:
??
identity??(simple_rnn_cell_5/BiasAdd/ReadVariableOp?'simple_rnn_cell_5/MatMul/ReadVariableOp?)simple_rnn_cell_5/MatMul_1/ReadVariableOp?while=
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
valueB:?
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
B :?s
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
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask?
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????l
simple_rnn_cell_5/TanhTanhsimple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_56269*
condR
while_cond_56268*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????@: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????@
"
_user_specified_name
inputs/0
?8
?
simple_rnn_4_while_body_554646
2simple_rnn_4_while_simple_rnn_4_while_loop_counter<
8simple_rnn_4_while_simple_rnn_4_while_maximum_iterations"
simple_rnn_4_while_placeholder$
 simple_rnn_4_while_placeholder_1$
 simple_rnn_4_while_placeholder_25
1simple_rnn_4_while_simple_rnn_4_strided_slice_1_0q
msimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor_0W
Esimple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@T
Fsimple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@Y
Gsimple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@
simple_rnn_4_while_identity!
simple_rnn_4_while_identity_1!
simple_rnn_4_while_identity_2!
simple_rnn_4_while_identity_3!
simple_rnn_4_while_identity_43
/simple_rnn_4_while_simple_rnn_4_strided_slice_1o
ksimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensorU
Csimple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resource:@R
Dsimple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resource:@W
Esimple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@??;simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp?:simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOp?<simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp?
Dsimple_rnn_4/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
6simple_rnn_4/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_4_while_placeholderMsimple_rnn_4/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
:simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0?
+simple_rnn_4/while/simple_rnn_cell_4/MatMulMatMul=simple_rnn_4/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
;simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0?
,simple_rnn_4/while/simple_rnn_cell_4/BiasAddBiasAdd5simple_rnn_4/while/simple_rnn_cell_4/MatMul:product:0Csimple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
<simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0?
-simple_rnn_4/while/simple_rnn_cell_4/MatMul_1MatMul simple_rnn_4_while_placeholder_2Dsimple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
(simple_rnn_4/while/simple_rnn_cell_4/addAddV25simple_rnn_4/while/simple_rnn_cell_4/BiasAdd:output:07simple_rnn_4/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@?
)simple_rnn_4/while/simple_rnn_cell_4/TanhTanh,simple_rnn_4/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:?????????@?
7simple_rnn_4/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_4_while_placeholder_1simple_rnn_4_while_placeholder-simple_rnn_4/while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:???Z
simple_rnn_4/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_4/while/addAddV2simple_rnn_4_while_placeholder!simple_rnn_4/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_4/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_4/while/add_1AddV22simple_rnn_4_while_simple_rnn_4_while_loop_counter#simple_rnn_4/while/add_1/y:output:0*
T0*
_output_shapes
: ?
simple_rnn_4/while/IdentityIdentitysimple_rnn_4/while/add_1:z:0^simple_rnn_4/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_4/while/Identity_1Identity8simple_rnn_4_while_simple_rnn_4_while_maximum_iterations^simple_rnn_4/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_4/while/Identity_2Identitysimple_rnn_4/while/add:z:0^simple_rnn_4/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_4/while/Identity_3IdentityGsimple_rnn_4/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_4/while/NoOp*
T0*
_output_shapes
: :????
simple_rnn_4/while/Identity_4Identity-simple_rnn_4/while/simple_rnn_cell_4/Tanh:y:0^simple_rnn_4/while/NoOp*
T0*'
_output_shapes
:?????????@?
simple_rnn_4/while/NoOpNoOp<^simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp;^simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOp=^simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_4_while_identity$simple_rnn_4/while/Identity:output:0"G
simple_rnn_4_while_identity_1&simple_rnn_4/while/Identity_1:output:0"G
simple_rnn_4_while_identity_2&simple_rnn_4/while/Identity_2:output:0"G
simple_rnn_4_while_identity_3&simple_rnn_4/while/Identity_3:output:0"G
simple_rnn_4_while_identity_4&simple_rnn_4/while/Identity_4:output:0"d
/simple_rnn_4_while_simple_rnn_4_strided_slice_11simple_rnn_4_while_simple_rnn_4_strided_slice_1_0"?
Dsimple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resourceFsimple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"?
Esimple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resourceGsimple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"?
Csimple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resourceEsimple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"?
ksimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensormsimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2z
;simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp;simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2x
:simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOp:simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOp2|
<simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp<simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 
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
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
G__inference_sequential_2_layer_call_and_return_conditional_losses_55063

inputs$
simple_rnn_4_55041:@ 
simple_rnn_4_55043:@$
simple_rnn_4_55045:@@%
simple_rnn_5_55049:	@?!
simple_rnn_5_55051:	?&
simple_rnn_5_55053:
?? 
dense_2_55057:	?!
dense_2_55059:!
identity??dense_2/StatefulPartitionedCall?!dropout_4/StatefulPartitionedCall?!dropout_5/StatefulPartitionedCall?$simple_rnn_4/StatefulPartitionedCall?$simple_rnn_5/StatefulPartitionedCall?
$simple_rnn_4/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_4_55041simple_rnn_4_55043simple_rnn_4_55045*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_55006?
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_54882?
$simple_rnn_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0simple_rnn_5_55049simple_rnn_5_55051simple_rnn_5_55053*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_simple_rnn_5_layer_call_and_return_conditional_losses_54853?
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_5/StatefulPartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_54729?
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0dense_2_55057dense_2_55059*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????!*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_54673w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????!?
NoOpNoOp ^dense_2/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall%^simple_rnn_4/StatefulPartitionedCall%^simple_rnn_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall2L
$simple_rnn_4/StatefulPartitionedCall$simple_rnn_4/StatefulPartitionedCall2L
$simple_rnn_5/StatefulPartitionedCall$simple_rnn_5/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?4
?
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_54110

inputs)
simple_rnn_cell_4_54035:@%
simple_rnn_cell_4_54037:@)
simple_rnn_cell_4_54039:@@
identity??)simple_rnn_cell_4/StatefulPartitionedCall?while;
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
valueB:?
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
:?????????@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
)simple_rnn_cell_4/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_4_54035simple_rnn_cell_4_54037simple_rnn_cell_4_54039*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_53995n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_4_54035simple_rnn_cell_4_54037simple_rnn_cell_4_54039*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_54047*
condR
while_cond_54046*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????@z
NoOpNoOp*^simple_rnn_cell_4/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2V
)simple_rnn_cell_4/StatefulPartitionedCall)simple_rnn_cell_4/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_56268
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_56268___redundant_placeholder03
/while_while_cond_56268___redundant_placeholder13
/while_while_cond_56268___redundant_placeholder23
/while_while_cond_56268___redundant_placeholder3
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
.: : : : :??????????: ::::: 
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
:??????????:

_output_shapes
: :

_output_shapes
:
?=
?
G__inference_simple_rnn_5_layer_call_and_return_conditional_losses_56551

inputsC
0simple_rnn_cell_5_matmul_readvariableop_resource:	@?@
1simple_rnn_cell_5_biasadd_readvariableop_resource:	?F
2simple_rnn_cell_5_matmul_1_readvariableop_resource:
??
identity??(simple_rnn_cell_5/BiasAdd/ReadVariableOp?'simple_rnn_cell_5/MatMul/ReadVariableOp?)simple_rnn_cell_5/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
B :?s
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
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????@D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask?
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????l
simple_rnn_cell_5/TanhTanhsimple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_56485*
condR
while_cond_56484*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
while_cond_56089
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_56089___redundant_placeholder03
/while_while_cond_56089___redundant_placeholder13
/while_while_cond_56089___redundant_placeholder23
/while_while_cond_56089___redundant_placeholder3
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
-: : : : :?????????@: ::::: 
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
:?????????@:

_output_shapes
: :

_output_shapes
:
?
b
)__inference_dropout_4_layer_call_fn_56166

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_54882s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?K
?
__inference__traced_save_56952
file_prefix-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopD
@savev2_simple_rnn_4_simple_rnn_cell_4_kernel_read_readvariableopN
Jsavev2_simple_rnn_4_simple_rnn_cell_4_recurrent_kernel_read_readvariableopB
>savev2_simple_rnn_4_simple_rnn_cell_4_bias_read_readvariableopD
@savev2_simple_rnn_5_simple_rnn_cell_5_kernel_read_readvariableopN
Jsavev2_simple_rnn_5_simple_rnn_cell_5_recurrent_kernel_read_readvariableopB
>savev2_simple_rnn_5_simple_rnn_cell_5_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableopK
Gsavev2_adam_simple_rnn_4_simple_rnn_cell_4_kernel_m_read_readvariableopU
Qsavev2_adam_simple_rnn_4_simple_rnn_cell_4_recurrent_kernel_m_read_readvariableopI
Esavev2_adam_simple_rnn_4_simple_rnn_cell_4_bias_m_read_readvariableopK
Gsavev2_adam_simple_rnn_5_simple_rnn_cell_5_kernel_m_read_readvariableopU
Qsavev2_adam_simple_rnn_5_simple_rnn_cell_5_recurrent_kernel_m_read_readvariableopI
Esavev2_adam_simple_rnn_5_simple_rnn_cell_5_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableopK
Gsavev2_adam_simple_rnn_4_simple_rnn_cell_4_kernel_v_read_readvariableopU
Qsavev2_adam_simple_rnn_4_simple_rnn_cell_4_recurrent_kernel_v_read_readvariableopI
Esavev2_adam_simple_rnn_4_simple_rnn_cell_4_bias_v_read_readvariableopK
Gsavev2_adam_simple_rnn_5_simple_rnn_cell_5_kernel_v_read_readvariableopU
Qsavev2_adam_simple_rnn_5_simple_rnn_cell_5_recurrent_kernel_v_read_readvariableopI
Esavev2_adam_simple_rnn_5_simple_rnn_cell_5_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop@savev2_simple_rnn_4_simple_rnn_cell_4_kernel_read_readvariableopJsavev2_simple_rnn_4_simple_rnn_cell_4_recurrent_kernel_read_readvariableop>savev2_simple_rnn_4_simple_rnn_cell_4_bias_read_readvariableop@savev2_simple_rnn_5_simple_rnn_cell_5_kernel_read_readvariableopJsavev2_simple_rnn_5_simple_rnn_cell_5_recurrent_kernel_read_readvariableop>savev2_simple_rnn_5_simple_rnn_cell_5_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableopGsavev2_adam_simple_rnn_4_simple_rnn_cell_4_kernel_m_read_readvariableopQsavev2_adam_simple_rnn_4_simple_rnn_cell_4_recurrent_kernel_m_read_readvariableopEsavev2_adam_simple_rnn_4_simple_rnn_cell_4_bias_m_read_readvariableopGsavev2_adam_simple_rnn_5_simple_rnn_cell_5_kernel_m_read_readvariableopQsavev2_adam_simple_rnn_5_simple_rnn_cell_5_recurrent_kernel_m_read_readvariableopEsavev2_adam_simple_rnn_5_simple_rnn_cell_5_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableopGsavev2_adam_simple_rnn_4_simple_rnn_cell_4_kernel_v_read_readvariableopQsavev2_adam_simple_rnn_4_simple_rnn_cell_4_recurrent_kernel_v_read_readvariableopEsavev2_adam_simple_rnn_4_simple_rnn_cell_4_bias_v_read_readvariableopGsavev2_adam_simple_rnn_5_simple_rnn_cell_5_kernel_v_read_readvariableopQsavev2_adam_simple_rnn_5_simple_rnn_cell_5_recurrent_kernel_v_read_readvariableopEsavev2_adam_simple_rnn_5_simple_rnn_cell_5_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :	?!:!: : : : : :@:@@:@:	@?:
??:?: : : : :	?!:!:@:@@:@:	@?:
??:?:	?!:!:@:@@:@:	@?:
??:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?!: 
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
:	@?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:
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
:	?!: 
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
:	@?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?!: 
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
:	@?:& "
 
_output_shapes
:
??:!!

_output_shapes	
:?:"

_output_shapes
: 
?,
?
while_body_54581
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:	@?H
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:	?N
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
6while_simple_rnn_cell_5_matmul_readvariableop_resource:	@?F
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:	?L
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:
????.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_5/MatMul/ReadVariableOp?/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype0?
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	@?*
dtype0?
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????x
while/simple_rnn_cell_5/TanhTanhwhile/simple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???~
while/Identity_4Identity while/simple_rnn_cell_5/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?4
?
G__inference_simple_rnn_5_layer_call_and_return_conditional_losses_54402

inputs*
simple_rnn_cell_5_54327:	@?&
simple_rnn_cell_5_54329:	?+
simple_rnn_cell_5_54331:
??
identity??)simple_rnn_cell_5/StatefulPartitionedCall?while;
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
valueB:?
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
B :?s
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
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask?
)simple_rnn_cell_5/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_5_54327simple_rnn_cell_5_54329simple_rnn_cell_5_54331*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_54287n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_5_54327simple_rnn_cell_5_54329simple_rnn_cell_5_54331*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_54339*
condR
while_cond_54338*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????z
NoOpNoOp*^simple_rnn_cell_5/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????@: : : 2V
)simple_rnn_cell_5/StatefulPartitionedCall)simple_rnn_cell_5/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?!
?
while_body_54180
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_02
while_simple_rnn_cell_5_54202_0:	@?.
while_simple_rnn_cell_5_54204_0:	?3
while_simple_rnn_cell_5_54206_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor0
while_simple_rnn_cell_5_54202:	@?,
while_simple_rnn_cell_5_54204:	?1
while_simple_rnn_cell_5_54206:
????/while/simple_rnn_cell_5/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype0?
/while/simple_rnn_cell_5/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_5_54202_0while_simple_rnn_cell_5_54204_0while_simple_rnn_cell_5_54206_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_54167?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_5/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :????
while/Identity_4Identity8while/simple_rnn_cell_5/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:??????????~

while/NoOpNoOp0^while/simple_rnn_cell_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_5_54202while_simple_rnn_cell_5_54202_0"@
while_simple_rnn_cell_5_54204while_simple_rnn_cell_5_54204_0"@
while_simple_rnn_cell_5_54206while_simple_rnn_cell_5_54206_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2b
/while/simple_rnn_cell_5/StatefulPartitionedCall/while/simple_rnn_cell_5/StatefulPartitionedCall: 
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?

?
1__inference_simple_rnn_cell_5_layer_call_fn_56796

inputs
states_0
unknown:	@?
	unknown_0:	?
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_54287p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????@:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?=
?
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_54525

inputsB
0simple_rnn_cell_4_matmul_readvariableop_resource:@?
1simple_rnn_cell_4_biasadd_readvariableop_resource:@D
2simple_rnn_cell_4_matmul_1_readvariableop_resource:@@
identity??(simple_rnn_cell_4/BiasAdd/ReadVariableOp?'simple_rnn_cell_4/MatMul/ReadVariableOp?)simple_rnn_cell_4/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
:?????????@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
simple_rnn_cell_4/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0?
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@k
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:?????????@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_54459*
condR
while_cond_54458*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????@?
NoOpNoOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_54939
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_54939___redundant_placeholder03
/while_while_cond_54939___redundant_placeholder13
/while_while_cond_54939___redundant_placeholder23
/while_while_cond_54939___redundant_placeholder3
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
-: : : : :?????????@: ::::: 
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
:?????????@:

_output_shapes
: :

_output_shapes
:
?	
?
#__inference_signature_wrapper_55680
simple_rnn_4_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:	@?
	unknown_3:	?
	unknown_4:
??
	unknown_5:	?!
	unknown_6:!
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????!**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_53827o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
+
_output_shapes
:?????????
,
_user_specified_namesimple_rnn_4_input
?

?
B__inference_dense_2_layer_call_and_return_conditional_losses_56706

inputs1
matmul_readvariableop_resource:	?!-
biasadd_readvariableop_resource:!
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?!*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:!*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????!V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????!`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????!w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
)__inference_dropout_5_layer_call_fn_56669

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_54729p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
while_cond_53887
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_53887___redundant_placeholder03
/while_while_cond_53887___redundant_placeholder13
/while_while_cond_53887___redundant_placeholder23
/while_while_cond_53887___redundant_placeholder3
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
-: : : : :?????????@: ::::: 
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
:?????????@:

_output_shapes
: :

_output_shapes
:
?D
?
*sequential_2_simple_rnn_5_while_body_53753P
Lsequential_2_simple_rnn_5_while_sequential_2_simple_rnn_5_while_loop_counterV
Rsequential_2_simple_rnn_5_while_sequential_2_simple_rnn_5_while_maximum_iterations/
+sequential_2_simple_rnn_5_while_placeholder1
-sequential_2_simple_rnn_5_while_placeholder_11
-sequential_2_simple_rnn_5_while_placeholder_2O
Ksequential_2_simple_rnn_5_while_sequential_2_simple_rnn_5_strided_slice_1_0?
?sequential_2_simple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_sequential_2_simple_rnn_5_tensorarrayunstack_tensorlistfromtensor_0e
Rsequential_2_simple_rnn_5_while_simple_rnn_cell_5_matmul_readvariableop_resource_0:	@?b
Ssequential_2_simple_rnn_5_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:	?h
Tsequential_2_simple_rnn_5_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:
??,
(sequential_2_simple_rnn_5_while_identity.
*sequential_2_simple_rnn_5_while_identity_1.
*sequential_2_simple_rnn_5_while_identity_2.
*sequential_2_simple_rnn_5_while_identity_3.
*sequential_2_simple_rnn_5_while_identity_4M
Isequential_2_simple_rnn_5_while_sequential_2_simple_rnn_5_strided_slice_1?
?sequential_2_simple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_sequential_2_simple_rnn_5_tensorarrayunstack_tensorlistfromtensorc
Psequential_2_simple_rnn_5_while_simple_rnn_cell_5_matmul_readvariableop_resource:	@?`
Qsequential_2_simple_rnn_5_while_simple_rnn_cell_5_biasadd_readvariableop_resource:	?f
Rsequential_2_simple_rnn_5_while_simple_rnn_cell_5_matmul_1_readvariableop_resource:
????Hsequential_2/simple_rnn_5/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?Gsequential_2/simple_rnn_5/while/simple_rnn_cell_5/MatMul/ReadVariableOp?Isequential_2/simple_rnn_5/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
Qsequential_2/simple_rnn_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
Csequential_2/simple_rnn_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_2_simple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_sequential_2_simple_rnn_5_tensorarrayunstack_tensorlistfromtensor_0+sequential_2_simple_rnn_5_while_placeholderZsequential_2/simple_rnn_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype0?
Gsequential_2/simple_rnn_5/while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpRsequential_2_simple_rnn_5_while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	@?*
dtype0?
8sequential_2/simple_rnn_5/while/simple_rnn_cell_5/MatMulMatMulJsequential_2/simple_rnn_5/while/TensorArrayV2Read/TensorListGetItem:item:0Osequential_2/simple_rnn_5/while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Hsequential_2/simple_rnn_5/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpSsequential_2_simple_rnn_5_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
9sequential_2/simple_rnn_5/while/simple_rnn_cell_5/BiasAddBiasAddBsequential_2/simple_rnn_5/while/simple_rnn_cell_5/MatMul:product:0Psequential_2/simple_rnn_5/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Isequential_2/simple_rnn_5/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpTsequential_2_simple_rnn_5_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
:sequential_2/simple_rnn_5/while/simple_rnn_cell_5/MatMul_1MatMul-sequential_2_simple_rnn_5_while_placeholder_2Qsequential_2/simple_rnn_5/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
5sequential_2/simple_rnn_5/while/simple_rnn_cell_5/addAddV2Bsequential_2/simple_rnn_5/while/simple_rnn_cell_5/BiasAdd:output:0Dsequential_2/simple_rnn_5/while/simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
6sequential_2/simple_rnn_5/while/simple_rnn_cell_5/TanhTanh9sequential_2/simple_rnn_5/while/simple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:???????????
Dsequential_2/simple_rnn_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem-sequential_2_simple_rnn_5_while_placeholder_1+sequential_2_simple_rnn_5_while_placeholder:sequential_2/simple_rnn_5/while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype0:???g
%sequential_2/simple_rnn_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_2/simple_rnn_5/while/addAddV2+sequential_2_simple_rnn_5_while_placeholder.sequential_2/simple_rnn_5/while/add/y:output:0*
T0*
_output_shapes
: i
'sequential_2/simple_rnn_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
%sequential_2/simple_rnn_5/while/add_1AddV2Lsequential_2_simple_rnn_5_while_sequential_2_simple_rnn_5_while_loop_counter0sequential_2/simple_rnn_5/while/add_1/y:output:0*
T0*
_output_shapes
: ?
(sequential_2/simple_rnn_5/while/IdentityIdentity)sequential_2/simple_rnn_5/while/add_1:z:0%^sequential_2/simple_rnn_5/while/NoOp*
T0*
_output_shapes
: ?
*sequential_2/simple_rnn_5/while/Identity_1IdentityRsequential_2_simple_rnn_5_while_sequential_2_simple_rnn_5_while_maximum_iterations%^sequential_2/simple_rnn_5/while/NoOp*
T0*
_output_shapes
: ?
*sequential_2/simple_rnn_5/while/Identity_2Identity'sequential_2/simple_rnn_5/while/add:z:0%^sequential_2/simple_rnn_5/while/NoOp*
T0*
_output_shapes
: ?
*sequential_2/simple_rnn_5/while/Identity_3IdentityTsequential_2/simple_rnn_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0%^sequential_2/simple_rnn_5/while/NoOp*
T0*
_output_shapes
: :????
*sequential_2/simple_rnn_5/while/Identity_4Identity:sequential_2/simple_rnn_5/while/simple_rnn_cell_5/Tanh:y:0%^sequential_2/simple_rnn_5/while/NoOp*
T0*(
_output_shapes
:???????????
$sequential_2/simple_rnn_5/while/NoOpNoOpI^sequential_2/simple_rnn_5/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpH^sequential_2/simple_rnn_5/while/simple_rnn_cell_5/MatMul/ReadVariableOpJ^sequential_2/simple_rnn_5/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "]
(sequential_2_simple_rnn_5_while_identity1sequential_2/simple_rnn_5/while/Identity:output:0"a
*sequential_2_simple_rnn_5_while_identity_13sequential_2/simple_rnn_5/while/Identity_1:output:0"a
*sequential_2_simple_rnn_5_while_identity_23sequential_2/simple_rnn_5/while/Identity_2:output:0"a
*sequential_2_simple_rnn_5_while_identity_33sequential_2/simple_rnn_5/while/Identity_3:output:0"a
*sequential_2_simple_rnn_5_while_identity_43sequential_2/simple_rnn_5/while/Identity_4:output:0"?
Isequential_2_simple_rnn_5_while_sequential_2_simple_rnn_5_strided_slice_1Ksequential_2_simple_rnn_5_while_sequential_2_simple_rnn_5_strided_slice_1_0"?
Qsequential_2_simple_rnn_5_while_simple_rnn_cell_5_biasadd_readvariableop_resourceSsequential_2_simple_rnn_5_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"?
Rsequential_2_simple_rnn_5_while_simple_rnn_cell_5_matmul_1_readvariableop_resourceTsequential_2_simple_rnn_5_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"?
Psequential_2_simple_rnn_5_while_simple_rnn_cell_5_matmul_readvariableop_resourceRsequential_2_simple_rnn_5_while_simple_rnn_cell_5_matmul_readvariableop_resource_0"?
?sequential_2_simple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_sequential_2_simple_rnn_5_tensorarrayunstack_tensorlistfromtensor?sequential_2_simple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_sequential_2_simple_rnn_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2?
Hsequential_2/simple_rnn_5/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpHsequential_2/simple_rnn_5/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2?
Gsequential_2/simple_rnn_5/while/simple_rnn_cell_5/MatMul/ReadVariableOpGsequential_2/simple_rnn_5/while/simple_rnn_cell_5/MatMul/ReadVariableOp2?
Isequential_2/simple_rnn_5/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpIsequential_2/simple_rnn_5/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?
b
D__inference_dropout_4_layer_call_and_return_conditional_losses_54538

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????@_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
E
)__inference_dropout_4_layer_call_fn_56161

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_54538d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?,
?
while_body_56593
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:	@?H
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:	?N
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
6while_simple_rnn_cell_5_matmul_readvariableop_resource:	@?F
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:	?L
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:
????.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_5/MatMul/ReadVariableOp?/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype0?
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	@?*
dtype0?
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????x
while/simple_rnn_cell_5/TanhTanhwhile/simple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???~
while/Identity_4Identity while/simple_rnn_cell_5/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?8
?
simple_rnn_5_while_body_555766
2simple_rnn_5_while_simple_rnn_5_while_loop_counter<
8simple_rnn_5_while_simple_rnn_5_while_maximum_iterations"
simple_rnn_5_while_placeholder$
 simple_rnn_5_while_placeholder_1$
 simple_rnn_5_while_placeholder_25
1simple_rnn_5_while_simple_rnn_5_strided_slice_1_0q
msimple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_5_tensorarrayunstack_tensorlistfromtensor_0X
Esimple_rnn_5_while_simple_rnn_cell_5_matmul_readvariableop_resource_0:	@?U
Fsimple_rnn_5_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:	?[
Gsimple_rnn_5_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:
??
simple_rnn_5_while_identity!
simple_rnn_5_while_identity_1!
simple_rnn_5_while_identity_2!
simple_rnn_5_while_identity_3!
simple_rnn_5_while_identity_43
/simple_rnn_5_while_simple_rnn_5_strided_slice_1o
ksimple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_5_tensorarrayunstack_tensorlistfromtensorV
Csimple_rnn_5_while_simple_rnn_cell_5_matmul_readvariableop_resource:	@?S
Dsimple_rnn_5_while_simple_rnn_cell_5_biasadd_readvariableop_resource:	?Y
Esimple_rnn_5_while_simple_rnn_cell_5_matmul_1_readvariableop_resource:
????;simple_rnn_5/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?:simple_rnn_5/while/simple_rnn_cell_5/MatMul/ReadVariableOp?<simple_rnn_5/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
Dsimple_rnn_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
6simple_rnn_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_5_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_5_while_placeholderMsimple_rnn_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype0?
:simple_rnn_5/while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_5_while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	@?*
dtype0?
+simple_rnn_5/while/simple_rnn_cell_5/MatMulMatMul=simple_rnn_5/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_5/while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;simple_rnn_5/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_5_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
,simple_rnn_5/while/simple_rnn_cell_5/BiasAddBiasAdd5simple_rnn_5/while/simple_rnn_cell_5/MatMul:product:0Csimple_rnn_5/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<simple_rnn_5/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_5_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
-simple_rnn_5/while/simple_rnn_cell_5/MatMul_1MatMul simple_rnn_5_while_placeholder_2Dsimple_rnn_5/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_5/while/simple_rnn_cell_5/addAddV25simple_rnn_5/while/simple_rnn_cell_5/BiasAdd:output:07simple_rnn_5/while/simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)simple_rnn_5/while/simple_rnn_cell_5/TanhTanh,simple_rnn_5/while/simple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:???????????
7simple_rnn_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_5_while_placeholder_1simple_rnn_5_while_placeholder-simple_rnn_5/while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype0:???Z
simple_rnn_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_5/while/addAddV2simple_rnn_5_while_placeholder!simple_rnn_5/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_5/while/add_1AddV22simple_rnn_5_while_simple_rnn_5_while_loop_counter#simple_rnn_5/while/add_1/y:output:0*
T0*
_output_shapes
: ?
simple_rnn_5/while/IdentityIdentitysimple_rnn_5/while/add_1:z:0^simple_rnn_5/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_5/while/Identity_1Identity8simple_rnn_5_while_simple_rnn_5_while_maximum_iterations^simple_rnn_5/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_5/while/Identity_2Identitysimple_rnn_5/while/add:z:0^simple_rnn_5/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_5/while/Identity_3IdentityGsimple_rnn_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_5/while/NoOp*
T0*
_output_shapes
: :????
simple_rnn_5/while/Identity_4Identity-simple_rnn_5/while/simple_rnn_cell_5/Tanh:y:0^simple_rnn_5/while/NoOp*
T0*(
_output_shapes
:???????????
simple_rnn_5/while/NoOpNoOp<^simple_rnn_5/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp;^simple_rnn_5/while/simple_rnn_cell_5/MatMul/ReadVariableOp=^simple_rnn_5/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_5_while_identity$simple_rnn_5/while/Identity:output:0"G
simple_rnn_5_while_identity_1&simple_rnn_5/while/Identity_1:output:0"G
simple_rnn_5_while_identity_2&simple_rnn_5/while/Identity_2:output:0"G
simple_rnn_5_while_identity_3&simple_rnn_5/while/Identity_3:output:0"G
simple_rnn_5_while_identity_4&simple_rnn_5/while/Identity_4:output:0"d
/simple_rnn_5_while_simple_rnn_5_strided_slice_11simple_rnn_5_while_simple_rnn_5_strided_slice_1_0"?
Dsimple_rnn_5_while_simple_rnn_cell_5_biasadd_readvariableop_resourceFsimple_rnn_5_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"?
Esimple_rnn_5_while_simple_rnn_cell_5_matmul_1_readvariableop_resourceGsimple_rnn_5_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"?
Csimple_rnn_5_while_simple_rnn_cell_5_matmul_readvariableop_resourceEsimple_rnn_5_while_simple_rnn_cell_5_matmul_readvariableop_resource_0"?
ksimple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_5_tensorarrayunstack_tensorlistfromtensormsimple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2z
;simple_rnn_5/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp;simple_rnn_5/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2x
:simple_rnn_5/while/simple_rnn_cell_5/MatMul/ReadVariableOp:simple_rnn_5/while/simple_rnn_cell_5/MatMul/ReadVariableOp2|
<simple_rnn_5/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp<simple_rnn_5/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?=
?
G__inference_simple_rnn_5_layer_call_and_return_conditional_losses_54853

inputsC
0simple_rnn_cell_5_matmul_readvariableop_resource:	@?@
1simple_rnn_cell_5_biasadd_readvariableop_resource:	?F
2simple_rnn_cell_5_matmul_1_readvariableop_resource:
??
identity??(simple_rnn_cell_5/BiasAdd/ReadVariableOp?'simple_rnn_cell_5/MatMul/ReadVariableOp?)simple_rnn_cell_5/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
B :?s
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
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????@D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask?
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????l
simple_rnn_cell_5/TanhTanhsimple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_54787*
condR
while_cond_54786*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
b
D__inference_dropout_5_layer_call_and_return_conditional_losses_56674

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
1__inference_simple_rnn_cell_4_layer_call_fn_56720

inputs
states_0
unknown:@
	unknown_0:@
	unknown_1:@@
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_53875o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????:?????????@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0
?
?
while_cond_56484
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_56484___redundant_placeholder03
/while_while_cond_56484___redundant_placeholder13
/while_while_cond_56484___redundant_placeholder23
/while_while_cond_56484___redundant_placeholder3
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
.: : : : :??????????: ::::: 
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
:??????????:

_output_shapes
: :

_output_shapes
:
?D
?
*sequential_2_simple_rnn_4_while_body_53648P
Lsequential_2_simple_rnn_4_while_sequential_2_simple_rnn_4_while_loop_counterV
Rsequential_2_simple_rnn_4_while_sequential_2_simple_rnn_4_while_maximum_iterations/
+sequential_2_simple_rnn_4_while_placeholder1
-sequential_2_simple_rnn_4_while_placeholder_11
-sequential_2_simple_rnn_4_while_placeholder_2O
Ksequential_2_simple_rnn_4_while_sequential_2_simple_rnn_4_strided_slice_1_0?
?sequential_2_simple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_sequential_2_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor_0d
Rsequential_2_simple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@a
Ssequential_2_simple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@f
Tsequential_2_simple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@,
(sequential_2_simple_rnn_4_while_identity.
*sequential_2_simple_rnn_4_while_identity_1.
*sequential_2_simple_rnn_4_while_identity_2.
*sequential_2_simple_rnn_4_while_identity_3.
*sequential_2_simple_rnn_4_while_identity_4M
Isequential_2_simple_rnn_4_while_sequential_2_simple_rnn_4_strided_slice_1?
?sequential_2_simple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_sequential_2_simple_rnn_4_tensorarrayunstack_tensorlistfromtensorb
Psequential_2_simple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resource:@_
Qsequential_2_simple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resource:@d
Rsequential_2_simple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@??Hsequential_2/simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp?Gsequential_2/simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOp?Isequential_2/simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp?
Qsequential_2/simple_rnn_4/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Csequential_2/simple_rnn_4/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_2_simple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_sequential_2_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor_0+sequential_2_simple_rnn_4_while_placeholderZsequential_2/simple_rnn_4/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Gsequential_2/simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpRsequential_2_simple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0?
8sequential_2/simple_rnn_4/while/simple_rnn_cell_4/MatMulMatMulJsequential_2/simple_rnn_4/while/TensorArrayV2Read/TensorListGetItem:item:0Osequential_2/simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
Hsequential_2/simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpSsequential_2_simple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0?
9sequential_2/simple_rnn_4/while/simple_rnn_cell_4/BiasAddBiasAddBsequential_2/simple_rnn_4/while/simple_rnn_cell_4/MatMul:product:0Psequential_2/simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
Isequential_2/simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpTsequential_2_simple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0?
:sequential_2/simple_rnn_4/while/simple_rnn_cell_4/MatMul_1MatMul-sequential_2_simple_rnn_4_while_placeholder_2Qsequential_2/simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
5sequential_2/simple_rnn_4/while/simple_rnn_cell_4/addAddV2Bsequential_2/simple_rnn_4/while/simple_rnn_cell_4/BiasAdd:output:0Dsequential_2/simple_rnn_4/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@?
6sequential_2/simple_rnn_4/while/simple_rnn_cell_4/TanhTanh9sequential_2/simple_rnn_4/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:?????????@?
Dsequential_2/simple_rnn_4/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem-sequential_2_simple_rnn_4_while_placeholder_1+sequential_2_simple_rnn_4_while_placeholder:sequential_2/simple_rnn_4/while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:???g
%sequential_2/simple_rnn_4/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_2/simple_rnn_4/while/addAddV2+sequential_2_simple_rnn_4_while_placeholder.sequential_2/simple_rnn_4/while/add/y:output:0*
T0*
_output_shapes
: i
'sequential_2/simple_rnn_4/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
%sequential_2/simple_rnn_4/while/add_1AddV2Lsequential_2_simple_rnn_4_while_sequential_2_simple_rnn_4_while_loop_counter0sequential_2/simple_rnn_4/while/add_1/y:output:0*
T0*
_output_shapes
: ?
(sequential_2/simple_rnn_4/while/IdentityIdentity)sequential_2/simple_rnn_4/while/add_1:z:0%^sequential_2/simple_rnn_4/while/NoOp*
T0*
_output_shapes
: ?
*sequential_2/simple_rnn_4/while/Identity_1IdentityRsequential_2_simple_rnn_4_while_sequential_2_simple_rnn_4_while_maximum_iterations%^sequential_2/simple_rnn_4/while/NoOp*
T0*
_output_shapes
: ?
*sequential_2/simple_rnn_4/while/Identity_2Identity'sequential_2/simple_rnn_4/while/add:z:0%^sequential_2/simple_rnn_4/while/NoOp*
T0*
_output_shapes
: ?
*sequential_2/simple_rnn_4/while/Identity_3IdentityTsequential_2/simple_rnn_4/while/TensorArrayV2Write/TensorListSetItem:output_handle:0%^sequential_2/simple_rnn_4/while/NoOp*
T0*
_output_shapes
: :????
*sequential_2/simple_rnn_4/while/Identity_4Identity:sequential_2/simple_rnn_4/while/simple_rnn_cell_4/Tanh:y:0%^sequential_2/simple_rnn_4/while/NoOp*
T0*'
_output_shapes
:?????????@?
$sequential_2/simple_rnn_4/while/NoOpNoOpI^sequential_2/simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpH^sequential_2/simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOpJ^sequential_2/simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "]
(sequential_2_simple_rnn_4_while_identity1sequential_2/simple_rnn_4/while/Identity:output:0"a
*sequential_2_simple_rnn_4_while_identity_13sequential_2/simple_rnn_4/while/Identity_1:output:0"a
*sequential_2_simple_rnn_4_while_identity_23sequential_2/simple_rnn_4/while/Identity_2:output:0"a
*sequential_2_simple_rnn_4_while_identity_33sequential_2/simple_rnn_4/while/Identity_3:output:0"a
*sequential_2_simple_rnn_4_while_identity_43sequential_2/simple_rnn_4/while/Identity_4:output:0"?
Isequential_2_simple_rnn_4_while_sequential_2_simple_rnn_4_strided_slice_1Ksequential_2_simple_rnn_4_while_sequential_2_simple_rnn_4_strided_slice_1_0"?
Qsequential_2_simple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resourceSsequential_2_simple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"?
Rsequential_2_simple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resourceTsequential_2_simple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"?
Psequential_2_simple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resourceRsequential_2_simple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"?
?sequential_2_simple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_sequential_2_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor?sequential_2_simple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_sequential_2_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2?
Hsequential_2/simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpHsequential_2/simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2?
Gsequential_2/simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOpGsequential_2/simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOp2?
Isequential_2/simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpIsequential_2/simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 
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
:?????????@:

_output_shapes
: :

_output_shapes
: 
?,
?
while_body_56485
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:	@?H
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:	?N
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
6while_simple_rnn_cell_5_matmul_readvariableop_resource:	@?F
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:	?L
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:
????.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_5/MatMul/ReadVariableOp?/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype0?
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	@?*
dtype0?
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????x
while/simple_rnn_cell_5/TanhTanhwhile/simple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???~
while/Identity_4Identity while/simple_rnn_cell_5/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?,
?
while_body_54787
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:	@?H
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:	?N
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
6while_simple_rnn_cell_5_matmul_readvariableop_resource:	@?F
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:	?L
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:
????.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_5/MatMul/ReadVariableOp?/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype0?
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	@?*
dtype0?
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????x
while/simple_rnn_cell_5/TanhTanhwhile/simple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???~
while/Identity_4Identity while/simple_rnn_cell_5/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_55981
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_55981___redundant_placeholder03
/while_while_cond_55981___redundant_placeholder13
/while_while_cond_55981___redundant_placeholder23
/while_while_cond_55981___redundant_placeholder3
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
-: : : : :?????????@: ::::: 
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
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_54179
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_54179___redundant_placeholder03
/while_while_cond_54179___redundant_placeholder13
/while_while_cond_54179___redundant_placeholder23
/while_while_cond_54179___redundant_placeholder3
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
.: : : : :??????????: ::::: 
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
:??????????:

_output_shapes
: :

_output_shapes
:
?

?
1__inference_simple_rnn_cell_5_layer_call_fn_56782

inputs
states_0
unknown:	@?
	unknown_0:	?
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_54167p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????@:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?
?
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_53875

inputs

states0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:?????????@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????:?????????@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_namestates
?=
?
G__inference_simple_rnn_5_layer_call_and_return_conditional_losses_54647

inputsC
0simple_rnn_cell_5_matmul_readvariableop_resource:	@?@
1simple_rnn_cell_5_biasadd_readvariableop_resource:	?F
2simple_rnn_cell_5_matmul_1_readvariableop_resource:
??
identity??(simple_rnn_cell_5/BiasAdd/ReadVariableOp?'simple_rnn_cell_5/MatMul/ReadVariableOp?)simple_rnn_cell_5/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
B :?s
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
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????@D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask?
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????l
simple_rnn_cell_5/TanhTanhsimple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_54581*
condR
while_cond_54580*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
while_cond_55873
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_55873___redundant_placeholder03
/while_while_cond_55873___redundant_placeholder13
/while_while_cond_55873___redundant_placeholder23
/while_while_cond_55873___redundant_placeholder3
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
-: : : : :?????????@: ::::: 
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
:?????????@:

_output_shapes
: :

_output_shapes
:
?=
?
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_56156

inputsB
0simple_rnn_cell_4_matmul_readvariableop_resource:@?
1simple_rnn_cell_4_biasadd_readvariableop_resource:@D
2simple_rnn_cell_4_matmul_1_readvariableop_resource:@@
identity??(simple_rnn_cell_4/BiasAdd/ReadVariableOp?'simple_rnn_cell_4/MatMul/ReadVariableOp?)simple_rnn_cell_4/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
:?????????@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
simple_rnn_cell_4/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0?
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@k
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:?????????@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_56090*
condR
while_cond_56089*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????@?
NoOpNoOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?!
?
while_body_54339
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_02
while_simple_rnn_cell_5_54361_0:	@?.
while_simple_rnn_cell_5_54363_0:	?3
while_simple_rnn_cell_5_54365_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor0
while_simple_rnn_cell_5_54361:	@?,
while_simple_rnn_cell_5_54363:	?1
while_simple_rnn_cell_5_54365:
????/while/simple_rnn_cell_5/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype0?
/while/simple_rnn_cell_5/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_5_54361_0while_simple_rnn_cell_5_54363_0while_simple_rnn_cell_5_54365_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_54287?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_5/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :????
while/Identity_4Identity8while/simple_rnn_cell_5/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:??????????~

while/NoOpNoOp0^while/simple_rnn_cell_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_5_54361while_simple_rnn_cell_5_54361_0"@
while_simple_rnn_cell_5_54363while_simple_rnn_cell_5_54363_0"@
while_simple_rnn_cell_5_54365while_simple_rnn_cell_5_54365_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2b
/while/simple_rnn_cell_5/StatefulPartitionedCall/while/simple_rnn_cell_5/StatefulPartitionedCall: 
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_54046
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_54046___redundant_placeholder03
/while_while_cond_54046___redundant_placeholder13
/while_while_cond_54046___redundant_placeholder23
/while_while_cond_54046___redundant_placeholder3
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
-: : : : :?????????@: ::::: 
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
:?????????@:

_output_shapes
: :

_output_shapes
:
?
b
D__inference_dropout_4_layer_call_and_return_conditional_losses_56171

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????@_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
c
D__inference_dropout_5_layer_call_and_return_conditional_losses_54729

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_simple_rnn_4_layer_call_fn_55713

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_54525s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*sequential_2_simple_rnn_4_while_cond_53647P
Lsequential_2_simple_rnn_4_while_sequential_2_simple_rnn_4_while_loop_counterV
Rsequential_2_simple_rnn_4_while_sequential_2_simple_rnn_4_while_maximum_iterations/
+sequential_2_simple_rnn_4_while_placeholder1
-sequential_2_simple_rnn_4_while_placeholder_11
-sequential_2_simple_rnn_4_while_placeholder_2R
Nsequential_2_simple_rnn_4_while_less_sequential_2_simple_rnn_4_strided_slice_1g
csequential_2_simple_rnn_4_while_sequential_2_simple_rnn_4_while_cond_53647___redundant_placeholder0g
csequential_2_simple_rnn_4_while_sequential_2_simple_rnn_4_while_cond_53647___redundant_placeholder1g
csequential_2_simple_rnn_4_while_sequential_2_simple_rnn_4_while_cond_53647___redundant_placeholder2g
csequential_2_simple_rnn_4_while_sequential_2_simple_rnn_4_while_cond_53647___redundant_placeholder3,
(sequential_2_simple_rnn_4_while_identity
?
$sequential_2/simple_rnn_4/while/LessLess+sequential_2_simple_rnn_4_while_placeholderNsequential_2_simple_rnn_4_while_less_sequential_2_simple_rnn_4_strided_slice_1*
T0*
_output_shapes
: 
(sequential_2/simple_rnn_4/while/IdentityIdentity(sequential_2/simple_rnn_4/while/Less:z:0*
T0
*
_output_shapes
: "]
(sequential_2_simple_rnn_4_while_identity1sequential_2/simple_rnn_4/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????@: ::::: 
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
:?????????@:

_output_shapes
: :

_output_shapes
:
?=
?
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_55006

inputsB
0simple_rnn_cell_4_matmul_readvariableop_resource:@?
1simple_rnn_cell_4_biasadd_readvariableop_resource:@D
2simple_rnn_cell_4_matmul_1_readvariableop_resource:@@
identity??(simple_rnn_cell_4/BiasAdd/ReadVariableOp?'simple_rnn_cell_4/MatMul/ReadVariableOp?)simple_rnn_cell_4/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
:?????????@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
simple_rnn_cell_4/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0?
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@k
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:?????????@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_54940*
condR
while_cond_54939*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????@?
NoOpNoOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_54786
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_54786___redundant_placeholder03
/while_while_cond_54786___redundant_placeholder13
/while_while_cond_54786___redundant_placeholder23
/while_while_cond_54786___redundant_placeholder3
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
.: : : : :??????????: ::::: 
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
:??????????:

_output_shapes
: :

_output_shapes
:
?

c
D__inference_dropout_4_layer_call_and_return_conditional_losses_56183

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:?????????@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????@s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????@m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????@]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?,
?
while_body_55874
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@G
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_4_matmul_readvariableop_resource:@E
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@??.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_4/MatMul/ReadVariableOp?/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0?
while/simple_rnn_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0?
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0?
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:?????????@w
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:?????????@?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???}
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:?????????@?

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 
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
:?????????@:

_output_shapes
: :

_output_shapes
: 
??
?
!__inference__traced_restore_57061
file_prefix2
assignvariableop_dense_2_kernel:	?!-
assignvariableop_1_dense_2_bias:!&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: J
8assignvariableop_7_simple_rnn_4_simple_rnn_cell_4_kernel:@T
Bassignvariableop_8_simple_rnn_4_simple_rnn_cell_4_recurrent_kernel:@@D
6assignvariableop_9_simple_rnn_4_simple_rnn_cell_4_bias:@L
9assignvariableop_10_simple_rnn_5_simple_rnn_cell_5_kernel:	@?W
Cassignvariableop_11_simple_rnn_5_simple_rnn_cell_5_recurrent_kernel:
??F
7assignvariableop_12_simple_rnn_5_simple_rnn_cell_5_bias:	?#
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: <
)assignvariableop_17_adam_dense_2_kernel_m:	?!5
'assignvariableop_18_adam_dense_2_bias_m:!R
@assignvariableop_19_adam_simple_rnn_4_simple_rnn_cell_4_kernel_m:@\
Jassignvariableop_20_adam_simple_rnn_4_simple_rnn_cell_4_recurrent_kernel_m:@@L
>assignvariableop_21_adam_simple_rnn_4_simple_rnn_cell_4_bias_m:@S
@assignvariableop_22_adam_simple_rnn_5_simple_rnn_cell_5_kernel_m:	@?^
Jassignvariableop_23_adam_simple_rnn_5_simple_rnn_cell_5_recurrent_kernel_m:
??M
>assignvariableop_24_adam_simple_rnn_5_simple_rnn_cell_5_bias_m:	?<
)assignvariableop_25_adam_dense_2_kernel_v:	?!5
'assignvariableop_26_adam_dense_2_bias_v:!R
@assignvariableop_27_adam_simple_rnn_4_simple_rnn_cell_4_kernel_v:@\
Jassignvariableop_28_adam_simple_rnn_4_simple_rnn_cell_4_recurrent_kernel_v:@@L
>assignvariableop_29_adam_simple_rnn_4_simple_rnn_cell_4_bias_v:@S
@assignvariableop_30_adam_simple_rnn_5_simple_rnn_cell_5_kernel_v:	@?^
Jassignvariableop_31_adam_simple_rnn_5_simple_rnn_cell_5_recurrent_kernel_v:
??M
>assignvariableop_32_adam_simple_rnn_5_simple_rnn_cell_5_bias_v:	?
identity_34??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_dense_2_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_2_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp8assignvariableop_7_simple_rnn_4_simple_rnn_cell_4_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpBassignvariableop_8_simple_rnn_4_simple_rnn_cell_4_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp6assignvariableop_9_simple_rnn_4_simple_rnn_cell_4_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp9assignvariableop_10_simple_rnn_5_simple_rnn_cell_5_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpCassignvariableop_11_simple_rnn_5_simple_rnn_cell_5_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp7assignvariableop_12_simple_rnn_5_simple_rnn_cell_5_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_2_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp'assignvariableop_18_adam_dense_2_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp@assignvariableop_19_adam_simple_rnn_4_simple_rnn_cell_4_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOpJassignvariableop_20_adam_simple_rnn_4_simple_rnn_cell_4_recurrent_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp>assignvariableop_21_adam_simple_rnn_4_simple_rnn_cell_4_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp@assignvariableop_22_adam_simple_rnn_5_simple_rnn_cell_5_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOpJassignvariableop_23_adam_simple_rnn_5_simple_rnn_cell_5_recurrent_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp>assignvariableop_24_adam_simple_rnn_5_simple_rnn_cell_5_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_2_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_2_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_simple_rnn_4_simple_rnn_cell_4_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOpJassignvariableop_28_adam_simple_rnn_4_simple_rnn_cell_4_recurrent_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp>assignvariableop_29_adam_simple_rnn_4_simple_rnn_cell_4_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp@assignvariableop_30_adam_simple_rnn_5_simple_rnn_cell_5_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOpJassignvariableop_31_adam_simple_rnn_5_simple_rnn_cell_5_recurrent_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp>assignvariableop_32_adam_simple_rnn_5_simple_rnn_cell_5_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: ?
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
_user_specified_namefile_prefix"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
U
simple_rnn_4_input?
$serving_default_simple_rnn_4_input:0?????????;
dense_20
StatefulPartitionedCall:0?????????!tensorflow/serving/predict:??
?
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
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
cell

state_spec
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*_random_generator
+__call__
*,&call_and_return_all_conditional_losses"
_tf_keras_layer
?

-kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses"
_tf_keras_layer
?
5iter

6beta_1

7beta_2
	8decay
9learning_rate-m?.m?:m?;m?<m?=m?>m??m?-v?.v?:v?;v?<v?=v?>v??v?"
	optimizer
X
:0
;1
<2
=3
>4
?5
-6
.7"
trackable_list_wrapper
X
:0
;1
<2
=3
>4
?5
-6
.7"
trackable_list_wrapper
 "
trackable_list_wrapper
?
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
,__inference_sequential_2_layer_call_fn_54699
,__inference_sequential_2_layer_call_fn_55180
,__inference_sequential_2_layer_call_fn_55201
,__inference_sequential_2_layer_call_fn_55103?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_sequential_2_layer_call_and_return_conditional_losses_55422
G__inference_sequential_2_layer_call_and_return_conditional_losses_55657
G__inference_sequential_2_layer_call_and_return_conditional_losses_55128
G__inference_sequential_2_layer_call_and_return_conditional_losses_55153?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
 __inference__wrapped_model_53827simple_rnn_4_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
Eserving_default"
signature_map
?

:kernel
;recurrent_kernel
<bias
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J_random_generator
K__call__
*L&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
:0
;1
<2"
trackable_list_wrapper
5
:0
;1
<2"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
,__inference_simple_rnn_4_layer_call_fn_55691
,__inference_simple_rnn_4_layer_call_fn_55702
,__inference_simple_rnn_4_layer_call_fn_55713
,__inference_simple_rnn_4_layer_call_fn_55724?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_55832
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_55940
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_56048
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_56156?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
)__inference_dropout_4_layer_call_fn_56161
)__inference_dropout_4_layer_call_fn_56166?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dropout_4_layer_call_and_return_conditional_losses_56171
D__inference_dropout_4_layer_call_and_return_conditional_losses_56183?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?

=kernel
>recurrent_kernel
?bias
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\_random_generator
]__call__
*^&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
=0
>1
?2"
trackable_list_wrapper
5
=0
>1
?2"
trackable_list_wrapper
 "
trackable_list_wrapper
?

_states
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
?2?
,__inference_simple_rnn_5_layer_call_fn_56194
,__inference_simple_rnn_5_layer_call_fn_56205
,__inference_simple_rnn_5_layer_call_fn_56216
,__inference_simple_rnn_5_layer_call_fn_56227?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_simple_rnn_5_layer_call_and_return_conditional_losses_56335
G__inference_simple_rnn_5_layer_call_and_return_conditional_losses_56443
G__inference_simple_rnn_5_layer_call_and_return_conditional_losses_56551
G__inference_simple_rnn_5_layer_call_and_return_conditional_losses_56659?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
&	variables
'trainable_variables
(regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
)__inference_dropout_5_layer_call_fn_56664
)__inference_dropout_5_layer_call_fn_56669?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dropout_5_layer_call_and_return_conditional_losses_56674
D__inference_dropout_5_layer_call_and_return_conditional_losses_56686?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
!:	?!2dense_2/kernel
:!2dense_2/bias
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
?2?
'__inference_dense_2_layer_call_fn_56695?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_2_layer_call_and_return_conditional_losses_56706?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
7:5@2%simple_rnn_4/simple_rnn_cell_4/kernel
A:?@@2/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel
1:/@2#simple_rnn_4/simple_rnn_cell_4/bias
8:6	@?2%simple_rnn_5/simple_rnn_cell_5/kernel
C:A
??2/simple_rnn_5/simple_rnn_cell_5/recurrent_kernel
2:0?2#simple_rnn_5/simple_rnn_cell_5/bias
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
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
#__inference_signature_wrapper_55680simple_rnn_4_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
5
:0
;1
<2"
trackable_list_wrapper
5
:0
;1
<2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
1__inference_simple_rnn_cell_4_layer_call_fn_56720
1__inference_simple_rnn_cell_4_layer_call_fn_56734?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_56751
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_56768?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
=0
>1
?2"
trackable_list_wrapper
5
=0
>1
?2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
1__inference_simple_rnn_cell_5_layer_call_fn_56782
1__inference_simple_rnn_cell_5_layer_call_fn_56796?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_56813
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_56830?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
	{total
	|count
}	variables
~	keras_api"
_tf_keras_metric
b
	total

?count
?
_fn_kwargs
?	variables
?	keras_api"
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
{0
|1"
trackable_list_wrapper
-
}	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
/
0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
&:$	?!2Adam/dense_2/kernel/m
:!2Adam/dense_2/bias/m
<::@2,Adam/simple_rnn_4/simple_rnn_cell_4/kernel/m
F:D@@26Adam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/m
6:4@2*Adam/simple_rnn_4/simple_rnn_cell_4/bias/m
=:;	@?2,Adam/simple_rnn_5/simple_rnn_cell_5/kernel/m
H:F
??26Adam/simple_rnn_5/simple_rnn_cell_5/recurrent_kernel/m
7:5?2*Adam/simple_rnn_5/simple_rnn_cell_5/bias/m
&:$	?!2Adam/dense_2/kernel/v
:!2Adam/dense_2/bias/v
<::@2,Adam/simple_rnn_4/simple_rnn_cell_4/kernel/v
F:D@@26Adam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/v
6:4@2*Adam/simple_rnn_4/simple_rnn_cell_4/bias/v
=:;	@?2,Adam/simple_rnn_5/simple_rnn_cell_5/kernel/v
H:F
??26Adam/simple_rnn_5/simple_rnn_cell_5/recurrent_kernel/v
7:5?2*Adam/simple_rnn_5/simple_rnn_cell_5/bias/v?
 __inference__wrapped_model_53827~:<;=?>-.??<
5?2
0?-
simple_rnn_4_input?????????
? "1?.
,
dense_2!?
dense_2?????????!?
B__inference_dense_2_layer_call_and_return_conditional_losses_56706]-.0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????!
? {
'__inference_dense_2_layer_call_fn_56695P-.0?-
&?#
!?
inputs??????????
? "??????????!?
D__inference_dropout_4_layer_call_and_return_conditional_losses_56171d7?4
-?*
$?!
inputs?????????@
p 
? ")?&
?
0?????????@
? ?
D__inference_dropout_4_layer_call_and_return_conditional_losses_56183d7?4
-?*
$?!
inputs?????????@
p
? ")?&
?
0?????????@
? ?
)__inference_dropout_4_layer_call_fn_56161W7?4
-?*
$?!
inputs?????????@
p 
? "??????????@?
)__inference_dropout_4_layer_call_fn_56166W7?4
-?*
$?!
inputs?????????@
p
? "??????????@?
D__inference_dropout_5_layer_call_and_return_conditional_losses_56674^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
D__inference_dropout_5_layer_call_and_return_conditional_losses_56686^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ~
)__inference_dropout_5_layer_call_fn_56664Q4?1
*?'
!?
inputs??????????
p 
? "???????????~
)__inference_dropout_5_layer_call_fn_56669Q4?1
*?'
!?
inputs??????????
p
? "????????????
G__inference_sequential_2_layer_call_and_return_conditional_losses_55128z:<;=?>-.G?D
=?:
0?-
simple_rnn_4_input?????????
p 

 
? "%?"
?
0?????????!
? ?
G__inference_sequential_2_layer_call_and_return_conditional_losses_55153z:<;=?>-.G?D
=?:
0?-
simple_rnn_4_input?????????
p

 
? "%?"
?
0?????????!
? ?
G__inference_sequential_2_layer_call_and_return_conditional_losses_55422n:<;=?>-.;?8
1?.
$?!
inputs?????????
p 

 
? "%?"
?
0?????????!
? ?
G__inference_sequential_2_layer_call_and_return_conditional_losses_55657n:<;=?>-.;?8
1?.
$?!
inputs?????????
p

 
? "%?"
?
0?????????!
? ?
,__inference_sequential_2_layer_call_fn_54699m:<;=?>-.G?D
=?:
0?-
simple_rnn_4_input?????????
p 

 
? "??????????!?
,__inference_sequential_2_layer_call_fn_55103m:<;=?>-.G?D
=?:
0?-
simple_rnn_4_input?????????
p

 
? "??????????!?
,__inference_sequential_2_layer_call_fn_55180a:<;=?>-.;?8
1?.
$?!
inputs?????????
p 

 
? "??????????!?
,__inference_sequential_2_layer_call_fn_55201a:<;=?>-.;?8
1?.
$?!
inputs?????????
p

 
? "??????????!?
#__inference_signature_wrapper_55680?:<;=?>-.U?R
? 
K?H
F
simple_rnn_4_input0?-
simple_rnn_4_input?????????"1?.
,
dense_2!?
dense_2?????????!?
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_55832?:<;O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "2?/
(?%
0??????????????????@
? ?
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_55940?:<;O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "2?/
(?%
0??????????????????@
? ?
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_56048q:<;??<
5?2
$?!
inputs?????????

 
p 

 
? ")?&
?
0?????????@
? ?
G__inference_simple_rnn_4_layer_call_and_return_conditional_losses_56156q:<;??<
5?2
$?!
inputs?????????

 
p

 
? ")?&
?
0?????????@
? ?
,__inference_simple_rnn_4_layer_call_fn_55691}:<;O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "%?"??????????????????@?
,__inference_simple_rnn_4_layer_call_fn_55702}:<;O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "%?"??????????????????@?
,__inference_simple_rnn_4_layer_call_fn_55713d:<;??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????@?
,__inference_simple_rnn_4_layer_call_fn_55724d:<;??<
5?2
$?!
inputs?????????

 
p

 
? "??????????@?
G__inference_simple_rnn_5_layer_call_and_return_conditional_losses_56335~=?>O?L
E?B
4?1
/?,
inputs/0??????????????????@

 
p 

 
? "&?#
?
0??????????
? ?
G__inference_simple_rnn_5_layer_call_and_return_conditional_losses_56443~=?>O?L
E?B
4?1
/?,
inputs/0??????????????????@

 
p

 
? "&?#
?
0??????????
? ?
G__inference_simple_rnn_5_layer_call_and_return_conditional_losses_56551n=?>??<
5?2
$?!
inputs?????????@

 
p 

 
? "&?#
?
0??????????
? ?
G__inference_simple_rnn_5_layer_call_and_return_conditional_losses_56659n=?>??<
5?2
$?!
inputs?????????@

 
p

 
? "&?#
?
0??????????
? ?
,__inference_simple_rnn_5_layer_call_fn_56194q=?>O?L
E?B
4?1
/?,
inputs/0??????????????????@

 
p 

 
? "????????????
,__inference_simple_rnn_5_layer_call_fn_56205q=?>O?L
E?B
4?1
/?,
inputs/0??????????????????@

 
p

 
? "????????????
,__inference_simple_rnn_5_layer_call_fn_56216a=?>??<
5?2
$?!
inputs?????????@

 
p 

 
? "????????????
,__inference_simple_rnn_5_layer_call_fn_56227a=?>??<
5?2
$?!
inputs?????????@

 
p

 
? "????????????
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_56751?:<;\?Y
R?O
 ?
inputs?????????
'?$
"?
states/0?????????@
p 
? "R?O
H?E
?
0/0?????????@
$?!
?
0/1/0?????????@
? ?
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_56768?:<;\?Y
R?O
 ?
inputs?????????
'?$
"?
states/0?????????@
p
? "R?O
H?E
?
0/0?????????@
$?!
?
0/1/0?????????@
? ?
1__inference_simple_rnn_cell_4_layer_call_fn_56720?:<;\?Y
R?O
 ?
inputs?????????
'?$
"?
states/0?????????@
p 
? "D?A
?
0?????????@
"?
?
1/0?????????@?
1__inference_simple_rnn_cell_4_layer_call_fn_56734?:<;\?Y
R?O
 ?
inputs?????????
'?$
"?
states/0?????????@
p
? "D?A
?
0?????????@
"?
?
1/0?????????@?
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_56813?=?>]?Z
S?P
 ?
inputs?????????@
(?%
#? 
states/0??????????
p 
? "T?Q
J?G
?
0/0??????????
%?"
 ?
0/1/0??????????
? ?
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_56830?=?>]?Z
S?P
 ?
inputs?????????@
(?%
#? 
states/0??????????
p
? "T?Q
J?G
?
0/0??????????
%?"
 ?
0/1/0??????????
? ?
1__inference_simple_rnn_cell_5_layer_call_fn_56782?=?>]?Z
S?P
 ?
inputs?????????@
(?%
#? 
states/0??????????
p 
? "F?C
?
0??????????
#? 
?
1/0???????????
1__inference_simple_rnn_cell_5_layer_call_fn_56796?=?>]?Z
S?P
 ?
inputs?????????@
(?%
#? 
states/0??????????
p
? "F?C
?
0??????????
#? 
?
1/0??????????