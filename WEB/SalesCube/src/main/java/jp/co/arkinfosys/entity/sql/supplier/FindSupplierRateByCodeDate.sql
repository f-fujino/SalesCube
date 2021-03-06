SELECT
		S.SUPPLIER_CODE
		,RM.NAME AS SUPPLIER_RATE_NAME
		,RT.START_DATE AS SUPPLIER_RATE_START_DATE
		,RT.RATE AS SUPPLIER_RATE
		,RM.SIGN AS C_UNIT_SIGN
    FROM
        ( SUPPLIER_MST_/*$domainId*/ S
          LEFT OUTER JOIN RATE_MST_/*$domainId*/ RM
          		ON S.RATE_ID = RM.RATE_ID )
          LEFT OUTER JOIN RATE_TRN_/*$domainId*/ RT
          		ON RM.RATE_ID = RT.RATE_ID
	WHERE
		S.SUPPLIER_CODE=/*supplierCode*/''
			AND RT.START_DATE<=/*targetDate*/''
	ORDER BY
		RT.START_DATE DESC
	LIMIT 1
