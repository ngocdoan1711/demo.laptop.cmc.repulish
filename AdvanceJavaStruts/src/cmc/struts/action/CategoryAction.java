package cmc.struts.action;

import java.sql.SQLException;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import cmc.struts.bus.CategoryBUS;
import cmc.struts.dao.CategoryDao;
import cmc.struts.model.Category;

public class CategoryAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 
	 */
	private Category category;
	private List<Category> listCategory;
	private int categoryId;
	private int[] deleteCategoryId;
	private String note;

	public String execute() throws Exception {
		CategoryBUS categoryBUS = new CategoryBUS();
		category = categoryBUS.getCategoryById(categoryId);
		return SUCCESS;
	}

	public String getAllCategories() throws ClassNotFoundException, SQLException {
		CategoryBUS categoryBUS = new CategoryBUS();
		listCategory = categoryBUS.getAllCategories();
		return SUCCESS;
	}

	public Category getCategoryById(int id) throws ClassNotFoundException, SQLException {
		CategoryDao categoryDao = new CategoryDao();
		return categoryDao.getCategoryById(categoryId);
	}

	public Category getCategoryByProductId(int id) throws ClassNotFoundException, SQLException {
		CategoryDao categoryDao = new CategoryDao();
		return categoryDao.getCategoryByProductId(id);
	}

	public String insertCategory() throws ClassNotFoundException, SQLException {
		CategoryBUS categoryBUS = new CategoryBUS();
		categoryBUS.insertCategory(category);
		note = "Add Category Success!";
		return SUCCESS;
	}

	public String editCategory() throws ClassNotFoundException, SQLException {
		CategoryBUS categoryBUS = new CategoryBUS();
		categoryBUS.editCategory(categoryId, category);
		note = "Edit Category Success!";
		return SUCCESS;
	}

	public String deleteMultipleCategory() throws ClassNotFoundException, SQLException {
		CategoryBUS categoryBUS = new CategoryBUS();
		for (int categoryId : deleteCategoryId) {
			categoryBUS.deleteCategory(categoryId);
		}
		note = "Delete Categories Success!";
		return SUCCESS;
	}

	public String deleteCategory() throws ClassNotFoundException, SQLException {
		CategoryBUS categoryBUS = new CategoryBUS();
		categoryBUS.deleteCategory(categoryId);
		note = "Delete Category Success!";
		return SUCCESS;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public List<Category> getListCategory() {
		return listCategory;
	}

	public void setListCategory(List<Category> listCategory) {
		this.listCategory = listCategory;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public int[] getDeleteCategoryId() {
		return deleteCategoryId;
	}

	public void setDeleteCategoryId(int[] deleteCategoryId) {
		this.deleteCategoryId = deleteCategoryId;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

}