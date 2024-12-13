��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
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
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
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
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.11.12v2.11.0-94-ga3e2c692c188��	
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
|
Adam/v/output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/v/output/bias
u
&Adam/v/output/bias/Read/ReadVariableOpReadVariableOpAdam/v/output/bias*
_output_shapes
:*
dtype0
|
Adam/m/output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/m/output/bias
u
&Adam/m/output/bias/Read/ReadVariableOpReadVariableOpAdam/m/output/bias*
_output_shapes
:*
dtype0
�
Adam/v/output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P*%
shared_nameAdam/v/output/kernel
}
(Adam/v/output/kernel/Read/ReadVariableOpReadVariableOpAdam/v/output/kernel*
_output_shapes

:P*
dtype0
�
Adam/m/output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P*%
shared_nameAdam/m/output/kernel
}
(Adam/m/output/kernel/Read/ReadVariableOpReadVariableOpAdam/m/output/kernel*
_output_shapes

:P*
dtype0
�
Adam/v/hidden_layer1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P**
shared_nameAdam/v/hidden_layer1/bias
�
-Adam/v/hidden_layer1/bias/Read/ReadVariableOpReadVariableOpAdam/v/hidden_layer1/bias*
_output_shapes
:P*
dtype0
�
Adam/m/hidden_layer1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P**
shared_nameAdam/m/hidden_layer1/bias
�
-Adam/m/hidden_layer1/bias/Read/ReadVariableOpReadVariableOpAdam/m/hidden_layer1/bias*
_output_shapes
:P*
dtype0
�
Adam/v/hidden_layer1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�P*,
shared_nameAdam/v/hidden_layer1/kernel
�
/Adam/v/hidden_layer1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/hidden_layer1/kernel*
_output_shapes
:	�P*
dtype0
�
Adam/m/hidden_layer1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�P*,
shared_nameAdam/m/hidden_layer1/kernel
�
/Adam/m/hidden_layer1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/hidden_layer1/kernel*
_output_shapes
:	�P*
dtype0
�
Adam/v/conv_layer2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv_layer2/bias

+Adam/v/conv_layer2/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv_layer2/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv_layer2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv_layer2/bias

+Adam/m/conv_layer2/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv_layer2/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv_layer2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/v/conv_layer2/kernel
�
-Adam/v/conv_layer2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv_layer2/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv_layer2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/m/conv_layer2/kernel
�
-Adam/m/conv_layer2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv_layer2/kernel*&
_output_shapes
:*
dtype0
�
Adam/v/conv_layer1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv_layer1/bias

+Adam/v/conv_layer1/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv_layer1/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv_layer1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv_layer1/bias

+Adam/m/conv_layer1/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv_layer1/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv_layer1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/v/conv_layer1/kernel
�
-Adam/v/conv_layer1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv_layer1/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv_layer1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/m/conv_layer1/kernel
�
-Adam/m/conv_layer1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv_layer1/kernel*&
_output_shapes
:*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
n
output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameoutput/bias
g
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes
:*
dtype0
v
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P*
shared_nameoutput/kernel
o
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

:P*
dtype0
|
hidden_layer1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*#
shared_namehidden_layer1/bias
u
&hidden_layer1/bias/Read/ReadVariableOpReadVariableOphidden_layer1/bias*
_output_shapes
:P*
dtype0
�
hidden_layer1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�P*%
shared_namehidden_layer1/kernel
~
(hidden_layer1/kernel/Read/ReadVariableOpReadVariableOphidden_layer1/kernel*
_output_shapes
:	�P*
dtype0
x
conv_layer2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv_layer2/bias
q
$conv_layer2/bias/Read/ReadVariableOpReadVariableOpconv_layer2/bias*
_output_shapes
:*
dtype0
�
conv_layer2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameconv_layer2/kernel
�
&conv_layer2/kernel/Read/ReadVariableOpReadVariableOpconv_layer2/kernel*&
_output_shapes
:*
dtype0
x
conv_layer1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv_layer1/bias
q
$conv_layer1/bias/Read/ReadVariableOpReadVariableOpconv_layer1/bias*
_output_shapes
:*
dtype0
�
conv_layer1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameconv_layer1/kernel
�
&conv_layer1/kernel/Read/ReadVariableOpReadVariableOpconv_layer1/kernel*&
_output_shapes
:*
dtype0
�
!serving_default_conv_layer1_inputPlaceholder*/
_output_shapes
:���������c+*
dtype0*$
shape:���������c+
�
StatefulPartitionedCallStatefulPartitionedCall!serving_default_conv_layer1_inputconv_layer1/kernelconv_layer1/biasconv_layer2/kernelconv_layer2/biashidden_layer1/kernelhidden_layer1/biasoutput/kerneloutput/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_516380

NoOpNoOp
�Q
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�P
value�PB�P B�P
�
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures
#_self_saveable_object_factories*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
#_self_saveable_object_factories
 _jit_compiled_convolution_op*
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses
#$_self_saveable_object_factories* 
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses

+kernel
,bias
#-_self_saveable_object_factories
 ._jit_compiled_convolution_op*
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses
#5_self_saveable_object_factories* 
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses
#<_self_saveable_object_factories* 
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses
C_random_generator
#D_self_saveable_object_factories* 
�
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses

Kkernel
Lbias
#M_self_saveable_object_factories*
�
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses
T_random_generator
#U_self_saveable_object_factories* 
�
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses

\kernel
]bias
#^_self_saveable_object_factories*
<
0
1
+2
,3
K4
L5
\6
]7*
<
0
1
+2
,3
K4
L5
\6
]7*

_0
`1
a2
b3* 
�
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
htrace_0
itrace_1
jtrace_2
ktrace_3* 
6
ltrace_0
mtrace_1
ntrace_2
otrace_3* 
* 
�
p
_variables
q_iterations
r_learning_rate
s_index_dict
t
_momentums
u_velocities
v_update_step_xla*

wserving_default* 
* 

0
1*

0
1*
	
_0* 
�
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

}trace_0* 

~trace_0* 
b\
VARIABLE_VALUEconv_layer1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv_layer1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
�
non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 

+0
,1*

+0
,1*
	
`0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
b\
VARIABLE_VALUEconv_layer2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv_layer2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
(
$�_self_saveable_object_factories* 
* 

K0
L1*

K0
L1*
	
a0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
d^
VARIABLE_VALUEhidden_layer1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEhidden_layer1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
(
$�_self_saveable_object_factories* 
* 

\0
]1*

\0
]1*
	
b0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
]W
VARIABLE_VALUEoutput/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEoutput/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 
* 
C
0
1
2
3
4
5
6
7
	8*

�0
�1*
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
�
q0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
D
�0
�1
�2
�3
�4
�5
�6
�7*
D
�0
�1
�2
�3
�4
�5
�6
�7*
* 
* 
* 
* 
* 
	
_0* 
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
	
