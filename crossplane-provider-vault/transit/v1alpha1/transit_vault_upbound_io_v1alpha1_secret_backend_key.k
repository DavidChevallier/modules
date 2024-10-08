"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import k8s.apimachinery.pkg.apis.meta.v1


schema SecretBackendKey:
    r"""
    SecretBackendKey is the Schema for the SecretBackendKeys API. Create an Encryption Keyring on a Transit Secret Backend for Vault.

    Attributes
    ----------
    apiVersion : str, default is "transit.vault.upbound.io/v1alpha1", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "SecretBackendKey", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : TransitVaultUpboundIoV1alpha1SecretBackendKeySpec, default is Undefined, required
        spec
    status : TransitVaultUpboundIoV1alpha1SecretBackendKeyStatus, default is Undefined, optional
        status
    """


    apiVersion: "transit.vault.upbound.io/v1alpha1" = "transit.vault.upbound.io/v1alpha1"

    kind: "SecretBackendKey" = "SecretBackendKey"

    metadata?: v1.ObjectMeta

    spec: TransitVaultUpboundIoV1alpha1SecretBackendKeySpec

    status?: TransitVaultUpboundIoV1alpha1SecretBackendKeyStatus


schema TransitVaultUpboundIoV1alpha1SecretBackendKeySpec:
    r"""
    SecretBackendKeySpec defines the desired state of SecretBackendKey

    Attributes
    ----------
    deletionPolicy : str, default is "Delete", optional
        DeletionPolicy specifies what will happen to the underlying external when this managed resource is deleted - either "Delete" or "Orphan" the external resource. This field is planned to be deprecated in favor of the ManagementPolicies field in a future release. Currently, both could be set independently and non-default values would be honored if the feature flag is enabled. See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223
    forProvider : TransitVaultUpboundIoV1alpha1SecretBackendKeySpecForProvider, default is Undefined, required
        for provider
    initProvider : TransitVaultUpboundIoV1alpha1SecretBackendKeySpecInitProvider, default is Undefined, optional
        init provider
    managementPolicies : [str], default is ["*"], optional
        THIS IS AN ALPHA FIELD. Do not use it in production. It is not honored unless the relevant Crossplane feature flag is enabled, and may be changed or removed without notice. ManagementPolicies specify the array of actions Crossplane is allowed to take on the managed and external resources. This field is planned to replace the DeletionPolicy field in a future release. Currently, both could be set independently and non-default values would be honored if the feature flag is enabled. If both are custom, the DeletionPolicy field will be ignored. See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223 and this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md
    providerConfigRef : TransitVaultUpboundIoV1alpha1SecretBackendKeySpecProviderConfigRef, default is Undefined, optional
        provider config ref
    providerRef : TransitVaultUpboundIoV1alpha1SecretBackendKeySpecProviderRef, default is Undefined, optional
        provider ref
    publishConnectionDetailsTo : TransitVaultUpboundIoV1alpha1SecretBackendKeySpecPublishConnectionDetailsTo, default is Undefined, optional
        publish connection details to
    writeConnectionSecretToRef : TransitVaultUpboundIoV1alpha1SecretBackendKeySpecWriteConnectionSecretToRef, default is Undefined, optional
        write connection secret to ref
    """


    deletionPolicy?: "Orphan" | "Delete" = "Delete"

    forProvider: TransitVaultUpboundIoV1alpha1SecretBackendKeySpecForProvider

    initProvider?: TransitVaultUpboundIoV1alpha1SecretBackendKeySpecInitProvider

    managementPolicies?: [str] = ["*"]

    providerConfigRef?: TransitVaultUpboundIoV1alpha1SecretBackendKeySpecProviderConfigRef

    providerRef?: TransitVaultUpboundIoV1alpha1SecretBackendKeySpecProviderRef

    publishConnectionDetailsTo?: TransitVaultUpboundIoV1alpha1SecretBackendKeySpecPublishConnectionDetailsTo

    writeConnectionSecretToRef?: TransitVaultUpboundIoV1alpha1SecretBackendKeySpecWriteConnectionSecretToRef


