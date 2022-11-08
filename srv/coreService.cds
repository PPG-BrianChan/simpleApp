using simpleApp as model from '../db/data-model';

service coreService {
    entity Orders as projection on model.Orders;
}