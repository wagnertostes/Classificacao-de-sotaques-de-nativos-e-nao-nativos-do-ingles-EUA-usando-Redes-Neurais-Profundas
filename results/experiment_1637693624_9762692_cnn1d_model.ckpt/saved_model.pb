??	
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
?
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
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
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
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
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
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
executor_typestring ?
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8??
t

c_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
c_1/kernel
m
c_1/kernel/Read/ReadVariableOpReadVariableOp
c_1/kernel*"
_output_shapes
:@*
dtype0
h
c_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
c_1/bias
a
c_1/bias/Read/ReadVariableOpReadVariableOpc_1/bias*
_output_shapes
:@*
dtype0
t

c_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_name
c_2/kernel
m
c_2/kernel/Read/ReadVariableOpReadVariableOp
c_2/kernel*"
_output_shapes
:@@*
dtype0
h
c_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
c_2/bias
a
c_2/bias/Read/ReadVariableOpReadVariableOpc_2/bias*
_output_shapes
:@*
dtype0
t

c_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_name
c_3/kernel
m
c_3/kernel/Read/ReadVariableOpReadVariableOp
c_3/kernel*"
_output_shapes
:@@*
dtype0
h
c_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
c_3/bias
a
c_3/bias/Read/ReadVariableOpReadVariableOpc_3/bias*
_output_shapes
:@*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	@?*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:?*
dtype0
w
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_nameoutput/kernel
p
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes
:	?*
dtype0
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

NoOpNoOp
?%
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?$
value?$B?$ B?$
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer_with_weights-4

layer-9
trainable_variables
	variables
regularization_losses
	keras_api

signatures
R
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
 regularization_losses
!	keras_api
h

"kernel
#bias
$trainable_variables
%	variables
&regularization_losses
'	keras_api
R
(trainable_variables
)	variables
*regularization_losses
+	keras_api
h

,kernel
-bias
.trainable_variables
/	variables
0regularization_losses
1	keras_api
R
2trainable_variables
3	variables
4regularization_losses
5	keras_api
h

6kernel
7bias
8trainable_variables
9	variables
:regularization_losses
;	keras_api
h

<kernel
=bias
>trainable_variables
?	variables
@regularization_losses
A	keras_api
F
0
1
"2
#3
,4
-5
66
77
<8
=9
F
0
1
"2
#3
,4
-5
66
77
<8
=9
 
?
Bnon_trainable_variables
trainable_variables
	variables
Clayer_metrics
Dlayer_regularization_losses

Elayers
Fmetrics
regularization_losses
 
 
 
 
?
Gnon_trainable_variables
trainable_variables
	variables
Hlayer_metrics
Ilayer_regularization_losses

Jlayers
Kmetrics
regularization_losses
VT
VARIABLE_VALUE
c_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEc_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Lnon_trainable_variables
trainable_variables
	variables
Mlayer_metrics
Nlayer_regularization_losses

Olayers
Pmetrics
regularization_losses
 
 
 
?
Qnon_trainable_variables
trainable_variables
	variables
Rlayer_metrics
Slayer_regularization_losses

Tlayers
Umetrics
regularization_losses
 
 
 
?
Vnon_trainable_variables
trainable_variables
	variables
Wlayer_metrics
Xlayer_regularization_losses

Ylayers
Zmetrics
 regularization_losses
VT
VARIABLE_VALUE
c_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEc_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

"0
#1

"0
#1
 
?
[non_trainable_variables
$trainable_variables
%	variables
\layer_metrics
]layer_regularization_losses

^layers
_metrics
&regularization_losses
 
 
 
?
`non_trainable_variables
(trainable_variables
)	variables
alayer_metrics
blayer_regularization_losses

clayers
dmetrics
*regularization_losses
VT
VARIABLE_VALUE
c_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEc_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

,0
-1

,0
-1
 
?
enon_trainable_variables
.trainable_variables
/	variables
flayer_metrics
glayer_regularization_losses

hlayers
imetrics
0regularization_losses
 
 
 
?
jnon_trainable_variables
2trainable_variables
3	variables
klayer_metrics
llayer_regularization_losses

mlayers
nmetrics
4regularization_losses
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

60
71

60
71
 
?
onon_trainable_variables
8trainable_variables
9	variables
player_metrics
qlayer_regularization_losses

rlayers
smetrics
:regularization_losses
YW
VARIABLE_VALUEoutput/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEoutput/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

<0
=1

<0
=1
 
?
tnon_trainable_variables
>trainable_variables
?	variables
ulayer_metrics
vlayer_regularization_losses

wlayers
xmetrics
@regularization_losses
 
 
 
F
0
1
2
3
4
5
6
7
	8

9
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
?
serving_default_audioPlaceholder*-
_output_shapes
:?????????؀*
dtype0*"
shape:?????????؀
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_audio
c_1/kernelc_1/bias
c_2/kernelc_2/bias
c_3/kernelc_3/biasdense_1/kerneldense_1/biasoutput/kerneloutput/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_2279408
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamec_1/kernel/Read/ReadVariableOpc_1/bias/Read/ReadVariableOpc_2/kernel/Read/ReadVariableOpc_2/bias/Read/ReadVariableOpc_3/kernel/Read/ReadVariableOpc_3/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpConst*
Tin
2*
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
GPU2*0J 8? *)
f$R"
 __inference__traced_save_2279823
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename
c_1/kernelc_1/bias
c_2/kernelc_2/bias
c_3/kernelc_3/biasdense_1/kerneldense_1/biasoutput/kerneloutput/bias*
Tin
2*
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
GPU2*0J 8? *,
f'R%
#__inference__traced_restore_2279863??
?
E
)__inference_dropout_layer_call_fn_2279681

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????\@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_22790952
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????\@2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????\@:T P
,
_output_shapes
:??????????\@
 
_user_specified_nameinputs
?
J
.__inference_globalpool_1_layer_call_fn_2279020

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_globalpool_1_layer_call_and_return_conditional_losses_22790142
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?*
?
G__inference_sequential_layer_call_and_return_conditional_losses_2279228	
audio
c_1_2279072
c_1_2279074
c_2_2279135
c_2_2279137
c_3_2279168
c_3_2279170
dense_1_2279196
dense_1_2279198
output_2279222
output_2279224
identity??c_1/StatefulPartitionedCall?c_2/StatefulPartitionedCall?c_3/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dropout/StatefulPartitionedCall?output/StatefulPartitionedCall?
reshape/PartitionedCallPartitionedCallaudio*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????؀* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_22790372
reshape/PartitionedCall?
c_1/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0c_1_2279072c_1_2279074*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_c_1_layer_call_and_return_conditional_losses_22790612
c_1/StatefulPartitionedCall?
maxpool_1/PartitionedCallPartitionedCall$c_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????\@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_maxpool_1_layer_call_and_return_conditional_losses_22789862
maxpool_1/PartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall"maxpool_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????\@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_22790902!
dropout/StatefulPartitionedCall?
c_2/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0c_2_2279135c_2_2279137*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_c_2_layer_call_and_return_conditional_losses_22791242
c_2/StatefulPartitionedCall?
maxpool_2/PartitionedCallPartitionedCall$c_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_maxpool_2_layer_call_and_return_conditional_losses_22790012
maxpool_2/PartitionedCall?
c_3/StatefulPartitionedCallStatefulPartitionedCall"maxpool_2/PartitionedCall:output:0c_3_2279168c_3_2279170*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????^@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_c_3_layer_call_and_return_conditional_losses_22791572
c_3/StatefulPartitionedCall?
globalpool_1/PartitionedCallPartitionedCall$c_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_globalpool_1_layer_call_and_return_conditional_losses_22790142
globalpool_1/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall%globalpool_1/PartitionedCall:output:0dense_1_2279196dense_1_2279198*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_22791852!
dense_1/StatefulPartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0output_2279222output_2279224*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_22792112 
output/StatefulPartitionedCall?
IdentityIdentity'output/StatefulPartitionedCall:output:0^c_1/StatefulPartitionedCall^c_2/StatefulPartitionedCall^c_3/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*T
_input_shapesC
A:?????????؀::::::::::2:
c_1/StatefulPartitionedCallc_1/StatefulPartitionedCall2:
c_2/StatefulPartitionedCallc_2/StatefulPartitionedCall2:
c_3/StatefulPartitionedCallc_3/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:T P
-
_output_shapes
:?????????؀

_user_specified_nameaudio
?
?
,__inference_sequential_layer_call_fn_2279322	
audio
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallaudiounknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_22792992
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*T
_input_shapesC
A:?????????؀::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
-
_output_shapes
:?????????؀

_user_specified_nameaudio
?
?
@__inference_c_1_layer_call_and_return_conditional_losses_2279061

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*1
_output_shapes
:?????????؀2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????@*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*-
_output_shapes
:???????????@*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????@2	
BiasAdd^
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:???????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*-
_output_shapes
:???????????@2

Identity"
identityIdentity:output:0*4
_input_shapes#
!:?????????؀::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:U Q
-
_output_shapes
:?????????؀
 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_2279408	
audio
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallaudiounknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_22789772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*T
_input_shapesC
A:?????????؀::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
-
_output_shapes
:?????????؀

_user_specified_nameaudio
?	
?
C__inference_output_layer_call_and_return_conditional_losses_2279761

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
@__inference_c_2_layer_call_and_return_conditional_losses_2279124

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????\@2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:??????????@*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*,
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????\@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????\@
 
_user_specified_nameinputs
?
b
F__inference_maxpool_1_layer_call_and_return_conditional_losses_2278986

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2

ExpandDims?
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+???????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
2	
Squeezez
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
@__inference_c_2_layer_call_and_return_conditional_losses_2279697

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????\@2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:??????????@*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*,
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????\@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????\@
 
_user_specified_nameinputs
?
E
)__inference_reshape_layer_call_fn_2279629

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????؀* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_22790372
PartitionedCallr
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:?????????؀2

Identity"
identityIdentity:output:0*,
_input_shapes
:?????????؀:U Q
-
_output_shapes
:?????????؀
 
_user_specified_nameinputs
?	
?
C__inference_output_layer_call_and_return_conditional_losses_2279211

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
F__inference_maxpool_2_layer_call_and_return_conditional_losses_2279001

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2

ExpandDims?
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+???????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
2	
Squeezez
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
,__inference_sequential_layer_call_fn_2279586

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_22792992
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*T
_input_shapesC
A:?????????؀::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:?????????؀
 
_user_specified_nameinputs
?
`
D__inference_reshape_layer_call_and_return_conditional_losses_2279037

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicef
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB	 :؀2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapeu
ReshapeReshapeinputsReshape/shape:output:0*
T0*-
_output_shapes
:?????????؀2	
Reshapej
IdentityIdentityReshape:output:0*
T0*-
_output_shapes
:?????????؀2

