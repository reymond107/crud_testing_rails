require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

	test "Category should save" do
		category = Category.new(name: 'sample name', description: 'sample description')
		assert category.save
	end

	test "Category should not save without a name" do
		category = Category.new
		assert_not category.save
	end

	test "Category name should be unique" do
		original = Category.new(name: 'unique name')
		duplicate = Category.new(description: 'sample description')

		original.save
		assert_not duplicate.save
	end
end
