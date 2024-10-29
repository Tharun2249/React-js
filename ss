package io.swagger.model;

import java.time.LocalDate;
import java.util.Collection;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Register
 */
@Validated
@NotUndefined
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2024-10-17T13:43:07.016506682Z[GMT]")


@Entity
public class Register  implements UserDetails {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @JsonProperty("id")
  private Long id;

  @JsonProperty("firstName")

  private String firstName = null;



  @JsonProperty("lastName")

  private String lastName = null;

  @JsonProperty("userName")

  private String userName = null;

  @JsonProperty("password")

  private String password = null;

  public Register( String firstName, String lastName, String userName, String password, DepartmentEnum department, GenderEnum gender) {

    this.firstName = firstName;
    this.lastName = lastName;
    this.userName = userName;
    this.password = password;
    this.department = department;
    this.gender = gender;
  }

  /**
   * Gets or Sets department
   */
  public enum DepartmentEnum {
    TECHNOLOGY("Technology"),
    
    ENGINEERING("Engineering"),
    
    OPERATIONS("Operations");

    private String value;

    DepartmentEnum(String value) {
      this.value = value;
    }

    @Override
    @JsonValue
    public String toString() {
      return String.valueOf(value);
    }

    @JsonCreator
    public static DepartmentEnum fromValue(String text) {
      for (DepartmentEnum b : DepartmentEnum.values()) {
        if (String.valueOf(b.value).equals(text)) {
          return b;
        }
      }
      return null;
    }
  }
  @JsonProperty("department")

  private DepartmentEnum department = null;

  /**
   * Gets or Sets gender
   */
  public enum GenderEnum {
    MALE("Male"),
    
    FEMALE("Female");

    private String value;

    GenderEnum(String value) {
      this.value = value;
    }

    @Override
    @JsonValue
    public String toString() {
      return String.valueOf(value);
    }

    @JsonCreator
    public static GenderEnum fromValue(String text) {
      for (GenderEnum b : GenderEnum.values()) {
        if (String.valueOf(b.value).equals(text)) {
          return b;
        }
      }
      return null;
    }
  }
  @JsonProperty("gender")

  private GenderEnum gender = null;





  public Register firstName(String firstName) { 

    this.firstName = firstName;
    return this;
  }

  /**
   * First name of the user
   * @return firstName
   **/
  
  @Schema(required = true, description = "First name of the user")

  @NotNull
  public String getFirstName() {
    return firstName;
  }



  public void setFirstName(String firstName) {

    this.firstName = firstName;
  }

  public Register lastName(String lastName) { 

    this.lastName = lastName;
    return this;
  }

  /**
   * Last name of the user
   * @return lastName
   **/
  
  @Schema(required = true, description = "Last name of the user")
  
  @NotNull
  public String getLastName() {  
    return lastName;
  }



  public void setLastName(String lastName) { 

    this.lastName = lastName;
  }

  public Register userName(String userName) { 

    this.userName = userName;
    return this;
  }

  /**
   * Username chosen by the user
   * @return userName
   **/
  
  @Schema(required = true, description = "Username chosen by the user")
  
  @NotNull
  public String getUserName() {  
    return userName;
  }



  public void setUserName(String userName) { 

    this.userName = userName;
  }

  public Register password(String password) { 

    this.password = password;
    return this;
  }

  @Override
  public Collection<? extends GrantedAuthority> getAuthorities() {
    return null;
  }

  /**
   * User's password (hashed)
   * @return password
   **/
  
  @Schema(required = true, description = "User's password (hashed)")
  
  @NotNull
  public String getPassword() {  
    return password;
  }

  @Override
  public String getUsername() {
    return null;
  }

  @Override
  public boolean isAccountNonExpired() {
    return true;
  }

  @Override
  public boolean isAccountNonLocked() {
    return true;
  }

  @Override
  public boolean isCredentialsNonExpired() {
    return true;
  }

  @Override
  public boolean isEnabled() {
    return true;
  }


  public void setPassword(String password) {

    this.password = password;
  }

  public Register department(DepartmentEnum department) { 

    this.department = department;
    return this;
  }