`0* 
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
* 
* 
* 
* 
	
a0* 
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
* 
* 
* 
	
b0* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
d^
VARIABLE_VALUEAdam/m/conv_layer1/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/conv_layer1/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv_layer1/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv_layer1/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/conv_layer2/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/conv_layer2/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv_layer2/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv_layer2/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/m/hidden_layer1/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/hidden_layer1/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/m/hidden_layer1/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/v/hidden_layer1/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/output/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/output/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/output/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/output/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename&conv_layer1/kernel/Read/ReadVariableOp$conv_layer1/bias/Read/ReadVariableOp&conv_layer2/kernel/Read/ReadVariableOp$conv_layer2/bias/Read/ReadVariableOp(hidden_layer1/kernel/Read/ReadVariableOp&hidden_layer1/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp-Adam/m/conv_layer1/kernel/Read/ReadVariableOp-Adam/v/conv_layer1/kernel/Read/ReadVariableOp+Adam/m/conv_layer1/bias/Read/ReadVariableOp+Adam/v/conv_layer1/bias/Read/ReadVariableOp-Adam/m/conv_layer2/kernel/Read/ReadVariableOp-Adam/v/conv_layer2/kernel/Read/ReadVariableOp+Adam/m/conv_layer2/bias/Read/ReadVariableOp+Adam/v/conv_layer2/bias/Read/ReadVariableOp/Adam/m/hidden_layer1/kernel/Read/ReadVariableOp/Adam/v/hidden_layer1/kernel/Read/ReadVariableOp-Adam/m/hidden_layer1/bias/Read/ReadVariableOp-Adam/v/hidden_layer1/bias/Read/ReadVariableOp(Adam/m/output/kernel/Read/ReadVariableOp(Adam/v/output/kernel/Read/ReadVariableOp&Adam/m/output/bias/Read/ReadVariableOp&Adam/v/output/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*+
Tin$
"2 	*
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
GPU 2J 8� *(
f#R!
__inference__traced_save_516890
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv_layer1/kernelconv_layer1/biasconv_layer2/kernelconv_layer2/biashidden_layer1/kernelhidden_layer1/biasoutput/kerneloutput/bias	iterationlearning_rateAdam/m/conv_layer1/kernelAdam/v/conv_layer1/kernelAdam/m/conv_layer1/biasAdam/v/conv_layer1/biasAdam/m/conv_layer2/kernelAdam/v/conv_layer2/kernelAdam/m/conv_layer2/biasAdam/v/conv_layer2/biasAdam/m/hidden_layer1/kernelAdam/v/hidden_layer1/kernelAdam/m/hidden_layer1/biasAdam/v/hidden_layer1/biasAdam/m/output/kernelAdam/v/output/kernelAdam/m/output/biasAdam/v/output/biastotal_1count_1totalcount**
Tin#
!2*
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
GPU 2J 8� *+
f&R$
"__inference__traced_restore_516990��
�

b
C__inference_dropout_layer_call_and_return_conditional_losses_516666

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
d
H__inference_max_pooling3_layer_call_and_return_conditional_losses_515895

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
d
H__inference_max_pooling1_layer_call_and_return_conditional_losses_515883

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
I
-__inference_max_pooling1_layer_call_fn_516589

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling1_layer_call_and_return_conditional_losses_515883�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
'__inference_output_layer_call_fn_516726

inputs
unknown:P
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_516007o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������P: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������P
 
_user_specified_nameinputs
�
�
__inference_loss_fn_1_516759K
1kernel_regularizer_l2loss_readvariableop_resource:
identity��(kernel/Regularizer/L2Loss/ReadVariableOp�
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp1kernel_regularizer_l2loss_readvariableop_resource*&
_output_shapes
:*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: X
IdentityIdentitykernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp
�
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_515990

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������P[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������P"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������P:O K
'
_output_shapes
:���������P
 
_user_specified_nameinputs
�:
�
F__inference_sequential_layer_call_and_return_conditional_losses_516030

inputs,
conv_layer1_515921: 
conv_layer1_515923:,
conv_layer2_515943: 
conv_layer2_515945:'
hidden_layer1_515980:	�P"
hidden_layer1_515982:P
output_516008:P
output_516010:
identity��#conv_layer1/StatefulPartitionedCall�#conv_layer2/StatefulPartitionedCall�%hidden_layer1/StatefulPartitionedCall�(kernel/Regularizer/L2Loss/ReadVariableOp�*kernel/Regularizer_1/L2Loss/ReadVariableOp�*kernel/Regularizer_2/L2Loss/ReadVariableOp�*kernel/Regularizer_3/L2Loss/ReadVariableOp�output/StatefulPartitionedCall�
#conv_layer1/StatefulPartitionedCallStatefulPartitionedCallinputsconv_layer1_515921conv_layer1_515923*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������c+*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv_layer1_layer_call_and_return_conditional_losses_515920�
max_pooling1/PartitionedCallPartitionedCall,conv_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling1_layer_call_and_return_conditional_losses_515883�
#conv_layer2/StatefulPartitionedCallStatefulPartitionedCall%max_pooling1/PartitionedCall:output:0conv_layer2_515943conv_layer2_515945*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������1*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv_layer2_layer_call_and_return_conditional_losses_515942�
max_pooling3/PartitionedCallPartitionedCall,conv_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling3_layer_call_and_return_conditional_losses_515895�
flatten/PartitionedCallPartitionedCall%max_pooling3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_515955�
dropout/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_515962�
%hidden_layer1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0hidden_layer1_515980hidden_layer1_515982*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_hidden_layer1_layer_call_and_return_conditional_losses_515979�
dropout_1/PartitionedCallPartitionedCall.hidden_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_515990�
output/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0output_516008output_516010*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_516007�
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv_layer1_515921*&
_output_shapes
:*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
*kernel/Regularizer_1/L2Loss/ReadVariableOpReadVariableOpconv_layer2_515943*&
_output_shapes
:*
dtype0z
kernel/Regularizer_1/L2LossL2Loss2kernel/Regularizer_1/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0$kernel/Regularizer_1/L2Loss:output:0*
T0*
_output_shapes
: �
*kernel/Regularizer_2/L2Loss/ReadVariableOpReadVariableOphidden_layer1_515980*
_output_shapes
:	�P*
dtype0z
kernel/Regularizer_2/L2LossL2Loss2kernel/Regularizer_2/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: _
kernel/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer_2/mulMul#kernel/Regularizer_2/mul/x:output:0$kernel/Regularizer_2/L2Loss:output:0*
T0*
_output_shapes
: x
*kernel/Regularizer_3/L2Loss/ReadVariableOpReadVariableOpoutput_516008*
_output_shapes

:P*
dtype0z
kernel/Regularizer_3/L2LossL2Loss2kernel/Regularizer_3/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: _
kernel/Regularizer_3/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer_3/mulMul#kernel/Regularizer_3/mul/x:output:0$kernel/Regularizer_3/L2Loss:output:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp$^conv_layer1/StatefulPartitionedCall$^conv_layer2/StatefulPartitionedCall&^hidden_layer1/StatefulPartitionedCall)^kernel/Regularizer/L2Loss/ReadVariableOp+^kernel/Regularizer_1/L2Loss/ReadVariableOp+^kernel/Regularizer_2/L2Loss/ReadVariableOp+^kernel/Regularizer_3/L2Loss/ReadVariableOp^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������c+: : : : : : : : 2J
#conv_layer1/StatefulPartitionedCall#conv_layer1/StatefulPartitionedCall2J
#conv_layer2/StatefulPartitionedCall#conv_layer2/StatefulPartitionedCall2N
%hidden_layer1/StatefulPartitionedCall%hidden_layer1/StatefulPartitionedCall2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp2X
*kernel/Regularizer_1/L2Loss/ReadVariableOp*kernel/Regularizer_1/L2Loss/ReadVariableOp2X
*kernel/Regularizer_2/L2Loss/ReadVariableOp*kernel/Regularizer_2/L2Loss/ReadVariableOp2X
*kernel/Regularizer_3/L2Loss/ReadVariableOp*kernel/Regularizer_3/L2Loss/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:W S
/
_output_shapes
:���������c+
 
_user_specified_nameinputs
�
a
C__inference_dropout_layer_call_and_return_conditional_losses_516654

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
I
-__inference_max_pooling3_layer_call_fn_516623

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling3_layer_call_and_return_conditional_losses_515895�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_2_516768D
1kernel_regularizer_l2loss_readvariableop_resource:	�P
identity��(kernel/Regularizer/L2Loss/ReadVariableOp�
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp1kernel_regularizer_l2loss_readvariableop_resource*
_output_shapes
:	�P*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: X
IdentityIdentitykernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp
�
D
(__inference_dropout_layer_call_fn_516644

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_515962a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
D
(__inference_flatten_layer_call_fn_516633

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_515955a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������
:W S
/
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
,__inference_conv_layer1_layer_call_fn_516569

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������c+*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv_layer1_layer_call_and_return_conditional_losses_515920w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������c+`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������c+: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������c+
 
_user_specified_nameinputs
�
d
H__inference_max_pooling1_layer_call_and_return_conditional_losses_516594

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

b
C__inference_dropout_layer_call_and_return_conditional_losses_516112

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
G__inference_conv_layer1_layer_call_and_return_conditional_losses_515920

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�(kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������c+*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������c+X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������c+�
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������c+�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp)^kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������c+: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp:W S
/
_output_shapes
:���������c+
 
_user_specified_nameinputs
�=
�
F__inference_sequential_layer_call_and_return_conditional_losses_516339
conv_layer1_input,
conv_layer1_516297: 
conv_layer1_516299:,
conv_layer2_516303: 
conv_layer2_516305:'
hidden_layer1_516311:	�P"
hidden_layer1_516313:P
output_516317:P
output_516319:
identity��#conv_layer1/StatefulPartitionedCall�#conv_layer2/StatefulPartitionedCall�dropout/StatefulPartitionedCall�!dropout_1/StatefulPartitionedCall�%hidden_layer1/StatefulPartitionedCall�(kernel/Regularizer/L2Loss/ReadVariableOp�*kernel/Regularizer_1/L2Loss/ReadVariableOp�*kernel/Regularizer_2/L2Loss/ReadVariableOp�*kernel/Regularizer_3/L2Loss/ReadVariableOp�output/StatefulPartitionedCall�
#conv_layer1/StatefulPartitionedCallStatefulPartitionedCallconv_layer1_inputconv_layer1_516297conv_layer1_516299*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������c+*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv_layer1_layer_call_and_return_conditional_losses_515920�
max_pooling1/PartitionedCallPartitionedCall,conv_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling1_layer_call_and_return_conditional_losses_515883�
#conv_layer2/StatefulPartitionedCallStatefulPartitionedCall%max_pooling1/PartitionedCall:output:0conv_layer2_516303conv_layer2_516305*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������1*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv_layer2_layer_call_and_return_conditional_losses_515942�
max_pooling3/PartitionedCallPartitionedCall,conv_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling3_layer_call_and_return_conditional_losses_515895�
flatten/PartitionedCallPartitionedCall%max_pooling3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_515955�
dropout/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_516112�
%hidden_layer1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0hidden_layer1_516311hidden_layer1_516313*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_hidden_layer1_layer_call_and_return_conditional_losses_515979�
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall.hidden_layer1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_516079�
output/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0output_516317output_516319*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_516007�
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv_layer1_516297*&
_output_shapes
:*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
*kernel/Regularizer_1/L2Loss/ReadVariableOpReadVariableOpconv_layer2_516303*&
_output_shapes
:*
dtype0z
kernel/Regularizer_1/L2LossL2Loss2kernel/Regularizer_1/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0$kernel/Regularizer_1/L2Loss:output:0*
T0*
_output_shapes
: �
*kernel/Regularizer_2/L2Loss/ReadVariableOpReadVariableOphidden_layer1_516311*
_output_shapes
:	�P*
dtype0z
kernel/Regularizer_2/L2LossL2Loss2kernel/Regularizer_2/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: _
kernel/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer_2/mulMul#kernel/Regularizer_2/mul/x:output:0$kernel/Regularizer_2/L2Loss:output:0*
T0*
_output_shapes
: x
*kernel/Regularizer_3/L2Loss/ReadVariableOpReadVariableOpoutput_516317*
_output_shapes

