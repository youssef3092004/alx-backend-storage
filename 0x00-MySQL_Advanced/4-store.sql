/*

    Description:
    This script creates a trigger named 'decrease_quantity_after_order' that is executed 
    after a new row is inserted into the 'orders' table. The trigger decreases the 
    quantity of the corresponding item in the 'items' table by the quantity specified 
    in the new order.

    Trigger Details:
    - Trigger Name: decrease_quantity_after_order
    - Event: AFTER INSERT on 'orders' table
    - Action: Updates the 'quantity' field in the 'items' table by subtracting the 
      quantity of the newly inserted order from the current quantity of the item.

    Usage:
    This trigger ensures that the inventory in the 'items' table is automatically 
    updated to reflect the quantity of items ordered whenever a new order is placed.
*/
DELIMITER $$

CREATE TRIGGER decrease_quantity_after_order
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE items
    SET quantity = quantity - NEW.quantity
    WHERE item_id = NEW.item_id;
END$$

DELIMITER ;
