package vtd.backend.security;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import vtd.backend.entity.Role;
import vtd.backend.entity.User;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@Builder
@AllArgsConstructor
@Slf4j
public class UserDetailsImpl implements UserDetails {
  private transient User user;

  @Override
  public Collection<? extends GrantedAuthority> getAuthorities() {
    List<SimpleGrantedAuthority> simpleGrantedAuthorities = new ArrayList<>();
    for (Role role : this.user.getRoles()) {
      simpleGrantedAuthorities.add(new SimpleGrantedAuthority(role.getRoleName()));
    }
    return simpleGrantedAuthorities;
  }

  @Override
  public String getUsername() {
    return this.user.getEmail();
  }

  @Override
  public String getPassword() {
    return this.user.getPassword();
  }

  public List<Role> getRoles() {
    return this.user.getRoles();
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
}
