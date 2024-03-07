package vtd.backend.service;

import vtd.backend.entity.Category;

import java.util.List;

public interface CategoryService {

  Category getByName(String name);
  List<Category> getAll();
}
