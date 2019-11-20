<#
.SYNOPSIS
Find License information for all Licensed Office 365 Users

.DESCRIPTION
Find License information for all Licensed Office 365 Users

.EXAMPLE
Get-Office365LicenseAssignment

.NOTES
General notes
#>

function Get-Office365LicenseAssignment {
    [cmdletbinding()]
    param()

    try {
        $LicensedUsers = Get-MsolUser -All -ErrorAction Stop | Where-Object { $_.IsLicensed } | Sort-Object DisplayName
        $Groups = Get-MsolGroup -All

        $LicenseAssignment = foreach ($User in $LicensedUsers) {
            $UserGuid = $User.ObjectId.Guid
            foreach ($License in $User.Licenses) {
                $UserLicense = [PSCustomObject]@{
                    PSTypeName  = 'PSP-Office365-LicenseAssignment'
                    UserName    = $User.DisplayName
                    UPN         = $User.UserPrincipalName
                    LicenseSku  = $License.AccountSku.SkuPartNumber
                    LicenseName = (Convert-LicenseSku -LicenseSku $License.AccountSku.SkuPartNumber)
                }
                if ((-not($License.GroupsAssigningLicense)) -OR ($UserGuid -eq $License.GroupsAssigningLicense.guid)) {
                    $UserLicense | Add-Member -MemberType NoteProperty -Name 'DirectAssigned' -Value $true
                    $UserLicense | Add-Member -MemberType NoteProperty -Name 'GroupAssigned' -Value $false
                    $UserLicense | Add-Member -MemberType NoteProperty -Name 'AssignedBy' -Value ''
                }
                else {
                    $UserLicense | Add-Member -MemberType NoteProperty -Name 'DirectAssigned' -Value $false
                    $UserLicense | Add-Member -MemberType NoteProperty -Name 'GroupAssigned' -Value $true
                    $LicenseGroups = foreach ($LicenseGroup in $License.GroupsAssigningLicense){
                        ($Groups.Where{ $_.ObjectId -eq $LicenseGroup.guid }).DisplayName
                    }
                    $UserLicense | Add-Member -MemberType NoteProperty -Name 'AssignedBy' -Value ($LicenseGroups -join ';')
                }
                $UserLicense
            }
        }
        $TypeData = @{
            TypeName                  = 'PSP-Office365-LicenseAssignment'
            DefaultDisplayPropertySet = 'UserName', 'LicenseName', 'DirectAssigned', 'GroupAssigned'
        }
        Update-TypeData @TypeData -ErrorAction SilentlyContinue
        $LicenseAssignment
    }
    catch {
        Write-Error "Connect to your Office 365 tenant using the MSOL module"
    }
}