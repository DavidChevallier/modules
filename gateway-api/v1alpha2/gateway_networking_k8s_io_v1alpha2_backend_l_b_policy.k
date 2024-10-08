"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import regex
import k8s.apimachinery.pkg.apis.meta.v1
_regex_match = regex.match


schema BackendLBPolicy:
    r"""
    BackendLBPolicy provides a way to define load balancing rules
    for a backend.

    Attributes
    ----------
    apiVersion : str, default is "gateway.networking.k8s.io/v1alpha2", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "BackendLBPolicy", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : GatewayNetworkingK8sIoV1alpha2BackendLBPolicySpec, default is Undefined, required
        spec
    status : GatewayNetworkingK8sIoV1alpha2BackendLBPolicyStatus, default is Undefined, optional
        status
    """


    apiVersion: "gateway.networking.k8s.io/v1alpha2" = "gateway.networking.k8s.io/v1alpha2"

    kind: "BackendLBPolicy" = "BackendLBPolicy"

    metadata?: v1.ObjectMeta

    spec: GatewayNetworkingK8sIoV1alpha2BackendLBPolicySpec

    status?: GatewayNetworkingK8sIoV1alpha2BackendLBPolicyStatus


schema GatewayNetworkingK8sIoV1alpha2BackendLBPolicySpec:
    r"""
    Spec defines the desired state of BackendLBPolicy.

    Attributes
    ----------
    targetRefs : [GatewayNetworkingK8sIoV1alpha2BackendLBPolicySpecTargetRefsItems0], default is Undefined, required
        TargetRef identifies an API object to apply policy to.
        Currently, Backends (i.e. Service, ServiceImport, or any
        implementation-specific backendRef) are the only valid API
        target references.
    sessionPersistence : GatewayNetworkingK8sIoV1alpha2BackendLBPolicySpecSessionPersistence, default is Undefined, optional
        session persistence
    """


    targetRefs: [GatewayNetworkingK8sIoV1alpha2BackendLBPolicySpecTargetRefsItems0]

    sessionPersistence?: GatewayNetworkingK8sIoV1alpha2BackendLBPolicySpecSessionPersistence


    check:
        len(targetRefs) >= 1
        len(targetRefs) <= 16


schema GatewayNetworkingK8sIoV1alpha2BackendLBPolicySpecSessionPersistence:
    r"""
    SessionPersistence defines and configures session persistence
    for the backend.


    Support: Extended

    Attributes
    ----------
    absoluteTimeout : str, default is Undefined, optional
        AbsoluteTimeout defines the absolute timeout of the persistent
        session. Once the AbsoluteTimeout duration has elapsed, the
        session becomes invalid.


        Support: Extended
    idleTimeout : str, default is Undefined, optional
        IdleTimeout defines the idle timeout of the persistent session.
        Once the session has been idle for more than the specified
        IdleTimeout duration, the session becomes invalid.


        Support: Extended
    sessionName : str, default is Undefined, optional
        SessionName defines the name of the persistent session token
        which may be reflected in the cookie or the header. Users
        should avoid reusing session names to prevent unintended
        consequences, such as rejection or unpredictable behavior.


        Support: Implementation-specific
    $type : str, default is "Cookie", optional
        Type defines the type of session persistence such as through
        the use a header or cookie. Defaults to cookie based session
        persistence.


        Support: Core for "Cookie" type


        Support: Extended for "Header" type
    cookieConfig : GatewayNetworkingK8sIoV1alpha2BackendLBPolicySpecSessionPersistenceCookieConfig, default is Undefined, optional
        cookie config
    """


    absoluteTimeout?: str

    idleTimeout?: str

    sessionName?: str

    $type?: "Cookie" | "Header" = "Cookie"

    cookieConfig?: GatewayNetworkingK8sIoV1alpha2BackendLBPolicySpecSessionPersistenceCookieConfig


    check:
        _regex_match(str(absoluteTimeout), r"^([0-9]{1,5}(h|m|s|ms)){1,4}$") if absoluteTimeout
        _regex_match(str(idleTimeout), r"^([0-9]{1,5}(h|m|s|ms)){1,4}$") if idleTimeout
        len(sessionName) <= 128 if sessionName