schema TransitVaultUpboundIoV1alpha1SecretBackendKeySpecForProvider:
    r"""
    transit vault upbound io v1alpha1 secret backend key spec for provider

    Attributes
    ----------
    allowPlaintextBackup : bool, default is Undefined, optional
        Enables taking backup of entire keyring in the plaintext format. Once set, this cannot be disabled. If set, enables taking backup of named key in the plaintext format. Once set, this cannot be disabled.
    autoRotateInterval : float, default is Undefined, optional
        Replaced by auto_rotate_period. Amount of time the key should live before being automatically rotated. A value of 0 disables automatic rotation for the key.
    autoRotatePeriod : float, default is Undefined, optional
        Amount of seconds the key should live before being automatically rotated. A value of 0 disables automatic rotation for the key. Amount of seconds the key should live before being automatically rotated. A value of 0 disables automatic rotation for the key.
    backend : str, default is Undefined, optional
        The path the transit secret backend is mounted at, with no leading or trailing /s. The Transit secret backend the resource belongs to.
    convergentEncryption : bool, default is Undefined, optional
        Whether or not to support convergent encryption, where the same plaintext creates the same ciphertext. This requires derived to be set to true. Whether or not to support convergent encryption, where the same plaintext creates the same ciphertext. This requires derived to be set to true.
    deletionAllowed : bool, default is Undefined, optional
        Specifies if the keyring is allowed to be deleted. Specifies if the key is allowed to be deleted.
    derived : bool, default is Undefined, optional
        Specifies if key derivation is to be used. If enabled, all encrypt/decrypt requests to this key must provide a context which is used for key derivation. Specifies if key derivation is to be used. If enabled, all encrypt/decrypt requests to this key must provide a context which is used for key derivation.
    exportable : bool, default is Undefined, optional
        Enables keys to be exportable. This allows for all valid private keys in the keyring to be exported. Once set, this cannot be disabled. Enables keys to be exportable. This allows for all the valid keys in the key ring to be exported. Once set, this cannot be disabled.
    keySize : float, default is Undefined, optional
        The key size in bytes for algorithms that allow variable key sizes. Currently only applicable to HMAC, where it must be between 32 and 512 bytes. The key size in bytes for algorithms that allow variable key sizes. Currently only applicable to HMAC; this value must be between 32 and 512.
    minDecryptionVersion : float, default is Undefined, optional
        Minimum key version to use for decryption. Minimum key version to use for decryption.
    minEncryptionVersion : float, default is Undefined, optional
        Minimum key version to use for encryption Minimum key version to use for encryption
    name : str, default is Undefined, optional
        The name to identify this key within the backend. Must be unique within the backend. Name of the encryption key to create.
    namespace : str, default is Undefined, optional
        The namespace to provision the resource in. The value should not contain leading or trailing forward slashes. The namespace is always relative to the provider's configured namespace. Available only for Vault Enterprise. Target namespace. (requires Enterprise)
    $type : str, default is Undefined, optional
        Specifies the type of key to create. The currently-supported types are: aes128-gcm96, aes256-gcm96 (default), chacha20-poly1305, ed25519, ecdsa-p256, ecdsa-p384, ecdsa-p521, hmac, rsa-2048, rsa-3072 and rsa-4096. Specifies the type of key to create. The currently-supported types are: aes128-gcm96, aes256-gcm96, chacha20-poly1305, ed25519, ecdsa-p256, ecdsa-p384, ecdsa-p521, hmac, rsa-2048, rsa-3072, rsa-4096
    """


    allowPlaintextBackup?: bool

    autoRotateInterval?: float

    autoRotatePeriod?: float

    backend?: str

    convergentEncryption?: bool

    deletionAllowed?: bool

    derived?: bool

    exportable?: bool

    keySize?: float

    minDecryptionVersion?: float

    minEncryptionVersion?: float

    name?: str

    namespace?: str

    $type?: str


