return {
  pick_random_image_cmd = function()
    local handle = io.popen("find ~/.config/nvim/assets -type f \\( -iname '*.jpg' -o -iname '*.png' -o -iname '*.jpeg' \\) | shuf -n 1")
    if handle then
      local result = handle:read("*a"):gsub("%s+$", "")
      handle:close()
      if result ~= "" then
        return "ascii-image-converter '" .. result .. "' -C -c"
      else
        return "echo 'No images found'"
      end
    end
    return nil
  end
}
