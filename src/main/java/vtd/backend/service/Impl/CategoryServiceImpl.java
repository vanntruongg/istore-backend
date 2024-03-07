package vtd.backend.service.Impl;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import vtd.backend.entity.Category;
import vtd.backend.reposiroty.CategoryRepository;
import vtd.backend.service.CategoryService;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class CategoryServiceImpl implements CategoryService {

  private final CategoryRepository categoryRepository;

  @Override
  public Category getByName(String name) {
    Category category = categoryRepository.findByCategoryName(name);
    if(category == null) {
      throw new RuntimeException("Can't found category with name: " + name);
    }
    return category;
  }

  @Override
  public List<Category> getAll() {
    List<Category> categoryList = categoryRepository.findAll();
    if (categoryList.isEmpty()) {
      throw new RuntimeException("Can't found list category.");
    }
    return categoryList;
  }
}