schema GatewayNetworkingK8sIoV1alpha2BackendLBPolicySpecSessionPersistenceCookieConfig:
    r"""
    CookieConfig provides configuration settings that are specific
    to cookie-based session persistence.


    Support: Core

    Attributes
    ----------
    lifetimeType : str, default is "Session", optional
        LifetimeType specifies whether the cookie has a permanent or
        session-based lifetime. A permanent cookie persists until its
        specified expiry time, defined by the Expires or Max-Age cookie
        attributes, while a session cookie is deleted when the current
        session ends.


        When set to "Permanent", AbsoluteTimeout indicates the
        cookie's lifetime via the Expires or Max-Age cookie attributes
        and is required.


        When set to "Session", AbsoluteTimeout indicates the
        absolute lifetime of the cookie tracked by the gateway and
        is optional.


        Support: Core for "Session" type


        Support: Extended for "Permanent" type
    """


    lifetimeType?: "Permanent" | "Session" = "Session"


schema GatewayNetworkingK8sIoV1alpha2BackendLBPolicySpecTargetRefsItems0:
    r"""
    LocalPolicyTargetReference identifies an API object to apply a direct or
    inherited policy to. This should be used as part of Policy resources
    that can target Gateway API resources. For more information on how this
    policy attachment model works, and a sample Policy resource, refer to
    the policy attachment documentation for Gateway API.

    Attributes
    ----------
    group : str, default is Undefined, required
        Group is the group of the target resource.
    kind : str, default is Undefined, required
        Kind is kind of the target resource.
    name : str, default is Undefined, required
        Name is the name of the target resource.
    """


    group: str

    kind: str

    name: str


    check:
        len(group) <= 253
        _regex_match(str(group), r"^$|^[a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*$")
        len(kind) <= 63
        len(kind) >= 1
        _regex_match(str(kind), r"^[a-zA-Z]([-a-zA-Z0-9]*[a-zA-Z0-9])?$")
        len(name) <= 253
        len(name) >= 1


schema GatewayNetworkingK8sIoV1alpha2BackendLBPolicyStatus:
    r"""
    Status defines the current state of BackendLBPolicy.

    Attributes
    ----------
    ancestors : [GatewayNetworkingK8sIoV1alpha2BackendLBPolicyStatusAncestorsItems0], default is Undefined, required
        Ancestors is a list of ancestor resources (usually Gateways) that are
        associated with the policy, and the status of the policy with respect to
        each ancestor. When this policy attaches to a parent, the controller that
        manages the parent and the ancestors MUST add an entry to this list when
        the controller first sees the policy and SHOULD update the entry as
        appropriate when the relevant ancestor is modified.


        Note that choosing the relevant ancestor is left to the Policy designers;
        an important part of Policy design is designing the right object level at
        which to namespace this status.


        Note also that implementations MUST ONLY populate ancestor status for
        the Ancestor resources they are responsible for. Implementations MUST
        use the ControllerName field to uniquely identify the entries in this list
        that they are responsible for.


        Note that to achieve this, the list of PolicyAncestorStatus structs
        MUST be treated as a map with a composite key, made up of the AncestorRef
        and ControllerName fields combined.


        A maximum of 16 ancestors will be represented in this list. An empty list
        means the Policy is not relevant for any ancestors.


        If this slice is full, implementations MUST NOT add further entries.
        Instead they MUST consider the policy unimplementable and signal that
        on any related resources such as the ancestor that would be referenced
        here. For example, if this list was full on BackendTLSPolicy, no
        additional Gateways would be able to reference the Service targeted by
        the BackendTLSPolicy.
    """


    ancestors: [GatewayNetworkingK8sIoV1alpha2BackendLBPolicyStatusAncestorsItems0]


    check:
        len(ancestors) <= 16


