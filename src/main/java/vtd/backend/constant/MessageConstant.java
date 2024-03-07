package vtd.backend.constant;

import lombok.AccessLevel;
import lombok.NoArgsConstructor;

@NoArgsConstructor(access = AccessLevel.NONE)
public class MessageConstant {

  //  Char Sequence
  public static final String CHAR_SEQUENCE_2 = "%s %s";
  public static final String CHAR_SEQUENCE_3 = "%s %s %s ";
  public static final String CHAR_SEQUENCE_4 = "%s %s %s %s";
  public static final String CHAR_SEQUENCE_5 = "%s %s %s %s %s";

  //  Actions
  public static final String GET = "Get";
  public static final String FIND = "Find";
  public static final String CREATE = "Create";


//  Entity
public static final String USER = "User";


  //  Status
  public static final String SUCCESS = "Successfully!";


  public static final String FIND_SUCCESS = String.format(CHAR_SEQUENCE_2, FIND, SUCCESS);
  public static final String CREATE_USER_SUCCESS = String.format(CHAR_SEQUENCE_3, CREATE, USER, SUCCESS);


}
