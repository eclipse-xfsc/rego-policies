package example.approvePolicy

_ = {
    "approved": true,
    "selections": [
        {
            "queryId": query.id,
            "credentialId": credential.credentialId
        } |
        credential := input.credentials[_]
        query := input.dcqlQuery.credentials[_]
        credential.queryId == query.id
    ]
}
