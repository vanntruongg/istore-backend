package vtd.backend.security;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Component
@ConfigurationProperties(prefix = "jwt")
@Data
public class JwtProperties {

  private String secret;
  private String type;
  private String header;
  private String prefix;
  private long expireTimeAccessToken;
  private long expireTimeRefreshToken;

}
