import Foundation

struct Service {
    let urlString = "https://raw.githubusercontent.com/devpass-tech/meatless-api/main/restaurant_list.json"
    func fetchRestaurantList(completion: @escaping ([Restaurant]?)->Void) {
        guard let url = URL(string: urlString) else { return }
         
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let data = data{
                do {
                    let restaurants = try JSONDecoder().decode([Restaurant].self, from: data)
                    completion(restaurants)
                } catch  {
                    print(error)
                }
            }
        }
        task.resume()
    }
}
