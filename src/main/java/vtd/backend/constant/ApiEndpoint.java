package vtd.backend.constant;

import lombok.AccessLevel;
import lombok.NoArgsConstructor;

@NoArgsConstructor(access = AccessLevel.NONE)
public class ApiEndpoint {

  public static final String BASE_API = "/vtd";


  // Auth
  public static final String AUTH = "/auth";
  public static final String LOGIN = "/login";
  public static final String LOGOUT = "/logout";
  public static final String REFRESH_TOKEN = "/refresh-token";

  public static final String AUTH_LOGIN = AUTH + LOGIN;
  public static final String AUTH_LOGOUT = AUTH + LOGOUT;
  public static final String AUTH_REFRESH_TOKEN = AUTH + REFRESH_TOKEN;



  //  Entity
  public static final String USER_GET_ALL = "/user";
  public static final String PRODUCT_GET_ALL = "/product";


  //  Actions
  public static final String GET = "/get";
  public static final String GET_ALL = "/get-all";
  public static final String CREATE = "/create";


  //  Parameter
  public static final String ID = "/id";
  public static final String NAME = "/name";
  public static final String ID_PARAM = "/{id}";
  public static final String EMAIL_PARAM = "/{email}";
  public static final String NAME_PARAM = "/{name}";


  public static final String USER_CREATE = USER_GET_ALL + CREATE;
  public static final String USER_GET_BY_ID = USER_GET_ALL + ID_PARAM;


  public static final String PRODUCT_GET_BY_ID = PRODUCT_GET_ALL + GET + ID + ID_PARAM;
  public static final String PRODUCT_GET_BY_NAME = PRODUCT_GET_ALL + GET + NAME + NAME_PARAM;
}
