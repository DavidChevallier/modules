"""
This is the config_map_projection module in k8s.api.core.v1 package.
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""


schema ConfigMapProjection:
    r"""
    Adapts a ConfigMap into a projected volume.

    The contents of the target ConfigMap's Data field will be presented in a projected volume as files using the keys in the Data field as the file names, unless the items element is populated with specific mappings of keys to paths. Note that this is identical to a configmap volume source without the default mode.

    Attributes
    ----------
    items : [KeyToPath], default is Undefined, optional
        items if unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
    name : str, default is Undefined, optional
        Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    optional : bool, default is Undefined, optional
        optional specify whether the ConfigMap or its keys must be defined
    """


    items?: [KeyToPath]

    name?: str

    optional?: bool


