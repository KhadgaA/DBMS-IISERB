select * from (
	select *,
    @p_rank := if(@c_pd = p_name,@p_rank +1,1)
		as p_rank,
        @c_pd := p_name
        from products
        order by p_name,p_price asc) ranked_rows
        where p_rank <2;