:P*
dtype0z
kernel/Regularizer_3/L2LossL2Loss2kernel/Regularizer_3/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: _
kernel/Regularizer_3/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer_3/mulMul#kernel/Regularizer_3/mul/x:output:0$kernel/Regularizer_3/L2Loss:output:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp$^conv_layer1/StatefulPartitionedCall$^conv_layer2/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall&^hidden_layer1/StatefulPartitionedCall)^kernel/Regularizer/L2Loss/ReadVariableOp+^kernel/Regularizer_1/L2Loss/ReadVariableOp+^kernel/Regularizer_2/L2Loss/ReadVariableOp+^kernel/Regularizer_3/L2Loss/ReadVariableOp^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������c+: : : : : : : : 2J
#conv_layer1/StatefulPartitionedCall#conv_layer1/StatefulPartitionedCall2J
#conv_layer2/StatefulPartitionedCall#conv_layer2/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2N
%hidden_layer1/StatefulPartitionedCall%hidden_layer1/StatefulPartitionedCall2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp2X
*kernel/Regularizer_1/L2Loss/ReadVariableOp*kernel/Regularizer_1/L2Loss/ReadVariableOp2X
*kernel/Regularizer_2/L2Loss/ReadVariableOp*kernel/Regularizer_2/L2Loss/ReadVariableOp2X
*kernel/Regularizer_3/L2Loss/ReadVariableOp*kernel/Regularizer_3/L2Loss/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:b ^
/
_output_shapes
:���������c+
+
_user_specified_nameconv_layer1_input
�
�
B__inference_output_layer_call_and_return_conditional_losses_516007

inputs0
matmul_readvariableop_resource:P-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�(kernel/Regularizer/L2Loss/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:����������
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp)^kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:���������P
 
_user_specified_nameinputs
�
c
*__inference_dropout_1_layer_call_fn_516700

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_516079o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������P22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������P
 
_user_specified_nameinputs
�

d
E__inference_dropout_1_layer_call_and_return_conditional_losses_516717

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������PC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������P*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������PT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������Pa
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������P"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������P:O K
'
_output_shapes
:���������P
 
_user_specified_nameinputs
�
�
I__inference_hidden_layer1_layer_call_and_return_conditional_losses_516690

inputs1
matmul_readvariableop_resource:	�P-
biasadd_readvariableop_resource:P
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�(kernel/Regularizer/L2Loss/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�P*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Pr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������PP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������P�
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�P*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������P�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp)^kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
G__inference_conv_layer2_layer_call_and_return_conditional_losses_516618

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�(kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������1*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������1X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������1�
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������1�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp)^kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������1: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp:W S
/
_output_shapes
:���������1
 
_user_specified_nameinputs
�
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_516705

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������P[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������P"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������P:O K
'
_output_shapes
:���������P
 
_user_specified_nameinputs
�
a
(__inference_dropout_layer_call_fn_516649

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_516112p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�=
�
F__inference_sequential_layer_call_and_return_conditional_losses_516209

inputs,
conv_layer1_516167: 
conv_layer1_516169:,
conv_layer2_516173: 
conv_layer2_516175:'
hidden_layer1_516181:	�P"
hidden_layer1_516183:P
output_516187:P
output_516189:
identity��#conv_layer1/StatefulPartitionedCall�#conv_layer2/StatefulPartitionedCall�dropout/StatefulPartitionedCall�!dropout_1/StatefulPartitionedCall�%hidden_layer1/StatefulPartitionedCall�(kernel/Regularizer/L2Loss/ReadVariableOp�*kernel/Regularizer_1/L2Loss/ReadVariableOp�*kernel/Regularizer_2/L2Loss/ReadVariableOp�*kernel/Regularizer_3/L2Loss/ReadVariableOp�output/StatefulPartitionedCall�
#conv_layer1/StatefulPartitionedCallStatefulPartitionedCallinputsconv_layer1_516167conv_layer1_516169*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������c+*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv_layer1_layer_call_and_return_conditional_losses_515920�
max_pooling1/PartitionedCallPartitionedCall,conv_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling1_layer_call_and_return_conditional_losses_515883�
#conv_layer2/StatefulPartitionedCallStatefulPartitionedCall%max_pooling1/PartitionedCall:output:0conv_layer2_516173conv_layer2_516175*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������1*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv_layer2_layer_call_and_return_conditional_losses_515942�
max_pooling3/PartitionedCallPartitionedCall,conv_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling3_layer_call_and_return_conditional_losses_515895�
flatten/PartitionedCallPartitionedCall%max_pooling3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_515955�
dropout/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_516112�
%hidden_layer1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0hidden_layer1_516181hidden_layer1_516183*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_hidden_layer1_layer_call_and_return_conditional_losses_515979�
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall.hidden_layer1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_516079�
output/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0output_516187output_516189*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_516007�
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv_layer1_516167*&
_output_shapes
:*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
*kernel/Regularizer_1/L2Loss/ReadVariableOpReadVariableOpconv_layer2_516173*&
_output_shapes
:*
dtype0z
kernel/Regularizer_1/L2LossL2Loss2kernel/Regularizer_1/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0$kernel/Regularizer_1/L2Loss:output:0*
T0*
_output_shapes
: �
*kernel/Regularizer_2/L2Loss/ReadVariableOpReadVariableOphidden_layer1_516181*
_output_shapes
:	�P*
dtype0z
kernel/Regularizer_2/L2LossL2Loss2kernel/Regularizer_2/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: _
kernel/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer_2/mulMul#kernel/Regularizer_2/mul/x:output:0$kernel/Regularizer_2/L2Loss:output:0*
T0*
_output_shapes
: x
*kernel/Regularizer_3/L2Loss/ReadVariableOpReadVariableOpoutput_516187*
_output_shapes

:P*
dtype0z
kernel/Regularizer_3/L2LossL2Loss2kernel/Regularizer_3/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: _
kernel/Regularizer_3/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer_3/mulMul#kernel/Regularizer_3/mul/x:output:0$kernel/Regularizer_3/L2Loss:output:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp$^conv_layer1/StatefulPartitionedCall$^conv_layer2/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall&^hidden_layer1/StatefulPartitionedCall)^kernel/Regularizer/L2Loss/ReadVariableOp+^kernel/Regularizer_1/L2Loss/ReadVariableOp+^kernel/Regularizer_2/L2Loss/ReadVariableOp+^kernel/Regularizer_3/L2Loss/ReadVariableOp^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������c+: : : : : : : : 2J
#conv_layer1/StatefulPartitionedCall#conv_layer1/StatefulPartitionedCall2J
#conv_layer2/StatefulPartitionedCall#conv_layer2/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2N
%hidden_layer1/StatefulPartitionedCall%hidden_layer1/StatefulPartitionedCall2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp2X
*kernel/Regularizer_1/L2Loss/ReadVariableOp*kernel/Regularizer_1/L2Loss/ReadVariableOp2X
*kernel/Regularizer_2/L2Loss/ReadVariableOp*kernel/Regularizer_2/L2Loss/ReadVariableOp2X
*kernel/Regularizer_3/L2Loss/ReadVariableOp*kernel/Regularizer_3/L2Loss/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:W S
/
_output_shapes
:���������c+
 
_user_specified_nameinputs
�	
�
+__inference_sequential_layer_call_fn_516417

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	�P
	unknown_4:P
	unknown_5:P
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_516030o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������c+: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������c+
 
_user_specified_nameinputs
�C
�
F__inference_sequential_layer_call_and_return_conditional_losses_516492

inputsD
*conv_layer1_conv2d_readvariableop_resource:9
+conv_layer1_biasadd_readvariableop_resource:D
*conv_layer2_conv2d_readvariableop_resource:9
+conv_layer2_biasadd_readvariableop_resource:?
,hidden_layer1_matmul_readvariableop_resource:	�P;
-hidden_layer1_biasadd_readvariableop_resource:P7
%output_matmul_readvariableop_resource:P4
&output_biasadd_readvariableop_resource:
identity��"conv_layer1/BiasAdd/ReadVariableOp�!conv_layer1/Conv2D/ReadVariableOp�"conv_layer2/BiasAdd/ReadVariableOp�!conv_layer2/Conv2D/ReadVariableOp�$hidden_layer1/BiasAdd/ReadVariableOp�#hidden_layer1/MatMul/ReadVariableOp�(kernel/Regularizer/L2Loss/ReadVariableOp�*kernel/Regularizer_1/L2Loss/ReadVariableOp�*kernel/Regularizer_2/L2Loss/ReadVariableOp�*kernel/Regularizer_3/L2Loss/ReadVariableOp�output/BiasAdd/ReadVariableOp�output/MatMul/ReadVariableOp�
!conv_layer1/Conv2D/ReadVariableOpReadVariableOp*conv_layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv_layer1/Conv2DConv2Dinputs)conv_layer1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������c+*
paddingSAME*
strides
�
"conv_layer1/BiasAdd/ReadVariableOpReadVariableOp+conv_layer1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv_layer1/BiasAddBiasAddconv_layer1/Conv2D:output:0*conv_layer1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������c+p
conv_layer1/ReluReluconv_layer1/BiasAdd:output:0*
T0*/
_output_shapes
:���������c+�
max_pooling1/MaxPoolMaxPoolconv_layer1/Relu:activations:0*/
_output_shapes
:���������1*
ksize
*
paddingVALID*
strides
�
!conv_layer2/Conv2D/ReadVariableOpReadVariableOp*conv_layer2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv_layer2/Conv2DConv2Dmax_pooling1/MaxPool:output:0)conv_layer2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������1*
paddingSAME*
strides
�
"conv_layer2/BiasAdd/ReadVariableOpReadVariableOp+conv_layer2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv_layer2/BiasAddBiasAddconv_layer2/Conv2D:output:0*conv_layer2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������1p
conv_layer2/ReluReluconv_layer2/BiasAdd:output:0*
T0*/
_output_shapes
:���������1�
max_pooling3/MaxPoolMaxPoolconv_layer2/Relu:activations:0*/
_output_shapes
:���������
*
ksize
*
paddingVALID*
strides
^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
flatten/ReshapeReshapemax_pooling3/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:����������i
dropout/IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:�����������
#hidden_layer1/MatMul/ReadVariableOpReadVariableOp,hidden_layer1_matmul_readvariableop_resource*
_output_shapes
:	�P*
dtype0�
hidden_layer1/MatMulMatMuldropout/Identity:output:0+hidden_layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
$hidden_layer1/BiasAdd/ReadVariableOpReadVariableOp-hidden_layer1_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0�
hidden_layer1/BiasAddBiasAddhidden_layer1/MatMul:product:0,hidden_layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Pl
hidden_layer1/ReluReluhidden_layer1/BiasAdd:output:0*
T0*'
_output_shapes
:���������Pr
dropout_1/IdentityIdentity hidden_layer1/Relu:activations:0*
T0*'
_output_shapes
:���������P�
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0�
output/MatMulMatMuldropout_1/Identity:output:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d
output/SoftmaxSoftmaxoutput/BiasAdd:output:0*
T0*'
_output_shapes
:����������
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp*conv_layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
*kernel/Regularizer_1/L2Loss/ReadVariableOpReadVariableOp*conv_layer2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0z
kernel/Regularizer_1/L2LossL2Loss2kernel/Regularizer_1/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0$kernel/Regularizer_1/L2Loss:output:0*
T0*
_output_shapes
: �
*kernel/Regularizer_2/L2Loss/ReadVariableOpReadVariableOp,hidden_layer1_matmul_readvariableop_resource*
_output_shapes
:	�P*
dtype0z
kernel/Regularizer_2/L2LossL2Loss2kernel/Regularizer_2/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: _
kernel/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer_2/mulMul#kernel/Regularizer_2/mul/x:output:0$kernel/Regularizer_2/L2Loss:output:0*
T0*
_output_shapes
: �
*kernel/Regularizer_3/L2Loss/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0z
kernel/Regularizer_3/L2LossL2Loss2kernel/Regularizer_3/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: _
kernel/Regularizer_3/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer_3/mulMul#kernel/Regularizer_3/mul/x:output:0$kernel/Regularizer_3/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityoutput/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^conv_layer1/BiasAdd/ReadVariableOp"^conv_layer1/Conv2D/ReadVariableOp#^conv_layer2/BiasAdd/ReadVariableOp"^conv_layer2/Conv2D/ReadVariableOp%^hidden_layer1/BiasAdd/ReadVariableOp$^hidden_layer1/MatMul/ReadVariableOp)^kernel/Regularizer/L2Loss/ReadVariableOp+^kernel/Regularizer_1/L2Loss/ReadVariableOp+^kernel/Regularizer_2/L2Loss/ReadVariableOp+^kernel/Regularizer_3/L2Loss/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������c+: : : : : : : : 2H
"conv_layer1/BiasAdd/ReadVariableOp"conv_layer1/BiasAdd/ReadVariableOp2F
!conv_layer1/Conv2D/ReadVariableOp!conv_layer1/Conv2D/ReadVariableOp2H
"conv_layer2/BiasAdd/ReadVariableOp"conv_layer2/BiasAdd/ReadVariableOp2F
!conv_layer2/Conv2D/ReadVariableOp!conv_layer2/Conv2D/ReadVariableOp2L
$hidden_layer1/BiasAdd/ReadVariableOp$hidden_layer1/BiasAdd/ReadVariableOp2J
#hidden_layer1/MatMul/ReadVariableOp#hidden_layer1/MatMul/ReadVariableOp2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp2X
*kernel/Regularizer_1/L2Loss/ReadVariableOp*kernel/Regularizer_1/L2Loss/ReadVariableOp2X
*kernel/Regularizer_2/L2Loss/ReadVariableOp*kernel/Regularizer_2/L2Loss/ReadVariableOp2X
*kernel/Regularizer_3/L2Loss/ReadVariableOp*kernel/Regularizer_3/L2Loss/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������c+
 