schema TransitVaultUpboundIoV1alpha1SecretBackendKeySpecInitProvider:
    r"""
    THIS IS AN ALPHA FIELD. Do not use it in production. It is not honored unless the relevant Crossplane feature flag is enabled, and may be changed or removed without notice. InitProvider holds the same fields as ForProvider, with the exception of Identifier and other resource reference fields. The fields that are in InitProvider are merged into ForProvider when the resource is created. The same fields are also added to the terraform ignore_changes hook, to avoid updating them after creation. This is useful for fields that are required on creation, but we do not desire to update them after creation, for example because of an external controller is managing them, like an autoscaler.

    Attributes
    ----------
    allowPlaintextBackup : bool, default is Undefined, optional
        Enables taking backup of entire keyring in the plaintext format. Once set, this cannot be disabled. If set, enables taking backup of named key in the plaintext format. Once set, this cannot be disabled.
    autoRotateInterval : float, default is Undefined, optional
        Replaced by auto_rotate_period. Amount of time the key should live before being automatically rotated. A value of 0 disables automatic rotation for the key.
    autoRotatePeriod : float, default is Undefined, optional
        Amount of seconds the key should live before being automatically rotated. A value of 0 disables automatic rotation for the key. Amount of seconds the key should live before being automatically rotated. A value of 0 disables automatic rotation for the key.
    backend : str, default is Undefined, optional
        The path the transit secret backend is mounted at, with no leading or trailing /s. The Transit secret backend the resource belongs to.
    convergentEncryption : bool, default is Undefined, optional
        Whether or not to support convergent encryption, where the same plaintext creates the same ciphertext. This requires derived to be set to true. Whether or not to support convergent encryption, where the same plaintext creates the same ciphertext. This requires derived to be set to true.
    deletionAllowed : bool, default is Undefined, optional
        Specifies if the keyring is allowed to be deleted. Specifies if the key is allowed to be deleted.
    derived : bool, default is Undefined, optional
        Specifies if key derivation is to be used. If enabled, all encrypt/decrypt requests to this key must provide a context which is used for key derivation. Specifies if key derivation is to be used. If enabled, all encrypt/decrypt requests to this key must provide a context which is used for key derivation.
    exportable : bool, default is Undefined, optional
        Enables keys to be exportable. This allows for all valid private keys in the keyring to be exported. Once set, this cannot be disabled. Enables keys to be exportable. This allows for all the valid keys in the key ring to be exported. Once set, this cannot be disabled.
    keySize : float, default is Undefined, optional
        The key size in bytes for algorithms that allow variable key sizes. Currently only applicable to HMAC, where it must be between 32 and 512 bytes. The key size in bytes for algorithms that allow variable key sizes. Currently only applicable to HMAC; this value must be between 32 and 512.
    minDecryptionVersion : float, default is Undefined, optional
        Minimum key version to use for decryption. Minimum key version to use for decryption.
    minEncryptionVersion : float, default is Undefined, optional
        Minimum key version to use for encryption Minimum key version to use for encryption
    name : str, default is Undefined, optional
        The name to identify this key within the backend. Must be unique within the backend. Name of the encryption key to create.
    namespace : str, default is Undefined, optional
        The namespace to provision the resource in. The value should not contain leading or trailing forward slashes. The namespace is always relative to the provider's configured namespace. Available only for Vault Enterprise. Target namespace. (requires Enterprise)
    $type : str, default is Undefined, optional
        Specifies the type of key to create. The currently-supported types are: aes128-gcm96, aes256-gcm96 (default), chacha20-poly1305, ed25519, ecdsa-p256, ecdsa-p384, ecdsa-p521, hmac, rsa-2048, rsa-3072 and rsa-4096. Specifies the type of key to create. The currently-supported types are: aes128-gcm96, aes256-gcm96, chacha20-poly1305, ed25519, ecdsa-p256, ecdsa-p384, ecdsa-p521, hmac, rsa-2048, rsa-3072, rsa-4096
    """


    allowPlaintextBackup?: bool

    autoRotateInterval?: float

    autoRotatePeriod?: float

    backend?: str

    convergentEncryption?: bool

    deletionAllowed?: bool

    derived?: bool

    exportable?: bool

    keySize?: float

    minDecryptionVersion?: float

    minEncryptionVersion?: float

    name?: str

    namespace?: str

    $type?: str


