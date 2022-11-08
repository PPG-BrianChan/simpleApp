using { Currency, managed, sap, cuid } from '@sap/cds/common';
namespace simpleApp;

entity Orders : cuid, managed {
  orderNo : Integer;
  salesOrg : String(4);
  distChan : String(4);
  division : String(2);
  soldToCustID : String(8);
  shipToCustID : String(8);
  reference  : localized String(1111);
  currency : Currency;
  amount  : Decimal;
}