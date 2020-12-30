
#https://www.ryadel.com/en/ms-office-2016-365-official-iso-img-images-for-download-offline-install-product-key-required/

Import-Module BitsTransfer

function EnsureExists($url, $filepath)
{
    if (![System.IO.File]::Exists($filepath))
    {
        Start-BitsTransfer -Source "$url" -Destination "$filepath"
    }
}

$downloads = (Resolve-Path "~/Downloads/")
$file = -join ($downloads, "Office365.img")
$url = "http://officecdn.microsoft.com/db/492350F6-3A01-4F97-B9C0-C7C6DDF67D60/media/en-US/O365ProPlusRetail.img"

EnsureExists -url $url -file $file

cd $downloads

git clone https://github.com/HenryFBP/KMS_VL_ALL

