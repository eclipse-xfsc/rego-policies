package example.approvePolicy

_ = {
    "approved": true,
    "selections": [
        {
            "queryId": query.id,
            "credentialId": credential.credentialId,
            "disclosures": [
                claim.path[0] |
                claim := query.claims[_]
            ]
        } |
        credential := input.credentials[_]
        query := input.dcqlQuery.credentials[_]
        credential.queryId == query.id
    ]
}
