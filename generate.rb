require 'chunky_png'

spritesheet = ChunkyPNG::Image.from_file('btc_words_spritesheet.png')

sprite_width = 102
sprite_height = 32

spritesheet_width = spritesheet.dimension.width
sprites_in_row = spritesheet_width / sprite_width

specs = [26, 40, 54, 100, 112, 161]  # The indices of the sprites you want to use

composite = ChunkyPNG::Image.new(sprite_width, sprite_height, ChunkyPNG::Color::TRANSPARENT)

specs.each do |spec|
  sprite_row = spec / sprites_in_row
  sprite_col = spec % sprites_in_row

  sprite = spritesheet.crop(sprite_col * sprite_width, sprite_row * sprite_height, sprite_width, sprite_height)
  
  composite.compose!(sprite)
end

# Create the file name
filename = "btcwords_#{specs.join('_')}.png"

# Define the directory
directory = "tmp"

# Ensure the directory exists
Dir.mkdir(directory) unless Dir.exist?(directory)

# Save the file in the directory
composite.save(File.join(directory, filename))




