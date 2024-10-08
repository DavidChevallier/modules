"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import k8s.apimachinery.pkg.apis.meta.v1


schema ServiceAccountIAMMember:
    """
    ServiceAccountIAMMember is the Schema for the ServiceAccountIAMMembers API. <no value>

    Attributes
    ----------
    apiVersion : str, default is "cloudplatform.gcp.upbound.io/v1beta1", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "ServiceAccountIAMMember", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpec, default is Undefined, required
        spec
    status : CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberStatus, default is Undefined, optional
        status
    """


    apiVersion: "cloudplatform.gcp.upbound.io/v1beta1" = "cloudplatform.gcp.upbound.io/v1beta1"

    kind: "ServiceAccountIAMMember" = "ServiceAccountIAMMember"

    metadata?: v1.ObjectMeta

    spec: CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpec

    status?: CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberStatus


schema CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpec:
    """
    ServiceAccountIAMMemberSpec defines the desired state of ServiceAccountIAMMember

    Attributes
    ----------
    deletionPolicy : str, default is "Delete", optional
        DeletionPolicy specifies what will happen to the underlying external
        when this managed resource is deleted - either "Delete" or "Orphan" the
        external resource.
        This field is planned to be deprecated in favor of the ManagementPolicies
        field in a future release. Currently, both could be set independently and
        non-default values would be honored if the feature flag is enabled.
        See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223
    forProvider : CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecForProvider, default is Undefined, required
        for provider
    initProvider : CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecInitProvider, default is Undefined, optional
        init provider
    managementPolicies : [str], default is ["*"], optional
        THIS IS A BETA FIELD. It is on by default but can be opted out
        through a Crossplane feature flag.
        ManagementPolicies specify the array of actions Crossplane is allowed to
        take on the managed and external resources.
        This field is planned to replace the DeletionPolicy field in a future
        release. Currently, both could be set independently and non-default
        values would be honored if the feature flag is enabled. If both are
        custom, the DeletionPolicy field will be ignored.
        See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223
        and this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md
    providerConfigRef : CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecProviderConfigRef, default is Undefined, optional
        provider config ref
    publishConnectionDetailsTo : CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecPublishConnectionDetailsTo, default is Undefined, optional
        publish connection details to
    writeConnectionSecretToRef : CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecWriteConnectionSecretToRef, default is Undefined, optional
        write connection secret to ref
    """


    deletionPolicy?: "Orphan" | "Delete" = "Delete"

    forProvider: CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecForProvider

    initProvider?: CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecInitProvider

    managementPolicies?: [str] = ["*"]

    providerConfigRef?: CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecProviderConfigRef

    publishConnectionDetailsTo?: CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecPublishConnectionDetailsTo

    writeConnectionSecretToRef?: CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecWriteConnectionSecretToRef


schema CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecForProvider:
    """
    cloudplatform gcp upbound io v1beta1 service account i a m member spec for provider

    Attributes
    ----------
    condition : [CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecForProviderConditionItems0], default is Undefined, optional
        condition
    member : str, default is Undefined, optional
        member
    role : str, default is Undefined, optional
        role
    serviceAccountId : str, default is Undefined, optional
        service account Id
    serviceAccountIdRef : CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecForProviderServiceAccountIDRef, default is Undefined, optional
        service account Id ref
    serviceAccountIdSelector : CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecForProviderServiceAccountIDSelector, default is Undefined, optional
        service account Id selector
    """


    condition?: [CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecForProviderConditionItems0]

    member?: str

    role?: str

    serviceAccountId?: str

    serviceAccountIdRef?: CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecForProviderServiceAccountIDRef

    serviceAccountIdSelector?: CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecForProviderServiceAccountIDSelector


schema CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecForProviderConditionItems0:
    """
    cloudplatform gcp upbound io v1beta1 service account i a m member spec for provider condition items0

    Attributes
    ----------
    description : str, default is Undefined, optional
        description
    expression : str, default is Undefined, optional
        expression
    title : str, default is Undefined, optional
        title
    """


    description?: str

    expression?: str

    title?: str


