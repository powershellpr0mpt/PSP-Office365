<#
.SYNOPSIS
Get information about all available licenses in your Office 365 tenant

.DESCRIPTION
Get information about all available licenses in your Office 365 tenant
Requires the AzureAD Module as well as the 2 functions
  Convert-LicenseSku
  Convert-ServicePlan

.EXAMPLE
Get-Office365License

.NOTES
General notes
#>

function Get-Office365License {
    [cmdletbinding()]
    param()
    try {
        $Licenses = Get-AzureADSubscribedSku -ErrorAction Stop
        $LicenseInfo = foreach ($License in $Licenses) {
            $ServicePlans = $License | Select-Object -ExpandProperty ServicePlans
            foreach ($Plan in $ServicePlans) {
                [PSCustomobject]@{
                    PSTypeName      = 'PSP-Office365-LicenseInfo'
                    LicenseName     = (Convert-LicenseSku -LicenseSku $License.SkuPartNumber)
                    LicenseSku      = $License.SkuPartNumber
                    LicenseConsumed = $License.ConsumedUnits
                    LicenseTotal    = $License.PrepaidUnits.Enabled
                    LicenseFree     = ($License.PrepaidUnits.Enabled - $License.ConsumedUnits)
                    LicenseEnabled  = if ($License.CapabilityStatus -eq 'Enabled') { $true }else { $false }
                    PlanName        = $Plan.ServicePlanName
                    PlanDescription = (Convert-ServicePlan -ServicePlanID $Plan.ServicePlanID)
                    PlanId          = $Plan.ServicePlanID
                    PlanStatus      = $Plan.ProvisioningStatus
                    AppliesTo       = $Plan.AppliesTo
                }
            }
        }
        $TypeData = @{
            TypeName                  = 'PSP-Office365-LicenseInfo'
            DefaultDisplayPropertySet = 'LicenseName', 'PlanDescription', 'LicenseEnabled', 'LicenseConsumed'
        }
        Update-TypeData @TypeData -ErrorAction SilentlyContinue

        $LicenseInfo
    }
    catch {
        Write-Error "Connect to your Office 365 tenant using the AzureAD module"
    }
}