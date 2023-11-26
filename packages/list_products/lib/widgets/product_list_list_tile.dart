part of 'product_list.dart';

class ProductListListTile extends StatelessWidget {
	final int index;
	final Product product;
	final Function? onDelete;
	final Function onTap;
  const ProductListListTile({super.key, required this.index, required this.product, required this.onDelete, required this.onTap});

  @override
  Widget build(BuildContext context) {
	 return Slidable(
			endActionPane: deleteActionPane(),
			child: ListTile(
						contentPadding: const EdgeInsets.all(8),
					 title: Text(product.name),
					 subtitle: Text(product.description),
					 leading: CircleAvatar(
							backgroundImage: NetworkImage(product.imageUrl),
					 ),
					 onTap:() => onTap(context,product),
			),
		 );
  }

  ActionPane? deleteActionPane() {
    if(onDelete == null){
		return null;
	 }
	 return ActionPane(
				motion: const BehindMotion(),
				children: [
					SlidableAction(
						label: 'Delete',
						icon: Icons.delete,
						foregroundColor: Colors.white,
						backgroundColor: Colors.red, 
						onPressed: (context) => onDelete!(context,product),
					),
				],
			);
  }
}