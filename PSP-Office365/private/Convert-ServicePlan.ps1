function Convert-ServicePlan {
    [CmdletBinding()]
    param (
        [Parameter()]
        [string]
        $ServicePlanID
    )
    # https://docs.microsoft.com/en-us/azure/active-directory/users-groups-roles/licensing-service-plan-reference
    switch ($ServicePlanID) {
        03acaee3-9492-4f40-aed4-bcb6b32981b6 { "MICROSOFT SOCIAL ENGAGEMENT - SERVICE DISCONTINUATION" }
        07699545-9485-468e-95b6-2fca3738be01 { "Flow for Office 365" }
        0898bdbb-73b0-471a-81e5-20f1fe4dd66e { "Microsoft Kaizala" }
        094e7854-93fc-4d55-b2c0-3ab5369ebdc1 { "OFFICE 365 BUSINESS" }
        0b03f40b-c404-40c3-8651-2aceb74365fa { "POWERAPPS FOR DYNAMICS 365" }
        0f9b09cb-62d1-4ff4-9129-43f4996f83f4 { "FLOW FOR OFFICE 365" }
        0feaeb32-d00e-4d66-bd5a-43b5b83db82c { "SKYPE FOR BUSINESS ONLINE (PLAN 2)" }
        1126bef5-da20-4f07-b45e-ad25d2581aa8 { "EXCHANGE_S_ESSENTIALS" }
        113feb6c-3fe4-4440-bddc-54d774bf0318 { "Exchange Foundation" }
        1259157c-8581-4875-bca7-2ffb18c51bda { "PROJECT ONLINE ESSENTIALS" }
        13696edf-5a08-49f6-8134-03083ed8ba30 { "ONEDRIVESTANDARD" }
        14ab5db5-e6c4-4b20-b4bc-13e36fd2227f { "AZURE ADVANCED THREAT PROTECTION" }
        159f4cd6-e380-449f-a816-af1a9ef76344 { "MICROSOFT FORMS (PLAN E1)" }
        176a09a6-7ec5-4039-ac02-b2791c6ba793 { "EXCHANGE ONLINE ARCHIVING FOR EXCHANGE ONLINE" }
        199a5c09-e0ca-4e37-8f7c-b05d533e1ea2 { "MICROSOFTBOOKINGS" }
        1ec58c70-f69c-486a-8109-4b87ce86e449 { "FLOW FOR DYNAMICS 365" }
        2125cfd7-2110-4567-83c4-c1cd5275163d { "MICROSOFT POWER BI REPORTING AND ANALYTICS PLAN 1" }
        21b439ba-a0ca-424f-a6cc-52f954a5b111 { "WINDOWS 10 ENTERPRISE" }
        27216c54-caf8-4d0d-97e2-517afb5c08f6 { "SKYPE FOR BUSINESS ONLINE (PLAN 3)" }
        2789c901-c14e-48ab-a76a-be334d9d793a { "MICROSOFT FORMS (PLAN E3)" }
        2bdbaf8f-738f-4ac7-9234-3c3ee2ce7d0f { "VISIOONLINE" }
        2da8e897-7791-486b-b08f-cc63c8129df7 { "DYNAMICS 365 FOR SALES" }
        2e2ddb96-6af9-4b1d-a3f0-d6ecfd22edb2 { "Microsoft Cloud App Security" }
        300b8114-8555-4313-b861-0c115d820f50 { "DYNAMICS 365 FOR TALENT: ONBOARD" }
        33c4f319-9bdd-48d6-9c4d-410b750a4a5a { "Insights by MyAnalytics" }
        3413916e-ee66-4071-be30-6f94d4adfeda { "MICROSOFT DYNAMICS MARKETING SALES COLLABORATION - ELIGIBILITY CRITERIA APPLY" }
        34c0d7a0-a70f-4668-9238-47f9fc208882 { "EXCHANGE_ANALYTICS" }
        36b29273-c6d0-477a-aca6-6fbe24f538e3 { "Whiteboard (Firstline)" }
        3e26ee1f-8a5f-4d52-aee2-b81ce45c8f40 { "Audio Conferencing" }
        3e58e97c-9abe-ebab-cd5f-d543d1529634 { "MICROSOFT SOCIAL ENGAGEMENT PROFESSIONAL - ELIGIBILITY CRITERIA APPLY" }
        3fb82609-8c27-4f7b-bd51-30634711ee67 { "BPOS_S_TODO_3" }
        3ffba0d2-38e5-4d5e-8ec0-98f2b05c09d9 { "MICROSOFT STREAM FOR O365 K SKU" }
        41781fb2-bc02-4b7c-bd55-b576c07bb09d { "AZURE ACTIVE DIRECTORY PREMIUM P1" }
        41bf139a-4e60-409f-9346-a1361efc6dfb { "YAMMER_MIDSIZE" }
        43de0ff5-c92c-492b-9116-175376d08c38 { "OFFICESUBSCRIPTION" }
        4828c8ec-dc2e-4779-b502-87ac9ce28ab7 { "PHONE SYSTEM" }
        4a51bca5-1eff-43f5-878c-177680f191af { "Whiteboard (Plan 3)" }
        4a82b400-a79f-41a4-b4e2-e94f5787b113 { "EXCHANGE ONLINE KIOSK" }
        4de31727-a228-4ec3-a5bf-8e45b5ca48cc { "OFFICE 365 ADVANCED EDISCOVERY" }
        4ed3ff63-69d7-4fb7-b984-5aec7f605ca8 { "DOMESTIC CALLING PLAN" }
        5136a095-5cf0-4aff-bec3-e84448b38ea5 { "Information Protection for Office 365 - Standard" }
        527f7cdd-0e86-4c47-b879-f5fd357a3ac6 { "OFFICE ONLINE FOR DEVELOPER" }
        52e619e2-2730-439a-b0d3-d09ab7e8b705 { "POWERAPPS FOR DYNAMICS 365" }
        54a152dc-90de-4996-93d2-bc47e670fc06 { "DOMESTIC CALLING PLAN" }
        5689bec4-755d-4753-8b61-40975025187c { "AZURE INFORMATION PROTECTION PREMIUM P2" }
        57ff2da0-773e-42df-b2af-ffb7a2317929 { "TEAMS1" }
        5a10155d-f5c1-411a-a8ec-e99aae125390 { "DOMESTIC AND INTERNATIONAL CALLING PLAN" }
        5bfe124c-bbdc-4494-8835-f1297d457d79 { "OUTLOOK CUSTOMER MANAGER" }
        5dbe027f-2339-4123-9542-606e4d348a72 { "SHAREPOINT ONLINE (PLAN 2)" }
        5e62787c-c316-451f-b873-1d05acd4d12c { "BPOS_S_TODO_1" }
        617b097b-4b93-4ede-83de-5f075bb5fb2f { "Premium Encryption in Office 365" }
        643d201a-9884-45be-962a-06ba97062e5e { "DYNAMICS 365 FOR TALENT - ATTRACT EXPERIENCE TEAM MEMBER" }
        65a1ebf4-6732-4f00-9dcb-3d115ffdeecd { "DYNAMICS 365 FOR TALENT" }
        663a804f-1c30-4ff0-9915-9db84f0d1cea { "VISIO_CLIENT_SUBSCRIPTION" }
        6a54b05e-4fab-40e7-9828-428db3b336fa { "DYNAMICS 365 FOR TEAM MEMBERS" }
        6b5b6a67-fc72-4a1f-a2b5-beecf05de761 { "SHAREPOINTENTERPRISE_MIDMARKET" }
        6c57d4b6-3b23-47a5-9bc9-69f17b4947b3 { "Azure Information Protection Premium P1" }
        6c6042f5-6f01-4d67-b8c1-eb99d36eed3e { "MICROSOFT STREAM FOR O365 E5 SKU" }
        70710b6b-3ab4-4a38-9f6d-9f169461650a { "SKYPE FOR BUSINESS ONLINE (PLAN P1)" }
        70d33638-9c74-4d01-bfd3-562de28bd4ba { "Power BI Pro" }
        73b2a583-6a59-42e3-8e83-54db46bc3278 { "Microsoft Kaizala Pro Plan 1" }
        743dd19e-1ce3-4c62-a3ad-49ba8f63a2f6 { "MICROSOFT STREAM FOR O365 E1 SKU" }
        7547a3fe-08ee-4ccb-b430-5077c5041653 { "YAMMER_ENTERPRISE" }
        76846ad7-7776-4c40-a281-a386362dd1b9 { "FLOW FOR OFFICE 365" }
        7e6d7d78-73de-46ba-83b1-6d25117334ba { "FLOW FOR DYNAMICS 365" }
        80873e7a-cd2a-4e67-b061-1b5381a676a5 { "To-Do (Firstline)" }
        871d91ec-ec1a-452b-a83f-bd76c7d770ef { "Microsoft Defender Advanced Threat Protection" }
        874fc546-6efe-4d22-90b8-5c4e7aa59f4b { "POWERAPPS FOR DYNAMICS 365" }
        882e1d05-acd1-4ccb-8708-6ee03664b117 { "Mobile Device Management for Office 365" }
        8a256a2b-b617-496d-b51b-e76466e88db0 { "Microsoft Azure Multi-Factor Authentication" }
        8c098270-9dd4-4350-9b30-ba4703f3b36b { "OFFICE 365 CLOUD APP SECURITY" }
        8c7d2df8-86f0-4902-b2ed-a0458298f3b3 { "MICROSOFT STAFFHUB" }
        8ca59559-e2ca-470b-b7dd-afd8c0dee963 { "OFFICE_PRO_PLUS_SUBSCRIPTION_SMBIZ" }
        8e0c0a52-6a6c-4d40-8370-dd62790dcd70 { "OFFICE 365 ADVANCED THREAT PROTECTION (PLAN 2)" }
        8e229017-d77b-43d5-9305-903395523b99 { "WINDOWS 10 BUSINESS" }
        8e9ff0ff-aa7a-4b20-83c1-2f636b600ac2 { "INTUNE_SMBIZ" }
        902b47e5-dcb2-4fdc-858b-c63a90a2bdb9 { "SharePoint Online Kiosk" }
        90927877-dcff-4af6-b346-2332c0b15bb7 { "EXCHANGE ONLINE POP" }
        920656a2-7dd8-4c83-97b6-a356414dbd36 { "DYNAMICS 365 FOR FINANCIALS" }
        92f7a6f3-b89b-4bbd-8c30-809e6da5ad1c { "POWERAPPS FOR OFFICE 365" }
        932ad362-64a8-4783-9106-97849a1a30b9 { "Cloud App Security Discovery" }
        94065c59-bc8e-4e8b-89e5-5138d471eaff { "Microsoft Search" }
        95d2cd7b-1007-484b-8595-5e97e63fe189 { "DYNAMICS_365_FOR_OPERATIONS" }
        99340b49-fb81-4b1e-976b-8f2ae8e9394f { "DYNAMICS 365 FOR CUSTOMER SERVICE" }
        9953b155-8aef-4c56-92f3-72b0487fce41 { "Microsoft Teams for GCCHigh (AR)" }
        9aaf7827-d63c-4b61-89c3-182f06f82e5c { "EXCHANGE ONLINE (PLAN 1)" }
        9c0dab89-a30c-4117-86e7-97bda240acd2 { "POWERAPPS FOR OFFICE 365" }
        9e700747-8b1d-45e5-ab8d-ef187ceec156 { "Microsoft Stream for O365 E3 SKU" }
        9f431833-0334-42de-a7dc-70aa40db46db { "Customer Lockbox" }
        a1f3d0a8-84c0-4ae0-bae4-685917b8ab48 { "SHAREPOINTLITE" }
        a23b959c-7ce8-4e57-9140-b90eb88a9e97 { "SWAY" }
        a361d6e2-509e-4e25-a8ad-950060064ef4 { "SHAREPOINT_S_DEVELOPER" }
        a9e39199-8369-444b-89c1-5fe65ec45665 { "DYNAMICS 365 FOR RETAIL" }
        afc06cb0-b4f4-4473-8286-d644f70d8faf { "SKYPE FOR BUSINESS ONLINE (PLAN 1)" }
        afcafa6a-d966-4462-918c-ec0b4e0fe642 { "ONEDRIVEENTERPRISE" }
        b1188c4c-1b36-4018-b48b-ee07604f6feb { "Office 365 Privileged Access Management" }
        b2669e95-76ef-4e7e-a367-002f60a39f3e { "SKYPE FOR BUSINESS ONLINE (PLAN 2) FOR MIDSIZE" }
        b650d915-9886-424b-a08d-633cede56f57 { "FLOW FOR DYNAMICS 365" }
        b737dad2-2f6c-4c65-90e3-ca563267e8b9 { "MICROSOFT PLANNER" }
        bd91b1a4-9f94-4ecf-b45b-3a65e5c8128a { "FLOW FOR OFFICE 365 K1" }
        bea4c11e-220a-4e6d-8eb8-8ea15d019f90 { "MICROSOFT AZURE ACTIVE DIRECTORY RIGHTS" }
        bf36ca64-95c6-4918-9275-eb9f4ce2c04f { "MICROSOFT DYNAMICS CRM ONLINE BASIC" }
        c0454a3d-32b5-4740-b090-78c32f48f0ad { "DYNAMICS 365 FOR RETAIL TEAM MEMBERS" }
        c1ec4a95-1f05-45b3-a911-aa3fa01094f5 { "MICROSOFT INTUNE" }
        c4801e8a-cb58-4c35-aca6-f2dcc106f287 { "Information Barriers" }
        c4da7f8a-5ee2-4c99-a7e1-87d2df57f6fe { "MICROSOFT AZURE ACTIVE DIRECTORY BASIC" }
        c63d4d19-e8cb-460e-b37c-4d6c34603745 { "OFFICEMOBILE_SUBSCRIPTION" }
        c68f8d98-5534-41c8-bf36-22fa496fa792 { "POWERAPPS FOR OFFICE 365" }
        c7699d2e-19aa-44de-8edf-1736da088ca1 { "SHAREPOINTSTANDARD" }
        c87f142c-d1e9-4363-8630-aaea9c4d9ae5 { "BPOS_S_TODO_2" }
        d1142cfd-872e-4e77-b6ff-d98ec5a51f66 { "COMMON DATA SERVICE" }
        d42bdbd6-c335-4231-ab3d-c8f348d5aff5 { "EXCHANGE ONLINE (P1)" }
        d5156635-0704-4f66-8803-93258f8b2678 { "DYNAMICS 365 FOR TALENT TEAM MEMBERS" }
        d56f3deb-50d8-465a-bedb-f079817ccac1 { "DYNAMICS 365 CUSTOMER ENGAGEMENT PLAN" }
        d736def0-1fde-43f0-a5be-e3f8b2de6e41 { "MS IMAGINE ACADEMY" }
        da040e0a-b393-4bea-bb76-928b3fa1cf5a { "EXCHANGE ONLINE ARCHIVING FOR EXCHANGE SERVER" }
        da792a53-cbc0-4184-a10d-e544dd34b3c1 { "ONEDRIVE_BASIC" }
        de377cbc-0019-4ec2-b77c-3f223947e102 { "AZURE ACTIVE DIRECTORY" }
        e0287f9f-e222-4f98-9a83-f379e249159a { "PowerApps for Office 365 K1" }
        e041597c-9c7f-4ed9-99b0-2663301576f7 { "Windows 10 Enterprise E3 (local only)" }
        e212cbc7-0961-4c40-9825-01117710dcb1 { "MICROSOFT FORMS (PLAN E5)" }
        e7c91390-7625-45be-94e0-e16907e03118 { "Windows 10 Enterprise (New)" }
        e95bec33-7c88-4a70-8e19-b10bd9d0c014 { "OFFICE ONLINE" }
        eec0eb4f-6444-4f95-aba0-50c24d67f998 { "AZURE ACTIVE DIRECTORY PREMIUM P2" }
        efb0351d-3b08-4503-993d-383af8de41e3 { "Information Protection for Office 365 - Premium" }
        efb87545-963c-4e0d-99df-69c6916d9eb0 { "Exchange Online (Plan 2)" }
        f07046bd-2a3c-4b96-b0be-dea79d7cbfb8 { "MICROSOFT FORMS (PLAN K)" }
        f20fedf3-f3c3-43c3-8267-2bfdd51c0939 { "Office 365 Advanced Threat Protection (Plan 1)" }
        f2f49eef-4b3f-4853-809a-a055c6103fe0 { "DYNAMICS 365 FOR TALENT - ONBOARD EXPERIENCE" }
        f5aa7b45-8a36-4cd1-bc37-5d06dea98645 { "DYNAMICS_365_FOR_OPERATIONS_TEAM_MEMBERS" }
        f815ac79-c5dd-4bcc-9b78-d97f7b817d0d { "Dynamics_365_Hiring_Free_PLAN" }
        f9646fb2-e3b2-4309-95de-dc4833737456 { "MICROSOFT DYNAMICS CRM ONLINE PROFESSIONAL" }
        fafd7243-e5c1-4a3a-9e40-495efcb1d3c3 { "PROJECT ONLINE DESKTOP CLIENT" }
        fc0a60aa-feee-4746-a0e3-aecfe81a38dd { "MICROSOFT POWER BI INFORMATION SERVICES PLAN 1" }
        fc52cc4b-ed7d-472d-bbe7-b081c23ecc56 { "EXCHANGE ONLINE PLAN 1" }
        fd500458-c24c-478e-856c-a6067a8376cd { "Microsoft Teams for DOD (AR)" }
        fe71d6c3-a2ea-4499-9778-da042bf08063 { "SHAREPOINT_PROJECT" }
        d5368ca3-357e-4acb-9c21-8495fb025d1f { "Microsoft PowerApps Plan 2 Trial" }
        d20bfa21-e9ae-43fc-93c2-20783f0840c3 { "Microsoft PowerApps Plan 2 Trial" }
        50e68c76-46c6-4674-81f9-75456511b170 { "Microsoft Flow Free" }
        17ab22cd-a0b3-4536-910a-cb6eb12696c0 { "Microsoft Flow Free" }
        31cf2cfc-6b0d-4adc-a336-88b724ed8122 { "RMS Online" }
        2049e525-b859-401b-b2a0-e0a31c4b1fe4 { "AzureAnalysis" }
        94a54592-cd8b-425e-87c6-97868b000b91 { "Whiteboard (Plan 2)" }
        aebd3021-9f8f-4bf8-bbe3-0ed2f4f047a1 { "Microsoft Kaizala (Plan 3)" }
        a420f25f-a7b3-4ff5-a9d0-5d58f73b537d { "UniversalStoreService" }
        acffdce6-c30f-4dc2-81c0-372e33c515ec { "MicrosoftStream" }
        818523f5-016b-4355-9be8-ed6944946ea7 { "Project Online Professional" }
        fa200448-008c-4acb-abd4-ea106ed2199d { "Flow for Project" }
        50554c47-71d9-49fd-bc54-42a2765c555c { "Project for Dynamics 365" }
    }
}