  /**
   * Get department
   * @return department
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public DepartmentEnum getDepartment() {  
    return department;
  }



  public void setDepartment(DepartmentEnum department) { 

    this.department = department;
  }

  public Register gender(GenderEnum gender) { 

    this.gender = gender;
    return this;
  }

  /**
   * Get gender
   * @return gender
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public GenderEnum getGender() {  
    return gender;
  }



  public void setGender(GenderEnum gender) { 

    this.gender = gender;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Register register = (Register) o;
    return Objects.equals(this.id, register.id)&&Objects.equals(this.firstName, register.firstName) &&
        Objects.equals(this.lastName, register.lastName) &&
        Objects.equals(this.userName, register.userName) &&
        Objects.equals(this.password, register.password) &&
        Objects.equals(this.department, register.department) &&
        Objects.equals(this.gender, register.gender);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id,firstName, lastName, userName, password, department, gender);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Register {\n");

    sb.append("    Id: ").append(toIndentedString(id)).append("\n");
    sb.append("    firstName: ").append(toIndentedString(firstName)).append("\n");
    sb.append("    lastName: ").append(toIndentedString(lastName)).append("\n");
    sb.append("    userName: ").append(toIndentedString(userName)).append("\n");
    sb.append("    password: ").append(toIndentedString(password)).append("\n");
    sb.append("    department: ").append(toIndentedString(department)).append("\n");
    sb.append("    gender: ").append(toIndentedString(gender)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

  private boolean accountNonLocked;
  private boolean accountNonExpired;
  private boolean credentialsNonExpired;
  private boolean enabled;
  private LocalDate credentialsExpiryDate;
  private LocalDate accountExpiryDate;
  private boolean twoFactorEnabled;
  private String signUpMethod;
  private String role;

  public void setAccountNonLocked(boolean accountNonLocked) {
    this.accountNonLocked = accountNonLocked;
  }

  public void setAccountNonExpired(boolean accountNonExpired) {
    this.accountNonExpired = accountNonExpired;
  }

  public void setCredentialsNonExpired(boolean credentialsNonExpired) {
    this.credentialsNonExpired = credentialsNonExpired;
  }

  public void setEnabled(boolean enabled) {
    this.enabled = enabled;
  }

  public void setCredentialsExpiryDate(LocalDate credentialsExpiryDate) {
    this.credentialsExpiryDate = credentialsExpiryDate;
  }

  public void setAccountExpiryDate(LocalDate accountExpiryDate) {
    this.accountExpiryDate = accountExpiryDate;
  }

  public void setTwoFactorEnabled(boolean twoFactorEnabled) {
    this.twoFactorEnabled = twoFactorEnabled;
  }

  public void setSignUpMethod(String signUpMethod) {
    this.signUpMethod = signUpMethod;
  }

  public void setRole(String role) {
    this.role = role;
  }
}

package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Login
 */
@Validated
@NotUndefined
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2024-10-17T13:43:07.016506682Z[GMT]")


public class Login   {
  @JsonProperty("userName")

  private String userName = null;

  @JsonProperty("password")

  private String password = null;


  public Login userName(String userName) { 

    this.userName = userName;
    return this;
  }

  /**
   * user name
   * @return userName
   **/
  
  @Schema(required = true, description = "user name")
  
  @NotNull
  public String getUserName() {  
    return userName;
  }



  public void setUserName(String userName) { 

    this.userName = userName;
  }

  public Login password(String password) { 

    this.password = password;
    return this;
  }

  /**
   * password
   * @return password
   **/
  
  @Schema(required = true, description = "password")
  
  @NotNull
  public String getPassword() {  
    return password;
  }



  public void setPassword(String password) { 

    this.password = password;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Login login = (Login) o;
    return Objects.equals(this.userName, login.userName) &&
        Objects.equals(this.password, login.password);
  }

