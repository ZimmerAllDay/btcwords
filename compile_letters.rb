require 'rmagick'

# Get all the PNG files in the directory
image_files = Dir.glob("spritesheet_images/*.png").sort

# Output how many files we found
puts "Found #{image_files.size} image files"

# Read all the images
images = image_files.map do |filename|
  puts "Reading #{filename}..."
  Magick::Image.read(filename).first
end

grid_width = 27
grid_height = 6

# Start with a new image with the size of the entire spritesheet
composite = Magick::Image.new(102 * grid_width, 32 * grid_height)
composite.alpha(Magick::ActivateAlphaChannel)  # Enable transparency
composite.matte_color = 'none'  # Make the whole image transparent

images.each_with_index do |image, index|
  x = (index % grid_width) * 102
  y = (index / grid_width) * 32
  puts "Placing image #{index} at #{x},#{y}"
  composite = composite.composite(image, x, y, Magick::OverCompositeOp)
end

output_filename = "btc_words_spritesheet.png"
composite.write(output_filename)
puts "Wrote output to #{output_filename}"