schema CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecForProviderServiceAccountIDRef:
    """
    Reference to a ServiceAccount to populate serviceAccountId.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecForProviderServiceAccountIDRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecForProviderServiceAccountIDRefPolicy


schema CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecForProviderServiceAccountIDRefPolicy:
    """
    Policies for referencing.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """


    resolution?: "Required" | "Optional" = "Required"

    resolve?: "Always" | "IfNotPresent"


schema CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecForProviderServiceAccountIDSelector:
    """
    Selector for a ServiceAccount to populate serviceAccountId.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecForProviderServiceAccountIDSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecForProviderServiceAccountIDSelectorPolicy


schema CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecForProviderServiceAccountIDSelectorPolicy:
    """
    Policies for selection.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """


    resolution?: "Required" | "Optional" = "Required"

    resolve?: "Always" | "IfNotPresent"


schema CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecInitProvider:
    """
    THIS IS A BETA FIELD. It will be honored
    unless the Management Policies feature flag is disabled.
    InitProvider holds the same fields as ForProvider, with the exception
    of Identifier and other resource reference fields. The fields that are
    in InitProvider are merged into ForProvider when the resource is created.
    The same fields are also added to the terraform ignore_changes hook, to
    avoid updating them after creation. This is useful for fields that are
    required on creation, but we do not desire to update them after creation,
    for example because of an external controller is managing them, like an
    autoscaler.

    Attributes
    ----------
    condition : [CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecInitProviderConditionItems0], default is Undefined, optional
        condition
    member : str, default is Undefined, optional
        member
    role : str, default is Undefined, optional
        role
    serviceAccountId : str, default is Undefined, optional
        service account Id
    serviceAccountIdRef : CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecInitProviderServiceAccountIDRef, default is Undefined, optional
        service account Id ref
    serviceAccountIdSelector : CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecInitProviderServiceAccountIDSelector, default is Undefined, optional
        service account Id selector
    """


    condition?: [CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecInitProviderConditionItems0]

    member?: str

    role?: str

    serviceAccountId?: str

    serviceAccountIdRef?: CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecInitProviderServiceAccountIDRef

    serviceAccountIdSelector?: CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecInitProviderServiceAccountIDSelector


schema CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecInitProviderConditionItems0:
    """
    cloudplatform gcp upbound io v1beta1 service account i a m member spec init provider condition items0

    Attributes
    ----------
    description : str, default is Undefined, optional
        description
    expression : str, default is Undefined, optional
        expression
    title : str, default is Undefined, optional
        title
    """


    description?: str

    expression?: str

    title?: str


schema CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecInitProviderServiceAccountIDRef:
    """
    Reference to a ServiceAccount to populate serviceAccountId.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecInitProviderServiceAccountIDRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecInitProviderServiceAccountIDRefPolicy


schema CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecInitProviderServiceAccountIDRefPolicy:
    """
    Policies for referencing.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """


    resolution?: "Required" | "Optional" = "Required"

    resolve?: "Always" | "IfNotPresent"


schema CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecInitProviderServiceAccountIDSelector:
    """
    Selector for a ServiceAccount to populate serviceAccountId.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecInitProviderServiceAccountIDSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecInitProviderServiceAccountIDSelectorPolicy


schema CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecInitProviderServiceAccountIDSelectorPolicy:
    """
    Policies for selection.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """


    resolution?: "Required" | "Optional" = "Required"

    resolve?: "Always" | "IfNotPresent"


schema CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecProviderConfigRef:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecProviderConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecProviderConfigRefPolicy


schema CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecProviderConfigRefPolicy:
    """
    Policies for referencing.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """


    resolution?: "Required" | "Optional" = "Required"

    resolve?: "Always" | "IfNotPresent"


schema CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecPublishConnectionDetailsTo:
    """
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecPublishConnectionDetailsToConfigRef, default is Undefined, optional
        config ref
    metadata : CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecPublishConnectionDetailsToMetadata, default is Undefined, optional
        metadata
    name : str, default is Undefined, required
        Name is the name of the connection secret.
    """


    configRef?: CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecPublishConnectionDetailsToConfigRef

    metadata?: CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecPublishConnectionDetailsToMetadata

    name: str


