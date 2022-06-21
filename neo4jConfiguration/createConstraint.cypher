CREATE CONSTRAINT IF NOT EXISTS for (c:Customer) require c.customerId IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS for (o:Order) require o.orderId IS UNIQUE;