package example.approvePolicy

_ = {
    "approved": true,
    "selections": [
        {
            "queryId": query.id,
            "credentialId": credential_id
        } |
        query := input.dcqlQuery.credentials[_]
        credential_id := input.credentials[_]
    ]
}
