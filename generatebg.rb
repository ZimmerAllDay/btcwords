require 'rmagick'

# Define the image dimensions
width = 102
height = 32

# Define the number of images you want to create
num_images = 27

num_images.times do |i|
  # Generate a random color
  color = "rgb(#{rand(256)},#{rand(256)},#{rand(256)})"

  # Create a new image with the random background color
  image = Magick::Image.new(width, height)
  image.background_color = color
  image.erase!

  # Write the image to a file
  filename = "image_#{i}.png"
  image.write(filename)
  puts "Wrote #{filename}"
end