  @Override
  public int hashCode() {
    return Objects.hash(userName, password);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Login {\n");
    
    sb.append("    userName: ").append(toIndentedString(userName)).append("\n");
    sb.append("    password: ").append(toIndentedString(password)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}


package io.swagger.model;

import lombok.Data;

import java.util.List;

@Data
public class LoginResponse {
    private String jwtToken;
    private String username;


    public LoginResponse(String username, String jwtToken) {
        this.username = username;

        this.jwtToken = jwtToken;
    }
}
package io.swagger.repo;

import io.swagger.model.Register;
import io.swagger.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface RegisterRepository extends JpaRepository<Register,Long> {
    Optional<Register> findByUserName(String userName);
    boolean existsByUserName(String userName);

}

package io.swagger.service;

import io.swagger.model.Register;
import io.swagger.repo.RegisterRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class OurUserDetailsService implements UserDetailsService {

    @Autowired
    RegisterRepository repo;
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
       return repo.findByUserName(username).orElseThrow(() -> new UsernameNotFoundException("User not found with username: " + username));

    }


}

package io.swagger.service;

import io.swagger.model.Register;
import io.swagger.model.User;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import org.springframework.security.core.userdetails.UserDetailsService;



public interface RegisterService extends UserDetailsService {
    Register registerUser(Register user);
    List<Register> getAllUsers();


    Optional<Register> getUserById(Long id);

    void deleteUser(Long id);

    Register updateUser(Long id,Register updateUser);

    Optional<Register> findByEmail(String email);




}


package io.swagger.service;

import io.swagger.model.Register;
import io.swagger.model.User;
import io.swagger.repo.RegisterRepository;
import org.springdoc.api.OpenApiResourceNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;


@Service
public class RegisterServiceImpl implements RegisterService{

    @Autowired
    RegisterRepository repo;

    @Override
    public Register registerUser(Register user){
        return repo.save(user);
    }

    @Override
    public List<Register> getAllUsers(){
        return repo.findAll();

    }

    @Override
    public Optional<Register> getUserById(Long id){
        return repo.findById(id);
    }

    @Override
    public Register updateUser(Long id,Register userDetails){
        return repo.findById(id).map(user-> {
                    user.setFirstName(userDetails.getFirstName());
                    user.setLastName(userDetails.getLastName());
                    user.setUserName(userDetails.getUserName());
                    user.setPassword(userDetails.getPassword());
                   user.setDepartment(userDetails.getDepartment());
                    user.setGender(userDetails.getGender());

        return repo.save(user);

        }).orElseThrow(()->new OpenApiResourceNotFoundException("User not found with id"));
    }

    @Override
    public Optional<Register> findByEmail(String email) {
        return Optional.empty();
    }

    @Override
    public void deleteUser(Long id){
         repo.deleteById(id);
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<Register> user = repo.findByUserName(username);
        if (user.isPresent()) {
            return new org.springframework.security.core.userdetails.User(user.get().getUserName(), user.get().getPassword(), new ArrayList<>());
        } else {
            throw new UsernameNotFoundException("User not found with username: " + username);
        }
    }
}


package io.swagger.security;

import io.jsonwebtoken.*;
import io.jsonwebtoken.io.Decoders;
import io.jsonwebtoken.security.Keys;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

import javax.crypto.SecretKey;
import javax.servlet.http.HttpServletRequest;
import java.security.Key;
import java.util.Date;

@Component
public class JwtUtils {
    private static final Logger logger = LoggerFactory.getLogger(JwtUtils.class);

    @Value("${spring.app.jwtSecret}")
    private String jwtSecret;

    @Value("${spring.app.jwtExpirationMs}")
    private int jwtExpirationMs;

    public String getJwtFromHeader(HttpServletRequest request) {
        String bearerToken = request.getHeader("Authorization");
        logger.debug("Authorization Header: {}", bearerToken);
        if (bearerToken != null && bearerToken.startsWith("Bearer ")) {
            return bearerToken.substring(7); // Remove Bearer prefix
        }
        return null;
    }

    public String generateTokenFromUsername(UserDetails userDetails) {
        String username = userDetails.getUsername();
        return Jwts.builder()
                .subject(username)
                .issuedAt(new Date())
                .expiration(new Date((new Date()).getTime() + jwtExpirationMs))
                .signWith(key())
                .compact();
    }

    public String getUserNameFromJwtToken(String token) {
        return Jwts.parser()
                .verifyWith((SecretKey) key())
                .build().parseSignedClaims(token)
                .getPayload().getSubject();
    }

    private Key key() {
        return Keys.hmacShaKeyFor(Decoders.BASE64.decode(jwtSecret));
    }

    public boolean validateJwtToken(String authToken) {
        try {
            System.out.println("Validate");
            Jwts.parser().verifyWith((SecretKey) key()).build().parseSignedClaims(authToken);
            return true;
        } catch (MalformedJwtException e) {
            logger.error("Invalid JWT token: {}", e.getMessage());
        } catch (ExpiredJwtException e) {
            logger.error("JWT token is expired: {}", e.getMessage());
        } catch (UnsupportedJwtException e) {
            logger.error("JWT token is unsupported: {}", e.getMessage());
        } catch (IllegalArgumentException e) {
            logger.error("JWT claims string is empty: {}", e.getMessage());
        }
        return false;
    }
}


package io.swagger.security;


import io.swagger.security.JwtUtils;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import io.swagger.service.OurUserDetailsService;
import jakarta.servlet.ServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;

@Component
public class AuthTokenFilter extends OncePerRequestFilter {
    @Autowired
    private JwtUtils jwtUtils;

    @Autowired
    private OurUserDetailsService userDetailsService;

    private static final Logger logger = LoggerFactory.getLogger(AuthTokenFilter.class);

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse
            response, FilterChain filterChain)
            throws ServletException, IOException {
        logger.debug("AuthTokenFilter called for URI: {}", request.getRequestURI());
        try {
            String jwt = parseJwt(request);
            if (jwt != null && jwtUtils.validateJwtToken(jwt)) {
                String username = jwtUtils.getUserNameFromJwtToken(jwt);

                UserDetails userDetails = userDetailsService.loadUserByUsername(username);

                UsernamePasswordAuthenticationToken authentication =
                        new UsernamePasswordAuthenticationToken(userDetails,
                                null,
                                userDetails.getAuthorities());
                logger.debug("Roles from JWT: {}", userDetails.getAuthorities());

                authentication.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));

                SecurityContextHolder.getContext().setAuthentication(authentication);
            }
        } catch (Exception e) {
            logger.error("Cannot set user authentication: {}", e);
        }