schema TransitVaultUpboundIoV1alpha1SecretBackendKeySpecProviderConfigRef:
    r"""
    ProviderConfigReference specifies how the provider that will be used to create, observe, update, and delete this managed resource should be configured.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : TransitVaultUpboundIoV1alpha1SecretBackendKeySpecProviderConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: TransitVaultUpboundIoV1alpha1SecretBackendKeySpecProviderConfigRefPolicy


schema TransitVaultUpboundIoV1alpha1SecretBackendKeySpecProviderConfigRefPolicy:
    r"""
    Policies for referencing.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required. The default is 'Required', which means the reconcile will fail if the reference cannot be resolved. 'Optional' means this reference will be a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default is 'IfNotPresent', which will attempt to resolve the reference only when the corresponding field is not present. Use 'Always' to resolve the reference on every reconcile.
    """


    resolution?: "Required" | "Optional" = "Required"

    resolve?: "Always" | "IfNotPresent"


schema TransitVaultUpboundIoV1alpha1SecretBackendKeySpecProviderRef:
    r"""
    ProviderReference specifies the provider that will be used to create, observe, update, and delete this managed resource. Deprecated: Please use ProviderConfigReference, i.e. `providerConfigRef`

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : TransitVaultUpboundIoV1alpha1SecretBackendKeySpecProviderRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: TransitVaultUpboundIoV1alpha1SecretBackendKeySpecProviderRefPolicy


schema TransitVaultUpboundIoV1alpha1SecretBackendKeySpecProviderRefPolicy:
    r"""
    Policies for referencing.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required. The default is 'Required', which means the reconcile will fail if the reference cannot be resolved. 'Optional' means this reference will be a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default is 'IfNotPresent', which will attempt to resolve the reference only when the corresponding field is not present. Use 'Always' to resolve the reference on every reconcile.
    """


    resolution?: "Required" | "Optional" = "Required"

    resolve?: "Always" | "IfNotPresent"


schema TransitVaultUpboundIoV1alpha1SecretBackendKeySpecPublishConnectionDetailsTo:
    r"""
    PublishConnectionDetailsTo specifies the connection secret config which contains a name, metadata and a reference to secret store config to which any connection details for this managed resource should be written. Connection details frequently include the endpoint, username, and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : TransitVaultUpboundIoV1alpha1SecretBackendKeySpecPublishConnectionDetailsToConfigRef, default is Undefined, optional
        config ref
    metadata : TransitVaultUpboundIoV1alpha1SecretBackendKeySpecPublishConnectionDetailsToMetadata, default is Undefined, optional
        metadata
    name : str, default is Undefined, required
        Name is the name of the connection secret.
    """


    configRef?: TransitVaultUpboundIoV1alpha1SecretBackendKeySpecPublishConnectionDetailsToConfigRef

    metadata?: TransitVaultUpboundIoV1alpha1SecretBackendKeySpecPublishConnectionDetailsToMetadata

    name: str