schema GatewayNetworkingK8sIoV1alpha2BackendLBPolicyStatusAncestorsItems0:
    r"""
    PolicyAncestorStatus describes the status of a route with respect to an
    associated Ancestor.


    Ancestors refer to objects that are either the Target of a policy or above it
    in terms of object hierarchy. For example, if a policy targets a Service, the
    Policy's Ancestors are, in order, the Service, the HTTPRoute, the Gateway, and
    the GatewayClass. Almost always, in this hierarchy, the Gateway will be the most
    useful object to place Policy status on, so we recommend that implementations
    SHOULD use Gateway as the PolicyAncestorStatus object unless the designers
    have a _very_ good reason otherwise.


    In the context of policy attachment, the Ancestor is used to distinguish which
    resource results in a distinct application of this policy. For example, if a policy
    targets a Service, it may have a distinct result per attached Gateway.


    Policies targeting the same resource may have different effects depending on the
    ancestors of those resources. For example, different Gateways targeting the same
    Service may have different capabilities, especially if they have different underlying
    implementations.


    For example, in BackendTLSPolicy, the Policy attaches to a Service that is
    used as a backend in a HTTPRoute that is itself attached to a Gateway.
    In this case, the relevant object for status is the Gateway, and that is the
    ancestor object referred to in this status.


    Note that a parent is also an ancestor, so for objects where the parent is the
    relevant object for status, this struct SHOULD still be used.


    This struct is intended to be used in a slice that's effectively a map,
    with a composite key made up of the AncestorRef and the ControllerName.

    Attributes
    ----------
    ancestorRef : GatewayNetworkingK8sIoV1alpha2BackendLBPolicyStatusAncestorsItems0AncestorRef, default is Undefined, required
        ancestor ref
    conditions : [GatewayNetworkingK8sIoV1alpha2BackendLBPolicyStatusAncestorsItems0ConditionsItems0], default is Undefined, optional
        Conditions describes the status of the Policy with respect to the given Ancestor.
    controllerName : str, default is Undefined, required
        ControllerName is a domain/path string that indicates the name of the
        controller that wrote this status. This corresponds with the
        controllerName field on GatewayClass.


        Example: "example.net/gateway-controller".


        The format of this field is DOMAIN "/" PATH, where DOMAIN and PATH are
        valid Kubernetes names
        (https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names).


        Controllers MUST populate this field when writing status. Controllers should ensure that
        entries to status populated with their ControllerName are cleaned up when they are no
        longer necessary.
    """


    ancestorRef: GatewayNetworkingK8sIoV1alpha2BackendLBPolicyStatusAncestorsItems0AncestorRef

    conditions?: [GatewayNetworkingK8sIoV1alpha2BackendLBPolicyStatusAncestorsItems0ConditionsItems0]

    controllerName: str


    check:
        len(conditions) >= 1 if conditions
        len(conditions) <= 8 if conditions
        len(controllerName) <= 253
        len(controllerName) >= 1
        _regex_match(str(controllerName), r"^[a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*\/[A-Za-z0-9\/\-._~%!$&'()*+,;=:]+$")


schema GatewayNetworkingK8sIoV1alpha2BackendLBPolicyStatusAncestorsItems0AncestorRef:
    r"""
    AncestorRef corresponds with a ParentRef in the spec that this
    PolicyAncestorStatus struct describes the status of.

    Attributes
    ----------
    group : str, default is "gateway.networking.k8s.io", optional
        Group is the group of the referent.
        When unspecified, "gateway.networking.k8s.io" is inferred.
        To set the core API group (such as for a "Service" kind referent),
        Group must be explicitly set to "" (empty string).


        Support: Core
    kind : str, default is "Gateway", optional
        Kind is kind of the referent.


        There are two kinds of parent resources with "Core" support:


        * Gateway (Gateway conformance profile)
        * Service (Mesh conformance profile, ClusterIP Services only)


        Support for other resources is Implementation-Specific.
    name : str, default is Undefined, required
        Name is the name of the referent.


        Support: Core
    namespace : str, default is Undefined, optional
        Namespace is the namespace of the referent. When unspecified, this refers
        to the local namespace of the Route.


        Note that there are specific rules for ParentRefs which cross namespace
        boundaries. Cross-namespace references are only valid if they are explicitly
        allowed by something in the namespace they are referring to. For example:
        Gateway has the AllowedRoutes field, and ReferenceGrant provides a
        generic way to enable any other kind of cross-namespace reference.



        ParentRefs from a Route to a Service in the same namespace are "producer"
        routes, which apply default routing rules to inbound connections from
        any namespace to the Service.


        ParentRefs from a Route to a Service in a different namespace are
        "consumer" routes, and these routing rules are only applied to outbound
        connections originating from the same namespace as the Route, for which
        the intended destination of the connections are a Service targeted as a
        ParentRef of the Route.



        Support: Core
    port : int, default is Undefined, optional
        Port is the network port this Route targets. It can be interpreted
        differently based on the type of parent resource.


        When the parent resource is a Gateway, this targets all listeners
        listening on the specified port that also support this kind of Route(and
        select this Route). It's not recommended to set `Port` unless the
        networking behaviors specified in a Route must apply to a specific port
        as opposed to a listener(s) whose port(s) may be changed. When both Port
        and SectionName are specified, the name and port of the selected listener
        must match both specified values.



        When the parent resource is a Service, this targets a specific port in the
        Service spec. When both Port (experimental) and SectionName are specified,
        the name and port of the selected port must match both specified values.



        Implementations MAY choose to support other parent resources.
        Implementations supporting other types of parent resources MUST clearly
        document how/if Port is interpreted.


        For the purpose of status, an attachment is considered successful as
        long as the parent resource accepts it partially. For example, Gateway
        listeners can restrict which Routes can attach to them by Route kind,
        namespace, or hostname. If 1 of 2 Gateway listeners accept attachment
        from the referencing Route, the Route MUST be considered successfully
        attached. If no Gateway listeners accept attachment from this Route,
        the Route MUST be considered detached from the Gateway.


        Support: Extended
    sectionName : str, default is Undefined, optional
        SectionName is the name of a section within the target resource. In the
        following resources, SectionName is interpreted as the following:


        * Gateway: Listener name. When both Port (experimental) and SectionName
        are specified, the name and port of the selected listener must match
        both specified values.
        * Service: Port name. When both Port (experimental) and SectionName
        are specified, the name and port of the selected listener must match
        both specified values.


        Implementations MAY choose to support attaching Routes to other resources.
        If that is the case, they MUST clearly document how SectionName is
        interpreted.


        When unspecified (empty string), this will reference the entire resource.
        For the purpose of status, an attachment is considered successful if at
        least one section in the parent resource accepts it. For example, Gateway
        listeners can restrict which Routes can attach to them by Route kind,
        namespace, or hostname. If 1 of 2 Gateway listeners accept attachment from
        the referencing Route, the Route MUST be considered successfully
        attached. If no Gateway listeners accept attachment from this Route, the
        Route MUST be considered detached from the Gateway.


        Support: Core
    """


    group?: str = "gateway.networking.k8s.io"

    kind?: str = "Gateway"

    name: str

    namespace?: str

    port?: int

    sectionName?: str


    check:
        len(group) <= 253 if group
        _regex_match(str(group), r"^$|^[a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*$") if group
        len(kind) <= 63 if kind
        len(kind) >= 1 if kind
        _regex_match(str(kind), r"^[a-zA-Z]([-a-zA-Z0-9]*[a-zA-Z0-9])?$") if kind
        len(name) <= 253
        len(name) >= 1
        len(namespace) <= 63 if namespace
        len(namespace) >= 1 if namespace
        _regex_match(str(namespace), r"^[a-z0-9]([-a-z0-9]*[a-z0-9])?$") if namespace
        port <= 65535 if port not in [None, Undefined]
        port >= 1 if port not in [None, Undefined]
        len(sectionName) <= 253 if sectionName
        len(sectionName) >= 1 if sectionName
        _regex_match(str(sectionName), r"^[a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*$") if sectionName


