SELECT
		S.SUPPLIER_CODE
		,SUPPLIER_NAME
		,S.SUPPLIER_KANA
		,S.SUPPLIER_ABBR
		,S.SUPPLIER_ZIP_CODE
		,S.SUPPLIER_ADDRESS_1
		,S.SUPPLIER_ADDRESS_2
		,S.SUPPLIER_DEPT_NAME
		,S.SUPPLIER_PC_NAME
		,S.SUPPLIER_PC_KANA
		,S.SUPPLIER_PC_PRE_CATEGORY
		,S.SUPPLIER_PC_POST
		,S.SUPPLIER_TEL
		,S.SUPPLIER_FAX
		,S.SUPPLIER_EMAIL
		,S.SUPPLIER_URL
		,S.SUPPLIER_CM_CATEGORY
		,S.TAX_SHIFT_CATEGORY
		,S.PAYMENT_TYPE_CATEGORY
		,S.PAYMENT_CYCLE_CATEGORY
		,S.LAST_CUTOFF_DATE
		,S.PAYMENT_DATE
		,S.TAX_FRACT_CATEGORY
		,S.PRICE_FRACT_CATEGORY
		,S.PO_SLIP_COMEOUT_CATEGORY
		,S.SERVICE_CHARGE_CATEGORY
		,S.TRANSFER_TYPE_CATEGORY
		,S.NATIONAL_CATEGORY
		,S.RATE_ID
		,S.FOB_NAME
		,S.REMARKS
		,S.COMMENT_DATA
		,S.CRE_FUNC
		,S.CRE_DATETM
		,S.CRE_USER
		,S.UPD_FUNC
		,S.UPD_DATETM
		,S.UPD_USER
		,C.CATEGORY_CODE_NAME AS SUPPLIER_CM_CATEGORY_NAME
    FROM
        SUPPLIER_MST_/*$domainId*/'DEFAULT' S
        LEFT OUTER JOIN CATEGORY_TRN_/*$domainId*/ C
            	ON S.SUPPLIER_CM_CATEGORY = C.CATEGORY_CODE AND C.CATEGORY_ID=/*categoryId*/13
    /*BEGIN*/
	WHERE
		/*IF supplierCode != null */
		S.SUPPLIER_CODE LIKE /*supplierCode*/'S%'
		/*END*/
		/*IF supplierName != null */
		AND S.SUPPLIER_NAME LIKE /*supplierName*/'%S%'
		/*END*/
		/*IF supplierKana != null */
		AND S.SUPPLIER_KANA LIKE /*supplierKana*/'%S%'
		/*END*/
		/*IF remarks != null */
		AND S.REMARKS LIKE /*remarks*/'%S%'
		/*END*/
	/*END*/
	/*BEGIN*/
	ORDER BY
		/*IF sortColumn != null */
		/*$sortColumn*/
		/*END*/

		/*IF sortOrder != null*/
		/*$sortOrder*/
		/*END*/
	/*END*/
	/*BEGIN*/
	/*IF rowCount != null*/
	LIMIT /*rowCount*/
	/*IF offsetRow != null*/
	OFFSET /*offsetRow*/
	/*END*/
	/*END*/
	/*END*/
