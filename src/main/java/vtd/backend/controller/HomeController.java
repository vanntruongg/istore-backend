package vtd.backend.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import static vtd.backend.constant.ApiEndpoint.BASE_API;

@RestController
@RequestMapping(BASE_API)
public class HomeController {

  @GetMapping("/public-content")
  public String home() {
    return "Public Content";
  }

  @GetMapping("/user-content")
  public String userContent() {
    return "User Content";
  }

  @GetMapping("/mod-content")
  public String modContent() {
    return "Mod Content";
  }

  @GetMapping("/admin-content")
  public String adminContent() {
    return "Admin Content";
  }
}