schema GatewayNetworkingK8sIoV1alpha2BackendLBPolicyStatusAncestorsItems0ConditionsItems0:
    r"""
    Condition contains details for one aspect of the current state of this API Resource.
    ---
    This struct is intended for direct use as an array at the field path .status.conditions.  For example,


    	type FooStatus struct{
    	    // Represents the observations of a foo's current state.
    	    // Known .status.conditions.type are: "Available", "Progressing", and "Degraded"
    	    // +patchMergeKey=type
    	    // +patchStrategy=merge
    	    // +listType=map
    	    // +listMapKey=type
    	    Conditions []metav1.Condition `json:"conditions,omitempty" patchStrategy:"merge" patchMergeKey:"type" protobuf:"bytes,1,rep,name=conditions"`


    	    // other fields
    	}

    Attributes
    ----------
    lastTransitionTime : str, default is Undefined, required
        lastTransitionTime is the last time the condition transitioned from one status to another.
        This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
    message : str, default is Undefined, required
        message is a human readable message indicating details about the transition.
        This may be an empty string.
    observedGeneration : int, default is Undefined, optional
        observedGeneration represents the .metadata.generation that the condition was set based upon.
        For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
        with respect to the current state of the instance.
    reason : str, default is Undefined, required
        reason contains a programmatic identifier indicating the reason for the condition's last transition.
        Producers of specific condition types may define expected values and meanings for this field,
        and whether the values are considered a guaranteed API.
        The value should be a CamelCase string.
        This field may not be empty.
    status : str, default is Undefined, required
        status of the condition, one of True, False, Unknown.
    $type : str, default is Undefined, required
        type of condition in CamelCase or in foo.example.com/CamelCase.
        ---
        Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be
        useful (see .node.status.conditions), the ability to deconflict is important.
        The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
    """


    lastTransitionTime: str

    message: str

    observedGeneration?: int

    reason: str

    status: "True" | "False" | "Unknown"

    $type: str


    check:
        len(message) <= 32768
        observedGeneration >= 0 if observedGeneration not in [None, Undefined]
        len(reason) <= 1024
        len(reason) >= 1
        _regex_match(str(reason), r"^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$")
        len($type) <= 316
        _regex_match(str($type), r"^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$")


