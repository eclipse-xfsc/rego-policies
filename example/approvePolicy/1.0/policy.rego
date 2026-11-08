package example.approvePolicy

_ = {
    "approved": true,
    "selections": [
        {
            "queryId": query.id,
            "credentialId": credential.id
        } |
        query := input.dcqlQuery.credentials[_]
        credential := input.credentials[_]
    ]
}
