package spring.conf;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import account.service.AccountServiceImpl;

@Configuration
@PropertySource("classpath:spring/db.properties")
@EnableTransactionManagement
public class SpringConfiguration {
	
	private @Value("${jdbc.driver}") String driver;
	private @Value("${jdbc.url}") String url;
	private @Value("${jdbc.username}") String username;
	private @Value("${jdbc.password}") String password;
	
	@Autowired
	private ApplicationContext applicationContext;
	
	@Bean(name = "dataSource")
	public BasicDataSource dataSource() {
		BasicDataSource basicDataSource = new BasicDataSource();
		basicDataSource.setDriverClassName(driver);
		basicDataSource.setUrl(url);
		basicDataSource.setUsername(username);
		basicDataSource.setPassword(password);
		return basicDataSource;
	}
	
	@Bean
	public SqlSessionFactory sqlSessionFactory() throws Exception {
		SqlSessionFactoryBean sqlsessionFactoryBean = new SqlSessionFactoryBean();
		sqlsessionFactoryBean.setDataSource(dataSource());
		sqlsessionFactoryBean.setConfigLocation(new ClassPathResource("spring/mybatis-config.xml"));
		// sqlsessionFactoryBean.setMapperLocations(new ClassPathResource("user/dao/UserMapper.xml"));
		// sqlsessionFactoryBean.setMapperLocations(new ClassPathResource("user/dao/UserMapper.xml"), new ClassPathResource("user/dao/UserUploadMapper.xml"));
		sqlsessionFactoryBean.setMapperLocations(applicationContext.getResources("classpath:*/dao/*Mapper.xml"));
		return sqlsessionFactoryBean.getObject();
	}
	
	@Bean
	public SqlSessionTemplate sqlSession() throws Exception {
		SqlSessionTemplate sqlSessionTemplate = new SqlSessionTemplate(sqlSessionFactory());
		return sqlSessionTemplate;
	}
	
	@Bean
	public DataSourceTransactionManager transactionManager() {
		DataSourceTransactionManager transactionManager = new DataSourceTransactionManager(dataSource());
		return transactionManager;
	}
	
	
	
}
