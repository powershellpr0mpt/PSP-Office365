<#
.SYNOPSIS
Get all Office 365 Admin Roles

.DESCRIPTION
Get all Office 365 Admin Roles

.EXAMPLE
Get-Office365AdminRole

.NOTES
General notes
#>

function Get-Office365AdminRole {
    [CmdletBinding()]
    param()


    try {
        $Roles = Get-AzureADDirectoryRole -ErrorAction Stop | Sort-Object DisplayName
        #$Roles

        ## Get Assigned Office 365 Roles
        $RoleInfo = foreach ($Role in $Roles) {
            $Members = Get-AzureADDirectoryRoleMember -ObjectId $Role.ObjectID
            foreach ($Member in $Members) {
                [PSCustomobject]@{
                    PSTypeName        = 'PSP-Office365-AdminRoles'
                    RoleName          = $Role.DisplayName
                    MemberDisplayName = $Member.DisplayName
                    MemberType        = $Member.UserType
                    MemberUPN         = $Member.UserPrincipalName
                    AccountEnabled    = $Member.AccountEnabled
                    RoleObjectID      = $Role.ObjectID
                }
            }
        }
        $TypeData = @{
            TypeName                  = 'PSP-Office365-AdminRoles'
            DefaultDisplayPropertySet = 'RoleName', 'MemberDisplayName', 'MemberType', 'AccountEnabled'
        }
        Update-TypeData @TypeData -ErrorAction SilentlyContinue

        $RoleInfo
    }
    catch {
        Write-Error "Connect to your Office 365 tenant using the AzureAD module"
    }
}