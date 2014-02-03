create keyspace datastax_transactions_demo WITH replication = {'class': 'SimpleStrategy', 'replication_factor': '1' };

use datastax_transactions_demo;

create table products(
    productId text,
    capacityleft int,
	orderIds set<text>,
	PRIMARY KEY (productId)
);

create table buyers_orders(
	buyerId text,
	orderId text,
	productId text,
	PRIMARY KEY(buyerId, orderId)
);
	
