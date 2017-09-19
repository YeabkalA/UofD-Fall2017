    func loadAndSetImage() {
        let url = URL(string: "https://github.com/rmirabelli/UofD-Fall2017/blob/master/daffodil_park.jpg?raw=true")
        let session = URLSession(configuration: URLSessionConfiguration.default)
        let task = session.dataTask(with: url!) { (data, response, error) in
            if error == nil && data != nil {
                let image = UIImage(data: data!)
                DispatchQueue.main.async {
                    self.imageView.image = image
                }
            }
        }
        task.resume()
    }