_user_specified_nameinputs
�
�
I__inference_hidden_layer1_layer_call_and_return_conditional_losses_515979

inputs1
matmul_readvariableop_resource:	�P-
biasadd_readvariableop_resource:P
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�(kernel/Regularizer/L2Loss/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�P*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Pr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������PP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������P�
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�P*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������P�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp)^kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�R
�
F__inference_sequential_layer_call_and_return_conditional_losses_516560

inputsD
*conv_layer1_conv2d_readvariableop_resource:9
+conv_layer1_biasadd_readvariableop_resource:D
*conv_layer2_conv2d_readvariableop_resource:9
+conv_layer2_biasadd_readvariableop_resource:?
,hidden_layer1_matmul_readvariableop_resource:	�P;
-hidden_layer1_biasadd_readvariableop_resource:P7
%output_matmul_readvariableop_resource:P4
&output_biasadd_readvariableop_resource:
identity��"conv_layer1/BiasAdd/ReadVariableOp�!conv_layer1/Conv2D/ReadVariableOp�"conv_layer2/BiasAdd/ReadVariableOp�!conv_layer2/Conv2D/ReadVariableOp�$hidden_layer1/BiasAdd/ReadVariableOp�#hidden_layer1/MatMul/ReadVariableOp�(kernel/Regularizer/L2Loss/ReadVariableOp�*kernel/Regularizer_1/L2Loss/ReadVariableOp�*kernel/Regularizer_2/L2Loss/ReadVariableOp�*kernel/Regularizer_3/L2Loss/ReadVariableOp�output/BiasAdd/ReadVariableOp�output/MatMul/ReadVariableOp�
!conv_layer1/Conv2D/ReadVariableOpReadVariableOp*conv_layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv_layer1/Conv2DConv2Dinputs)conv_layer1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������c+*
paddingSAME*
strides
�
"conv_layer1/BiasAdd/ReadVariableOpReadVariableOp+conv_layer1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv_layer1/BiasAddBiasAddconv_layer1/Conv2D:output:0*conv_layer1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������c+p
conv_layer1/ReluReluconv_layer1/BiasAdd:output:0*
T0*/
_output_shapes
:���������c+�
max_pooling1/MaxPoolMaxPoolconv_layer1/Relu:activations:0*/
_output_shapes
:���������1*
ksize
*
paddingVALID*
strides
�
!conv_layer2/Conv2D/ReadVariableOpReadVariableOp*conv_layer2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv_layer2/Conv2DConv2Dmax_pooling1/MaxPool:output:0)conv_layer2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������1*
paddingSAME*
strides
�
"conv_layer2/BiasAdd/ReadVariableOpReadVariableOp+conv_layer2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv_layer2/BiasAddBiasAddconv_layer2/Conv2D:output:0*conv_layer2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������1p
conv_layer2/ReluReluconv_layer2/BiasAdd:output:0*
T0*/
_output_shapes
:���������1�
max_pooling3/MaxPoolMaxPoolconv_layer2/Relu:activations:0*/
_output_shapes
:���������
*
ksize
*
paddingVALID*
strides
^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
flatten/ReshapeReshapemax_pooling3/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:����������Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
dropout/dropout/MulMulflatten/Reshape:output:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:����������]
dropout/dropout/ShapeShapeflatten/Reshape:output:0*
T0*
_output_shapes
:�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������\
dropout/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/dropout/SelectV2SelectV2 dropout/dropout/GreaterEqual:z:0dropout/dropout/Mul:z:0 dropout/dropout/Const_1:output:0*
T0*(
_output_shapes
:�����������
#hidden_layer1/MatMul/ReadVariableOpReadVariableOp,hidden_layer1_matmul_readvariableop_resource*
_output_shapes
:	�P*
dtype0�
hidden_layer1/MatMulMatMul!dropout/dropout/SelectV2:output:0+hidden_layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
$hidden_layer1/BiasAdd/ReadVariableOpReadVariableOp-hidden_layer1_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0�
hidden_layer1/BiasAddBiasAddhidden_layer1/MatMul:product:0,hidden_layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Pl
hidden_layer1/ReluReluhidden_layer1/BiasAdd:output:0*
T0*'
_output_shapes
:���������P\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
dropout_1/dropout/MulMul hidden_layer1/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:���������Pg
dropout_1/dropout/ShapeShape hidden_layer1/Relu:activations:0*
T0*
_output_shapes
:�
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:���������P*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������P^
dropout_1/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_1/dropout/SelectV2SelectV2"dropout_1/dropout/GreaterEqual:z:0dropout_1/dropout/Mul:z:0"dropout_1/dropout/Const_1:output:0*
T0*'
_output_shapes
:���������P�
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0�
output/MatMulMatMul#dropout_1/dropout/SelectV2:output:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d
output/SoftmaxSoftmaxoutput/BiasAdd:output:0*
T0*'
_output_shapes
:����������
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp*conv_layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
*kernel/Regularizer_1/L2Loss/ReadVariableOpReadVariableOp*conv_layer2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0z
kernel/Regularizer_1/L2LossL2Loss2kernel/Regularizer_1/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0$kernel/Regularizer_1/L2Loss:output:0*
T0*
_output_shapes
: �
*kernel/Regularizer_2/L2Loss/ReadVariableOpReadVariableOp,hidden_layer1_matmul_readvariableop_resource*
_output_shapes
:	�P*
dtype0z
kernel/Regularizer_2/L2LossL2Loss2kernel/Regularizer_2/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: _
kernel/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer_2/mulMul#kernel/Regularizer_2/mul/x:output:0$kernel/Regularizer_2/L2Loss:output:0*
T0*
_output_shapes
: �
*kernel/Regularizer_3/L2Loss/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0z
kernel/Regularizer_3/L2LossL2Loss2kernel/Regularizer_3/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: _
kernel/Regularizer_3/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer_3/mulMul#kernel/Regularizer_3/mul/x:output:0$kernel/Regularizer_3/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityoutput/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^conv_layer1/BiasAdd/ReadVariableOp"^conv_layer1/Conv2D/ReadVariableOp#^conv_layer2/BiasAdd/ReadVariableOp"^conv_layer2/Conv2D/ReadVariableOp%^hidden_layer1/BiasAdd/ReadVariableOp$^hidden_layer1/MatMul/ReadVariableOp)^kernel/Regularizer/L2Loss/ReadVariableOp+^kernel/Regularizer_1/L2Loss/ReadVariableOp+^kernel/Regularizer_2/L2Loss/ReadVariableOp+^kernel/Regularizer_3/L2Loss/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������c+: : : : : : : : 2H
"conv_layer1/BiasAdd/ReadVariableOp"conv_layer1/BiasAdd/ReadVariableOp2F
!conv_layer1/Conv2D/ReadVariableOp!conv_layer1/Conv2D/ReadVariableOp2H
"conv_layer2/BiasAdd/ReadVariableOp"conv_layer2/BiasAdd/ReadVariableOp2F
!conv_layer2/Conv2D/ReadVariableOp!conv_layer2/Conv2D/ReadVariableOp2L
$hidden_layer1/BiasAdd/ReadVariableOp$hidden_layer1/BiasAdd/ReadVariableOp2J
#hidden_layer1/MatMul/ReadVariableOp#hidden_layer1/MatMul/ReadVariableOp2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp2X
*kernel/Regularizer_1/L2Loss/ReadVariableOp*kernel/Regularizer_1/L2Loss/ReadVariableOp2X
*kernel/Regularizer_2/L2Loss/ReadVariableOp*kernel/Regularizer_2/L2Loss/ReadVariableOp2X
*kernel/Regularizer_3/L2Loss/ReadVariableOp*kernel/Regularizer_3/L2Loss/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������c+
 
_user_specified_nameinputs
�	
�
$__inference_signature_wrapper_516380
conv_layer1_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	�P
	unknown_4:P
	unknown_5:P
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv_layer1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_515874o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������c+: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:���������c+
+
_user_specified_nameconv_layer1_input
�
�
__inference_loss_fn_0_516750K
1kernel_regularizer_l2loss_readvariableop_resource:
identity��(kernel/Regularizer/L2Loss/ReadVariableOp�
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp1kernel_regularizer_l2loss_readvariableop_resource*&
_output_shapes
:*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: X
IdentityIdentitykernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp
�
_
C__inference_flatten_layer_call_and_return_conditional_losses_516639

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������
:W S
/
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
,__inference_conv_layer2_layer_call_fn_516603

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������1*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv_layer2_layer_call_and_return_conditional_losses_515942w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������1`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������1: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������1
 
_user_specified_nameinputs
�
�
B__inference_output_layer_call_and_return_conditional_losses_516741

inputs0
matmul_readvariableop_resource:P-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�(kernel/Regularizer/L2Loss/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:����������
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp)^kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:���������P
 
_user_specified_nameinputs
�

�
+__inference_sequential_layer_call_fn_516049
conv_layer1_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	�P
	unknown_4:P
	unknown_5:P
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv_layer1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_516030o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������c+: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:���������c+
+
_user_specified_nameconv_layer1_input
�
d
H__inference_max_pooling3_layer_call_and_return_conditional_losses_516628

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
G__inference_conv_layer2_layer_call_and_return_conditional_losses_515942

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�(kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������1*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������1X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������1�
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������1�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp)^kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������1: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp:W S
/
_output_shapes
:���������1
 
_user_specified_nameinputs
�

d
E__inference_dropout_1_layer_call_and_return_conditional_losses_516079

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������PC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������P*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������PT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������Pa
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������P"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������P:O K
'
_output_shapes
:���������P
 
_user_specified_nameinputs
�@
�
__inference__traced_save_516890
file_prefix1
-savev2_conv_layer1_kernel_read_readvariableop/
+savev2_conv_layer1_bias_read_readvariableop1
-savev2_conv_layer2_kernel_read_readvariableop/
+savev2_conv_layer2_bias_read_readvariableop3
/savev2_hidden_layer1_kernel_read_readvariableop1
-savev2_hidden_layer1_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop8
4savev2_adam_m_conv_layer1_kernel_read_readvariableop8
4savev2_adam_v_conv_layer1_kernel_read_readvariableop6
2savev2_adam_m_conv_layer1_bias_read_readvariableop6
2savev2_adam_v_conv_layer1_bias_read_readvariableop8
4savev2_adam_m_conv_layer2_kernel_read_readvariableop8
4savev2_adam_v_conv_layer2_kernel_read_readvariableop6
2savev2_adam_m_conv_layer2_bias_read_readvariableop6
2savev2_adam_v_conv_layer2_bias_read_readvariableop:
6savev2_adam_m_hidden_layer1_kernel_read_readvariableop:
6savev2_adam_v_hidden_layer1_kernel_read_readvariableop8
4savev2_adam_m_hidden_layer1_bias_read_readvariableop8
4savev2_adam_v_hidden_layer1_bias_read_readvariableop3
/savev2_adam_m_output_kernel_read_readvariableop3
/savev2_adam_v_output_kernel_read_readvariableop1
-savev2_adam_m_output_bias_read_readvariableop1
-savev2_adam_v_output_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0-savev2_conv_layer1_kernel_read_readvariableop+savev2_conv_layer1_bias_read_readvariableop-savev2_conv_layer2_kernel_read_readvariableop+savev2_conv_layer2_bias_read_readvariableop/savev2_hidden_layer1_kernel_read_readvariableop-savev2_hidden_layer1_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop4savev2_adam_m_conv_layer1_kernel_read_readvariableop4savev2_adam_v_conv_layer1_kernel_read_readvariableop2savev2_adam_m_conv_layer1_bias_read_readvariableop2savev2_adam_v_conv_layer1_bias_read_readvariableop4savev2_adam_m_conv_layer2_kernel_read_readvariableop4savev2_adam_v_conv_layer2_kernel_read_readvariableop2savev2_adam_m_conv_layer2_bias_read_readvariableop2savev2_adam_v_conv_layer2_bias_read_readvariableop6savev2_adam_m_hidden_layer1_kernel_read_readvariableop6savev2_adam_v_hidden_layer1_kernel_read_readvariableop4savev2_adam_m_hidden_layer1_bias_read_readvariableop4savev2_adam_v_hidden_layer1_bias_read_readvariableop/savev2_adam_m_output_kernel_read_readvariableop/savev2_adam_v_output_kernel_read_readvariableop-savev2_adam_m_output_bias_read_readvariableop-savev2_adam_v_output_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *-
dtypes#
!2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :::::	�P:P:P:: : :::::::::	�P:	�P:P:P:P:P::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	�P: 

_output_shapes
:P:$ 

_output_shapes

:P: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :,(
&
_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	�P:%!

_output_shapes
:	�P: 

_output_shapes
:P: 

_output_shapes
:P:$ 

_output_shapes

:P:$ 

_output_shapes

:P: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
_
C__inference_flatten_layer_call_and_return_conditional_losses_515955

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������
:W S
/
_output_shapes
:���������

 
_user_specified_nameinputs
�
a
C__inference_dropout_layer_call_and_return_conditional_losses_515962

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_3_516777C
1kernel_regularizer_l2loss_readvariableop_resource:P
identity��(kernel/Regularizer/L2Loss/ReadVariableOp�
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp1kernel_regularizer_l2loss_readvariableop_resource*
_output_shapes

:P*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: X
IdentityIdentitykernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp
��
�
"__inference__traced_restore_516990
file_prefix=
#assignvariableop_conv_layer1_kernel:1
#assignvariableop_1_conv_layer1_bias:?
%assignvariableop_2_conv_layer2_kernel:1
#assignvariableop_3_conv_layer2_bias::
'assignvariableop_4_hidden_layer1_kernel:	�P3
%assignvariableop_5_hidden_layer1_bias:P2
 assignvariableop_6_output_kernel:P,
assignvariableop_7_output_bias:&
assignvariableop_8_iteration:	 *
 assignvariableop_9_learning_rate: G
-assignvariableop_10_adam_m_conv_layer1_kernel:G
-assignvariableop_11_adam_v_conv_layer1_kernel:9
+assignvariableop_12_adam_m_conv_layer1_bias:9
+assignvariableop_13_adam_v_conv_layer1_bias:G
-assignvariableop_14_adam_m_conv_layer2_kernel:G
-assignvariableop_15_adam_v_conv_layer2_kernel:9
+assignvariableop_16_adam_m_conv_layer2_bias:9
+assignvariableop_17_adam_v_conv_layer2_bias:B
/assignvariableop_18_adam_m_hidden_layer1_kernel:	�PB
/assignvariableop_19_adam_v_hidden_layer1_kernel:	�P;
-assignvariableop_20_adam_m_hidden_layer1_bias:P;
-assignvariableop_21_adam_v_hidden_layer1_bias:P:
(assignvariableop_22_adam_m_output_kernel:P:
(assignvariableop_23_adam_v_output_kernel:P4
&assignvariableop_24_adam_m_output_bias:4
&assignvariableop_25_adam_v_output_bias:%
assignvariableop_26_total_1: %
assignvariableop_27_count_1: #
assignvariableop_28_total: #
assignvariableop_29_count: 
identity_31��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp#assignvariableop_conv_layer1_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp#assignvariableop_1_conv_layer1_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp%assignvariableop_2_conv_layer2_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp#assignvariableop_3_conv_layer2_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp'assignvariableop_4_hidden_layer1_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp%assignvariableop_5_hidden_layer1_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp assignvariableop_6_output_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_output_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_iterationIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_learning_rateIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp-assignvariableop_10_adam_m_conv_layer1_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp-assignvariableop_11_adam_v_conv_layer1_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp+assignvariableop_12_adam_m_conv_layer1_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp+assignvariableop_13_adam_v_conv_layer1_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp-assignvariableop_14_adam_m_conv_layer2_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp-assignvariableop_15_adam_v_conv_layer2_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp+assignvariableop_16_adam_m_conv_layer2_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_v_conv_layer2_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp/assignvariableop_18_adam_m_hidden_layer1_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp/assignvariableop_19_adam_v_hidden_layer1_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp-assignvariableop_20_adam_m_hidden_layer1_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp-assignvariableop_21_adam_v_hidden_layer1_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_m_output_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_v_output_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_m_output_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp&assignvariableop_25_adam_v_output_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_total_1Identity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_count_1Identity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_totalIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpassignvariableop_29_countIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_31IdentityIdentity_30:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_31Identity_31:output:0*Q
_input_shapes@
>: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_3AssignVariableOp_32(
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
�
F
*__inference_dropout_1_layer_call_fn_516695

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_515990`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������P"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������P:O K
'
_output_shapes
:���������P
 
_user_specified_nameinputs
�:
�
F__inference_sequential_layer_call_and_return_conditional_losses_516294
conv_layer1_input,
conv_layer1_516252: 
conv_layer1_516254:,
conv_layer2_516258: 
conv_layer2_516260:'
hidden_layer1_516266:	�P"
hidden_layer1_516268:P
output_516272:P
output_516274:
identity��#conv_layer1/StatefulPartitionedCall�#conv_layer2/StatefulPartitionedCall�%hidden_layer1/StatefulPartitionedCall�(kernel/Regularizer/L2Loss/ReadVariableOp�*kernel/Regularizer_1/L2Loss/ReadVariableOp�*kernel/Regularizer_2/L2Loss/ReadVariableOp�*kernel/Regularizer_3/L2Loss/ReadVariableOp�output/StatefulPartitionedCall�
#conv_layer1/StatefulPartitionedCallStatefulPartitionedCallconv_layer1_inputconv_layer1_516252conv_layer1_516254*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������c+*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv_layer1_layer_call_and_return_conditional_losses_515920�
max_pooling1/PartitionedCallPartitionedCall,conv_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling1_layer_call_and_return_conditional_losses_515883�
#conv_layer2/StatefulPartitionedCallStatefulPartitionedCall%max_pooling1/PartitionedCall:output:0conv_layer2_516258conv_layer2_516260*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������1*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv_layer2_layer_call_and_return_conditional_losses_515942�
max_pooling3/PartitionedCallPartitionedCall,conv_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling3_layer_call_and_return_conditional_losses_515895�
flatten/PartitionedCallPartitionedCall%max_pooling3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_515955�
dropout/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_515962�
%hidden_layer1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0hidden_layer1_516266hidden_layer1_516268*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_hidden_layer1_layer_call_and_return_conditional_losses_515979�
dropout_1/PartitionedCallPartitionedCall.hidden_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_515990�
output/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0output_516272output_516274*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_516007�
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv_layer1_516252*&
_output_shapes
:*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
*kernel/Regularizer_1/L2Loss/ReadVariableOpReadVariableOpconv_layer2_516258*&
_output_shapes
:*
dtype0z
kernel/Regularizer_1/L2LossL2Loss2kernel/Regularizer_1/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0$kernel/Regularizer_1/L2Loss:output:0*
T0*
_output_shapes
: �
*kernel/Regularizer_2/L2Loss/ReadVariableOpReadVariableOphidden_layer1_516266*
_output_shapes
:	�P*
dtype0z
kernel/Regularizer_2/L2LossL2Loss2kernel/Regularizer_2/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: _
kernel/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer_2/mulMul#kernel/Regularizer_2/mul/x:output:0$kernel/Regularizer_2/L2Loss:output:0*
T0*
_output_shapes
: x
*kernel/Regularizer_3/L2Loss/ReadVariableOpReadVariableOpoutput_516272*
_output_shapes

:P*
dtype0z
kernel/Regularizer_3/L2LossL2Loss2kernel/Regularizer_3/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: _
kernel/Regularizer_3/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer_3/mulMul#kernel/Regularizer_3/mul/x:output:0$kernel/Regularizer_3/L2Loss:output:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp$^conv_layer1/StatefulPartitionedCall$^conv_layer2/StatefulPartitionedCall&^hidden_layer1/StatefulPartitionedCall)^kernel/Regularizer/L2Loss/ReadVariableOp+^kernel/Regularizer_1/L2Loss/ReadVariableOp+^kernel/Regularizer_2/L2Loss/ReadVariableOp+^kernel/Regularizer_3/L2Loss/ReadVariableOp^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������c+: : : : : : : : 2J
#conv_layer1/StatefulPartitionedCall#conv_layer1/StatefulPartitionedCall2J
#conv_layer2/StatefulPartitionedCall#conv_layer2/StatefulPartitionedCall2N
%hidden_layer1/StatefulPartitionedCall%hidden_layer1/StatefulPartitionedCall2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp2X
*kernel/Regularizer_1/L2Loss/ReadVariableOp*kernel/Regularizer_1/L2Loss/ReadVariableOp2X
*kernel/Regularizer_2/L2Loss/ReadVariableOp*kernel/Regularizer_2/L2Loss/ReadVariableOp2X
*kernel/Regularizer_3/L2Loss/ReadVariableOp*kernel/Regularizer_3/L2Loss/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:b ^
/
_output_shapes
:���������c+
+
_user_specified_nameconv_layer1_input
�
�
.__inference_hidden_layer1_layer_call_fn_516675

inputs
unknown:	�P
	unknown_0:P
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_hidden_layer1_layer_call_and_return_conditional_losses_515979o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
+__inference_sequential_layer_call_fn_516438

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	�P
	unknown_4:P
	unknown_5:P
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_516209o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������c+: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������c+
 
_user_specified_nameinputs
�

�
+__inference_sequential_layer_call_fn_516249
conv_layer1_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	�P
	unknown_4:P
	unknown_5:P
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv_layer1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_516209o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������c+: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:���������c+
+
_user_specified_nameconv_layer1_input
�6
�
!__inference__wrapped_model_515874
conv_layer1_inputO
5sequential_conv_layer1_conv2d_readvariableop_resource:D
6sequential_conv_layer1_biasadd_readvariableop_resource:O
5sequential_conv_layer2_conv2d_readvariableop_resource:D
6sequential_conv_layer2_biasadd_readvariableop_resource:J
7sequential_hidden_layer1_matmul_readvariableop_resource:	�PF
8sequential_hidden_layer1_biasadd_readvariableop_resource:PB
0sequential_output_matmul_readvariableop_resource:P?
1sequential_output_biasadd_readvariableop_resource:
identity��-sequential/conv_layer1/BiasAdd/ReadVariableOp�,sequential/conv_layer1/Conv2D/ReadVariableOp�-sequential/conv_layer2/BiasAdd/ReadVariableOp�,sequential/conv_layer2/Conv2D/ReadVariableOp�/sequential/hidden_layer1/BiasAdd/ReadVariableOp�.sequential/hidden_layer1/MatMul/ReadVariableOp�(sequential/output/BiasAdd/ReadVariableOp�'sequential/output/MatMul/ReadVariableOp�
,sequential/conv_layer1/Conv2D/ReadVariableOpReadVariableOp5sequential_conv_layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential/conv_layer1/Conv2DConv2Dconv_layer1_input4sequential/conv_layer1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������c+*
paddingSAME*
strides
�
-sequential/conv_layer1/BiasAdd/ReadVariableOpReadVariableOp6sequential_conv_layer1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/conv_layer1/BiasAddBiasAdd&sequential/conv_layer1/Conv2D:output:05sequential/conv_layer1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������c+�
sequential/conv_layer1/ReluRelu'sequential/conv_layer1/BiasAdd:output:0*
T0*/
_output_shapes
:���������c+�
sequential/max_pooling1/MaxPoolMaxPool)sequential/conv_layer1/Relu:activations:0*/
_output_shapes
:���������1*
ksize
*
paddingVALID*
strides
�
,sequential/conv_layer2/Conv2D/ReadVariableOpReadVariableOp5sequential_conv_layer2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential/conv_layer2/Conv2DConv2D(sequential/max_pooling1/MaxPool:output:04sequential/conv_layer2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������1*
paddingSAME*
strides
�
-sequential/conv_layer2/BiasAdd/ReadVariableOpReadVariableOp6sequential_conv_layer2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/conv_layer2/BiasAddBiasAdd&sequential/conv_layer2/Conv2D:output:05sequential/conv_layer2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������1�
sequential/conv_layer2/ReluRelu'sequential/conv_layer2/BiasAdd:output:0*
T0*/
_output_shapes
:���������1�
sequential/max_pooling3/MaxPoolMaxPool)sequential/conv_layer2/Relu:activations:0*/
_output_shapes
:���������
*
ksize
*
paddingVALID*
strides
i
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
sequential/flatten/ReshapeReshape(sequential/max_pooling3/MaxPool:output:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:����������
sequential/dropout/IdentityIdentity#sequential/flatten/Reshape:output:0*
T0*(
_output_shapes
:�����������
.sequential/hidden_layer1/MatMul/ReadVariableOpReadVariableOp7sequential_hidden_layer1_matmul_readvariableop_resource*
_output_shapes
:	�P*
dtype0�
sequential/hidden_layer1/MatMulMatMul$sequential/dropout/Identity:output:06sequential/hidden_layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
/sequential/hidden_layer1/BiasAdd/ReadVariableOpReadVariableOp8sequential_hidden_layer1_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0�
 sequential/hidden_layer1/BiasAddBiasAdd)sequential/hidden_layer1/MatMul:product:07sequential/hidden_layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
sequential/hidden_layer1/ReluRelu)sequential/hidden_layer1/BiasAdd:output:0*
T0*'
_output_shapes
:���������P�
sequential/dropout_1/IdentityIdentity+sequential/hidden_layer1/Relu:activations:0*
T0*'
_output_shapes
:���������P�
'sequential/output/MatMul/ReadVariableOpReadVariableOp0sequential_output_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0�
sequential/output/MatMulMatMul&sequential/dropout_1/Identity:output:0/sequential/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
(sequential/output/BiasAdd/ReadVariableOpReadVariableOp1sequential_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/output/BiasAddBiasAdd"sequential/output/MatMul:product:00sequential/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������z
sequential/output/SoftmaxSoftmax"sequential/output/BiasAdd:output:0*
T0*'
_output_shapes
:���������r
IdentityIdentity#sequential/output/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^sequential/conv_layer1/BiasAdd/ReadVariableOp-^sequential/conv_layer1/Conv2D/ReadVariableOp.^sequential/conv_layer2/BiasAdd/ReadVariableOp-^sequential/conv_layer2/Conv2D/ReadVariableOp0^sequential/hidden_layer1/BiasAdd/ReadVariableOp/^sequential/hidden_layer1/MatMul/ReadVariableOp)^sequential/output/BiasAdd/ReadVariableOp(^sequential/output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������c+: : : : : : : : 2^
-sequential/conv_layer1/BiasAdd/ReadVariableOp-sequential/conv_layer1/BiasAdd/ReadVariableOp2\
,sequential/conv_layer1/Conv2D/ReadVariableOp,sequential/conv_layer1/Conv2D/ReadVariableOp2^
-sequential/conv_layer2/BiasAdd/ReadVariableOp-sequential/conv_layer2/BiasAdd/ReadVariableOp2\
,sequential/conv_layer2/Conv2D/ReadVariableOp,sequential/conv_layer2/Conv2D/ReadVariableOp2b
/sequential/hidden_layer1/BiasAdd/ReadVariableOp/sequential/hidden_layer1/BiasAdd/ReadVariableOp2`
.sequential/hidden_layer1/MatMul/ReadVariableOp.sequential/hidden_layer1/MatMul/ReadVariableOp2T
(sequential/output/BiasAdd/ReadVariableOp(sequential/output/BiasAdd/ReadVariableOp2R
'sequential/output/MatMul/ReadVariableOp'sequential/output/MatMul/ReadVariableOp:b ^
/
_output_shapes
:���������c+
+
_user_specified_nameconv_layer1_input
�
�
G__inference_conv_layer1_layer_call_and_return_conditional_losses_516584

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�(kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������c+*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������c+X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������c+�
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������c+�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp)^kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������c+: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp:W S
/
_output_shapes
:���������c+
 
_user_specified_nameinputs"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
W
conv_layer1_inputB
#serving_default_conv_layer1_input:0���������c+:
output0
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures
#_self_saveable_object_factories"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
#_self_saveable_object_factories
 _jit_compiled_convolution_op"
_tf_keras_layer
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses
#$_self_saveable_object_factories"
_tf_keras_layer
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses

+kernel
,bias
#-_self_saveable_object_factories
 ._jit_compiled_convolution_op"
_tf_keras_layer
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses
#5_self_saveable_object_factories"
_tf_keras_layer
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses
#<_self_saveable_object_factories"
_tf_keras_layer
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses
C_random_generator
#D_self_saveable_object_factories"
_tf_keras_layer
�
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses

Kkernel
Lbias
#M_self_saveable_object_factories"
_tf_keras_layer
�
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses
T_random_generator
#U_self_saveable_object_factories"
_tf_keras_layer
�
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses

\kernel
]bias
#^_self_saveable_object_factories"
_tf_keras_layer
X
0
1
+2
,3
K4
L5
\6
]7"
trackable_list_wrapper
X
0
1
+2
,3
K4
L5
\6
]7"
trackable_list_wrapper
<
_0
`1
a2
b3"
trackable_list_wrapper
�
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
htrace_0
itrace_1
jtrace_2
ktrace_32�
+__inference_sequential_layer_call_fn_516049
+__inference_sequential_layer_call_fn_516417
+__inference_sequential_layer_call_fn_516438
+__inference_sequential_layer_call_fn_516249�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zhtrace_0zitrace_1zjtrace_2zktrace_3
�
ltrace_0
mtrace_1
ntrace_2
otrace_32�
F__inference_sequential_layer_call_and_return_conditional_losses_516492
F__inference_sequential_layer_call_and_return_conditional_losses_516560
F__inference_sequential_layer_call_and_return_conditional_losses_516294
F__inference_sequential_layer_call_and_return_conditional_losses_516339�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zltrace_0zmtrace_1zntrace_2zotrace_3
�B�
!__inference__wrapped_model_515874conv_layer1_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
p
_variables
q_iterations
r_learning_rate
s_index_dict
t
_momentums
u_velocities
v_update_step_xla"
experimentalOptimizer
,
wserving_default"
signature_map
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
_0"
trackable_list_wrapper
�
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
}trace_02�
,__inference_conv_layer1_layer_call_fn_516569�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z}trace_0
�
~trace_02�
G__inference_conv_layer1_layer_call_and_return_conditional_losses_516584�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z~trace_0
,:*2conv_layer1/kernel
:2conv_layer1/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_max_pooling1_layer_call_fn_516589�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_max_pooling1_layer_call_and_return_conditional_losses_516594�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_dict_wrapper
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
'
`0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_conv_layer2_layer_call_fn_516603�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_conv_layer2_layer_call_and_return_conditional_losses_516618�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
,:*2conv_layer2/kernel
:2conv_layer2/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_max_pooling3_layer_call_fn_516623�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_max_pooling3_layer_call_and_return_conditional_losses_516628�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_flatten_layer_call_fn_516633�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_flatten_layer_call_and_return_conditional_losses_516639�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_dropout_layer_call_fn_516644
(__inference_dropout_layer_call_fn_516649�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
C__inference_dropout_layer_call_and_return_conditional_losses_516654
C__inference_dropout_layer_call_and_return_conditional_losses_516666�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
D
$�_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
'
a0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_hidden_layer1_layer_call_fn_516675�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
I__inference_hidden_layer1_layer_call_and_return_conditional_losses_516690�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
':%	�P2hidden_layer1/kernel
 :P2hidden_layer1/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
*__inference_dropout_1_layer_call_fn_516695
*__inference_dropout_1_layer_call_fn_516700�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
E__inference_dropout_1_layer_call_and_return_conditional_losses_516705
E__inference_dropout_1_layer_call_and_return_conditional_losses_516717�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
D
$�_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
.
\0
]1"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
'
b0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_output_layer_call_fn_516726�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_output_layer_call_and_return_conditional_losses_516741�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
:P2output/kernel
:2output/bias
 "
trackable_dict_wrapper
�
�trace_02�
__inference_loss_fn_0_516750�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_1_516759�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_2_516768�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_3_516777�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_sequential_layer_call_fn_516049conv_layer1_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_sequential_layer_call_fn_516417inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_sequential_layer_call_fn_516438inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_sequential_layer_call_fn_516249conv_layer1_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_sequential_layer_call_and_return_conditional_losses_516492inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_sequential_layer_call_and_return_conditional_losses_516560inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_sequential_layer_call_and_return_conditional_losses_516294conv_layer1_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_sequential_layer_call_and_return_conditional_losses_516339conv_layer1_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
q0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
`
�0
�1
�2
�3
�4
�5
�6
�7"
trackable_list_wrapper
`
�0
�1
�2
�3
�4
�5
�6
�7"
trackable_list_wrapper
�2��
���
FullArgSpec2
args*�'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
$__inference_signature_wrapper_516380conv_layer1_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
_0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_conv_layer1_layer_call_fn_516569inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_conv_layer1_layer_call_and_return_conditional_losses_516584inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
-__inference_max_pooling1_layer_call_fn_516589inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_max_pooling1_layer_call_and_return_conditional_losses_516594inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
`0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_conv_layer2_layer_call_fn_516603inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_conv_layer2_layer_call_and_return_conditional_losses_516618inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
-__inference_max_pooling3_layer_call_fn_516623inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_max_pooling3_layer_call_and_return_conditional_losses_516628inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
(__inference_flatten_layer_call_fn_516633inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_flatten_layer_call_and_return_conditional_losses_516639inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
(__inference_dropout_layer_call_fn_516644inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_dropout_layer_call_fn_516649inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dropout_layer_call_and_return_conditional_losses_516654inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dropout_layer_call_and_return_conditional_losses_516666inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
a0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_hidden_layer1_layer_call_fn_516675inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_hidden_layer1_layer_call_and_return_conditional_losses_516690inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_dropout_1_layer_call_fn_516695inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_dropout_1_layer_call_fn_516700inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dropout_1_layer_call_and_return_conditional_losses_516705inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dropout_1_layer_call_and_return_conditional_losses_516717inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
b0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_output_layer_call_fn_516726inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_output_layer_call_and_return_conditional_losses_516741inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_loss_fn_0_516750"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_1_516759"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_2_516768"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_3_516777"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
1:/2Adam/m/conv_layer1/kernel
1:/2Adam/v/conv_layer1/kernel
#:!2Adam/m/conv_layer1/bias
#:!2Adam/v/conv_layer1/bias
1:/2Adam/m/conv_layer2/kernel
1:/2Adam/v/conv_layer2/kernel
#:!2Adam/m/conv_layer2/bias
#:!2Adam/v/conv_layer2/bias
,:*	�P2Adam/m/hidden_layer1/kernel
,:*	�P2Adam/v/hidden_layer1/kernel
%:#P2Adam/m/hidden_layer1/bias
%:#P2Adam/v/hidden_layer1/bias
$:"P2Adam/m/output/kernel
$:"P2Adam/v/output/kernel
:2Adam/m/output/bias
:2Adam/v/output/bias
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
!__inference__wrapped_model_515874+,KL\]B�?
8�5
3�0
conv_layer1_input���������c+
� "/�,
*
output �
output����������
G__inference_conv_layer1_layer_call_and_return_conditional_losses_516584s7�4
-�*
(�%
inputs���������c+
� "4�1
*�'
tensor_0���������c+
� �
,__inference_conv_layer1_layer_call_fn_516569h7�4
-�*
(�%
inputs���������c+
� ")�&
unknown���������c+�
G__inference_conv_layer2_layer_call_and_return_conditional_losses_516618s+,7�4
-�*
(�%
inputs���������1
� "4�1
*�'
tensor_0���������1
� �
,__inference_conv_layer2_layer_call_fn_516603h+,7�4
-�*
(�%
inputs���������1
� ")�&
unknown���������1�
E__inference_dropout_1_layer_call_and_return_conditional_losses_516705c3�0
)�&
 �
inputs���������P
p 
� ",�)
"�
tensor_0���������P
� �
E__inference_dropout_1_layer_call_and_return_conditional_losses_516717c3�0
)�&
 �
inputs���������P
p
� ",�)
"�
tensor_0���������P
� �
*__inference_dropout_1_layer_call_fn_516695X3�0
)�&
 �
inputs���������P
p 
� "!�
unknown���������P�
*__inference_dropout_1_layer_call_fn_516700X3�0
)�&
 �
inputs���������P
p
� "!�
unknown���������P�
C__inference_dropout_layer_call_and_return_conditional_losses_516654e4�1
*�'
!�
inputs����������
p 
� "-�*
#� 
tensor_0����������
� �
C__inference_dropout_layer_call_and_return_conditional_losses_516666e4�1
*�'
!�
inputs����������
p
� "-�*
#� 
tensor_0����������
� �
(__inference_dropout_layer_call_fn_516644Z4�1
*�'
!�
inputs����������
p 
� ""�
unknown�����������
(__inference_dropout_layer_call_fn_516649Z4�1
*�'
!�
inputs����������
p
� ""�
unknown�����������
C__inference_flatten_layer_call_and_return_conditional_losses_516639h7�4
-�*
(�%
inputs���������

� "-�*
#� 
tensor_0����������
� �
(__inference_flatten_layer_call_fn_516633]7�4
-�*
(�%
inputs���������

� ""�
unknown�����������
I__inference_hidden_layer1_layer_call_and_return_conditional_losses_516690dKL0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������P
� �
.__inference_hidden_layer1_layer_call_fn_516675YKL0�-
&�#
!�
inputs����������
� "!�
unknown���������PD
__inference_loss_fn_0_516750$�

� 
� "�
unknown D
__inference_loss_fn_1_516759$+�

� 
� "�
unknown D
__inference_loss_fn_2_516768$K�

� 
� "�
unknown D
__inference_loss_fn_3_516777$\�

� 
� "�
unknown �
H__inference_max_pooling1_layer_call_and_return_conditional_losses_516594�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
-__inference_max_pooling1_layer_call_fn_516589�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
H__inference_max_pooling3_layer_call_and_return_conditional_losses_516628�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
-__inference_max_pooling3_layer_call_fn_516623�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
B__inference_output_layer_call_and_return_conditional_losses_516741c\]/�,
%�"
 �
inputs���������P
� ",�)
"�
tensor_0���������
� �
'__inference_output_layer_call_fn_516726X\]/�,
%�"
 �
inputs���������P
� "!�
unknown����������
F__inference_sequential_layer_call_and_return_conditional_losses_516294�+,KL\]J�G
@�=
3�0
conv_layer1_input���������c+
p 

 
� ",�)
"�
tensor_0���������
� �
F__inference_sequential_layer_call_and_return_conditional_losses_516339�+,KL\]J�G
@�=
3�0
conv_layer1_input���������c+
p

 
� ",�)
"�
tensor_0���������
� �
F__inference_sequential_layer_call_and_return_conditional_losses_516492y+,KL\]?�<
5�2
(�%
inputs���������c+
p 

 
� ",�)
"�
tensor_0���������
� �
F__inference_sequential_layer_call_and_return_conditional_losses_516560y+,KL\]?�<
5�2
(�%
inputs���������c+
p

 
� ",�)
"�
tensor_0���������
� �
+__inference_sequential_layer_call_fn_516049y+,KL\]J�G
@�=
3�0
conv_layer1_input���������c+
p 

 
� "!�
unknown����������
+__inference_sequential_layer_call_fn_516249y+,KL\]J�G
@�=
3�0
conv_layer1_input���������c+
p

 
� "!�
unknown����������
+__inference_sequential_layer_call_fn_516417n+,KL\]?�<
5�2
(�%
inputs���������c+
p 

 
� "!�
unknown����������
+__inference_sequential_layer_call_fn_516438n+,KL\]?�<
5�2
(�%
inputs���������c+
p

 
� "!�
unknown����������
$__inference_signature_wrapper_516380�+,KL\]W�T
� 
M�J
H
conv_layer1_input3�0
conv_layer1_input���������c+"/�,
*
output �
output���������