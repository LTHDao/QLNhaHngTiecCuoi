/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.configs;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.nhtc.handlers.LoginHandler;
import com.nhtc.handlers.LogoutHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 *
 * @author Minh
 */
@Configuration
@EnableWebSecurity
@EnableTransactionManagement
@ComponentScan(basePackages = {
    "com.nhtc.controllers",
    "com.nhtc.repository",
    "com.nhtc.service",
    "com.nhtc.handlers"
})

public class SpringSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private UserDetailsService userDetailsService;

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder()); //bam mat khau
    }
    
    @Autowired
    private LoginHandler loginHandler;

    @Autowired
    private LogoutHandler logoutHandler;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.formLogin().loginPage("/login").usernameParameter("username").passwordParameter("password");
        http.formLogin().defaultSuccessUrl("/").failureUrl("/login?error");

        http.formLogin().successHandler(loginHandler);

        http.logout().logoutSuccessHandler(logoutHandler);

        http.exceptionHandling().accessDeniedPage("/login?accessDenied");

        http.authorizeRequests().antMatchers("/").permitAll()
                .antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')");

        http.csrf().disable();
    }
    
        @Bean
    public Cloudinary cloudinary() {
        Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap(
            "cloud_name", "drnm5kirb",
            "api_key", "663812597625436",
            "api_secret", "ame8Vh_RquDVE50SBsw3Kes-CJ8",
            "secure", true));
        return cloudinary;
    }


}
