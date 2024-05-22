# Output
![image](https://github.com/neerajXD/Finsire_VehicleMatcher_usingRUBY/assets/91602130/2d66431a-8160-46a6-8136-9ffb9925c6e8)




# VehicleMatcher

VehicleMatcher is a Ruby on Rails application that provides an API for matching user input of vehicle model names to a predefined list of database names and returns the best match along with a similarity score.

## Setup

### Prerequisites

- Ruby (version 3.2.4 )
- Rails (version 7.1.3.3 )
- Git
- Bundler

### Installation

1. **Clone the repository:**

   ```sh
   git clone https://github.com/neerajXD/Finsire_VehicleMatcher_usingRUBY.git
   cd VehicleMatcher
   ```

2. **Install dependencies:**

   ```sh
   bundle install
   ```

3. **Setup the database:**

   ```sh
   rails db:create
   rails db:migrate
   ```

4. **Run the server:**

   ```sh
   rails server
   ```

   The server will start on `http://localhost:3000`.

## Usage

### API Endpoint

**Endpoint**: `/match`

**HTTP Method**: `GET`

**Query Parameter**: `input` (the vehicle model name input by the user)

**Response**: JSON object containing `best_match` and `similarity`

### Example Request

You can make a request to the API endpoint by sending a GET request with the `input` parameter. For example:

```sh
"http://localhost:3000/match?input=FORD INDIA PVT LTD-FIGOASPIRE 1.2 PETROL TREND+MT"
```

### Example Response

The API will respond with a JSON object like this:

```json
{
  "best_match": "ford_aspire",
  "similarity": 0.8
}
```

## Development

### Code Structure

The main logic for string matching is implemented in the `StringMatchingController`. Here's a brief overview of the controller:

```ruby
require 'amatch'

class StringMatchingController < ApplicationController
  DATABASE_NAMES = [
    "ford_aspire", "ford_ecosport", "ford_endeavour", "ford_figo",
    "honda_amaze", "honda_city", "honda_wr_v",
    "hyundai_aura", "hyundai_grand_i10", "hyundai_i10",
    "jeep_compass", "jeep_meridian",
    "kia_carens", "kia_seltos", "kia_sonet",
    "land_rover_defender",
    "mahindra_scorpio", "mahindra_thar", "mahindra_xuv300", "mahindra_xuv400", "mahindra_xuv700",
    "maruti_celerio", "maruti_suzuki_brezza", "maruti_suzuki_s_presso", "maruti_suzuki_swift", "maruti_suzuki_wagonr", "maruti_suzuki_xl6",
    "mg_astor", "mg_gloster", "mg_hector", "mg_zs_ev",
    "renault_kiger", "renault_triber",
    "skoda_kushaq", "skoda_slavia",
    "tata_harrier", "tata_punch", "tata_tiago",
    "toyota_camry", "toyota_fortuner", "toyota_fortuner_legender", "toyota_glanza", "toyota_innova_crysta"
  ]

  def match
    user_input = params[:input].downcase

    best_match = ""
    best_score = 0

    DATABASE_NAMES.each do |db_name|
      score = db_name.pair_distance_similar(user_input)
      if score > best_score
        best_score = score
        best_match = db_name
      end
    end

    render json: { best_match: best_match, score: best_score }
  end
end

```

### Running Tests

You can add and run tests to ensure the correctness of your application. For example, using RSpec:

1. **Install RSpec:**

   ```sh
   bundle add rspec-rails
   rails generate rspec:install
   ```

2. **Run tests:**

   ```sh
   bundle exec rspec
   ```



## Contributing

If you wish to contribute to the project, please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes.
4. Commit your changes (`git commit -m 'Add new feature'`).
5. Push to the branch (`git push origin feature-branch`).
6. Create a new Pull Request.

## Contact

For any questions or inquiries, please contact `08neerajp@gmail.com`.


