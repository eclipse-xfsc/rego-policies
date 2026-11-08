package example.approvePolicy

_ = {
    "approved": true,
    "selections": [
        {
            "queryId": query.id,
            "credentialId": credential_id,
        } |
        some query in input.dcqlQuery.credentials
        some credential_id in input.credentials
    ],
}