schema CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecPublishConnectionDetailsToConfigRef:
    """
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecPublishConnectionDetailsToConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecPublishConnectionDetailsToConfigRefPolicy


schema CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecPublishConnectionDetailsToConfigRefPolicy:
    """
    Policies for referencing.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """


    resolution?: "Required" | "Optional" = "Required"

    resolve?: "Always" | "IfNotPresent"


schema CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecPublishConnectionDetailsToMetadata:
    """
    Metadata is the metadata for connection secret.

    Attributes
    ----------
    annotations : {str:str}, default is Undefined, optional
        Annotations are the annotations to be added to connection secret.
        - For Kubernetes secrets, this will be used as "metadata.annotations".
        - It is up to Secret Store implementation for others store types.
    labels : {str:str}, default is Undefined, optional
        Labels are the labels/tags to be added to connection secret.
        - For Kubernetes secrets, this will be used as "metadata.labels".
        - It is up to Secret Store implementation for others store types.
    $type : str, default is Undefined, optional
        Type is the SecretType for the connection secret.
        - Only valid for Kubernetes Secret Stores.
    """


    annotations?: {str:str}

    labels?: {str:str}

    $type?: str


schema CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberSpecWriteConnectionSecretToRef:
    """
    WriteConnectionSecretToReference specifies the namespace and name of a
    Secret to which any connection details for this managed resource should
    be written. Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.
    This field is planned to be replaced in a future release in favor of
    PublishConnectionDetailsTo. Currently, both could be set independently
    and connection details would be published to both without affecting
    each other.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the secret.
    namespace : str, default is Undefined, required
        Namespace of the secret.
    """


    name: str

    namespace: str


schema CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberStatus:
    """
    ServiceAccountIAMMemberStatus defines the observed state of ServiceAccountIAMMember.

    Attributes
    ----------
    atProvider : CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberStatusAtProvider, default is Undefined, optional
        at provider
    conditions : [CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberStatusConditionsItems0], default is Undefined, optional
        Conditions of the resource.
    """


    atProvider?: CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberStatusAtProvider

    conditions?: [CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberStatusConditionsItems0]


schema CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberStatusAtProvider:
    """
    cloudplatform gcp upbound io v1beta1 service account i a m member status at provider

    Attributes
    ----------
    condition : [CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberStatusAtProviderConditionItems0], default is Undefined, optional
        condition
    etag : str, default is Undefined, optional
        etag
    id : str, default is Undefined, optional
        id
    member : str, default is Undefined, optional
        member
    role : str, default is Undefined, optional
        role
    serviceAccountId : str, default is Undefined, optional
        service account Id
    """


    condition?: [CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberStatusAtProviderConditionItems0]

    etag?: str

    id?: str

    member?: str

    role?: str

    serviceAccountId?: str


schema CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberStatusAtProviderConditionItems0:
    """
    cloudplatform gcp upbound io v1beta1 service account i a m member status at provider condition items0

    Attributes
    ----------
    description : str, default is Undefined, optional
        description
    expression : str, default is Undefined, optional
        expression
    title : str, default is Undefined, optional
        title
    """


    description?: str

    expression?: str

    title?: str


schema CloudplatformGcpUpboundIoV1beta1ServiceAccountIAMMemberStatusConditionsItems0:
    """
    A Condition that may apply to a resource.

    Attributes
    ----------
    lastTransitionTime : str, default is Undefined, required
        LastTransitionTime is the last time this condition transitioned from one
        status to another.
    message : str, default is Undefined, optional
        A Message containing details about this condition's last transition from
        one status to another, if any.
    reason : str, default is Undefined, required
        A Reason for this condition's last transition from one status to another.
    status : str, default is Undefined, required
        Status of this condition; is it currently True, False, or Unknown?
    $type : str, default is Undefined, required
        Type of this condition. At most one of each condition type may apply to
        a resource at any point in time.
    """


    lastTransitionTime: str

    message?: str

    reason: str

    status: str

    $type: str


