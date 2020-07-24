package repository;

import java.util.List;

import entity.ReceiptEntity;

public interface ReceiptRepository {
 void add(ReceiptEntity repEntity);
 void update(ReceiptEntity repEntity);
 void delete(String id);
 List<ReceiptEntity> printReceipt();
}
