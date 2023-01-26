with source_sales as (
    select *
    from sales
),

renamed as (
    select
        SALESID AS ID_VENDA,
        LISTID AS ID_LISTA,
        BUYERID AS ID_COMPRADOR,
        EVENTID AS ID_EVENTO,
        DATEID AS ID_DATE,
        QTYSOLD AS QUANTIDADE_VENDIDA,
        PRICEPAID AS VALOR_PAGO,
        COMMISSION AS COMISSAO,
        TO_CHAR(SALETIME, 'dd/mm/yyyy HH24:MI:SS') AS DATA_HORA_VENDA,
        CAST(SALETIME as date) as DATA_VENDA,
        TO_CHAR(SALETIME, 'HH24:MI:SS') AS HORA_VENDA
    FROM source_sales
)
select * from renamed