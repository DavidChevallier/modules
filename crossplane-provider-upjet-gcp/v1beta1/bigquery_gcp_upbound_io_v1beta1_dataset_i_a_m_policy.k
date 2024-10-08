"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import k8s.apimachinery.pkg.apis.meta.v1


schema DatasetIAMPolicy:
    """
    DatasetIAMPolicy is the Schema for the DatasetIAMPolicys API. Collection of resources to manage IAM policy for a BigQuery dataset.

    Attributes
    ----------
    apiVersion : str, default is "bigquery.gcp.upbound.io/v1beta1", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "DatasetIAMPolicy", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpec, default is Undefined, required
        spec
    status : BigqueryGcpUpboundIoV1beta1DatasetIAMPolicyStatus, default is Undefined, optional
        status
    """


    apiVersion: "bigquery.gcp.upbound.io/v1beta1" = "bigquery.gcp.upbound.io/v1beta1"

    kind: "DatasetIAMPolicy" = "DatasetIAMPolicy"

    metadata?: v1.ObjectMeta

    spec: BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpec

    status?: BigqueryGcpUpboundIoV1beta1DatasetIAMPolicyStatus


schema BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpec:
    """
    DatasetIAMPolicySpec defines the desired state of DatasetIAMPolicy

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
    forProvider : BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecForProvider, default is Undefined, required
        for provider
    initProvider : BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecInitProvider, default is Undefined, optional
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
    providerConfigRef : BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecProviderConfigRef, default is Undefined, optional
        provider config ref
    publishConnectionDetailsTo : BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecPublishConnectionDetailsTo, default is Undefined, optional
        publish connection details to
    writeConnectionSecretToRef : BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecWriteConnectionSecretToRef, default is Undefined, optional
        write connection secret to ref
    """


    deletionPolicy?: "Orphan" | "Delete" = "Delete"

    forProvider: BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecForProvider

    initProvider?: BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecInitProvider

    managementPolicies?: [str] = ["*"]

    providerConfigRef?: BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecProviderConfigRef

    publishConnectionDetailsTo?: BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecPublishConnectionDetailsTo

    writeConnectionSecretToRef?: BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecWriteConnectionSecretToRef


schema BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecForProvider:
    """
    bigquery gcp upbound io v1beta1 dataset i a m policy spec for provider

    Attributes
    ----------
    datasetId : str, default is Undefined, optional
        The dataset ID.
    datasetIdRef : BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecForProviderDatasetIDRef, default is Undefined, optional
        dataset Id ref
    datasetIdSelector : BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecForProviderDatasetIDSelector, default is Undefined, optional
        dataset Id selector
    policyData : str, default is Undefined, optional
        The policy data generated by
        a google_iam_policy data source.
    project : str, default is Undefined, optional
        The ID of the project in which the resource belongs.
        If it is not provided, the provider project is used.
    """


    datasetId?: str

    datasetIdRef?: BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecForProviderDatasetIDRef

    datasetIdSelector?: BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecForProviderDatasetIDSelector

    policyData?: str

    project?: str


schema BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecForProviderDatasetIDRef:
    """
    Reference to a Dataset in bigquery to populate datasetId.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecForProviderDatasetIDRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecForProviderDatasetIDRefPolicy


schema BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecForProviderDatasetIDRefPolicy:
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


schema BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecForProviderDatasetIDSelector:
    """
    Selector for a Dataset in bigquery to populate datasetId.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecForProviderDatasetIDSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecForProviderDatasetIDSelectorPolicy


schema BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecForProviderDatasetIDSelectorPolicy:
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


schema BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecInitProvider:
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
    policyData : str, default is Undefined, optional
        The policy data generated by
        a google_iam_policy data source.
    project : str, default is Undefined, optional
        The ID of the project in which the resource belongs.
        If it is not provided, the provider project is used.
    """


    policyData?: str

    project?: str


schema BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecProviderConfigRef:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecProviderConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecProviderConfigRefPolicy


schema BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecProviderConfigRefPolicy:
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


schema BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecPublishConnectionDetailsTo:
    """
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecPublishConnectionDetailsToConfigRef, default is Undefined, optional
        config ref
    metadata : BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecPublishConnectionDetailsToMetadata, default is Undefined, optional
        metadata
    name : str, default is Undefined, required
        Name is the name of the connection secret.
    """


    configRef?: BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecPublishConnectionDetailsToConfigRef

    metadata?: BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecPublishConnectionDetailsToMetadata

    name: str


schema BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecPublishConnectionDetailsToConfigRef:
    """
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecPublishConnectionDetailsToConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecPublishConnectionDetailsToConfigRefPolicy


schema BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecPublishConnectionDetailsToConfigRefPolicy:
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


schema BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecPublishConnectionDetailsToMetadata:
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


schema BigqueryGcpUpboundIoV1beta1DatasetIAMPolicySpecWriteConnectionSecretToRef:
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


schema BigqueryGcpUpboundIoV1beta1DatasetIAMPolicyStatus:
    """
    DatasetIAMPolicyStatus defines the observed state of DatasetIAMPolicy.

    Attributes
    ----------
    atProvider : BigqueryGcpUpboundIoV1beta1DatasetIAMPolicyStatusAtProvider, default is Undefined, optional
        at provider
    conditions : [BigqueryGcpUpboundIoV1beta1DatasetIAMPolicyStatusConditionsItems0], default is Undefined, optional
        Conditions of the resource.
    """


    atProvider?: BigqueryGcpUpboundIoV1beta1DatasetIAMPolicyStatusAtProvider

    conditions?: [BigqueryGcpUpboundIoV1beta1DatasetIAMPolicyStatusConditionsItems0]


schema BigqueryGcpUpboundIoV1beta1DatasetIAMPolicyStatusAtProvider:
    """
    bigquery gcp upbound io v1beta1 dataset i a m policy status at provider

    Attributes
    ----------
    datasetId : str, default is Undefined, optional
        The dataset ID.
    etag : str, default is Undefined, optional
        (Computed) The etag of the dataset's IAM policy.
    id : str, default is Undefined, optional
        id
    policyData : str, default is Undefined, optional
        The policy data generated by
        a google_iam_policy data source.
    project : str, default is Undefined, optional
        The ID of the project in which the resource belongs.
        If it is not provided, the provider project is used.
    """


    datasetId?: str

    etag?: str

    id?: str

    policyData?: str

    project?: str


schema BigqueryGcpUpboundIoV1beta1DatasetIAMPolicyStatusConditionsItems0:
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


