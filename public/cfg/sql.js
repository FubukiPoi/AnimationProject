module.exports = {
	findAllAnimation:'select *,'+
	                 '(select count(*) from animation where status = ? ) as all_num '+
	                 'FROM animation',
	findAllAnimationWithNum:'SELECT *,'+
	                 '(select count(*) from animation where status is not null ) as all_num '+
	                 'FROM animation order by year ,field(season,"冬","春","夏","秋")',
	findAnimationId:'SELECT animation_id FROM animation WHERE animation_id = ?',
	addAnimation:'INSERT INTO animation SET ?',
	findOneAnimation:'SELECT * FROM animation where animation_id = ?',
	editAnimation:'UPDATE animation SET ? WHERE animation_id = ?',
	deleteAnimation:'DELETE FROM animation WHERE animation_id = ?',
	createChart:'select DISTINCT year,(select  count(year) from animation b where a.year = b.year)  as num ' +
				'from animation a order by year'
}