package com.nanoo.library.account.security;

import com.nanoo.library.commonpackage.security.CommonSecurityConfig;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

/**
 * @author nanoo
 * @create 26/11/2019 - 18:24
 */
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .csrf().disable()
                // make sure we use stateless session; session won't be used to store user's state.
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);
    
        http
                // authorization requests config
                .authorizeRequests()
                .antMatchers("/consult/**").authenticated()
                .antMatchers("/create/**").hasAnyRole(CommonSecurityConfig.ROLE_ADMIN,CommonSecurityConfig.ROLE_EMPLOYEE)
                .antMatchers("/edit/**").authenticated()
                .antMatchers("/delete/**").hasAnyRole(CommonSecurityConfig.ROLE_ADMIN,CommonSecurityConfig.ROLE_EMPLOYEE)
                // any other requests must be authenticated
                .anyRequest().authenticated()
                .and().httpBasic();
        
        http
                // Add a filter to check validity of token if present in request header (in a cookie) // TODO remove in all ms cookie on this line
                .addFilterBefore(new JwtTokenAuthenticationFilter(), UsernamePasswordAuthenticationFilter.class);
    
    }
}
