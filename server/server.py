from concurrent import futures
import grpc
import products_pb2
import products_pb2_grpc

class ProductsServicer(products_pb2_grpc.ProductServiceServicer):
   products = [
      products_pb2.Product(id='1', name='Product 1', description='Product 1 description', price=100, category='Category 1', image='https://picsum.photos/500/500'),
      products_pb2.Product(id='2', name='Product 2', description='Product 2 description', price=200, category='Category 2', image='https://picsum.photos/500/500'),
      products_pb2.Product(id='3', name='Product 3', description='Product 3 description', price=300, category='Category 3', image='https://picsum.photos/500/500'),
      products_pb2.Product(id='4', name='Product 4', description='Product 4 description', price=400, category='Category 4', image='https://picsum.photos/500/500'),
      products_pb2.Product(id='5', name='Product 5', description='Product 5 description', price=500, category='Category 5', image='https://picsum.photos/500/500'),
      products_pb2.Product(id='6', name='Product 6', description='Product 6 description', price=600, category='Category 6', image='https://picsum.photos/500/500'),
      products_pb2.Product(id='7', name='Product 7', description='Product 7 description', price=700, category='Category 7', image='https://picsum.photos/500/500'),
      products_pb2.Product(id='8', name='Product 8', description='Product 8 description', price=800, category='Category 8', image='https://picsum.photos/500/500'),
      products_pb2.Product(id='9', name='Product 9', description='Product 9 description', price=900, category='Category 9', image='https://picsum.photos/500/500'),
      products_pb2.Product(id='10', name='Product 10', description='Product 10 description', price=1000, category='Category 10', image='https://picsum.photos/500/500'),
   ]
   wishlist = []
   
   def GetProducts(self, request, context):
      response = products_pb2.ProductList()
      response.products.extend(self.products)
      return response

   def GetWishList(self, request, context):
      response = products_pb2.Wishlist()
      response.products.extend(self.wishlist)
      return response
   
   def AddToWishlist(self, request, context):
      response = products_pb2.AddToWishlistResponse() 
      if(not self.CheckProductInWishlist(request.id)):
         for product in self.products:
            if(product.id == request.id):
               self.wishlist.append(product)
               response.isExist = False
               break
      else:
         response.isExist = True
      response.products.extend(self.wishlist)
      return response
   
   def RemoveFromWishlist(self, request, context):
      response = products_pb2.RemoveFromWishlistResponse() 
      if(self.CheckProductInWishlist(request.id)):
         for product in self.wishlist:
            if(product.id == request.id):
               self.wishlist.remove(product)
               response.isExist = True
               break
      else:
         response.isExist = False
      response.products.extend(self.wishlist)
      return response
   
   def CheckConnection(self, request, context):
      return products_pb2.CheckConnectionResponse(success=True)
   
   def CheckProductInWishlist(self,id):
      for product in self.wishlist:
         if(product.id == id):
            return True
      return False
      


server = grpc.server(futures.ThreadPoolExecutor(max_workers=10))
products_pb2_grpc.add_ProductServiceServicer_to_server(ProductsServicer(), server)
print('Starting server. Listening on port 50051.')
server.add_insecure_port('[::]:50051')
server.start()
server.wait_for_termination()
