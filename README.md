# Notepod (backend)

This webapp uses the ListenNotes API to allow users to listen to podcasts and take notes on them. Notes are timestamped based on where in an episode the note is taken. 

Some features I would like to include have been put on hold due to the limitations on how the free version of ListenNotes allows data to be stored in the webapp's database. For example, it's fine to store the API ID of a podcast, but not its name or any other information about it. This would mean that implementing a favorite podcasts feature would mean storing the podcast IDs and then having to run API requests to get the info for each one.

## Installation

### Prerequisites

- Ruby version: `2.6.1`
- Rails version: `>= 6.0.3.4`

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

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

Project Link: 