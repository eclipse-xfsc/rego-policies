package example.approvePolicy

disclosures_for(query) = names {
    names := [name |
        claim := query.claims[_]
        name := claim.path[0]
    ]
}

_ = {
    "approved": true,
    "selections": [
        {
            "queryId": query.id,
            "credentialId": credential.credentialId,
            "disclosures": disclosures_for(query)
        } |
        credential := input.credentials[_]
        query := input.dcqlQuery.credentials[_]
        credential.queryId == query.id
    ]
}