Identity"
identityIdentity:output:0*,
_input_shapes
:?????????؀:U Q
-
_output_shapes
:?????????؀
 
_user_specified_nameinputs
?
?
,__inference_sequential_layer_call_fn_2279611

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_22793582
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*T
_input_shapesC
A:?????????؀::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:?????????؀
 
_user_specified_nameinputs
?
?
,__inference_sequential_layer_call_fn_2279381	
audio
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallaudiounknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_22793582
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*T
_input_shapesC
A:?????????؀::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
-
_output_shapes
:?????????؀

_user_specified_nameaudio
?
e
I__inference_globalpool_1_layer_call_and_return_conditional_losses_2279014

inputs
identityp
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Max/reduction_indicest
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????2
Maxi
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
G
+__inference_maxpool_2_layer_call_fn_2279007

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_maxpool_2_layer_call_and_return_conditional_losses_22790012
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?d
?
G__inference_sequential_layer_call_and_return_conditional_losses_2279488

inputs3
/c_1_conv1d_expanddims_1_readvariableop_resource'
#c_1_biasadd_readvariableop_resource3
/c_2_conv1d_expanddims_1_readvariableop_resource'
#c_2_biasadd_readvariableop_resource3
/c_3_conv1d_expanddims_1_readvariableop_resource'
#c_3_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource)
%output_matmul_readvariableop_resource*
&output_biasadd_readvariableop_resource
identity??c_1/BiasAdd/ReadVariableOp?&c_1/conv1d/ExpandDims_1/ReadVariableOp?c_2/BiasAdd/ReadVariableOp?&c_2/conv1d/ExpandDims_1/ReadVariableOp?c_3/BiasAdd/ReadVariableOp?&c_3/conv1d/ExpandDims_1/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOpT
reshape/ShapeShapeinputs*
T0*
_output_shapes
:2
reshape/Shape?
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stack?
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1?
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape/strided_slicev
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB	 :؀2
reshape/Reshape/shape/1t
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/2?
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shape?
reshape/ReshapeReshapeinputsreshape/Reshape/shape:output:0*
T0*-
_output_shapes
:?????????؀2
reshape/Reshape?
c_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
c_1/conv1d/ExpandDims/dim?
c_1/conv1d/ExpandDims
ExpandDimsreshape/Reshape:output:0"c_1/conv1d/ExpandDims/dim:output:0*
T0*1
_output_shapes
:?????????؀2
c_1/conv1d/ExpandDims?
&c_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp/c_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype02(
&c_1/conv1d/ExpandDims_1/ReadVariableOp|
c_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
c_1/conv1d/ExpandDims_1/dim?
c_1/conv1d/ExpandDims_1
ExpandDims.c_1/conv1d/ExpandDims_1/ReadVariableOp:value:0$c_1/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@2
c_1/conv1d/ExpandDims_1?

c_1/conv1dConv2Dc_1/conv1d/ExpandDims:output:0 c_1/conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????@*
paddingVALID*
strides
2

c_1/conv1d?
c_1/conv1d/SqueezeSqueezec_1/conv1d:output:0*
T0*-
_output_shapes
:???????????@*
squeeze_dims

?????????2
c_1/conv1d/Squeeze?
c_1/BiasAdd/ReadVariableOpReadVariableOp#c_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
c_1/BiasAdd/ReadVariableOp?
c_1/BiasAddBiasAddc_1/conv1d/Squeeze:output:0"c_1/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????@2
c_1/BiasAddj
c_1/ReluReluc_1/BiasAdd:output:0*
T0*-
_output_shapes
:???????????@2

c_1/Reluv
maxpool_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
maxpool_1/ExpandDims/dim?
maxpool_1/ExpandDims
ExpandDimsc_1/Relu:activations:0!maxpool_1/ExpandDims/dim:output:0*
T0*1
_output_shapes
:???????????@2
maxpool_1/ExpandDims?
maxpool_1/MaxPoolMaxPoolmaxpool_1/ExpandDims:output:0*0
_output_shapes
:??????????\@*
ksize
*
paddingVALID*
strides
2
maxpool_1/MaxPool?
maxpool_1/SqueezeSqueezemaxpool_1/MaxPool:output:0*
T0*,
_output_shapes
:??????????\@*
squeeze_dims
2
maxpool_1/Squeezes
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/dropout/Const?
dropout/dropout/MulMulmaxpool_1/Squeeze:output:0dropout/dropout/Const:output:0*
T0*,
_output_shapes
:??????????\@2
dropout/dropout/Mulx
dropout/dropout/ShapeShapemaxpool_1/Squeeze:output:0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*,
_output_shapes
:??????????\@*
dtype0*

seed*2.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????\@2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????\@2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*,
_output_shapes
:??????????\@2
dropout/dropout/Mul_1?
c_2/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
c_2/conv1d/ExpandDims/dim?
c_2/conv1d/ExpandDims
ExpandDimsdropout/dropout/Mul_1:z:0"c_2/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????\@2
c_2/conv1d/ExpandDims?
&c_2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp/c_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype02(
&c_2/conv1d/ExpandDims_1/ReadVariableOp|
c_2/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
c_2/conv1d/ExpandDims_1/dim?
c_2/conv1d/ExpandDims_1
ExpandDims.c_2/conv1d/ExpandDims_1/ReadVariableOp:value:0$c_2/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@2
c_2/conv1d/ExpandDims_1?

c_2/conv1dConv2Dc_2/conv1d/ExpandDims:output:0 c_2/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2

c_2/conv1d?
c_2/conv1d/SqueezeSqueezec_2/conv1d:output:0*
T0*,
_output_shapes
:??????????@*
squeeze_dims

?????????2
c_2/conv1d/Squeeze?
c_2/BiasAdd/ReadVariableOpReadVariableOp#c_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
c_2/BiasAdd/ReadVariableOp?
c_2/BiasAddBiasAddc_2/conv1d/Squeeze:output:0"c_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@2
c_2/BiasAddi
c_2/ReluReluc_2/BiasAdd:output:0*
T0*,
_output_shapes
:??????????@2

c_2/Reluv
maxpool_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
maxpool_2/ExpandDims/dim?
maxpool_2/ExpandDims
ExpandDimsc_2/Relu:activations:0!maxpool_2/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????@2
maxpool_2/ExpandDims?
maxpool_2/MaxPoolMaxPoolmaxpool_2/ExpandDims:output:0*0
_output_shapes
:??????????@*
ksize
*
paddingVALID*
strides
2
maxpool_2/MaxPool?
maxpool_2/SqueezeSqueezemaxpool_2/MaxPool:output:0*
T0*,
_output_shapes
:??????????@*
squeeze_dims
2
maxpool_2/Squeeze?
c_3/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
c_3/conv1d/ExpandDims/dim?
c_3/conv1d/ExpandDims
ExpandDimsmaxpool_2/Squeeze:output:0"c_3/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????@2
c_3/conv1d/ExpandDims?
&c_3/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp/c_3_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype02(
&c_3/conv1d/ExpandDims_1/ReadVariableOp|
c_3/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
c_3/conv1d/ExpandDims_1/dim?
c_3/conv1d/ExpandDims_1
ExpandDims.c_3/conv1d/ExpandDims_1/ReadVariableOp:value:0$c_3/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@2
c_3/conv1d/ExpandDims_1?

c_3/conv1dConv2Dc_3/conv1d/ExpandDims:output:0 c_3/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????^@*
paddingVALID*
strides
2

c_3/conv1d?
c_3/conv1d/SqueezeSqueezec_3/conv1d:output:0*
T0*+
_output_shapes
:?????????^@*
squeeze_dims

?????????2
c_3/conv1d/Squeeze?
c_3/BiasAdd/ReadVariableOpReadVariableOp#c_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
c_3/BiasAdd/ReadVariableOp?
c_3/BiasAddBiasAddc_3/conv1d/Squeeze:output:0"c_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????^@2
c_3/BiasAddh
c_3/ReluReluc_3/BiasAdd:output:0*
T0*+
_output_shapes
:?????????^@2

c_3/Relu?
"globalpool_1/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2$
"globalpool_1/Max/reduction_indices?
globalpool_1/MaxMaxc_3/Relu:activations:0+globalpool_1/Max/reduction_indices:output:0*
T0*'
_output_shapes
:?????????@2
globalpool_1/Max?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulglobalpool_1/Max:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_1/Relu?
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
output/MatMul/ReadVariableOp?
output/MatMulMatMuldense_1/Relu:activations:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output/MatMul?
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
output/BiasAdd/ReadVariableOp?
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output/BiasAdd?
IdentityIdentityoutput/BiasAdd:output:0^c_1/BiasAdd/ReadVariableOp'^c_1/conv1d/ExpandDims_1/ReadVariableOp^c_2/BiasAdd/ReadVariableOp'^c_2/conv1d/ExpandDims_1/ReadVariableOp^c_3/BiasAdd/ReadVariableOp'^c_3/conv1d/ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*T
_input_shapesC
A:?????????؀::::::::::28
c_1/BiasAdd/ReadVariableOpc_1/BiasAdd/ReadVariableOp2P
&c_1/conv1d/ExpandDims_1/ReadVariableOp&c_1/conv1d/ExpandDims_1/ReadVariableOp28
c_2/BiasAdd/ReadVariableOpc_2/BiasAdd/ReadVariableOp2P
&c_2/conv1d/ExpandDims_1/ReadVariableOp&c_2/conv1d/ExpandDims_1/ReadVariableOp28
c_3/BiasAdd/ReadVariableOpc_3/BiasAdd/ReadVariableOp2P
&c_3/conv1d/ExpandDims_1/ReadVariableOp&c_3/conv1d/ExpandDims_1/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:U Q
-
_output_shapes
:?????????؀
 
_user_specified_nameinputs
?
?
@__inference_c_3_layer_call_and_return_conditional_losses_2279157

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????@2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????^@*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:?????????^@*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????^@2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????^@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*+
_output_shapes
:?????????^@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
@__inference_c_1_layer_call_and_return_conditional_losses_2279645

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*1
_output_shapes
:?????????؀2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????@*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*-
_output_shapes
:???????????@*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????@2	
BiasAdd^
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:???????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*-
_output_shapes
:???????????@2

Identity"
identityIdentity:output:0*4
_input_shapes#
!:?????????؀::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:U Q
-
_output_shapes
:?????????؀
 
_user_specified_nameinputs
?
~
)__inference_dense_1_layer_call_fn_2279751

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_22791852
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
D__inference_dense_1_layer_call_and_return_conditional_losses_2279185

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
b
D__inference_dropout_layer_call_and_return_conditional_losses_2279671

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????\@2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????\@2

Identity_1"!

identity_1Identity_1:output:0*+
_input_shapes
:??????????\@:T P
,
_output_shapes
:??????????\@
 
_user_specified_nameinputs
?
}
(__inference_output_layer_call_fn_2279770

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_22792112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
D__inference_dropout_layer_call_and_return_conditional_losses_2279666

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????\@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????\@*
dtype0*

seed*2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????\@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????\@2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????\@2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????\@2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????\@:T P
,
_output_shapes
:??????????\@
 
_user_specified_nameinputs
?
`
D__inference_reshape_layer_call_and_return_conditional_losses_2279624

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicef
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB	 :؀2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapeu
ReshapeReshapeinputsReshape/shape:output:0*
T0*-
_output_shapes
:?????????؀2	
Reshapej
IdentityIdentityReshape:output:0*
T0*-
_output_shapes
:?????????؀2

Identity"
identityIdentity:output:0*,
_input_shapes
:?????????؀:U Q
-
_output_shapes
:?????????؀
 
_user_specified_nameinputs
?!
?
 __inference__traced_save_2279823
file_prefix)
%savev2_c_1_kernel_read_readvariableop'
#savev2_c_1_bias_read_readvariableop)
%savev2_c_2_kernel_read_readvariableop'
#savev2_c_2_bias_read_readvariableop)
%savev2_c_3_kernel_read_readvariableop'
#savev2_c_3_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0%savev2_c_1_kernel_read_readvariableop#savev2_c_1_bias_read_readvariableop%savev2_c_2_kernel_read_readvariableop#savev2_c_2_bias_read_readvariableop%savev2_c_3_kernel_read_readvariableop#savev2_c_3_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*v
_input_shapese
c: :@:@:@@:@:@@:@:	@?:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
:@: 

_output_shapes
:@:($
"
_output_shapes
:@@: 

_output_shapes
:@:($
"
_output_shapes
:@@: 

_output_shapes
:@:%!

_output_shapes
:	@?:!

_output_shapes	
:?:%	!

_output_shapes
:	?: 


_output_shapes
::

_output_shapes
: 
?
?
@__inference_c_3_layer_call_and_return_conditional_losses_2279722

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????@2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????^@*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:?????????^@*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????^@2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????^@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*+
_output_shapes
:?????????^@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
b
)__inference_dropout_layer_call_fn_2279676

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????\@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_22790902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????\@2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????\@22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????\@
 
_user_specified_nameinputs
?
z
%__inference_c_2_layer_call_fn_2279706

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_c_2_layer_call_and_return_conditional_losses_22791242
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????\@::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????\@
 
_user_specified_nameinputs
?	
?
D__inference_dense_1_layer_call_and_return_conditional_losses_2279742

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?,
?
#__inference__traced_restore_2279863
file_prefix
assignvariableop_c_1_kernel
assignvariableop_1_c_1_bias!
assignvariableop_2_c_2_kernel
assignvariableop_3_c_2_bias!
assignvariableop_4_c_3_kernel
assignvariableop_5_c_3_bias%
!assignvariableop_6_dense_1_kernel#
assignvariableop_7_dense_1_bias$
 assignvariableop_8_output_kernel"
assignvariableop_9_output_bias
identity_11??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_c_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_c_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_c_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_c_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_c_3_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_c_3_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp assignvariableop_8_output_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_output_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_10Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_10?
Identity_11IdentityIdentity_10:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_11"#
identity_11Identity_11:output:0*=
_input_shapes,
*: ::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
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
?
c
D__inference_dropout_layer_call_and_return_conditional_losses_2279090

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????\@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????\@*
dtype0*

seed*2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????\@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????\@2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????\@2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????\@2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????\@:T P
,
_output_shapes
:??????????\@
 
_user_specified_nameinputs
?*
?
G__inference_sequential_layer_call_and_return_conditional_losses_2279299

inputs
c_1_2279269
c_1_2279271
c_2_2279276
c_2_2279278
c_3_2279282
c_3_2279284
dense_1_2279288
dense_1_2279290
output_2279293
output_2279295
identity??c_1/StatefulPartitionedCall?c_2/StatefulPartitionedCall?c_3/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dropout/StatefulPartitionedCall?output/StatefulPartitionedCall?
reshape/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????؀* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_22790372
reshape/PartitionedCall?
c_1/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0c_1_2279269c_1_2279271*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_c_1_layer_call_and_return_conditional_losses_22790612
c_1/StatefulPartitionedCall?
maxpool_1/PartitionedCallPartitionedCall$c_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????\@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_maxpool_1_layer_call_and_return_conditional_losses_22789862
maxpool_1/PartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall"maxpool_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????\@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_22790902!
dropout/StatefulPartitionedCall?
c_2/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0c_2_2279276c_2_2279278*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_c_2_layer_call_and_return_conditional_losses_22791242
c_2/StatefulPartitionedCall?
maxpool_2/PartitionedCallPartitionedCall$c_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_maxpool_2_layer_call_and_return_conditional_losses_22790012
maxpool_2/PartitionedCall?
c_3/StatefulPartitionedCallStatefulPartitionedCall"maxpool_2/PartitionedCall:output:0c_3_2279282c_3_2279284*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????^@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_c_3_layer_call_and_return_conditional_losses_22791572
c_3/StatefulPartitionedCall?
globalpool_1/PartitionedCallPartitionedCall$c_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_globalpool_1_layer_call_and_return_conditional_losses_22790142
globalpool_1/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall%globalpool_1/PartitionedCall:output:0dense_1_2279288dense_1_2279290*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_22791852!
dense_1/StatefulPartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0output_2279293output_2279295*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_22792112 
output/StatefulPartitionedCall?
IdentityIdentity'output/StatefulPartitionedCall:output:0^c_1/StatefulPartitionedCall^c_2/StatefulPartitionedCall^c_3/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*T
_input_shapesC
A:?????????؀::::::::::2:
c_1/StatefulPartitionedCallc_1/StatefulPartitionedCall2:
c_2/StatefulPartitionedCallc_2/StatefulPartitionedCall2:
c_3/StatefulPartitionedCallc_3/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:U Q
-
_output_shapes
:?????????؀
 
_user_specified_nameinputs
?[
?
G__inference_sequential_layer_call_and_return_conditional_losses_2279561

inputs3
/c_1_conv1d_expanddims_1_readvariableop_resource'
#c_1_biasadd_readvariableop_resource3
/c_2_conv1d_expanddims_1_readvariableop_resource'
#c_2_biasadd_readvariableop_resource3
/c_3_conv1d_expanddims_1_readvariableop_resource'
#c_3_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource)
%output_matmul_readvariableop_resource*
&output_biasadd_readvariableop_resource
identity??c_1/BiasAdd/ReadVariableOp?&c_1/conv1d/ExpandDims_1/ReadVariableOp?c_2/BiasAdd/ReadVariableOp?&c_2/conv1d/ExpandDims_1/ReadVariableOp?c_3/BiasAdd/ReadVariableOp?&c_3/conv1d/ExpandDims_1/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOpT
reshape/ShapeShapeinputs*
T0*
_output_shapes
:2
reshape/Shape?
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stack?
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1?
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape/strided_slicev
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB	 :؀2
reshape/Reshape/shape/1t
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/2?
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shape?
reshape/ReshapeReshapeinputsreshape/Reshape/shape:output:0*
T0*-
_output_shapes
:?????????؀2
reshape/Reshape?
c_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
c_1/conv1d/ExpandDims/dim?
c_1/conv1d/ExpandDims
ExpandDimsreshape/Reshape:output:0"c_1/conv1d/ExpandDims/dim:output:0*
T0*1
_output_shapes
:?????????؀2
c_1/conv1d/ExpandDims?
&c_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp/c_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype02(
&c_1/conv1d/ExpandDims_1/ReadVariableOp|
c_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
c_1/conv1d/ExpandDims_1/dim?
c_1/conv1d/ExpandDims_1
ExpandDims.c_1/conv1d/ExpandDims_1/ReadVariableOp:value:0$c_1/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@2
c_1/conv1d/ExpandDims_1?

c_1/conv1dConv2Dc_1/conv1d/ExpandDims:output:0 c_1/conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????@*
paddingVALID*
strides
2

c_1/conv1d?
c_1/conv1d/SqueezeSqueezec_1/conv1d:output:0*
T0*-
_output_shapes
:???????????@*
squeeze_dims

?????????2
c_1/conv1d/Squeeze?
c_1/BiasAdd/ReadVariableOpReadVariableOp#c_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
c_1/BiasAdd/ReadVariableOp?
c_1/BiasAddBiasAddc_1/conv1d/Squeeze:output:0"c_1/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????@2
c_1/BiasAddj
c_1/ReluReluc_1/BiasAdd:output:0*
T0*-
_output_shapes
:???????????@2

c_1/Reluv
maxpool_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
maxpool_1/ExpandDims/dim?
maxpool_1/ExpandDims
ExpandDimsc_1/Relu:activations:0!maxpool_1/ExpandDims/dim:output:0*
T0*1
_output_shapes
:???????????@2
maxpool_1/ExpandDims?
maxpool_1/MaxPoolMaxPoolmaxpool_1/ExpandDims:output:0*0
_output_shapes
:??????????\@*
ksize
*
paddingVALID*
strides
2
maxpool_1/MaxPool?
maxpool_1/SqueezeSqueezemaxpool_1/MaxPool:output:0*
T0*,
_output_shapes
:??????????\@*
squeeze_dims
2
maxpool_1/Squeeze?
dropout/IdentityIdentitymaxpool_1/Squeeze:output:0*
T0*,
_output_shapes
:??????????\@2
dropout/Identity?
c_2/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
c_2/conv1d/ExpandDims/dim?
c_2/conv1d/ExpandDims
ExpandDimsdropout/Identity:output:0"c_2/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????\@2
c_2/conv1d/ExpandDims?
&c_2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp/c_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype02(
&c_2/conv1d/ExpandDims_1/ReadVariableOp|
c_2/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
c_2/conv1d/ExpandDims_1/dim?
c_2/conv1d/ExpandDims_1
ExpandDims.c_2/conv1d/ExpandDims_1/ReadVariableOp:value:0$c_2/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@2
c_2/conv1d/ExpandDims_1?

c_2/conv1dConv2Dc_2/conv1d/ExpandDims:output:0 c_2/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2

c_2/conv1d?
c_2/conv1d/SqueezeSqueezec_2/conv1d:output:0*
T0*,
_output_shapes
:??????????@*
squeeze_dims

?????????2
c_2/conv1d/Squeeze?
c_2/BiasAdd/ReadVariableOpReadVariableOp#c_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
c_2/BiasAdd/ReadVariableOp?
c_2/BiasAddBiasAddc_2/conv1d/Squeeze:output:0"c_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@2
c_2/BiasAddi
c_2/ReluReluc_2/BiasAdd:output:0*
T0*,
_output_shapes
:??????????@2

c_2/Reluv
maxpool_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
maxpool_2/ExpandDims/dim?
maxpool_2/ExpandDims
ExpandDimsc_2/Relu:activations:0!maxpool_2/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????@2
maxpool_2/ExpandDims?
maxpool_2/MaxPoolMaxPoolmaxpool_2/ExpandDims:output:0*0
_output_shapes
:??????????@*
ksize
*
paddingVALID*
strides
2
maxpool_2/MaxPool?
maxpool_2/SqueezeSqueezemaxpool_2/MaxPool:output:0*
T0*,
_output_shapes
:??????????@*
squeeze_dims
2
maxpool_2/Squeeze?
c_3/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
c_3/conv1d/ExpandDims/dim?
c_3/conv1d/ExpandDims
ExpandDimsmaxpool_2/Squeeze:output:0"c_3/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????@2
c_3/conv1d/ExpandDims?
&c_3/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp/c_3_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype02(
&c_3/conv1d/ExpandDims_1/ReadVariableOp|
c_3/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
c_3/conv1d/ExpandDims_1/dim?
c_3/conv1d/ExpandDims_1
ExpandDims.c_3/conv1d/ExpandDims_1/ReadVariableOp:value:0$c_3/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@2
c_3/conv1d/ExpandDims_1?

c_3/conv1dConv2Dc_3/conv1d/ExpandDims:output:0 c_3/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????^@*
paddingVALID*
strides
2

c_3/conv1d?
c_3/conv1d/SqueezeSqueezec_3/conv1d:output:0*
T0*+
_output_shapes
:?????????^@*
squeeze_dims

?????????2
c_3/conv1d/Squeeze?
c_3/BiasAdd/ReadVariableOpReadVariableOp#c_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
c_3/BiasAdd/ReadVariableOp?
c_3/BiasAddBiasAddc_3/conv1d/Squeeze:output:0"c_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????^@2
c_3/BiasAddh
c_3/ReluReluc_3/BiasAdd:output:0*
T0*+
_output_shapes
:?????????^@2

c_3/Relu?
"globalpool_1/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2$
"globalpool_1/Max/reduction_indices?
globalpool_1/MaxMaxc_3/Relu:activations:0+globalpool_1/Max/reduction_indices:output:0*
T0*'
_output_shapes
:?????????@2
globalpool_1/Max?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulglobalpool_1/Max:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_1/Relu?
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
output/MatMul/ReadVariableOp?
output/MatMulMatMuldense_1/Relu:activations:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output/MatMul?
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
output/BiasAdd/ReadVariableOp?
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output/BiasAdd?
IdentityIdentityoutput/BiasAdd:output:0^c_1/BiasAdd/ReadVariableOp'^c_1/conv1d/ExpandDims_1/ReadVariableOp^c_2/BiasAdd/ReadVariableOp'^c_2/conv1d/ExpandDims_1/ReadVariableOp^c_3/BiasAdd/ReadVariableOp'^c_3/conv1d/ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*T
_input_shapesC
A:?????????؀::::::::::28
c_1/BiasAdd/ReadVariableOpc_1/BiasAdd/ReadVariableOp2P
&c_1/conv1d/ExpandDims_1/ReadVariableOp&c_1/conv1d/ExpandDims_1/ReadVariableOp28
c_2/BiasAdd/ReadVariableOpc_2/BiasAdd/ReadVariableOp2P
&c_2/conv1d/ExpandDims_1/ReadVariableOp&c_2/conv1d/ExpandDims_1/ReadVariableOp28
c_3/BiasAdd/ReadVariableOpc_3/BiasAdd/ReadVariableOp2P
&c_3/conv1d/ExpandDims_1/ReadVariableOp&c_3/conv1d/ExpandDims_1/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:U Q
-
_output_shapes
:?????????؀
 
_user_specified_nameinputs
?
z
%__inference_c_3_layer_call_fn_2279731

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????^@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_c_3_layer_call_and_return_conditional_losses_22791572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????^@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????@::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?o
?
"__inference__wrapped_model_2278977	
audio>
:sequential_c_1_conv1d_expanddims_1_readvariableop_resource2
.sequential_c_1_biasadd_readvariableop_resource>
:sequential_c_2_conv1d_expanddims_1_readvariableop_resource2
.sequential_c_2_biasadd_readvariableop_resource>
:sequential_c_3_conv1d_expanddims_1_readvariableop_resource2
.sequential_c_3_biasadd_readvariableop_resource5
1sequential_dense_1_matmul_readvariableop_resource6
2sequential_dense_1_biasadd_readvariableop_resource4
0sequential_output_matmul_readvariableop_resource5
1sequential_output_biasadd_readvariableop_resource
identity??%sequential/c_1/BiasAdd/ReadVariableOp?1sequential/c_1/conv1d/ExpandDims_1/ReadVariableOp?%sequential/c_2/BiasAdd/ReadVariableOp?1sequential/c_2/conv1d/ExpandDims_1/ReadVariableOp?%sequential/c_3/BiasAdd/ReadVariableOp?1sequential/c_3/conv1d/ExpandDims_1/ReadVariableOp?)sequential/dense_1/BiasAdd/ReadVariableOp?(sequential/dense_1/MatMul/ReadVariableOp?(sequential/output/BiasAdd/ReadVariableOp?'sequential/output/MatMul/ReadVariableOpi
sequential/reshape/ShapeShapeaudio*
T0*
_output_shapes
:2
sequential/reshape/Shape?
&sequential/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential/reshape/strided_slice/stack?
(sequential/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/reshape/strided_slice/stack_1?
(sequential/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/reshape/strided_slice/stack_2?
 sequential/reshape/strided_sliceStridedSlice!sequential/reshape/Shape:output:0/sequential/reshape/strided_slice/stack:output:01sequential/reshape/strided_slice/stack_1:output:01sequential/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 sequential/reshape/strided_slice?
"sequential/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB	 :؀2$
"sequential/reshape/Reshape/shape/1?
"sequential/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2$
"sequential/reshape/Reshape/shape/2?
 sequential/reshape/Reshape/shapePack)sequential/reshape/strided_slice:output:0+sequential/reshape/Reshape/shape/1:output:0+sequential/reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2"
 sequential/reshape/Reshape/shape?
sequential/reshape/ReshapeReshapeaudio)sequential/reshape/Reshape/shape:output:0*
T0*-
_output_shapes
:?????????؀2
sequential/reshape/Reshape?
$sequential/c_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$sequential/c_1/conv1d/ExpandDims/dim?
 sequential/c_1/conv1d/ExpandDims
ExpandDims#sequential/reshape/Reshape:output:0-sequential/c_1/conv1d/ExpandDims/dim:output:0*
T0*1
_output_shapes
:?????????؀2"
 sequential/c_1/conv1d/ExpandDims?
1sequential/c_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp:sequential_c_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype023
1sequential/c_1/conv1d/ExpandDims_1/ReadVariableOp?
&sequential/c_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential/c_1/conv1d/ExpandDims_1/dim?
"sequential/c_1/conv1d/ExpandDims_1
ExpandDims9sequential/c_1/conv1d/ExpandDims_1/ReadVariableOp:value:0/sequential/c_1/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@2$
"sequential/c_1/conv1d/ExpandDims_1?
sequential/c_1/conv1dConv2D)sequential/c_1/conv1d/ExpandDims:output:0+sequential/c_1/conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????@*
paddingVALID*
strides
2
sequential/c_1/conv1d?
sequential/c_1/conv1d/SqueezeSqueezesequential/c_1/conv1d:output:0*
T0*-
_output_shapes
:???????????@*
squeeze_dims

?????????2
sequential/c_1/conv1d/Squeeze?
%sequential/c_1/BiasAdd/ReadVariableOpReadVariableOp.sequential_c_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02'
%sequential/c_1/BiasAdd/ReadVariableOp?
sequential/c_1/BiasAddBiasAdd&sequential/c_1/conv1d/Squeeze:output:0-sequential/c_1/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????@2
sequential/c_1/BiasAdd?
sequential/c_1/ReluRelusequential/c_1/BiasAdd:output:0*
T0*-
_output_shapes
:???????????@2
sequential/c_1/Relu?
#sequential/maxpool_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential/maxpool_1/ExpandDims/dim?
sequential/maxpool_1/ExpandDims
ExpandDims!sequential/c_1/Relu:activations:0,sequential/maxpool_1/ExpandDims/dim:output:0*
T0*1
_output_shapes
:???????????@2!
sequential/maxpool_1/ExpandDims?
sequential/maxpool_1/MaxPoolMaxPool(sequential/maxpool_1/ExpandDims:output:0*0
_output_shapes
:??????????\@*
ksize
*
paddingVALID*
strides
2
sequential/maxpool_1/MaxPool?
sequential/maxpool_1/SqueezeSqueeze%sequential/maxpool_1/MaxPool:output:0*
T0*,
_output_shapes
:??????????\@*
squeeze_dims
2
sequential/maxpool_1/Squeeze?
sequential/dropout/IdentityIdentity%sequential/maxpool_1/Squeeze:output:0*
T0*,
_output_shapes
:??????????\@2
sequential/dropout/Identity?
$sequential/c_2/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$sequential/c_2/conv1d/ExpandDims/dim?
 sequential/c_2/conv1d/ExpandDims
ExpandDims$sequential/dropout/Identity:output:0-sequential/c_2/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????\@2"
 sequential/c_2/conv1d/ExpandDims?
1sequential/c_2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp:sequential_c_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype023
1sequential/c_2/conv1d/ExpandDims_1/ReadVariableOp?
&sequential/c_2/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential/c_2/conv1d/ExpandDims_1/dim?
"sequential/c_2/conv1d/ExpandDims_1
ExpandDims9sequential/c_2/conv1d/ExpandDims_1/ReadVariableOp:value:0/sequential/c_2/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@2$
"sequential/c_2/conv1d/ExpandDims_1?
sequential/c_2/conv1dConv2D)sequential/c_2/conv1d/ExpandDims:output:0+sequential/c_2/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2
sequential/c_2/conv1d?
sequential/c_2/conv1d/SqueezeSqueezesequential/c_2/conv1d:output:0*
T0*,
_output_shapes
:??????????@*
squeeze_dims

?????????2
sequential/c_2/conv1d/Squeeze?
%sequential/c_2/BiasAdd/ReadVariableOpReadVariableOp.sequential_c_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02'
%sequential/c_2/BiasAdd/ReadVariableOp?
sequential/c_2/BiasAddBiasAdd&sequential/c_2/conv1d/Squeeze:output:0-sequential/c_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@2
sequential/c_2/BiasAdd?
sequential/c_2/ReluRelusequential/c_2/BiasAdd:output:0*
T0*,
_output_shapes
:??????????@2
sequential/c_2/Relu?
#sequential/maxpool_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential/maxpool_2/ExpandDims/dim?
sequential/maxpool_2/ExpandDims
ExpandDims!sequential/c_2/Relu:activations:0,sequential/maxpool_2/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????@2!
sequential/maxpool_2/ExpandDims?
sequential/maxpool_2/MaxPoolMaxPool(sequential/maxpool_2/ExpandDims:output:0*0
_output_shapes
:??????????@*
ksize
*
paddingVALID*
strides
2
sequential/maxpool_2/MaxPool?
sequential/maxpool_2/SqueezeSqueeze%sequential/maxpool_2/MaxPool:output:0*
T0*,
_output_shapes
:??????????@*
squeeze_dims
2
sequential/maxpool_2/Squeeze?
$sequential/c_3/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$sequential/c_3/conv1d/ExpandDims/dim?
 sequential/c_3/conv1d/ExpandDims
ExpandDims%sequential/maxpool_2/Squeeze:output:0-sequential/c_3/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????@2"
 sequential/c_3/conv1d/ExpandDims?
1sequential/c_3/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp:sequential_c_3_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype023
1sequential/c_3/conv1d/ExpandDims_1/ReadVariableOp?
&sequential/c_3/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential/c_3/conv1d/ExpandDims_1/dim?
"sequential/c_3/conv1d/ExpandDims_1
ExpandDims9sequential/c_3/conv1d/ExpandDims_1/ReadVariableOp:value:0/sequential/c_3/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@2$
"sequential/c_3/conv1d/ExpandDims_1?
sequential/c_3/conv1dConv2D)sequential/c_3/conv1d/ExpandDims:output:0+sequential/c_3/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????^@*
paddingVALID*
strides
2
sequential/c_3/conv1d?
sequential/c_3/conv1d/SqueezeSqueezesequential/c_3/conv1d:output:0*
T0*+
_output_shapes
:?????????^@*
squeeze_dims

?????????2
sequential/c_3/conv1d/Squeeze?
%sequential/c_3/BiasAdd/ReadVariableOpReadVariableOp.sequential_c_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02'
%sequential/c_3/BiasAdd/ReadVariableOp?
sequential/c_3/BiasAddBiasAdd&sequential/c_3/conv1d/Squeeze:output:0-sequential/c_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????^@2
sequential/c_3/BiasAdd?
sequential/c_3/ReluRelusequential/c_3/BiasAdd:output:0*
T0*+
_output_shapes
:?????????^@2
sequential/c_3/Relu?
-sequential/globalpool_1/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2/
-sequential/globalpool_1/Max/reduction_indices?
sequential/globalpool_1/MaxMax!sequential/c_3/Relu:activations:06sequential/globalpool_1/Max/reduction_indices:output:0*
T0*'
_output_shapes
:?????????@2
sequential/globalpool_1/Max?
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02*
(sequential/dense_1/MatMul/ReadVariableOp?
sequential/dense_1/MatMulMatMul$sequential/globalpool_1/Max:output:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential/dense_1/MatMul?
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOp?
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential/dense_1/BiasAdd?
sequential/dense_1/ReluRelu#sequential/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential/dense_1/Relu?
'sequential/output/MatMul/ReadVariableOpReadVariableOp0sequential_output_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02)
'sequential/output/MatMul/ReadVariableOp?
sequential/output/MatMulMatMul%sequential/dense_1/Relu:activations:0/sequential/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/output/MatMul?
(sequential/output/BiasAdd/ReadVariableOpReadVariableOp1sequential_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(sequential/output/BiasAdd/ReadVariableOp?
sequential/output/BiasAddBiasAdd"sequential/output/MatMul:product:00sequential/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/output/BiasAdd?
IdentityIdentity"sequential/output/BiasAdd:output:0&^sequential/c_1/BiasAdd/ReadVariableOp2^sequential/c_1/conv1d/ExpandDims_1/ReadVariableOp&^sequential/c_2/BiasAdd/ReadVariableOp2^sequential/c_2/conv1d/ExpandDims_1/ReadVariableOp&^sequential/c_3/BiasAdd/ReadVariableOp2^sequential/c_3/conv1d/ExpandDims_1/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp)^sequential/output/BiasAdd/ReadVariableOp(^sequential/output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*T
_input_shapesC
A:?????????؀::::::::::2N
%sequential/c_1/BiasAdd/ReadVariableOp%sequential/c_1/BiasAdd/ReadVariableOp2f
1sequential/c_1/conv1d/ExpandDims_1/ReadVariableOp1sequential/c_1/conv1d/ExpandDims_1/ReadVariableOp2N
%sequential/c_2/BiasAdd/ReadVariableOp%sequential/c_2/BiasAdd/ReadVariableOp2f
1sequential/c_2/conv1d/ExpandDims_1/ReadVariableOp1sequential/c_2/conv1d/ExpandDims_1/ReadVariableOp2N
%sequential/c_3/BiasAdd/ReadVariableOp%sequential/c_3/BiasAdd/ReadVariableOp2f
1sequential/c_3/conv1d/ExpandDims_1/ReadVariableOp1sequential/c_3/conv1d/ExpandDims_1/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2T
(sequential/output/BiasAdd/ReadVariableOp(sequential/output/BiasAdd/ReadVariableOp2R
'sequential/output/MatMul/ReadVariableOp'sequential/output/MatMul/ReadVariableOp:T P
-
_output_shapes
:?????????؀

_user_specified_nameaudio
?)
?
G__inference_sequential_layer_call_and_return_conditional_losses_2279358

inputs
c_1_2279328
c_1_2279330
c_2_2279335
c_2_2279337
c_3_2279341
c_3_2279343
dense_1_2279347
dense_1_2279349
output_2279352
output_2279354
identity??c_1/StatefulPartitionedCall?c_2/StatefulPartitionedCall?c_3/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?output/StatefulPartitionedCall?
reshape/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????؀* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_22790372
reshape/PartitionedCall?
c_1/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0c_1_2279328c_1_2279330*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_c_1_layer_call_and_return_conditional_losses_22790612
c_1/StatefulPartitionedCall?
maxpool_1/PartitionedCallPartitionedCall$c_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????\@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_maxpool_1_layer_call_and_return_conditional_losses_22789862
maxpool_1/PartitionedCall?
dropout/PartitionedCallPartitionedCall"maxpool_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????\@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_22790952
dropout/PartitionedCall?
c_2/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0c_2_2279335c_2_2279337*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_c_2_layer_call_and_return_conditional_losses_22791242
c_2/StatefulPartitionedCall?
maxpool_2/PartitionedCallPartitionedCall$c_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_maxpool_2_layer_call_and_return_conditional_losses_22790012
maxpool_2/PartitionedCall?
c_3/StatefulPartitionedCallStatefulPartitionedCall"maxpool_2/PartitionedCall:output:0c_3_2279341c_3_2279343*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????^@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_c_3_layer_call_and_return_conditional_losses_22791572
c_3/StatefulPartitionedCall?
globalpool_1/PartitionedCallPartitionedCall$c_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_globalpool_1_layer_call_and_return_conditional_losses_22790142
globalpool_1/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall%globalpool_1/PartitionedCall:output:0dense_1_2279347dense_1_2279349*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_22791852!
dense_1/StatefulPartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0output_2279352output_2279354*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_22792112 
output/StatefulPartitionedCall?
IdentityIdentity'output/StatefulPartitionedCall:output:0^c_1/StatefulPartitionedCall^c_2/StatefulPartitionedCall^c_3/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*T
_input_shapesC
A:?????????؀::::::::::2:
c_1/StatefulPartitionedCallc_1/StatefulPartitionedCall2:
c_2/StatefulPartitionedCallc_2/StatefulPartitionedCall2:
c_3/StatefulPartitionedCallc_3/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:U Q
-
_output_shapes
:?????????؀
 
_user_specified_nameinputs
?
b
D__inference_dropout_layer_call_and_return_conditional_losses_2279095

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????\@2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????\@2

Identity_1"!

identity_1Identity_1:output:0*+
_input_shapes
:??????????\@:T P
,
_output_shapes
:??????????\@
 
_user_specified_nameinputs
?
z
%__inference_c_1_layer_call_fn_2279654

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_c_1_layer_call_and_return_conditional_losses_22790612
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:???????????@2

Identity"
identityIdentity:output:0*4
_input_shapes#
!:?????????؀::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:?????????؀
 
_user_specified_nameinputs
?)
?
G__inference_sequential_layer_call_and_return_conditional_losses_2279262	
audio
c_1_2279232
c_1_2279234
c_2_2279239
c_2_2279241
c_3_2279245
c_3_2279247
dense_1_2279251
dense_1_2279253
output_2279256
output_2279258
identity??c_1/StatefulPartitionedCall?c_2/StatefulPartitionedCall?c_3/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?output/StatefulPartitionedCall?
reshape/PartitionedCallPartitionedCallaudio*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????؀* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_22790372
reshape/PartitionedCall?
c_1/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0c_1_2279232c_1_2279234*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_c_1_layer_call_and_return_conditional_losses_22790612
c_1/StatefulPartitionedCall?
maxpool_1/PartitionedCallPartitionedCall$c_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????\@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_maxpool_1_layer_call_and_return_conditional_losses_22789862
maxpool_1/PartitionedCall?
dropout/PartitionedCallPartitionedCall"maxpool_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????\@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_22790952
dropout/PartitionedCall?
c_2/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0c_2_2279239c_2_2279241*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_c_2_layer_call_and_return_conditional_losses_22791242
c_2/StatefulPartitionedCall?
maxpool_2/PartitionedCallPartitionedCall$c_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_maxpool_2_layer_call_and_return_conditional_losses_22790012
maxpool_2/PartitionedCall?
c_3/StatefulPartitionedCallStatefulPartitionedCall"maxpool_2/PartitionedCall:output:0c_3_2279245c_3_2279247*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????^@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_c_3_layer_call_and_return_conditional_losses_22791572
c_3/StatefulPartitionedCall?
globalpool_1/PartitionedCallPartitionedCall$c_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_globalpool_1_layer_call_and_return_conditional_losses_22790142
globalpool_1/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall%globalpool_1/PartitionedCall:output:0dense_1_2279251dense_1_2279253*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_22791852!
dense_1/StatefulPartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0output_2279256output_2279258*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_22792112 
output/StatefulPartitionedCall?
IdentityIdentity'output/StatefulPartitionedCall:output:0^c_1/StatefulPartitionedCall^c_2/StatefulPartitionedCall^c_3/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*T
_input_shapesC
A:?????????؀::::::::::2:
c_1/StatefulPartitionedCallc_1/StatefulPartitionedCall2:
c_2/StatefulPartitionedCallc_2/StatefulPartitionedCall2:
c_3/StatefulPartitionedCallc_3/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:T P
-
_output_shapes
:?????????؀

_user_specified_nameaudio
?
G
+__inference_maxpool_1_layer_call_fn_2278992

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_maxpool_1_layer_call_and_return_conditional_losses_22789862
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
=
audio4
serving_default_audio:0?????????؀:
output0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?F
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer_with_weights-4

layer-9
trainable_variables
	variables
regularization_losses
	keras_api

signatures
y__call__
z_default_save_signature
*{&call_and_return_all_conditional_losses"?B
_tf_keras_sequential?B{"class_name": "Sequential", "name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 295000, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "audio"}}, {"class_name": "Reshape", "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [295000, 1]}}}, {"class_name": "Conv1D", "config": {"name": "c_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5]}, "strides": {"class_name": "__tuple__", "items": [5]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "maxpool_1", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [5]}, "pool_size": {"class_name": "__tuple__", "items": [5]}, "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.6, "noise_shape": null, "seed": null}}, {"class_name": "Conv1D", "config": {"name": "c_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5]}, "strides": {"class_name": "__tuple__", "items": [5]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "maxpool_2", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [5]}, "pool_size": {"class_name": "__tuple__", "items": [5]}, "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Conv1D", "config": {"name": "c_3", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5]}, "strides": {"class_name": "__tuple__", "items": [5]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "GlobalMaxPooling1D", "config": {"name": "globalpool_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 5, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 295000, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 295000, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "audio"}}, {"class_name": "Reshape", "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [295000, 1]}}}, {"class_name": "Conv1D", "config": {"name": "c_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5]}, "strides": {"class_name": "__tuple__", "items": [5]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "maxpool_1", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [5]}, "pool_size": {"class_name": "__tuple__", "items": [5]}, "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.6, "noise_shape": null, "seed": null}}, {"class_name": "Conv1D", "config": {"name": "c_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5]}, "strides": {"class_name": "__tuple__", "items": [5]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "maxpool_2", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [5]}, "pool_size": {"class_name": "__tuple__", "items": [5]}, "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Conv1D", "config": {"name": "c_3", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5]}, "strides": {"class_name": "__tuple__", "items": [5]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "GlobalMaxPooling1D", "config": {"name": "globalpool_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 5, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}}
?
trainable_variables
	variables
regularization_losses
	keras_api
|__call__
*}&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Reshape", "name": "reshape", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [295000, 1]}}}
?	

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
~__call__
*&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv1D", "name": "c_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "c_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5]}, "strides": {"class_name": "__tuple__", "items": [5]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 295000, 1]}}
?
trainable_variables
	variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling1D", "name": "maxpool_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "maxpool_1", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [5]}, "pool_size": {"class_name": "__tuple__", "items": [5]}, "padding": "valid", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
trainable_variables
	variables
 regularization_losses
!	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.6, "noise_shape": null, "seed": null}}
?	

"kernel
#bias
$trainable_variables
%	variables
&regularization_losses
'	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv1D", "name": "c_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "c_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5]}, "strides": {"class_name": "__tuple__", "items": [5]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 11800, 64]}}
?
(trainable_variables
)	variables
*regularization_losses
+	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling1D", "name": "maxpool_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "maxpool_2", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [5]}, "pool_size": {"class_name": "__tuple__", "items": [5]}, "padding": "valid", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

,kernel
-bias
.trainable_variables
/	variables
0regularization_losses
1	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv1D", "name": "c_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "c_3", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5]}, "strides": {"class_name": "__tuple__", "items": [5]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 472, 64]}}
?
2trainable_variables
3	variables
4regularization_losses
5	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "GlobalMaxPooling1D", "name": "globalpool_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "globalpool_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?

6kernel
7bias
8trainable_variables
9	variables
:regularization_losses
;	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?

<kernel
=bias
>trainable_variables
?	variables
@regularization_losses
A	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 5, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
f
0
1
"2
#3
,4
-5
66
77
<8
=9"
trackable_list_wrapper
f
0
1
"2
#3
,4
-5
66
77
<8
=9"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Bnon_trainable_variables
trainable_variables
	variables
Clayer_metrics
Dlayer_regularization_losses

Elayers
Fmetrics
regularization_losses
y__call__
z_default_save_signature
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Gnon_trainable_variables
trainable_variables
	variables
Hlayer_metrics
Ilayer_regularization_losses

Jlayers
Kmetrics
regularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
 :@2
c_1/kernel
:@2c_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Lnon_trainable_variables
trainable_variables
	variables
Mlayer_metrics
Nlayer_regularization_losses

Olayers
Pmetrics
regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Qnon_trainable_variables
trainable_variables
	variables
Rlayer_metrics
Slayer_regularization_losses

Tlayers
Umetrics
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Vnon_trainable_variables
trainable_variables
	variables
Wlayer_metrics
Xlayer_regularization_losses

Ylayers
Zmetrics
 regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :@@2
c_2/kernel
:@2c_2/bias
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
[non_trainable_variables
$trainable_variables
%	variables
\layer_metrics
]layer_regularization_losses

^layers
_metrics
&regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
`non_trainable_variables
(trainable_variables
)	variables
alayer_metrics
blayer_regularization_losses

clayers
dmetrics
*regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :@@2
c_3/kernel
:@2c_3/bias
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
enon_trainable_variables
.trainable_variables
/	variables
flayer_metrics
glayer_regularization_losses

hlayers
imetrics
0regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
jnon_trainable_variables
2trainable_variables
3	variables
klayer_metrics
llayer_regularization_losses

mlayers
nmetrics
4regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	@?2dense_1/kernel
:?2dense_1/bias
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
?
onon_trainable_variables
8trainable_variables
9	variables
player_metrics
qlayer_regularization_losses

rlayers
smetrics
:regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :	?2output/kernel
:2output/bias
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
tnon_trainable_variables
>trainable_variables
?	variables
ulayer_metrics
vlayer_regularization_losses

wlayers
xmetrics
@regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
	8

9"
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
?2?
,__inference_sequential_layer_call_fn_2279381
,__inference_sequential_layer_call_fn_2279586
,__inference_sequential_layer_call_fn_2279322
,__inference_sequential_layer_call_fn_2279611?
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
?2?
"__inference__wrapped_model_2278977?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? **?'
%?"
audio?????????؀
?2?
G__inference_sequential_layer_call_and_return_conditional_losses_2279488
G__inference_sequential_layer_call_and_return_conditional_losses_2279262
G__inference_sequential_layer_call_and_return_conditional_losses_2279561
G__inference_sequential_layer_call_and_return_conditional_losses_2279228?
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
?2?
)__inference_reshape_layer_call_fn_2279629?
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
D__inference_reshape_layer_call_and_return_conditional_losses_2279624?
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
%__inference_c_1_layer_call_fn_2279654?
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
@__inference_c_1_layer_call_and_return_conditional_losses_2279645?
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
?2?
+__inference_maxpool_1_layer_call_fn_2278992?
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
annotations? *3?0
.?+'???????????????????????????
?2?
F__inference_maxpool_1_layer_call_and_return_conditional_losses_2278986?
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
annotations? *3?0
.?+'???????????????????????????
?2?
)__inference_dropout_layer_call_fn_2279681
)__inference_dropout_layer_call_fn_2279676?
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
D__inference_dropout_layer_call_and_return_conditional_losses_2279666
D__inference_dropout_layer_call_and_return_conditional_losses_2279671?
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
?2?
%__inference_c_2_layer_call_fn_2279706?
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
@__inference_c_2_layer_call_and_return_conditional_losses_2279697?
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
?2?
+__inference_maxpool_2_layer_call_fn_2279007?
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
annotations? *3?0
.?+'???????????????????????????
?2?
F__inference_maxpool_2_layer_call_and_return_conditional_losses_2279001?
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
annotations? *3?0
.?+'???????????????????????????
?2?
%__inference_c_3_layer_call_fn_2279731?
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
@__inference_c_3_layer_call_and_return_conditional_losses_2279722?
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
?2?
.__inference_globalpool_1_layer_call_fn_2279020?
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
annotations? *3?0
.?+'???????????????????????????
?2?
I__inference_globalpool_1_layer_call_and_return_conditional_losses_2279014?
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
annotations? *3?0
.?+'???????????????????????????
?2?
)__inference_dense_1_layer_call_fn_2279751?
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
D__inference_dense_1_layer_call_and_return_conditional_losses_2279742?
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
(__inference_output_layer_call_fn_2279770?
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
C__inference_output_layer_call_and_return_conditional_losses_2279761?
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
?B?
%__inference_signature_wrapper_2279408audio"?
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
 ?
"__inference__wrapped_model_2278977s
"#,-67<=4?1
*?'
%?"
audio?????????؀
? "/?,
*
output ?
output??????????
@__inference_c_1_layer_call_and_return_conditional_losses_2279645h5?2
+?(
&?#
inputs?????????؀
? "+?(
!?
0???????????@
? ?
%__inference_c_1_layer_call_fn_2279654[5?2
+?(
&?#
inputs?????????؀
? "????????????@?
@__inference_c_2_layer_call_and_return_conditional_losses_2279697f"#4?1
*?'
%?"
inputs??????????\@
? "*?'
 ?
0??????????@
? ?
%__inference_c_2_layer_call_fn_2279706Y"#4?1
*?'
%?"
inputs??????????\@
? "???????????@?
@__inference_c_3_layer_call_and_return_conditional_losses_2279722e,-4?1
*?'
%?"
inputs??????????@
? ")?&
?
0?????????^@
? ?
%__inference_c_3_layer_call_fn_2279731X,-4?1
*?'
%?"
inputs??????????@
? "??????????^@?
D__inference_dense_1_layer_call_and_return_conditional_losses_2279742]67/?,
%?"
 ?
inputs?????????@
? "&?#
?
0??????????
? }
)__inference_dense_1_layer_call_fn_2279751P67/?,
%?"
 ?
inputs?????????@
? "????????????
D__inference_dropout_layer_call_and_return_conditional_losses_2279666f8?5
.?+
%?"
inputs??????????\@
p
? "*?'
 ?
0??????????\@
? ?
D__inference_dropout_layer_call_and_return_conditional_losses_2279671f8?5
.?+
%?"
inputs??????????\@
p 
? "*?'
 ?
0??????????\@
? ?
)__inference_dropout_layer_call_fn_2279676Y8?5
.?+
%?"
inputs??????????\@
p
? "???????????\@?
)__inference_dropout_layer_call_fn_2279681Y8?5
.?+
%?"
inputs??????????\@
p 
? "???????????\@?
I__inference_globalpool_1_layer_call_and_return_conditional_losses_2279014wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+
$?!
0??????????????????
? ?
.__inference_globalpool_1_layer_call_fn_2279020jE?B
;?8
6?3
inputs'???????????????????????????
? "!????????????????????
F__inference_maxpool_1_layer_call_and_return_conditional_losses_2278986?E?B
;?8
6?3
inputs'???????????????????????????
? ";?8
1?.
0'???????????????????????????
? ?
+__inference_maxpool_1_layer_call_fn_2278992wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+'????????????????????????????
F__inference_maxpool_2_layer_call_and_return_conditional_losses_2279001?E?B
;?8
6?3
inputs'???????????????????????????
? ";?8
1?.
0'???????????????????????????
? ?
+__inference_maxpool_2_layer_call_fn_2279007wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+'????????????????????????????
C__inference_output_layer_call_and_return_conditional_losses_2279761]<=0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? |
(__inference_output_layer_call_fn_2279770P<=0?-
&?#
!?
inputs??????????
? "???????????
D__inference_reshape_layer_call_and_return_conditional_losses_2279624d5?2
+?(
&?#
inputs?????????؀
? "+?(
!?
0?????????؀
? ?
)__inference_reshape_layer_call_fn_2279629W5?2
+?(
&?#
inputs?????????؀
? "??????????؀?
G__inference_sequential_layer_call_and_return_conditional_losses_2279228q
"#,-67<=<?9
2?/
%?"
audio?????????؀
p

 
? "%?"
?
0?????????
? ?
G__inference_sequential_layer_call_and_return_conditional_losses_2279262q
"#,-67<=<?9
2?/
%?"
audio?????????؀
p 

 
? "%?"
?
0?????????
? ?
G__inference_sequential_layer_call_and_return_conditional_losses_2279488r
"#,-67<==?:
3?0
&?#
inputs?????????؀
p

 
? "%?"
?
0?????????
? ?
G__inference_sequential_layer_call_and_return_conditional_losses_2279561r
"#,-67<==?:
3?0
&?#
inputs?????????؀
p 

 
? "%?"
?
0?????????
? ?
,__inference_sequential_layer_call_fn_2279322d
"#,-67<=<?9
2?/
%?"
audio?????????؀
p

 
? "???????????
,__inference_sequential_layer_call_fn_2279381d
"#,-67<=<?9
2?/
%?"
audio?????????؀
p 

 
? "???????????
,__inference_sequential_layer_call_fn_2279586e
"#,-67<==?:
3?0
&?#
inputs?????????؀
p

 
? "???????????
,__inference_sequential_layer_call_fn_2279611e
"#,-67<==?:
3?0
&?#
inputs?????????؀
p 

 
? "???????????
%__inference_signature_wrapper_2279408|
"#,-67<==?:
? 
3?0
.
audio%?"
audio?????????؀"/?,
*
output ?
output?????????