schema TransitVaultUpboundIoV1alpha1SecretBackendKeySpecPublishConnectionDetailsToConfigRef:
    r"""
    SecretStoreConfigRef specifies which secret store config should be used for this ConnectionSecret.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : TransitVaultUpboundIoV1alpha1SecretBackendKeySpecPublishConnectionDetailsToConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: TransitVaultUpboundIoV1alpha1SecretBackendKeySpecPublishConnectionDetailsToConfigRefPolicy


schema TransitVaultUpboundIoV1alpha1SecretBackendKeySpecPublishConnectionDetailsToConfigRefPolicy:
    r"""
    Policies for referencing.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required. The default is 'Required', which means the reconcile will fail if the reference cannot be resolved. 'Optional' means this reference will be a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default is 'IfNotPresent', which will attempt to resolve the reference only when the corresponding field is not present. Use 'Always' to resolve the reference on every reconcile.
    """


    resolution?: "Required" | "Optional" = "Required"

    resolve?: "Always" | "IfNotPresent"


schema TransitVaultUpboundIoV1alpha1SecretBackendKeySpecPublishConnectionDetailsToMetadata:
    r"""
    Metadata is the metadata for connection secret.

    Attributes
    ----------
    annotations : {str:str}, default is Undefined, optional
        Annotations are the annotations to be added to connection secret. - For Kubernetes secrets, this will be used as "metadata.annotations". - It is up to Secret Store implementation for others store types.
    labels : {str:str}, default is Undefined, optional
        Labels are the labels/tags to be added to connection secret. - For Kubernetes secrets, this will be used as "metadata.labels". - It is up to Secret Store implementation for others store types.
    $type : str, default is Undefined, optional
        Type is the SecretType for the connection secret. - Only valid for Kubernetes Secret Stores.
    """


    annotations?: {str:str}

    labels?: {str:str}

    $type?: str


schema TransitVaultUpboundIoV1alpha1SecretBackendKeySpecWriteConnectionSecretToRef:
    r"""
    WriteConnectionSecretToReference specifies the namespace and name of a Secret to which any connection details for this managed resource should be written. Connection details frequently include the endpoint, username, and password required to connect to the managed resource. This field is planned to be replaced in a future release in favor of PublishConnectionDetailsTo. Currently, both could be set independently and connection details would be published to both without affecting each other.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the secret.
    namespace : str, default is Undefined, required
        Namespace of the secret.
    """


    name: str

    namespace: str


schema TransitVaultUpboundIoV1alpha1SecretBackendKeyStatus:
    r"""
    SecretBackendKeyStatus defines the observed state of SecretBackendKey.

    Attributes
    ----------
    atProvider : TransitVaultUpboundIoV1alpha1SecretBackendKeyStatusAtProvider, default is Undefined, optional
        at provider
    conditions : [TransitVaultUpboundIoV1alpha1SecretBackendKeyStatusConditionsItems0], default is Undefined, optional
        Conditions of the resource.
    """


    atProvider?: TransitVaultUpboundIoV1alpha1SecretBackendKeyStatusAtProvider

    conditions?: [TransitVaultUpboundIoV1alpha1SecretBackendKeyStatusConditionsItems0]


schema TransitVaultUpboundIoV1alpha1SecretBackendKeyStatusAtProvider:
    r"""
    transit vault upbound io v1alpha1 secret backend key status at provider

    Attributes
    ----------
    allowPlaintextBackup : bool, default is Undefined, optional
        Enables taking backup of entire keyring in the plaintext format. Once set, this cannot be disabled. If set, enables taking backup of named key in the plaintext format. Once set, this cannot be disabled.
    autoRotateInterval : float, default is Undefined, optional
        Replaced by auto_rotate_period. Amount of time the key should live before being automatically rotated. A value of 0 disables automatic rotation for the key.
    autoRotatePeriod : float, default is Undefined, optional
        Amount of seconds the key should live before being automatically rotated. A value of 0 disables automatic rotation for the key. Amount of seconds the key should live before being automatically rotated. A value of 0 disables automatic rotation for the key.
    backend : str, default is Undefined, optional
        The path the transit secret backend is mounted at, with no leading or trailing /s. The Transit secret backend the resource belongs to.
    convergentEncryption : bool, default is Undefined, optional
        Whether or not to support convergent encryption, where the same plaintext creates the same ciphertext. This requires derived to be set to true. Whether or not to support convergent encryption, where the same plaintext creates the same ciphertext. This requires derived to be set to true.
    deletionAllowed : bool, default is Undefined, optional
        Specifies if the keyring is allowed to be deleted. Specifies if the key is allowed to be deleted.
    derived : bool, default is Undefined, optional
        Specifies if key derivation is to be used. If enabled, all encrypt/decrypt requests to this key must provide a context which is used for key derivation. Specifies if key derivation is to be used. If enabled, all encrypt/decrypt requests to this key must provide a context which is used for key derivation.
    exportable : bool, default is Undefined, optional
        Enables keys to be exportable. This allows for all valid private keys in the keyring to be exported. Once set, this cannot be disabled. Enables keys to be exportable. This allows for all the valid keys in the key ring to be exported. Once set, this cannot be disabled.
    id : str, default is Undefined, optional
        id
    keySize : float, default is Undefined, optional
        The key size in bytes for algorithms that allow variable key sizes. Currently only applicable to HMAC, where it must be between 32 and 512 bytes. The key size in bytes for algorithms that allow variable key sizes. Currently only applicable to HMAC; this value must be between 32 and 512.
    keys : [{str:str}], default is Undefined, optional
        List of key versions in the keyring. This attribute is zero-indexed and will contain a map of values depending on the type of the encryption key. List of key versions in the keyring.
    latestVersion : float, default is Undefined, optional
        Latest key version available. This value is 1-indexed, so if latest_version is 1, then the key's information can be referenced from keys by selecting element 0 Latest key version in use in the keyring
    minAvailableVersion : float, default is Undefined, optional
        Minimum key version available for use. If keys have been archived by increasing min_decryption_version, this attribute will reflect that change. Minimum key version available for use.
    minDecryptionVersion : float, default is Undefined, optional
        Minimum key version to use for decryption. Minimum key version to use for decryption.
    minEncryptionVersion : float, default is Undefined, optional
        Minimum key version to use for encryption Minimum key version to use for encryption
    name : str, default is Undefined, optional
        The name to identify this key within the backend. Must be unique within the backend. Name of the encryption key to create.
    namespace : str, default is Undefined, optional
        The namespace to provision the resource in. The value should not contain leading or trailing forward slashes. The namespace is always relative to the provider's configured namespace. Available only for Vault Enterprise. Target namespace. (requires Enterprise)
    supportsDecryption : bool, default is Undefined, optional
        Whether or not the key supports decryption, based on key type. Whether or not the key supports decryption, based on key type.
    supportsDerivation : bool, default is Undefined, optional
        Whether or not the key supports derivation, based on key type. Whether or not the key supports derivation, based on key type.
    supportsEncryption : bool, default is Undefined, optional
        Whether or not the key supports encryption, based on key type. Whether or not the key supports encryption, based on key type.
    supportsSigning : bool, default is Undefined, optional
        Whether or not the key supports signing, based on key type. Whether or not the key supports signing, based on key type.
    $type : str, default is Undefined, optional
        Specifies the type of key to create. The currently-supported types are: aes128-gcm96, aes256-gcm96 (default), chacha20-poly1305, ed25519, ecdsa-p256, ecdsa-p384, ecdsa-p521, hmac, rsa-2048, rsa-3072 and rsa-4096. Specifies the type of key to create. The currently-supported types are: aes128-gcm96, aes256-gcm96, chacha20-poly1305, ed25519, ecdsa-p256, ecdsa-p384, ecdsa-p521, hmac, rsa-2048, rsa-3072, rsa-4096
    """


    allowPlaintextBackup?: bool

    autoRotateInterval?: float

    autoRotatePeriod?: float

    backend?: str

    convergentEncryption?: bool

    deletionAllowed?: bool

    derived?: bool

    exportable?: bool

    id?: str

    keySize?: float

    keys?: [{str:str}]

    latestVersion?: float

    minAvailableVersion?: float

    minDecryptionVersion?: float

    minEncryptionVersion?: float

    name?: str

    namespace?: str

    supportsDecryption?: bool

    supportsDerivation?: bool

    supportsEncryption?: bool

    supportsSigning?: bool

    $type?: str


schema TransitVaultUpboundIoV1alpha1SecretBackendKeyStatusConditionsItems0:
    r"""
    A Condition that may apply to a resource.

    Attributes
    ----------
    lastTransitionTime : str, default is Undefined, required
        LastTransitionTime is the last time this condition transitioned from one status to another.
    message : str, default is Undefined, optional
        A Message containing details about this condition's last transition from one status to another, if any.
    reason : str, default is Undefined, required
        A Reason for this condition's last transition from one status to another.
    status : str, default is Undefined, required
        Status of this condition; is it currently True, False, or Unknown?
    $type : str, default is Undefined, required
        Type of this condition. At most one of each condition type may apply to a resource at any point in time.
    """


    lastTransitionTime: str

    message?: str

    reason: str

    status: str

    $type: str


