local images = {
  'YOUR IMAGE LINK HERE', -- Plate01
  'YOUR IMAGE LINK HERE', -- Plate02
  'YOUR IMAGE LINK HERE', -- Plate03
  'YOUR IMAGE LINK HERE', -- Plate04
  'YOUR IMAGE LINK HERE', -- Plate05
  'YOUR IMAGE LINK HERE', -- yankton_plate
}

-- Configure the available plates (plates will automatically loop through the _n versions too)
local plates = {
  'plate01',
  'plate02',
  'plate03',
  'plate04',
  'plate05',
  'yankton_plate',
}

for index, plate in pairs(plates) do
  local textureDic = CreateRuntimeTxd('duiTxd' .. index) -- Create custom texture dictionary only needs to be done once
  local object = CreateDui(images[index], 628, 140) -- Load image into object
  local handle = GetDuiHandle(object) -- Gets DUI handle from object

  CreateRuntimeTextureFromDuiHandle(textureDic, 'duiTex' .. index, handle)    -- Creates the texture "duiTex" in the "duiTxd" dictionary
  AddReplaceTexture('vehshare', plate, 'duiTxd' .. index, 'duiTex' .. index)  -- Applies "duiTex" from "duiTxd" to "plate01" from "vehshare"

  local object = CreateDui(images[index], 628, 140)   -- this URL doesn't need to be edited, its just the 2d model for the plate -- Load image into object
  local handle = GetDuiHandle(object)                     -- Gets DUI handle from object

  CreateRuntimeTextureFromDuiHandle(textureDic, 'duiTex2' .. index, handle)           -- Creates the texture "duiTex" in the "duiTxd" dictionary
  AddReplaceTexture('vehshare', plate .. '_n', 'duiTxd' .. index, 'duiTex2' .. index) -- Applies "duiTex2" from "duiTxd" to "plate01_n" from "vehshare"
end
