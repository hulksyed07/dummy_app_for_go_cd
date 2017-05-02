require 'rails_helper'

RSpec.describe Article, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  describe "create a new article" do
  	it "should create a new article with valid params" do
	  	article = create(:article)
	  	expect(article.title).to eq('Article_1')
	  end

	  it "should not create a new article with invalid params" do
	  	article = build(:article, title: "")
	  	expect(article.valid?).to eq(false)
	  end
  end

  describe "update or delete an article" do
  	before(:each) do
  		@article = create(:article)
  	end

  	it "should update an article with valid params" do
	  	@article.update(title: 'Article_2')
	  	expect(@article.reload.title).to eq('Article_2')
	  end

	  it "should not update an article with invalid params" do
	  	@article.update(title: '')

	  	expect(@article.reload.title).not_to eq('')
	  end

	  it "should delete an article with valid id" do
	  	article = Article.find_by_id(@article.id)
	  	article.delete

	  	expect(Article.find_by_id(@article.id)).to eq(nil)
	  end
  end
end
