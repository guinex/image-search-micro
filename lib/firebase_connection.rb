# module FirebaseConnection
#   FIREBASE_URI = 'https://image-search-8987.firebaseio.com/'.freeze
#   JSON_STRING_FIREBASE = File.open('lib/image-search-8987-secret.json').read
#   FIREBASE = Firebase::Client.new(FIREBASE_URI, JSON_STRING_FIREBASE)
#   class Client

#     def push(collection, data)
#       FirebaseConnection::FIREBASE.push(collection, {design_id: data[:design_id], cluster_id: data[:cluster_id], relation_type: data[:relation] || 'least_alike'})
#     end

#     def update
#     end

#     def delete
#     end

#     def get
#     end

#   end
# end