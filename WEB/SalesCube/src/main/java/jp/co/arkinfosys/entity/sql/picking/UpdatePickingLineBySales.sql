UPDATE
    PICKING_LINE_TRN_/*$domainId*/ PLL
		LEFT OUTER JOIN SALES_LINE_TRN_/*$domainId*/ SL ON PLL.SALES_LINE_ID = SL.SALES_LINE_ID
		LEFT OUTER JOIN PRODUCT_MST_/*$domainId*/ PM ON SL.PRODUCT_CODE = PM.PRODUCT_CODE
SET
		PLL.SALES_LINE_ID=SL.SALES_LINE_ID
		,PLL.RO_LINE_ID=SL.RO_LINE_ID
		,PLL.LINE_NO=SL.LINE_NO
		,PLL.SALES_DETAIL_CATEGORY=SL.SALES_DETAIL_CATEGORY
		,PLL.PRODUCT_CODE=SL.PRODUCT_CODE
		,PLL.CUSTOMER_PCODE=SL.CUSTOMER_PCODE
		,PLL.PRODUCT_ABSTRACT=SL.PRODUCT_ABSTRACT
		,PLL.QUANTITY=SL.QUANTITY
		,PLL.UNIT_PRICE=SL.UNIT_PRICE
		,PLL.UNIT_CATEGORY=SL.UNIT_CATEGORY
		,PLL.UNIT_NAME=SL.UNIT_NAME
		,PLL.PACK_QUANTITY=SL.PACK_QUANTITY
		,PLL.UNIT_RETAIL_PRICE=SL.UNIT_RETAIL_PRICE
		,PLL.RETAIL_PRICE=SL.RETAIL_PRICE
		,PLL.UNIT_COST=SL.UNIT_COST
		,PLL.COST=SL.COST
		,PLL.TAX_CATEGORY=SL.TAX_CATEGORY
		,PLL.CTAX_RATE=SL.CTAX_RATE
		,PLL.CTAX_PRICE=SL.CTAX_PRICE
		,PLL.GM=SL.GM
		,PLL.RACK_CODE_SRC=SL.RACK_CODE_SRC
		,PLL.REMARKS=SL.REMARKS
		,PLL.PICKING_REMARKS=SL.EAD_REMARKS
		,PLL.SET_TYPE_CATEGORY=PM.SET_TYPE_CATEGORY
		,PLL.UPD_FUNC=/*updFunc*/NULL
		,PLL.UPD_DATETM=now()
		,PLL.UPD_USER=/*updUser*/NULL
WHERE
	PLL.SALES_LINE_ID=/*salesLineId*/0
