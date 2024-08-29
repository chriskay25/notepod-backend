# Notepod (backend)

This is the backend of the Notepod web application, built using Ruby on Rails. The backend is responsible for handling data processing, business logic, and serving the API to the frontend built with React.

This backend utilizes the ListenNotes API to allow users to listen to podcasts and take notes on them. 

Some features I would like to include have been put on hold due to the limitations on how the free version of ListenNotes allows data to be stored in the webapp's database. For example, it's fine to store the API ID of a podcast, but not its name or any other information about it. This would mean that implementing a favorite podcasts feature would mean storing the podcast IDs and then having to run API requests to fetch the info for each one.

## Getting Started

These instructions will get you a copy of the backend up and running on your local machine for development and testing purposes.

### Installation

1. Clone the repository:

```bash
git clone https://github.com/chriskay/notepod-backend.git
cd notepod-backend
```

2. Install the required gems:
`bundle install`

### Prerequisites

- Ruby version: `2.6.1`
- Rails version: `>= 6.0.3.4`
- Database: SQLite3

### Configuration

Environment Variables: ListenNotes provided me with an API key to access their collection, which I stored in an environment variable `LISTEN_API_KEY` under `/config/listen_notes_api.rb`. However, since it's a  free account they don't allow it to be shared, so unless you apply for and include your own key, the ListenNotes API will only return generic preprepared responses.

### Database Setup

1. Create and migrate the database:
```
rails db:create
rails db:migrate
```

### Running the Server

Start the Rails server:
`rails server`

The server will run at `http://localhost:3000` by default.

### API Documentation

See Configuration section above. To get more info on the ListenNotes API, visit https://listennotes.com/api.


## Contributing
1. Fork the repository
2. Create a new branch (git checkout -b feature-branch)
3. Commit your changes (git commit -m 'Add some feature')
4. Push to the branch (git push origin feature-branch)
5. Create a new Pull Request

## License
This project is licensed under the MIT License - see the LICENSE file for details.

## Contact

Chris Kay - chriskay25@gmail.com

Link to frontend repo: https://github.com/chriskay25/notepod-frontend.git 