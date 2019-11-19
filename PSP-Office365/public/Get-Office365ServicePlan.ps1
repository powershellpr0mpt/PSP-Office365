<#
.SYNOPSIS
Get all service plan information per user in your Office 365 tenant

.DESCRIPTION
Get all service plan information per user in your Office 365 tenant

.EXAMPLE
Get-Office365ServicePlan

.NOTES
General notes
#>

function Get-Office365ServicePlan {
    [cmdletbinding()]
    param()
    try {
        $Users = Get-AzureADUser -All:$true -ErrorAction Stop | Sort-Object DisplayName
        $UserPlanInfo = foreach ($User in $Users) {
            foreach ($Plan in $User.AssignedPlans) {
                [PSCustomObject]@{
                    PSTypeName      = 'PSP-Office365-UserPlans'
                    UserName        = $User.DisplayName
                    UPN             = $User.UserPrincipalName
                    DirSyncEnabled  = if ($User.DirSyncEnabled) { $User.DirSyncEnabled }else { $false }
                    AccountEnabled  = $User.AccountEnabled
                    PlanName        = $Plan.Service
                    PlanDescription = (Convert-ServicePlan -ServicePlanID $Plan.ServicePlanId)
                    PlanId          = $Plan.ServicePlanID
                    PlanStatus      = $Plan.CapabilityStatus
                }
            }
        }
        $TypeData = @{
            TypeName                  = 'PSP-Office365-UserPlans'
            DefaultDisplayPropertySet = 'UserName', 'PlanDescription', 'PlanStatus', 'AccountEnabled'
        }
        Update-TypeData @TypeData -ErrorAction SilentlyContinue

        # All users who have assigned plans
        $UserPlanInfo
    }
    catch {
        Write-Error "Connect to your Office 365 tenant using the AzureAD module"
    }
}