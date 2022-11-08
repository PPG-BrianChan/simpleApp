using coreService from './coreService';

annotate coreService.Orders with @odata.draft.enabled : true;

annotate coreService.Orders with {
    ID            @title : '{i18n>ID}';
    orderNo       @title : '{i18n>orderNo}'
                  @readonly;
    salesOrg      @title : '{i18n>salesOrg}';
    distChan      @title : '{i18n>distChan}';
    division      @title : '{i18n>division}';
    soldToCustID  @title : '{i18n>soldToCustID}';
    shipToCustID  @title : '{i18n>shipToCustID}';
    reference     @title : '{i18n>reference}';
    currency_code @title : '{i18n>currency}';
    amount        @title : '{i18n>amount}';
    createdBy     @title : '{i18n>CreatedBy}';
    createdAt     @title : '{i18n>CreatedAt}';
    modifiedBy    @title : '{i18n>ModifiedBy}';
    modifiedAt    @title : '{i18n>ModifiedAt}';
}

annotate coreService.Orders with @UI : {
    HeaderInfo          : {
        TypeName       : '{i18n>Order}',
        TypeNamePlural : '{i18n>Orders}',
        Title          : {Value : orderNo},
        Description    : {Value : reference}
    },
    SelectionFields     : [
        orderNo,
        salesOrg,
        distChan,
        division
    ],

    Facets              : [
        {
            $Type  : 'UI.ReferenceFacet',
            Label  : '{i18n>Details}',
            Target : '@UI.FieldGroup#Details'
        },
        {
            $Type  : 'UI.ReferenceFacet',
            Label  : '{i18n>Admin}',
            Target : '@UI.FieldGroup#Admin'
        }
    ],

    FieldGroup #Details : {Data : [
        {Value : orderNo},
        {Value : salesOrg},
        {Value : distChan},
        {Value : division},
        {Value : soldToCustID},
        {Value : shipToCustID},
        {Value : reference},
        {Value : currency_code},
        {Value : amount}
    ]},

    FieldGroup #Admin   : {Data : [
        {Value : ID},
        {Value : createdBy},
        {Value : createdAt},
        {Value : modifiedBy},
        {Value : modifiedAt}
    ]},

    LineItem            : [
        {Value : orderNo},
        {Value : salesOrg},
        {Value : distChan},
        {Value : division},
        {Value : soldToCustID},
        {Value : shipToCustID},
        {Value : reference},
        {Value : currency_code},
        {Value : amount}
    ]
};
