
puts "Clearing old data..."
Task.destroy_all
Board.destroy_all
Project.destroy_all
User.destroy_all

puts "Seeding projects..."
project1 = Project.create(
    title: 'Project 1',
    favorite: false,
    color: '#cebee7'
)

project2 = Project.create(
    title: 'Project 2',
    favorite: true,
    color: '#d5bee7'
)

project3 = Project.create(
    title: 'Project 3',
    favorite: false,
    color: '#dfbee7'
)

puts "Seeding boards..."
project1_backlog = project1.boards.build(name: 'Backlog')
project1_todo = project1.boards.build(name: 'To Do')
project1_completed = project1.boards.build(name: 'Completed')
project1.save

project2_backlog = project2.boards.build(name: 'Backlog')
project2_todo = project2.boards.build(name: 'To Do')
project2_completed = project2.boards.build(name: 'Completed')
project2.save

project3_backlog = project3.boards.build(name: 'Backlog')
project3_todo = project3.boards.build(name: 'To Do')
project3_completed = project3.boards.build(name: 'Completed')
project3.save

puts "Seeding tasks..."
project1_todo.tasks.build(
    name: 'SkyWatcher',
    due_date: Date.new(2023, 3, 15),
    description: 'An app that helps users identify constellations and celestial bodies in the night sky.',
    status: 'Not Started',
    image_url: 'https://www.pexels.com/photo/silhouette-of-two-persons-stargazing-1567069/',
    priority: 'High',
    completed: false
)

project1_todo.tasks.build(
    name: 'PetPals',
    due_date: Date.new(2023, 3, 18),
    description: 'An online community and marketplace that connects pet owners with pet sitters, walkers, and other services.',
    status: 'Not Started',
    image_url: 'https://www.pexels.com/photo/hand-touching-white-cat-15563929/',
    priority: 'Low',
    completed: false
)

project1_todo.save

project1_completed.tasks.build(
    name: 'Neighbourly',
    due_date: Date.new(2023, 3, 20),
    description: 'A social network that connects neighbors and helps them share resources, recommendations, and events.',
    status: 'Complete',
    image_url: 'https://www.pexels.com/photo/group-of-people-enjoying-music-concert-325521/',
    priority: 'Medium',
    completed: true
)

project1_completed.save

project2_todo.tasks.build(
    name: 'Artify',
    due_date: Date.new(2023, 3, 10),
    description: 'An online art marketplace that allows artists to showcase and sell their work to a global audience.',
    status: 'Not Started',
    image_url: 'https://www.pexels.com/photo/colorful-arts-hanging-on-wall-2372978/',
    priority: 'Low',
    completed: false
)

project2_todo.tasks.build(
    name: 'Green Route',
    due_date: Date.new(2023, 3, 12),
    description: 'A web platform that helps users plan environmentally friendly routes for commuting, traveling, and shipping.',
    status: 'Not Started',
    image_url: 'https://www.pexels.com/photo/sticker-of-climate-crisis-attached-in-metal-3671143/',
    priority: 'Low',
    completed: false
)

project2_todo.save

project2_completed.tasks.build(
    name: 'FitFlow',
    due_date: Date.new(2023, 3, 16),
    description: 'A fitness app that combines yoga, Pilates, and other exercises to create customized workout routines.',
    status: 'Complete',
    image_url: 'https://www.pexels.com/photo/photo-of-woman-doing-yoga-3820393/',
    priority: 'Medium',
    completed: true
)

project2_completed.save

project3_todo.tasks.build(
    name: 'FoodFinder',
    due_date: Date.new(2023, 3, 5),
    description: 'A website that helps users find and compare restaurants in their area based on cuisine, price, and other criteria.',
    status: 'Not Started',
    image_url: 'https://www.pexels.com/photo/sharing-cherry-tomatoes-3184188/',
    priority: 'High',
    completed: false
)

project3_todo.tasks.build(
    name: 'CloudFleet',
    due_date: Date.new(2023, 3, 8),
    description: 'A cloud-based fleet management system that helps companies track and optimize their vehicles and drivers.',
    status: 'Not Started',
    image_url: 'https://www.pexels.com/photo/white-volvo-semi-truck-on-side-of-road-2199293/',
    priority: 'Low',
    completed: false
)


project1_todo.save

puts "Seeding users..."


project1 = Project.create(name: "Project 1")
project2 = Project.create(name: "Project 2")
project3 = Project.create(name: "Project 3")

user1 = User.create(
  name: "John Doe",
  email: "john.doe@example.com",
  password: "password",
  project_id: "project1"
)

user2 = User.create(
  name: "Jane Smith",
  email: "jane.smith@example.com",
  password: "password",
  project_id: "project2"
)

user3 = User.create(
  name: "Bob Johnson",
  email: "bob.johnson@example.com",
  password: "password",
  project_id: "project3"
)

puts "Done Seeding!"
