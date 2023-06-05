require 'rmagick'

# Get the Draw object
draw = Magick::Draw.new
draw.font = '/Library/Fonts/Retro Gaming.ttf' # set your font path here
draw.pointsize = 22  # set your font size here
draw.fill('black')  # replace with the color of your letter
draw.gravity = Magick::CenterGravity

# Set the canvas size
canvas_width = 96
canvas_height = 32

('A'..'B').each do |letter|
  # Create a new transparent image
  image = Magick::Image.new(canvas_width, canvas_height)
  image.background_color = 'none'  # explicitly set background to transparent

  # Draw the letter onto the image
  draw.annotate(image, 0, 0, 0, 0, letter)

  # Write the image to a new file
  image.write("letter_#{letter}.png")
end



