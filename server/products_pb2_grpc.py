# Generated by the gRPC Python protocol compiler plugin. DO NOT EDIT!
"""Client and server classes corresponding to protobuf-defined services."""
import grpc

import products_pb2 as products__pb2


class ProductServiceStub(object):
    """Missing associated documentation comment in .proto file."""

    def __init__(self, channel):
        """Constructor.

        Args:
            channel: A grpc.Channel.
        """
        self.CheckConnection = channel.unary_unary(
                '/products.ProductService/CheckConnection',
                request_serializer=products__pb2.CheckConnectionRequest.SerializeToString,
                response_deserializer=products__pb2.CheckConnectionResponse.FromString,
                )
        self.GetProducts = channel.unary_unary(
                '/products.ProductService/GetProducts',
                request_serializer=products__pb2.ProductListRequest.SerializeToString,
                response_deserializer=products__pb2.ProductList.FromString,
                )
        self.GetWishList = channel.unary_unary(
                '/products.ProductService/GetWishList',
                request_serializer=products__pb2.WishlistRequest.SerializeToString,
                response_deserializer=products__pb2.Wishlist.FromString,
                )
        self.AddToWishlist = channel.unary_unary(
                '/products.ProductService/AddToWishlist',
                request_serializer=products__pb2.AddToWishlistRequest.SerializeToString,
                response_deserializer=products__pb2.AddToWishlistResponse.FromString,
                )
        self.RemoveFromWishlist = channel.unary_unary(
                '/products.ProductService/RemoveFromWishlist',
                request_serializer=products__pb2.RemoveFromWishlistRequest.SerializeToString,
                response_deserializer=products__pb2.RemoveFromWishlistResponse.FromString,
                )


class ProductServiceServicer(object):
    """Missing associated documentation comment in .proto file."""

    def CheckConnection(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetProducts(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetWishList(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def AddToWishlist(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def RemoveFromWishlist(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')


def add_ProductServiceServicer_to_server(servicer, server):
    rpc_method_handlers = {
            'CheckConnection': grpc.unary_unary_rpc_method_handler(
                    servicer.CheckConnection,
                    request_deserializer=products__pb2.CheckConnectionRequest.FromString,
                    response_serializer=products__pb2.CheckConnectionResponse.SerializeToString,
            ),
            'GetProducts': grpc.unary_unary_rpc_method_handler(
                    servicer.GetProducts,
                    request_deserializer=products__pb2.ProductListRequest.FromString,
                    response_serializer=products__pb2.ProductList.SerializeToString,
            ),
            'GetWishList': grpc.unary_unary_rpc_method_handler(
                    servicer.GetWishList,
                    request_deserializer=products__pb2.WishlistRequest.FromString,
                    response_serializer=products__pb2.Wishlist.SerializeToString,
            ),
            'AddToWishlist': grpc.unary_unary_rpc_method_handler(
                    servicer.AddToWishlist,
                    request_deserializer=products__pb2.AddToWishlistRequest.FromString,
                    response_serializer=products__pb2.AddToWishlistResponse.SerializeToString,
            ),
            'RemoveFromWishlist': grpc.unary_unary_rpc_method_handler(
                    servicer.RemoveFromWishlist,
                    request_deserializer=products__pb2.RemoveFromWishlistRequest.FromString,
                    response_serializer=products__pb2.RemoveFromWishlistResponse.SerializeToString,
            ),
    }
    generic_handler = grpc.method_handlers_generic_handler(
            'products.ProductService', rpc_method_handlers)
    server.add_generic_rpc_handlers((generic_handler,))


 # This class is part of an EXPERIMENTAL API.
class ProductService(object):
    """Missing associated documentation comment in .proto file."""

    @staticmethod
    def CheckConnection(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/products.ProductService/CheckConnection',
            products__pb2.CheckConnectionRequest.SerializeToString,
            products__pb2.CheckConnectionResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def GetProducts(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/products.ProductService/GetProducts',
            products__pb2.ProductListRequest.SerializeToString,
            products__pb2.ProductList.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def GetWishList(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/products.ProductService/GetWishList',
            products__pb2.WishlistRequest.SerializeToString,
            products__pb2.Wishlist.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def AddToWishlist(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/products.ProductService/AddToWishlist',
            products__pb2.AddToWishlistRequest.SerializeToString,
            products__pb2.AddToWishlistResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def RemoveFromWishlist(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/products.ProductService/RemoveFromWishlist',
            products__pb2.RemoveFromWishlistRequest.SerializeToString,
            products__pb2.RemoveFromWishlistResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)