        filterChain.doFilter(request, response);
    }

    private String parseJwt(HttpServletRequest request) {
        String jwt = jwtUtils.getJwtFromHeader(request);
        logger.debug("AuthTokenFilter.java: {}", jwt);
        return jwt;
    }


}
package io.swagger.security;

import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.MediaType;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@Component
public class AuthEntryPointJwt implements AuthenticationEntryPoint {

    private static final Logger logger = LoggerFactory.getLogger(AuthEntryPointJwt.class);

    @Override
    public void commence(HttpServletRequest request, javax.servlet.http.HttpServletResponse response, AuthenticationException authException)
            throws IOException, ServletException {
        logger.error("Unauthorized error: {}", authException.getMessage());
        System.out.println(authException);

        response.setContentType(MediaType.APPLICATION_JSON_VALUE);
        response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);

        final Map<String, Object> body = new HashMap<>();
        body.put("status", HttpServletResponse.SC_UNAUTHORIZED);
        body.put("error", "Unauthorized");
        body.put("message", authException.getMessage());
        body.put("path", request.getServletPath());

        final ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(response.getOutputStream(), body);
    }

}
package io.swagger.security;


import io.swagger.model.Register;
import io.swagger.repo.RegisterRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Lazy;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
//import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.csrf.CookieCsrfTokenRepository;

import java.time.LocalDate;

//import static org.springframework.security.config.Customizer.withDefaults;

@Configuration
@EnableWebSecurity

public class SecurityConfig  {
    @Autowired
    private AuthEntryPointJwt unauthorizedHandler;


    @Bean
    public AuthTokenFilter authenticationJwtTokenFilter() {
        return new AuthTokenFilter();
    }

    @Bean
    SecurityFilterChain defaultSecurityFilterChain(HttpSecurity http) throws Exception {
        http
                .csrf().disable()
                .exceptionHandling().authenticationEntryPoint(unauthorizedHandler).and()
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS).and()
                .authorizeRequests()

                .antMatchers("/api/auth/public/**").permitAll()

                .anyRequest().authenticated()
                .and()
                .addFilterBefore(authenticationJwtTokenFilter(), UsernamePasswordAuthenticationFilter.class)
                .formLogin()
                .and()
                .httpBasic();

        return http.build();
    }

    @Bean
    public AuthenticationManager authenticationManager(AuthenticationConfiguration authenticationConfiguration) throws Exception {
        return authenticationConfiguration.getAuthenticationManager();
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public CommandLineRunner initData(
                                      RegisterRepository userRepository,
                                      PasswordEncoder passwordEncoder) {
        return args -> {




            if (!userRepository.existsByUserName("tharun22")) {

                Register admin= new Register("Tharun", "kumar", "tharun22", passwordEncoder.encode("tharun2233"),
                        Register.DepartmentEnum.TECHNOLOGY,
                        Register.GenderEnum.MALE
                );
                admin.setAccountNonLocked(true);
                admin.setAccountNonExpired(true);
                admin.setCredentialsNonExpired(true);
                admin.setEnabled(true);
                admin.setCredentialsExpiryDate(LocalDate.now().plusYears(1));
                admin.setAccountExpiryDate(LocalDate.now().plusYears(1));
                admin.setTwoFactorEnabled(false);
                admin.setSignUpMethod("email");

                userRepository.save(admin);
            }
        };
    }
}


When I send the data using postman "POST:"http://localhost:8080/api/auth//public/signin"
{
    "userName":"tharun22",
    "password":"tharun2233"
}

Error:
{
    "path": "/error",
    "error": "Unauthorized",
    "message": "Full authentication is required to access this resource",
    "status": 401
}

